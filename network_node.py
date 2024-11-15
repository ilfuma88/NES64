
from __future__ import annotations
import csv
from typing import Dict, List
import networkx as nx
import matplotlib.pyplot as plt
from extended_stream import ExtendedStream
from ready_queue import ReadyQueue
from network_stream import NetworkStream
from shaped_queue import ShapedQueue 



class NetworkNode:
    
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
        self.name:str = name
        self.types:str = node_type
        self.streams_tuples:List[tuple[NetworkStream,NetworkNode,NetworkNode]] = []
        self.n_ports = n_ports
        self.port_names = port_names
        self.queues_map:Dict[str:List[List[List[ExtendedStream]]]]= {}        
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
            
    def print_queues_map(self, port:str=None):
        """
        Prints all the keys in the queues_map if no key is provided.
        If a port is provided, prints the array for that specific port.
        if port is "all" prints all the arrays for all the ports.
        
        Args:
            port (str, optional): The key to print the array for. Defaults to None.
        """
        if(self.is_active == False):
            print(f"Node {self.name} does not contain any streams.")
            return
        print(f"===========Node: {self.name}====================")
        if port is None:
            print("Keys in queues_map:")
            for p in self.queues_map.keys():
                print(f"  - {p} ")
        elif port=="all":
            for p in self.queues_map.keys():
                print(f"queues for port '{p}':")
                
                queues_matrix = self.queues_map[p]
                if(queues_matrix != []):
                    for priority in range(len(queues_matrix)):
                        print(f"Priority {priority}:")
                        for s_q in range(len(queues_matrix[priority])):
                            if any(queues_matrix[priority][s_q]):
                                print(f"  shaped queue {s_q}:")
                                for e_s in queues_matrix[priority][s_q]:
                                    assert isinstance(e_s, ExtendedStream), f"Expected type {ExtendedStream}, but got {type(e_s)}"
                                    print(f"    - Stream ID: {e_s.stream.stream_id}")
                                    
        else:
            if port in self.queues_map:
                print(f"Array for key '{port}':")
                print(self.queues_map[port])
            else:
                print(f"Key '{port}' not found in queues_map.")
        print("==============================================")