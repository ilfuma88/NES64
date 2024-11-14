import csv
from typing import Dict, List, Tuple
import networkx as nx
from extended_stream import ExtendedStream
from network_node import NetworkNode
from network_stream import NetworkStream

def map_node_to_port_names(csv_file_path: str)-> Dict[str, List[str]]:
    """
    Args:
        csv_file_path (str): The path to the CSV file containing the topology information.
        
    Returns:
        dict: A dictionary with keys as the node names and values as lists of connected node names.
    """
    
    connections = {}

    # First pass: Initialize the dictionary with keys as row[1] for 'SW' or 'EW'
    with open(csv_file_path, mode='r', newline='') as csvfile:
        csvreader = csv.reader(csvfile)
        for row in csvreader:
            if row[0] == 'SW' or row[0] == 'ES':
                key = row[1]
                connections[key] = []

    # Second pass: Update the lists based on 'LINK' rows
    with open(csv_file_path, mode='r', newline='') as csvfile:
        csvreader = csv.reader(csvfile)
        for row in csvreader:
            if row[0] == 'LINK':
                key = row[2]
                if key in connections:
                    connections[key].append(row[3])
                key = row[4]
                if key in connections:
                    connections[key].append(row[5])

    return connections




def assign_stream_to_queue(node,link,stream):
    """old method not used at the moment

    Args:
        node (_type_): _description_
        link (_type_): _description_
        stream (_type_): _description_
    """
    inbound_port,outbound_port = get_ports(node,link)
    stream.ingress_port = inbound_port
    # print(inbound_port)
    # print(link)
    # print(node[1].name)
    #node[1].queues_matrix[stream.priority][inbound_port-1].append(stream)
    for q in node[1].queues_matrix[stream.priority]:
        if (q == []):
            q.append(stream)
            break
        else:
            for s in q:
                if(s[0].ingress_port == inbound_port):
                    q.append(stream)
                    break
                    
                    
def assign_stream_to_queue_map(node: NetworkNode,link: List[str],stream: NetworkStream,
                               prev_node: NetworkNode, next_node: NetworkNode):
    """
    #link : array = [node1, port1, node2, port2]
    Args:
        node (NetworkNode): _description_
        link (List[str]): _description_
        stream (NetworkStream): _description_
    """
    extended_stream = ExtendedStream(stream, prev_node, next_node)
    outbound_port, dest_inbound_port = get_ports(node,link)
    stream.ingress_port = outbound_port
    # print(outbound_port)
    # print(link)
    # print(node.name)
    # #node.queues_matrix[stream.priority][inbound_port-1].append(stream)
    # print(dest_inbound_port)
    # node_ports = node.n_ports
    queues_matrix = node.queues_map[str(outbound_port)]
    for q in queues_matrix[stream.priority]:
        if (q == []):
            q.append(extended_stream)
            break
        else:
            for ext_str in q:
                if(ext_str.prev_node == extended_stream.prev_node):
                    q.append(stream)
                    break
                    
                    
                    
def get_ports(node: NetworkNode,link) -> Tuple[int,int]:
    """based on which side of the link the node is, 
    returns the outbound port for the node 
    and the inbound port for the next node.
    so the first port in the tuple is the port number for the node 
    that I passed to the function
    Args:
        node (NetworkNode): _description_
        link (_type_): _description_

    Returns:
        (int,int): _description_
    """
    print("cheeking the values")
    print(f"link[0]: {link[0]}, node.name: {node.name}")
    if(link[0] == node.name):
        #link : array = [node1, port1, node2, port2]
        return (int(link[1]),int(link[3]))
    return (int(link[3]),int(link[1]))



def process_streams(streams_file: str, network_nodeS: dict[str, NetworkNode], G: nx.Graph) -> dict:
    """
    Processes the streams from a CSV file, computes their shortest paths,
    and updates the network nodes with the streams.

    Args:
        streams_file (str): Path to the streams CSV file.
        network_nodeS (dict): Dictionary of network nodes.
        G (networkx.Graph): The graph representing the network topology.

    Returns:
        dict: A dictionary mapping stream IDs to their paths.
    """
    stream_paths = {}

    with open(streams_file, 'r') as csvfile:
        csvreader = csv.reader(csvfile)
        
        # Parse the CSV data
        for row in csvreader:
            source = row[3]
            dest = row[4]
            stream_id = row[1]
            path = nx.shortest_path(G, source=source, target=dest)
            print(path)
            stream_paths[stream_id] = path
            # Add the stream to the nodes along the path
            for i, node_id in enumerate(path):
                next_node = None
                if i < len(path) - 1:
                    next_node = path[i + 1]
                if i > 0:
                    previous_node = path[i - 1]
                if i == 0:
                    previous_node = path[i]
                stream_tuple = (
                    NetworkStream(
                        stream_id,
                        row[2],
                        source,
                        dest,
                        int(row[5]),
                        int(row[6]),
                        int(row[7]),
                        int(row[0])
                    ),
                    next_node,
                    previous_node
                )
                network_nodeS[node_id].add_stream_tuple(stream_tuple)
    
    return stream_paths
 