import csv
from typing import Dict, List
import networkx as nx
import matplotlib.pyplot as plt

from network_stream import NetworkStream
from network_node import NetworkNode
from HelperFunctions import map_node_to_port_names, assign_stream_to_queue_map, process_streams

streams_file = 'csvs/streams.csv'
topology_file = 'csvs/topology.csv'
# streams_file = 'csvs/HM_smaller_streams.csv'
# topology_file = 'csvs/HM_smaller_topology.csv'
# topology_file = 'csvs/small-topology.csv'
# streams_file = 'csvs/small-streams.csv'
nodes = set()
edges = []
links = {}
stream_paths ={} 
network_nodeS: Dict[str, NetworkNode] = {}
map_node_ports =  map_node_to_port_names(topology_file)

# Print the keys and values in map_node_ports
#test line can be coomented
for key, value in map_node_ports.items():
    print(f"Key: {key}, Value: {value}")


#Parsing the CVS to generate the nodes for the graph and the network_nodes and the graph edges
with open(topology_file, 'r') as csvfile:
    csvreader = csv.reader(csvfile)
    for row in csvreader:
        if row[0] == 'SW' or row[0] == 'ES':
            nodes.add(row[1])
            network_nodeS[row[1]] = NetworkNode(row[1],row[0], int(row[2]), map_node_ports[row[1]])  
        elif row[0] == 'LINK':
            links[row[1]] = [row[2], row[3], row[4], row[5]] #array: node1, port1, node2, port2
            edges.append((row[2], row[4]))


# Create the graph
G = nx.Graph()

# Step 4: Add nodes with NetworkNode objects as attributes
for node_name in nodes:
    G.add_node(node_name, node_object=network_nodeS[node_name])
# G.add_edges_from(edges)
for edge in edges:
    G.add_edge(edge[0], edge[1])



# # # kinda test lines Step 5: Visualize the graph
# pos = nx.spring_layout(G,)  # Increase k to make nodes more distant
# nx.draw(G, pos, with_labels=True, node_size=700, node_color='skyblue', font_size=10, font_weight='bold')
# plt.show()


###prints all the nodes maps for all the nodes in the graph
# print("Printing all the nodes maps")
# print("Printing all the nodes maps")
# for node in network_nodeS.items():
#     node[1].print_queues_map()
#     node[1].print_queues_map("1")

# ####test lines print all the nodes in the graph and all of their attributes kinda
# for node in G.nodes(data=True):
#     print(node)
#     print(node[1]['node_object'].name + " " + node[1]['node_object'].type)
        
 
stream_paths = process_streams(streams_file, network_nodeS, G)

# Print all the streams in all the nodes
# for node_name, node in network_nodeS.items():
#     print(f"Node: {node_name}")
#     for stream in node.streams_tuples:
#         print(f"  Stream: {stream}")
#         print(f"  Stream ID: {stream[1]}")
#         print(f"  Stream ID: {stream[2]}")
#         print(f"  Stream ID: {stream[0]}")
        
for node in network_nodeS.items():
    for stream, next_node,prev_node in node[1].streams_tuples: #node is a tuple (name, NetworkNode) this loop iterates over all the streams in the node
        # print(stream)
        for link in links.items():
            # print(link)
            link = link[1] #link is a tuple (name, [node1, port1, node2, port2])
            if (link[0] == node[0] and link[2] == next_node) or (link[2] == node[0] and link[0] == next_node):
                assign_stream_to_queue_map(node[1],link,stream, prev_node=prev_node, next_node=next_node) 
                node[1].is_active = True
                break


for node in network_nodeS.items():
    node[1].print_queues_map("all")
    




