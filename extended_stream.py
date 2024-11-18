from typing import TYPE_CHECKING
from network_stream import NetworkStream

if TYPE_CHECKING:
    from network_node import NetworkNode


class ExtendedStream:
    """
    This class rapresents a stream inside a specific Node.
    So Network stream object is the same in all the ExtendedStream objects through the stream path,
    but the prev_node and next_node are different and th eport are obviuosly node specific.
    the out_port is the outbound port from the node.
    (inbound port is not needed for now cause the prev bode is used when devising QAR2(?))
    Attributes:
        stream (NetworkStream): The stream object.
        prev_node (NetworkNode): The previous node.
        next_node (NetworkNode): The next node.
        port (str): The port.
        shaped_queue_index (int): The index of the shaped queue the stream is assigned to.
    """
    stream: NetworkStream
    prev_node: str
    next_node: str
    out_port: str
    shaped_queue_index:int
    
    
    def __init__(self, stream: NetworkStream, prev_node: str, next_node: str, out_port: str):
        self.stream = stream
        self.prev_node = prev_node
        self.next_node = next_node
        self.out_port = out_port
        shaped_queue_index:int = None
