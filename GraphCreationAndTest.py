import csv
import networkx as nx
import matplotlib.pyplot as plt

import network_node
from network_stream import NetworkStream
from network_node import NetworkNode
# Step 1: Read the CSV file
# filename = 'csvs/example_topology.csv'
# filename = 'csvs/smaller_topology.csv'
topology_file = 'csvs/modified_topology.csv'
streams_file = 'csvs/modified_streams.csv'

nodes = set()
edges = []
links = {}
stream_paths ={} 
network_nodeS = {}

with open(topology_file, 'r') as csvfile:
    csvreader = csv.reader(csvfile)
    
    # Step 2: Parse the CSV data
    for row in csvreader:
        if row[0] == 'SW' or row[0] == 'ES':
            nodes.add(row[1])
            network_nodeS[row[1]] = NetworkNode(row[1],row[0], int(row[2]))   #initialize all the logical nodes in a dictionary       
        elif row[0] == 'LINK':
            links[row[1]] = [row[2], row[3], row[4], row[5], row[6]]
            edges.append((row[2], row[4]))


# print(links)
# Step 3: Create the graph
G = nx.Graph()

# Step 4: Add nodes with NetworkNode objects as attributes
for node_name in nodes:
    G.add_node(node_name, node_object=network_nodeS[node_name])
# G.add_edges_from(edges)
for edge in edges:
    G.add_edge(edge[0], edge[1])



# Step 5: Visualize the graph
pos = nx.spring_layout(G, k=5)  # Increase k to make nodes more distant
nx.draw(G, pos, with_labels=True, node_size=700, node_color='skyblue', font_size=10, font_weight='bold')
# plt.show()

# ###print all the nodes in the graph and all of their attributes kinda
# for node in G.nodes(data=True):
#     print(node)
#     print(node[1]['node_object'].name + " " + node[1]['node_object'].type)


def get_ports(node,link):
    if(link[1][0] == node[0]):
        return (int(link[1][1]),int(link[1][3]))
    return (int(link[1][3]),int(link[1][1]))



def assign_stream_to_queue(node,link,stream):
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
        
 
#fiding the shortest path between start and end of teh stream
with open(streams_file, 'r') as csvfile:
    csvreader = csv.reader(csvfile)
    
    # Step 2: Parse the CSV data
    for row in csvreader:
        source = row[3]
        dest   = row[4]
        stream_id = row[1]
        path = nx.shortest_path(G,source=source,target=dest)
        # ## print the path
        print(path)
        stream_paths[stream_id] = path
        # using node_id as the key to the dictionary, add the streams that pass from this node to the node object's stream list
        for i, node_id in enumerate(path):
            next_node = None
            if i < len(path) - 1:
                next_node = path[i + 1]
            stream = (NetworkStream(stream_id,row[2],source,dest,int(row[5]),int(row[6]),int(row[7]),int(row[0])),next_node)
            network_nodeS[node_id].add_stream(stream)

for node in network_nodeS.items():
    # print(node)
    for stream, next_node in node[1].streams:
        # print(stream)
        for link in links.items():
            # print(link)
            if (link[1][0] == node[0] and link[1][2] == next_node) or (link[1][2] == node[0] and link[1][0] == next_node):
                assign_stream_to_queue(node,link,stream)
                break


   
    

for node in network_nodeS.items():
    node[1].print_shaped_queues()


# for node in network_nodeS.items():
#     for row in node[1].queues_matrix:
#         print(" ".join(map(str, row)))