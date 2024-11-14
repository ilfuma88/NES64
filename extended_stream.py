from network_node import NetworkNode
from network_stream import NetworkStream


class ExtendedStream:
    stream: NetworkStream
    prev_node: NetworkNode
    next_node: NetworkNode
    
    
    def __init__(self, stream: NetworkStream, prev_node: NetworkNode, next_node: NetworkNode):
        self.stream = stream
        self.prev_node = prev_node
        self.next_node = next_node