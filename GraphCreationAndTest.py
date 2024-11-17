import csv
from typing import Dict, List
import networkx as nx
import matplotlib.pyplot as plt

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
links:Dict[str, List[str]] = {}
stream_paths ={} 
network_nodeS: Dict[str, NetworkNode] = {}
"""nodes_to_out_ports_map[node_name] = list of nodes with associated out_ports to rich them from node_name"""
nodes_to_out_ports_map :Dict[str,List[Dict[str,str]]]= {} 
"""key is the node name and value is a list of port numbers (used in case the node doesnt have sequential port numbers or other edge cases)"""
map_node_ports =  map_node_to_port_names(topology_file)

# # Print the keys and values in map_node_ports
# #test line can be commented
# for key, value in map_node_ports.items():
#     print(f"Key: {key}, Value: {value}")


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
            if row[2] not in nodes_to_out_ports_map:
                nodes_to_out_ports_map[row[2]] = [(row[4], row[3])]
            else:
                nodes_to_out_ports_map[row[2]].append((row[4], row[3]))
            if row[4] not in nodes_to_out_ports_map:
                nodes_to_out_ports_map[row[4]] = [(row[2], row[5])]
            else:
                nodes_to_out_ports_map[row[4]].append((row[2], row[5]))

# #just test line
# print(nodes_to_out_ports_map)

# Create the graph
G = nx.Graph()

# Step 4: Add nodes with NetworkNode objects as attributes
for node_name in nodes:
    G.add_node(node_name, node_object=network_nodeS[node_name])
# G.add_edges_from(edges)
for edge in edges:
    G.add_edge(edge[0], edge[1])




# # kinda test lines Step 5: Visualize the graph
pos = nx.spring_layout(G,)  # Increase k to make nodes more distant
nx.draw(G, pos, with_labels=True, node_size=700, node_color='skyblue', font_size=10, font_weight='bold')
# plt.show(block=True)
plt.pause(4)  # Small pause to allow the window to appear
plt.show(block=False)


# ####test lines print all the nodes in the graph and all of their attributes kinda
# for node in G.nodes(data=True):
#     print(node)
#     print(node[1]['node_object'].name + " " + node[1]['node_object'].type)
        
 
stream_paths = process_streams(streams_file, network_nodeS, G, links, nodes_to_out_ports_map)

        
##assigning all the streams to the right shaped queues inside the nodes they cross
for node in network_nodeS.items():
    for e_stream in node[1].extended_streams: #node is a tuple (name, NetworkNode) this loop iterates over all the streams in the node
        assign_stream_to_queue_map(node[1],e_stream) 
        node[1].is_active = True

for node in network_nodeS.items():
    node[1].print_queues_map("all")
    




