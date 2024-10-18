
import csv
import networkx as nx
import matplotlib.pyplot as plt


class Node:
    """
    Represents a node in the network.
    
    Attributes:
        name (str): The name of the node.
        type (str): The type of the node (e.g., SW, ES).
        streams (list of Stream): An array of Stream objects associated with the node.
        ready_queues (list of ReadyQueue): An array of ReadyQueue objects associated with the node.
    """
    def __init__(self, name, node_type):
        """
        Initializes a Node object with a given name and type.
        
        Args:
            name (str): The name of the node.
            node_type (str): The type of the node (e.g., SW, ES).
        """
        self.name = name
        self.type = node_type
        self.streams = []
        self.ready_queues = []

    def add_stream(self, stream):
        """
        Adds a Stream object to the node's streams array.
        
        Args:
            stream (Stream): The Stream object to add.
        """
        self.streams.append(stream)

    def add_ready_queue(self, ready_queue):
        """
        Adds a ReadyQueue object to the node's ready queues array.
        
        Args:
            ready_queue (ReadyQueue): The ReadyQueue object to add.
        """
        self.ready_queues.append(ready_queue)

    def print(self):
        """
        Prints the details of the node, including its streams and ready queues.
        """
        print(f"Node Name: {self.name}")
        print(f"Node Type: {self.type}")
        print("Streams:")
        for stream in self.streams:
            print(f"  - Stream ID: {stream.stream_id}")
        print("Ready Queues:")
        for queue in self.ready_queues:
            print(f"  - Queue ID: {queue.queue_id}")

# Step 1: Read the CSV file
filename = 'csvs/modified_topology.csv'

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