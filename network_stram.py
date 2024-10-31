class NetworkStream:
    def __init__(self,stream_id,stream_type,src_node,dest_node,size,period,deadline,priority):
        self.stream_id = stream_id
        self.stream_type = stream_type
        self.src_node = src_node
        self.dest_node = dest_node
        self.burst_size = size
        self.period = period
        self.deadline = deadline
        self.rate = size/period
        self.priority = priority
        