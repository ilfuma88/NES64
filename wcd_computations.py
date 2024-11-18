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
            if i == len(path) - 1:
                continue #skip the last node cause thers no delay at destination
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
    total_delay:float =0.0
    b_H_total_higher_priority_burst:float =0.0
    b_C_total_burst_same_prio:float =0.0
    b_j_frame_burst:float =0.0
    l_j_frame_minimum_length:float =0.0
    r_link_rate:float =0.0
    r_H_total_reserver_rate_higher_prio:float =0.0
    l_L_max_frame_of_lower_prio:float =0.0
    
    e_stream = node.extended_streams[stream_id]
    out_port = e_stream.out_port
    stream_priority = e_stream.stream.priority
    shaped_queue_index = e_stream.shaped_queue_index
    temp_highest_delay = 0.0
    
    #0 (if 4 has been done ) chechk if the max delay for the shaped queue is computed already
    if node.queues_delay_map[out_port][stream_priority][shaped_queue_index] != None:
        return node.queues_delay_map[out_port][stream_priority][shaped_queue_index]
    
    #1find all the nodes that share the same sahped_ as of stream_id
    for ext_stream in node.queues_map[out_port][stream_priority][shaped_queue_index]:
        #2compute the formula for all the streams that share the same shaped queue
        b_H_total_higher_priority_burst = higher_total_burst(node, ext_stream.stream.stream_id)
        b_C_total_burst_same_prio = same_prio_total_burst(node, ext_stream.stream.stream_id)
        b_j_frame_burst = ext_stream.stream.burst_size
        l_j_frame_minimum_length = ext_stream.stream.burst_size
        r_link_rate = 1 #1GBit per sec
        r_H_total_reserver_rate_higher_prio = hiigher_total_reserver_rate_higher_prio(node, ext_stream.stream.stream_id)
        l_L_max_frame_of_lower_prio = bigger_frame_lower_priority(node, ext_stream.stream.stream_id)
        #making names shorte to make the formula more readable
        b_H :int= b_H_total_higher_priority_burst
        b_C :int= b_C_total_burst_same_prio
        b_j :int= b_j_frame_burst
        l_j :int= l_j_frame_minimum_length
        l_L :int= l_L_max_frame_of_lower_prio
        r   :int= r_link_rate
        r_H :int= r_H_total_reserver_rate_higher_prio
        
        result = ((b_H + b_C + b_j - l_j + l_L) / (r - r_H)) + (l_j / r)
        if result > temp_highest_delay:
            temp_highest_delay = result
            
    #3 save the delay for the futuree nodes in the shaped queue to avoid recomputation
    node.queues_delay_map[out_port][stream_priority][shaped_queue_index] = temp_highest_delay
    #4return the max of the computed delays 
    return temp_highest_delay

def higher_total_burst(node: NetworkNode, stream_id:str) -> int:
    """
    Compute the total burst for higher priority traffic.
    
    Args:
        node (NetworkNode): The node for which to compute the total burst.
        
    Returns:
        float: The total burst for higher priority traffic.
    """
    total_burst :int = 0
    e_stream = node.extended_streams[stream_id]
    out_port = e_stream.out_port
    stream_priority: int = e_stream.stream.priority

    for priority_queue in range(stream_priority):
        for s_queue in node.queues_map[out_port][priority_queue]:
            for stream in s_queue:
                total_burst += stream.stream.burst_size

    return total_burst

def same_prio_total_burst(node: NetworkNode, stream_id:str) -> int:
    """
    Compute the total burst for same priority traffic.
    
    Args:
        node (NetworkNode): The node for which to compute the total burst.
        
    Returns:
        float: The total burst for same priority traffic.
    """
    total_burst:int = 0
    e_stream:ExtendedStream = node.extended_streams[stream_id]
    out_port:int = e_stream.out_port
    stream_priority: int = e_stream.stream.priority

    for s_queue in node.queues_map[out_port][stream_priority]:
        for ext_stream in s_queue:
            total_burst += ext_stream.stream.burst_size
    #instead of checking every time if the stream im computing is stream itself I just
    #add them all and then subtract the stream itself
    total_burst -= e_stream.stream.burst_size
    return total_burst


def hiigher_total_reserver_rate_higher_prio(node: NetworkNode, stream_id:str) -> int:
    """
    Compute the total reserved rate for higher priority traffic.
    questa computation anche si potrebbe ottimizzare salvando il risultato e riutilizzandolo ogni volta 
    per gli stream che sono alla stessa priority ma non e' worthit
    Args:
        node (NetworkNode): The node for which to compute the total reserved rate.
        stream_id (str): The id of the stream for which to compute the higher reserved rate.
    Returns:
        float: The total reserved rate for higher priority traffic.
    """
    total_reserver_rate:float = 0.0
    e_stream:ExtendedStream = node.extended_streams[stream_id]
    out_port:int = e_stream.out_port
    stream_priority: int = e_stream.stream.priority

    for priority_queue in range(stream_priority):
        for s_queue in node.queues_map[out_port][priority_queue]:
            for stream in s_queue:
                total_reserver_rate += stream.stream.committed_rate

    return total_reserver_rate


def bigger_frame_lower_priority(node: NetworkNode, stream_id:str) -> int:
    """
    finds the maximum frame size for lower priority traffic.
    cehck assumptions.md 
    
    Args:
        node (NetworkNode): The node for which to compute the maximum frame size.
        
    Returns:
        float: The maximum frame size for lower priority traffic.
    """
    max_frame_size:int = 0
    e_stream:ExtendedStream = node.extended_streams[stream_id]
    out_port:int = e_stream.out_port
    stream_priority: int = e_stream.stream.priority

    for priority_queue in range(stream_priority, 8):
        for s_queue in node.queues_map[out_port][priority_queue]:
            for ext_stream in s_queue:
                if ext_stream.stream.burst_size > max_frame_size:
                    max_frame_size = ext_stream.stream.burst_size

    return max_frame_size