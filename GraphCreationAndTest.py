import csv
import networkx as nx
import matplotlib.pyplot as plt
import network_stram
from network_node import NetworkNode
# Step 1: Read the CSV file
# filename = 'csvs/example_topology.csv'
# filename = 'csvs/smaller_topology.csv'
filename = 'csvs/modified_topology.csv'
streams_file = 'csvs/example_streams.csv'

nodes = set()
edges = []
stream_paths ={} 
network_nodeS = {}

with open(filename, 'r') as csvfile:
    csvreader = csv.reader(csvfile)
    
    # Step 2: Parse the CSV data
    for row in csvreader:
        if row[0] == 'SW' or row[0] == 'ES':
            nodes.add(row[1])
            network_nodeS[row[1]] = NetworkNode(row[1],row[0], int(row[2]))    #initialize all the logical nodes in a dictionary       
        elif row[0] == 'LINK':
            edges.append((row[2], row[3]))



# Step 3: Create the graph
G = nx.Graph()

# Step 4: Add nodes with NetworkNode objects as attributes
for node_name in nodes:
    G.add_node(node_name, node_object=network_nodeS[node_name])
G.add_edges_from(edges)



# Step 5: Visualize the graph
pos = nx.spring_layout(G, k=5)  # Increase k to make nodes more distant
nx.draw(G, pos, with_labels=True, node_size=700, node_color='skyblue', font_size=10, font_weight='bold')
# plt.show()

###print all the nodes in the graph and all of their attributes
for node in G.nodes(data=True):
    print(node)
    print(node[1]['node_object'].name + " " + node[1]['node_object'].type)

##fiding the shortest path between start and end of teh stream
with open(streams_file, 'r') as csvfile:
    csvreader = csv.reader(csvfile)
    
    # Step 2: Parse the CSV data
    for row in csvreader:
        source = row[3]
        dest   = row[4]
        stream_id = row[1]
        path = nx.shortest_path(G,source=source,target=dest)
        # using node_id as the key to the dictionary, add the streams that pass from this node to the node object's stream list
        for node_id in path:
            network_nodeS[node_id].add_stream(network_stram.NetworkStream(row[1],row[2],source,dest,int(row[5]),int(row[6]),int(row[7]),row[0]))
            

