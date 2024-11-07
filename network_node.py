
from __future__ import annotations
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
    streams_tuples: List[tuple[NetworkStream,NetworkNode,NetworkNode]]

    
    def __init__(self, name: str, node_type: str, n_ports: int, port_names: List[str]):
        """
        Initializes a Node object with a given name and type.
        Mind right now the shaped queues per ready queues are in the number of the ports declared in the topology file,
        and not based on the number of queues really used.
        
        Args:
            name (str): The name of the node.
            node_type (str): The type of the node (e.g., SW, ES).
            n_input_ports: used to initialize the shaped queues
            
    Attributes:
        name (str): The name of the node.
        type (str): The type of the node ('SW' for switch, 'ES' for end system).
        streams_tuples (list): A list of streams tuples  associated with the node.
        n_input_ports (int): The number of input ports.
        ready_queues (list): Ready queues for the node (optional) probably not used.
        queues_map (list of lists): A matrix representing shaped queues. 
                    queues_map[n] rapresent the port n, the matrix of ready queues and shaped queues for port n
                    queues_map[n][0] is the ready queue with priority 0 for port n,
                    queues_map[4][2][1] is the shaped queue 1 for the priority 2 of port 4 
        n_output_ports (int): The number of output ports.
        port_names: List[str]: The names of the ports used in the topology file
    """
        self.name = name
        self.type = node_type
        self.streams_tuples = []
        self.n_ports = n_ports
        self.port_names = port_names
        self.queues_map = {}        
        for port_name in port_names:
            self.queues_map[port_name] = [[[] for _ in range(n_ports)] for _ in range(8)]
        self.is_active = False #for prints (true if it contains streams) 
        # print(self.queue_map)
        
    def add_stream_tuple(self, stream:tuple):
        """
        Adds a Stream object to the streams list.
        
        Args:
            stream (Stream): The Stream object to be added.
        """
        self.streams_tuples.append(stream)


    def print_streams(self):
        """
        Prints the details of the streams associated with the node.
        """
        for stream in self.streams_tuples:
            print(stream[0])

    def get_stream(self, stream_id):
        """
        Returns the stream with the given stream ID.
        
        Args:
            stream_id (str): The ID of the stream to be returned.
        
        Returns:
            Stream: The Stream object with the given stream ID.
        """
        for stream in self.streams_tuples:
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
        for stream in self.streams_tuples:
            print(f"  - Stream ID: {stream.stream_id}")
        print("Ready Queues:")
        for queue in self.ready_queues:
            print(f"  - Queue ID: {queue.queue_id}")
            
    def print_queues_map(self, key:str=None):
        """
        Prints all the keys in the queues_map if no key is provided.
        If a key is provided, prints the array for that specific key.
        
        Args:
            key (str, optional): The key to print the array for. Defaults to None.
        """
        if key is None:
            print("Keys in queues_map:")
            for k in self.queues_map.keys():
                print(f"  - {k}")
        else:
            if key in self.queues_map:
                print(f"Array for key '{key}':")
                print(self.queues_map[key])
            else:
                print(f"Key '{key}' not found in queues_map.")
