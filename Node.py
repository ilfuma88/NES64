
import csv
from typing import List
import networkx as nx
import matplotlib.pyplot as plt

import ReadyQueue
import Stream


class Node:
    """
    Represents a node in the network.
    
    Attributes:
        name (str): The name of the node.
        type (str): The type of the node (e.g., SW, ES).
        streams (list of Stream): An array of Stream objects associated with the node.
        ready_queues (list of ReadyQueue): An array of ReadyQueue objects associated with the node.
                                            Its a double nested array, where the outer array represents the ports,
                                            and the inner array represents the ready queue for the port.
    """
    
    name: str
    type: str
    streams: List[Stream]
    ready_queues: List[List[ReadyQueue]]

    
    
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
        Adds a Stream object to the streams list.
        
        Args:
            stream (Stream): The Stream object to be added.
        """
        self.streams.append(stream)

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
