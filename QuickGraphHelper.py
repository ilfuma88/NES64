import csv
import networkx as nx
import matplotlib.pyplot as plt
import Node 
import Stream
# Step 1: Read the CSV file
# filename = 'example_topology.csv'
filename = 'csvs/example_topology.csv'
streams_file = 'csvs/example_streams.csv'

nodes = set()
edges = []
stream_paths ={} 
node_objects = {}

with open(filename, 'r') as csvfile:
    csvreader = csv.reader(csvfile)
    
    # Step 2: Parse the CSV data
    for row in csvreader:
        if row[0] == 'SW' or row[0] == 'ES':
            nodes.add(row[1])
            node_objects[row[1]] = Node.Node(row[1],row[0])    #initialize all the logical nodes in a dictionary       
        elif row[0] == 'LINK':
            edges.append((row[2], row[4]))





# Step 3: Create the graph
G = nx.Graph()

# Step 4: Add nodes and edges
G.add_nodes_from(nodes)
G.add_edges_from(edges)



# Step 5: Visualize the graph
pos = nx.spring_layout(G, k=5)  # Increase k to make nodes more distant
nx.draw(G, pos, with_labels=True, node_size=700, node_color='skyblue', font_size=10, font_weight='bold')
plt.show()


with open(streams_file, 'r') as csvfile:
    csvreader = csv.reader(csvfile)
    header = next(csvreader)  # Skip the header row
    
    # Step 2: Parse the CSV data
    for row in csvreader:
        source = row[3]
        dest   = row[4]
        stream_id = row[1]
        path = nx.shortest_path(G,source=source,target=dest)
        # using node_id as the key to the dictionary, add the streams that pass from this node to the node object's stream list
        for node_id in path:
            node_objects[node_id].add_stream(Stream.Stream(row[1],row[2],source,dest,int(row[5]),int(row[6]),int(row[7]),row[0]))
            

