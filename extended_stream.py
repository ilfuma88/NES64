from typing import TYPE_CHECKING
from network_stream import NetworkStream

if TYPE_CHECKING:
    from network_node import NetworkNode


class ExtendedStream:
    stream: NetworkStream
    prev_node: 'NetworkNode'
    next_node: 'NetworkNode'
    
    
    def __init__(self, stream: NetworkStream, prev_node: 'NetworkNode', next_node: 'NetworkNode'):
        self.stream = stream
        self.prev_node = prev_node
        self.next_node = next_node