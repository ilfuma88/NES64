"""file containing the functions to compute the WCD of the streams
"""

from typing import Dict
from extended_stream import ExtendedStream
from network_node import NetworkNode


def wcd_delay_for_network(network_nodeS: Dict[str, NetworkNode], streams_paths:dict[str:list[str]]) -> Dict[str, float]:
    per_hop_delay:float = 0.0
    stream_delay:float = 0.0
    delays_results:Dict[str, float] = {}
    #iterate over the streams and compute the delay for each stream
    for stream_id, path in streams_paths.items():
        #iterate over the nodes in the path and compute the perhop delay
        for i, node_id in enumerate(path):
            per_hop_delay = compute_node_delay_for_stream(network_nodeS[node_id], stream_id)           
            stream_delay += per_hop_delay
        #add the delay for the stream to the results
        delays_results[stream_id] = stream_delay
        stream_delay = 0.0
    return delays_results





def compute_node_delay_for_stream(node: NetworkNode, stream_id:str) -> float:
    """
    Compute the delay for a node based on the WCD algorithm.
    #0 (if 4 has been done ) chechk if the max delay for the shaped queue is computed already
    #
    #1find all the nodes that share the same sahped_ as of stream_id
    #
    #2compute the formula for all the straeams that share the same shaped queue
    #
    #3return the max of the computed delays 
    # 
    #4(and maybe save it somewhere?)
    Args:
        node (NetworkNode): The node for which to compute the delay.
        
    Returns:
        float: The delay for the node.
    """
    total_delay:float
    b_H_total_higher_priority_burst:float
    b_C_total_burst_same_prio:float
    b_j_frame_burst:float
    l_j_frame_minimum_length:float
    l_L_max_frame_of_lower_prio:float
    r_l_ink_rate:float
    r_H_total_reserver_rate_higher_prio:float
    
    #0 (if 4 has been done ) chechk if the max delay for the shaped queue is computed already
    #
    #1find all the nodes that share the same sahped_ as of stream_id
    #
    #2compute the formula for all the straeams that share the same shaped queue
    #
    #3return the max of the computed delays 
    # 
    #4(and maybe save it somewhere?)
    
    #computing all the components of the delay formula
    b_H_total_higher_priority_burst = higher_total_burst(node, stream_id)
    b_C_total_burst_same_prio = same_prio_total_burst(node, stream_id)
    
    #making names shorte to make the formula more readable
    
    b_H = b_H_total_higher_priority_burst
    b_C = b_C_total_burst_same_prio
    b_j = b_j_frame_burst
    l_j = l_j_frame_minimum_length
    l_L = l_L_max_frame_of_lower_prio
    r_l = r_l_ink_rate
    r_H = r_H_total_reserver_rate_higher_prio
    


    return 0.0

def higher_total_burst(node: NetworkNode, stream_id:str) -> float:
    """
    Compute the total burst for higher priority traffic.
    
    Args:
        node (NetworkNode): The node for which to compute the total burst.
        
    Returns:
        float: The total burst for higher priority traffic.
    """
    total_burst = 0.0
    e_stream = node.extended_streams[stream_id]
    out_port = e_stream.out_port
    stream_priority: int = e_stream.stream.priority

    for priority_queue in range(stream_priority):
        for s_queue in node.queues_map[out_port][priority_queue]:
            for stream in s_queue:
                total_burst += stream.stream.burst_size

    return total_burst
    return 0.0

def same_prio_total_burst(node: NetworkNode, stream_id:str) -> float:
    """
    Compute the total burst for same priority traffic.
    
    Args:
        node (NetworkNode): The node for which to compute the total burst.
        
    Returns:
        float: The total burst for same priority traffic.
    """
    total_burst:int = 0.0
    e_stream:ExtendedStream = node.extended_streams[stream_id]
    out_port = e_stream.out_port
    stream_priority: int = e_stream.stream.priority

    for stream in node.queues_map[out_port][stream_priority]:
        total_burst += stream.stream.burst_size
    #instead of checking every time if the stream im computing is stream itself I jus
    #add them ll and then subtract the stream itself
    total_burst -= e_stream.stream.burst_size
    return total_burst