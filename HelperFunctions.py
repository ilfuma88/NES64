import csv
from typing import Dict, List
import networkx as nx
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
                    
                    
def assign_stream_to_queue_map(node,link,stream):
        inbound_port,outbound_port = get_ports(node,link)
        stream.ingress_port = inbound_port
        # print(inbound_port)
        print(link)
        print(node[1].name)
        #node[1].queues_matrix[stream.priority][inbound_port-1].append(stream)
        print(outbound_port)
        node_ports = node[1].n_ports
        if(node[1].type == 'ES'):
            queues_matrix = node[1].queue_map[0]
        else:
            queues_matrix = node[1].queue_map[outbound_port%node_ports]
        for q in queues_matrix[stream.priority]:
            if (q == []):
                q.append(stream)
                break
            else:
                for s in q:
                    if(s.ingress_port == inbound_port):
                        q.append(stream)
                        break
                    
                    
                    
def get_ports(node,link):
    if(link[1][0] == node[0]):
        return (int(link[1][1]),int(link[1][3]))
    return (int(link[1][3]),int(link[1][1]))



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
 