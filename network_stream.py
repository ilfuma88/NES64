class NetworkStream:
    """
    priority is a number from 0 to 7 and we suppose that 0 is the highest priority
    Returns:
        _type_: _description_
    """
    stream_id = ""
    ingress_port = 0 
    def __init__(self,stream_id,stream_type,src_node,dest_node,size,period,deadline,priority):
        self.stream_id = stream_id
        self.stream_type = stream_type
        self.src_node = src_node
        self.dest_node = dest_node
        self.burst_size = size
        self.period = period
        self.deadline = deadline
        self.rate = size/period 
        self.priority = priority#priority is a number from 0 to 7 and we suppose that 0 is the highest priority
        
        
    def __str__(self):
        return "Stream ID: " + self.stream_id + ", Type: " + self.stream_type + ", Source: " \
            + self.src_node + ", Destination: " + self.dest_node + ", Size: " + str(self.burst_size) + \
            ", Period: " + str(self.period) + ", Deadline: " + str(self.deadline) + \
            ", Rate: " + str(self.rate) + ", Priority: " + str(self.priority)
            
            
