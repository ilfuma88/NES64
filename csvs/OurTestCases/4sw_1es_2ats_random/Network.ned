package tsn;

import inet.networks.base.TsnNetworkBase;
import inet.node.ethernet.Eth1G;
import inet.node.tsn.TsnDevice;
import inet.node.tsn.TsnSwitch;

network TSN_Network extends TsnNetworkBase{
    @display("bgb=1000,1000");
    submodules:
        Switch_1: TsnSwitch {}
        Switch_2: TsnSwitch {}
        Switch_3: TsnSwitch {}
        Switch_4: TsnSwitch {}
        ES_1: TsnDevice {}
        ES_2: TsnDevice {}
        ES_3: TsnDevice {}
        ES_4: TsnDevice {}
    connections:
        ES_1.ethg++ <--> Eth1G <--> Switch_1.ethg++;
        ES_2.ethg++ <--> Eth1G <--> Switch_2.ethg++;
        ES_3.ethg++ <--> Eth1G <--> Switch_3.ethg++;
        ES_4.ethg++ <--> Eth1G <--> Switch_4.ethg++;
        Switch_1.ethg++ <--> Eth1G <--> Switch_2.ethg++;
        Switch_1.ethg++ <--> Eth1G <--> Switch_3.ethg++;
        Switch_1.ethg++ <--> Eth1G <--> Switch_4.ethg++;
        Switch_2.ethg++ <--> Eth1G <--> Switch_3.ethg++;
        Switch_2.ethg++ <--> Eth1G <--> Switch_4.ethg++;
        Switch_3.ethg++ <--> Eth1G <--> Switch_4.ethg++;
}