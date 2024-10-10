import csv
import networkx as nx
import matplotlib.pyplot as plt

# Step 1: Read the CSV file
filename = 'example_topology.csv'

nodes = set()
edges = []

with open(filename, 'r') as csvfile:
    csvreader = csv.reader(csvfile)
    header = next(csvreader)  # Skip the header row
    
    # Step 2: Parse the CSV data
    for row in csvreader:
        if row[0] == 'SW' or row[0] == 'ES':
            nodes.add(row[1])
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