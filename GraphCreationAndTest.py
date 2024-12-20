import sys
import csv
from typing import Dict, List
import networkx as nx
import matplotlib.pyplot as plt
import time

from network_node import NetworkNode
from HelperFunctions import map_node_to_port_names, assign_stream_to_queue_map, process_streams_paths_and_append_in_nodes
from wcd_computations import wcd_delay_for_network

start_time = time.time()

streams_file = sys.argv[1]
topology_file = sys.argv[2]
output_file = sys.argv[3]
# streams_file = 'csvs/streams.csv'
# topology_file = 'csvs/topology.csv'
# streams_file = 'csvs/HM_smaller_streams.csv'
# topology_file = 'csvs/HM_smaller_topology.csv'
# topology_file = 'csvs/small-topology.csv'
# streams_file = 'csvs/small-streams.csv'
nodes = set()
edges = []
links:Dict[str, List[str]] = {}
"""stream_paths, dict, where the key is stream name and value is a list of nodes that the stream crosses. {Stream_n: [node_1, node_2, ...], Stream_x: [node_2, node_5, ...]}"""
streams_paths:dict[str:list[str]] ={} 
network_nodeS: Dict[str, NetworkNode] = {}
stream_deadlines: Dict[str, float] = {}
"""nodes_to_out_ports_map[node_name] = list of nodes with associated out_ports to rich them from node_name"""
nodes_to_out_ports_map :Dict[str,List[Dict[str,str]]]= {} 
"""key is the node name and value is a list of port numbers (used in case the node doesnt have sequential port numbers or other edge cases)"""
map_node_ports =  map_node_to_port_names(topology_file)
delays_results:Dict[str, float] = {}


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
#plt.show(block=True)
# plt.pause(4)  # Small pause to allow the window to appear
# plt.show(block=False)


# ####test lines print all the nodes in the graph and all of their attributes kinda
# for node in G.nodes(data=True):
#     print(node)
#     print(node[1]['node_object'].name + " " + node[1]['node_object'].type)
        
 
streams_paths = process_streams_paths_and_append_in_nodes(streams_file, network_nodeS, G, links, nodes_to_out_ports_map)
with open(streams_file, 'r') as csvfile:
    csvreader = csv.reader(csvfile)
    for row in csvreader:
        stream_deadlines[row[1]] = float(row[7])
        
##assigning all the streams to the right shaped queues inside the nodes they cross
for node in network_nodeS.items():
    # print(node[1].extended_streams)
    # for streams_id, e_stream in node[1].extended_streams: #node is a tuple (name, NetworkNode) this loop iterates over all the streams in the node
    #     assign_stream_to_queue_map(node[1],e_stream) 
    #     node[1].is_actcl
    # ive = True
    for streams_id, e_stream in node[1].extended_streams.items():  # node is a tuple (node_id, NetworkNode) node[1]=NetworkNode
        assign_stream_to_queue_map(node[1], e_stream)
        node[1].is_active = True
    
#test line to see all te shaped queues in all the nodes
# for node in network_nodeS.items():
#     node[1].print_queues_map("all")
        
# computing all of the WCD delays
delays_results = wcd_delay_for_network(network_nodeS, streams_paths)

end_time = time.time()
execution_time = end_time - start_time

# Output the delays results for every stream
with open(output_file, "w", newline='') as outfile:
    writer = csv.writer(outfile)
    writer.writerow(['Stream ID', 'MaxE2EDelay', 'Path','Deadline'])
    stream_paths_formated ={}
    for stream_id,path in streams_paths.items():
        stream_paths_formated[stream_id] = ' -> '.join(path)
        # print(path)
    
    for stream_id, delay in delays_results.items():
        writer.writerow([stream_id, delay, stream_paths_formated[stream_id],stream_deadlines[stream_id]])
    
    average = 0
    for stream_id, delay in delays_results.items():
        average = average + delay
    average = average / len(delays_results.items())
    

with open(f"{output_file[:-4]}_other.txt", mode='w') as file:
    file.write(f"Average E2E Delay {average}\n")
    file.write(f"Execution time: {execution_time} seconds")