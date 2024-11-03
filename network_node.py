
import csv
from typing import List
import networkx as nx
import matplotlib.pyplot as plt

from ready_queue import ReadyQueue
from network_stream import NetworkStream
from shaped_queue import ShapedQueue 


class NetworkNode:
    """
    Represents a node in the network.
    
    Attributes:
        name (str): The name of the node.
        type (str): The type of the node (e.g., SW, ES).
        streams (list of Stream): An array of Stream objects associated with the node.
    """
    
    name: str
    type: str
    streams: List[NetworkStream]
    
    
    def __init__(self, name: str, node_type: str, n_input_ports: int):
        """
        Initializes a Node object with a given name and type.
        
        Args:
            name (str): The name of the node.
            node_type (str): The type of the node (e.g., SW, ES).
            n_input_ports: used to initialize the shaped queues
            
    Attributes:
        name (str): The name of the node.
        type (str): The type of the node ('SW' for switch, 'ES' for end system).
        streams (list): A list of streams associated with the node.
        n_input_ports (int): The number of input ports.
        ready_queues (list): Ready queues for the node (optional) probably not used.
        queues_matrix (list of lists): A matrix representing shaped queues. 
                    queues_matrix[0] is the ready queue with priority 0, queues_matrix[2][1] is the  
    """
        self.name = name
        self.type = node_type
        self.streams = []
        self.n_input_ports = n_input_ports
        self.queues_matrix = [[[] for _ in range(n_input_ports)] for _ in range(8)] 
        
    def add_stream(self, stream):
        """
        Adds a Stream object to the streams list.
        
        Args:
            stream (Stream): The Stream object to be added.
        """
        self.streams.append(stream)

    def print_shaped_queues(self):
        """
        Prints the details of the shaped queues associated with the node.
        """
        for i in range(8):
            for j in range(self.n_input_ports):
                if( len(self.queues_matrix[i][j]) > 0):
                    print(f"Queue at priority {i} and port_index {j}:")
                    for stream in self.queues_matrix[i][j]:
                        if( stream.stream_id != ""):
                            print(f"  - Stream ID: {stream.stream_id} Stream InPort : {stream.ingress_port}")


    def print_streams(self):
        """
        Prints the details of the streams associated with the node.
        """
        for stream in self.streams:
            print(stream[0])

    def get_stream(self, stream_id):
        """
        Returns the stream with the given stream ID.
        
        Args:
            stream_id (str): The ID of the stream to be returned.
        
        Returns:
            Stream: The Stream object with the given stream ID.
        """
        for stream in self.streams:
            if stream.stream_id == stream_id:
                return stream
        return None

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
