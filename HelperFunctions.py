import csv
from typing import Dict, List, Tuple
import networkx as nx
from extended_stream import ExtendedStream
from network_node import NetworkNode
from network_stream import NetworkStream


def map_node_to_port_names(csv_file_path: str) -> Dict[str, List[str]]:
    """
    Args:
        csv_file_path (str): The path to the CSV file containing the topology information.
        
    Returns:
        Dict[str, List[str]]: A dictionary where each key is a node name, and the value is a list of port names used by that node.
        
    Raises:
        ValueError: If a node uses more ports than declared or if a port on a device is used more than once.
    """
    node_to_ports_map : Dict[str:List[str]]= {}
    node_port_counts = {}
    node_used_ports = {}

    # First pass: Initialize the dictionaries and store declared port counts
    with open(csv_file_path, mode='r', newline='') as csvfile:
        csvreader = csv.reader(csvfile)
        for row in csvreader:
            if row[0] == 'SW' or row[0] == 'ES':
                key = row[1]
                node_to_ports_map[key] = []
                node_used_ports[key] = set()
                if len(row) >= 3:
                    port_count = int(row[2])
                    node_port_counts[key] = port_count
                else:
                    node_port_counts[key] = 0  # Default to 0 if no port count is provided

    # Second pass: Update the lists and check port usage
    with open(csv_file_path, mode='r', newline='') as csvfile:
        csvreader = csv.reader(csvfile)
        for row in csvreader:
            if row[0] == 'LINK':
                key1 = row[2]
                port1 = row[3]
                key2 = row[4]
                port2 = row[5]
                if key1 in node_to_ports_map:
                    if port1 in node_used_ports[key1]:
                        raise ValueError(f"Port '{port1}' on node '{key1}' is used more than once.")
                    node_used_ports[key1].add(port1)
                    node_to_ports_map[key1].append(port1)
                    if len(node_used_ports[key1]) > node_port_counts.get(key1, 0):
                        raise ValueError(f"Node '{key1}' is using more ports than declared.")
                if key2 in node_to_ports_map:
                    if port2 in node_used_ports[key2]:
                        raise ValueError(f"Port '{port2}' on node '{key2}' is used more than once.")
                    node_used_ports[key2].add(port2)
                    node_to_ports_map[key2].append(port2)
                    if len(node_used_ports[key2]) > node_port_counts.get(key2, 0):
                        raise ValueError(f"Node '{key2}' is using more ports than declared.")

    return node_to_ports_map

                    
                    
def assign_stream_to_queue_map(node: NetworkNode, ext_stream: ExtendedStream):
    if ext_stream.out_port is None:
        return
        
    queues_matrix = node.queues_map[str(ext_stream.out_port)]
    assigned = False
    for q in queues_matrix[ext_stream.stream.priority]:
        if not q:  # Queue is empty
            q.append(ext_stream)
            assigned = True
            break
        else:
            for ext_str in q:
                if ext_str.prev_node == ext_stream.prev_node:
                    q.append(ext_stream)
                    assigned = True
                    break
        if assigned:
            break
                    

def assign_stream_to_queue_map_OLD(node: NetworkNode,link: List[str],stream: NetworkStream,
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

    queues_matrix = node.queues_map[str(outbound_port)]
    for q in queues_matrix[stream.priority]:
        if (q == []):
            q.append(extended_stream)
            break
        else:
            for ext_str in q:
                if(ext_str.prev_node == extended_stream.prev_node):
                    q.append(extended_stream)
                    break                    
                    
def get_ports(node: NetworkNode,link) -> Tuple[int,int]:
    """based on which side of the link the node is, 
    returns the outbound port for the node 
    and the inbound port for the next node.
    so the first port in the tuple is the outbound_port number for the node 
    that I passed to the function
    Args:
        node (NetworkNode): _description_
        link (_type_): _description_

    Returns:
        (int,int): _description_
    """
    # print("cheeking the values in get_ports")
    # print(f"link[0]: {link[0]}, node.name: {node.name}")
    if(link[0] == node.name):
        #link : array = [node1, port1, node2, port2]
        return (int(link[1]),int(link[3]))
    return (int(link[3]),int(link[1]))



def process_streams(streams_file: str, network_nodeS: dict[str, NetworkNode], 
                    G: nx.Graph, links:Dict[str, List[str]], nodes_to_out_ports_map :Dict[str,List[Dict[str,str]]]) -> dict:
    """
    Processes the streams from a CSV file, computes their shortest paths,
    and updates the network nodes with the streams that are routed through them.
    
    Args:
        streams_file (str): Path to the streams CSV file.
        network_nodeS (dict): Dictionary of network nodes.
        G (networkx.Graph): The graph representing the network topology.

    Returns:
        dict: A dictionary mapping stream IDs to their paths.
    """
    stream_paths = {}
    links_copy = links.copy()

    with open(streams_file, 'r') as csvfile:
        csvreader = csv.reader(csvfile)
        # Parse the CSV data
        for row in csvreader:
            source = row[3]
            dest = row[4]
            stream_id = row[1]
            path = nx.shortest_path(G, source=source, target=dest)
            # print(path)
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
                    
                ##todo:iterate over nodes_to_out_ports_map teh link list and find the outgoing port for this stream on this node
                outbound_port = None
                if(next_node == None):
                    outbound_port = None
                else:
                    for node_port_tuple in nodes_to_out_ports_map[node_id]:
                        if node_port_tuple[0] == next_node:
                            outbound_port = node_port_tuple[1]
                            break
                    if outbound_port is None:
                        raise ValueError(f"Outbound port not found for node {node_id} to {next_node}")
                net_stream = NetworkStream(
                    stream_id,
                    row[2],
                    source,
                    dest,
                    int(row[5]),
                    int(row[6]),
                    int(row[7]),
                    int(row[0])
                )
                e_stream = ExtendedStream(net_stream, previous_node, next_node,outbound_port)
                network_nodeS[node_id].add_stream_tuple(e_stream)
    
    return stream_paths
 