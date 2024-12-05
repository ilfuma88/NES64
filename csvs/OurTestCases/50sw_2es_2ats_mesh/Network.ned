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
        Switch_5: TsnSwitch {}
        Switch_6: TsnSwitch {}
        Switch_7: TsnSwitch {}
        Switch_8: TsnSwitch {}
        Switch_9: TsnSwitch {}
        Switch_10: TsnSwitch {}
        Switch_11: TsnSwitch {}
        Switch_12: TsnSwitch {}
        Switch_13: TsnSwitch {}
        Switch_14: TsnSwitch {}
        Switch_15: TsnSwitch {}
        Switch_16: TsnSwitch {}
        Switch_17: TsnSwitch {}
        Switch_18: TsnSwitch {}
        Switch_19: TsnSwitch {}
        Switch_20: TsnSwitch {}
        Switch_21: TsnSwitch {}
        Switch_22: TsnSwitch {}
        Switch_23: TsnSwitch {}
        Switch_24: TsnSwitch {}
        Switch_25: TsnSwitch {}
        Switch_26: TsnSwitch {}
        Switch_27: TsnSwitch {}
        Switch_28: TsnSwitch {}
        Switch_29: TsnSwitch {}
        Switch_30: TsnSwitch {}
        Switch_31: TsnSwitch {}
        Switch_32: TsnSwitch {}
        Switch_33: TsnSwitch {}
        Switch_34: TsnSwitch {}
        Switch_35: TsnSwitch {}
        Switch_36: TsnSwitch {}
        Switch_37: TsnSwitch {}
        Switch_38: TsnSwitch {}
        Switch_39: TsnSwitch {}
        Switch_40: TsnSwitch {}
        Switch_41: TsnSwitch {}
        Switch_42: TsnSwitch {}
        Switch_43: TsnSwitch {}
        Switch_44: TsnSwitch {}
        Switch_45: TsnSwitch {}
        Switch_46: TsnSwitch {}
        Switch_47: TsnSwitch {}
        Switch_48: TsnSwitch {}
        Switch_49: TsnSwitch {}
        Switch_50: TsnSwitch {}
        ES_1: TsnDevice {}
        ES_2: TsnDevice {}
        ES_3: TsnDevice {}
        ES_4: TsnDevice {}
        ES_5: TsnDevice {}
        ES_6: TsnDevice {}
        ES_7: TsnDevice {}
        ES_8: TsnDevice {}
        ES_9: TsnDevice {}
        ES_10: TsnDevice {}
        ES_11: TsnDevice {}
        ES_12: TsnDevice {}
        ES_13: TsnDevice {}
        ES_14: TsnDevice {}
        ES_15: TsnDevice {}
        ES_16: TsnDevice {}
        ES_17: TsnDevice {}
        ES_18: TsnDevice {}
        ES_19: TsnDevice {}
        ES_20: TsnDevice {}
        ES_21: TsnDevice {}
        ES_22: TsnDevice {}
        ES_23: TsnDevice {}
        ES_24: TsnDevice {}
        ES_25: TsnDevice {}
        ES_26: TsnDevice {}
        ES_27: TsnDevice {}
        ES_28: TsnDevice {}
        ES_29: TsnDevice {}
        ES_30: TsnDevice {}
        ES_31: TsnDevice {}
        ES_32: TsnDevice {}
        ES_33: TsnDevice {}
        ES_34: TsnDevice {}
        ES_35: TsnDevice {}
        ES_36: TsnDevice {}
        ES_37: TsnDevice {}
        ES_38: TsnDevice {}
        ES_39: TsnDevice {}
        ES_40: TsnDevice {}
        ES_41: TsnDevice {}
        ES_42: TsnDevice {}
        ES_43: TsnDevice {}
        ES_44: TsnDevice {}
        ES_45: TsnDevice {}
        ES_46: TsnDevice {}
        ES_47: TsnDevice {}
        ES_48: TsnDevice {}
        ES_49: TsnDevice {}
        ES_50: TsnDevice {}
        ES_51: TsnDevice {}
        ES_52: TsnDevice {}
        ES_53: TsnDevice {}
        ES_54: TsnDevice {}
        ES_55: TsnDevice {}
        ES_56: TsnDevice {}
        ES_57: TsnDevice {}
        ES_58: TsnDevice {}
        ES_59: TsnDevice {}
        ES_60: TsnDevice {}
        ES_61: TsnDevice {}
        ES_62: TsnDevice {}
        ES_63: TsnDevice {}
        ES_64: TsnDevice {}
        ES_65: TsnDevice {}
        ES_66: TsnDevice {}
        ES_67: TsnDevice {}
        ES_68: TsnDevice {}
        ES_69: TsnDevice {}
        ES_70: TsnDevice {}
        ES_71: TsnDevice {}
        ES_72: TsnDevice {}
        ES_73: TsnDevice {}
        ES_74: TsnDevice {}
        ES_75: TsnDevice {}
        ES_76: TsnDevice {}
        ES_77: TsnDevice {}
        ES_78: TsnDevice {}
        ES_79: TsnDevice {}
        ES_80: TsnDevice {}
        ES_81: TsnDevice {}
        ES_82: TsnDevice {}
        ES_83: TsnDevice {}
        ES_84: TsnDevice {}
        ES_85: TsnDevice {}
        ES_86: TsnDevice {}
        ES_87: TsnDevice {}
        ES_88: TsnDevice {}
        ES_89: TsnDevice {}
        ES_90: TsnDevice {}
        ES_91: TsnDevice {}
        ES_92: TsnDevice {}
        ES_93: TsnDevice {}
        ES_94: TsnDevice {}
        ES_95: TsnDevice {}
        ES_96: TsnDevice {}
        ES_97: TsnDevice {}
        ES_98: TsnDevice {}
        ES_99: TsnDevice {}
        ES_100: TsnDevice {}
    connections:
        ES_1.ethg++ <--> Eth1G <--> Switch_1.ethg++;
        ES_2.ethg++ <--> Eth1G <--> Switch_1.ethg++;
        ES_3.ethg++ <--> Eth1G <--> Switch_2.ethg++;
        ES_4.ethg++ <--> Eth1G <--> Switch_2.ethg++;
        ES_5.ethg++ <--> Eth1G <--> Switch_3.ethg++;
        ES_6.ethg++ <--> Eth1G <--> Switch_3.ethg++;
        ES_7.ethg++ <--> Eth1G <--> Switch_4.ethg++;
        ES_8.ethg++ <--> Eth1G <--> Switch_4.ethg++;
        ES_9.ethg++ <--> Eth1G <--> Switch_5.ethg++;
        ES_10.ethg++ <--> Eth1G <--> Switch_5.ethg++;
        ES_11.ethg++ <--> Eth1G <--> Switch_6.ethg++;
        ES_12.ethg++ <--> Eth1G <--> Switch_6.ethg++;
        ES_13.ethg++ <--> Eth1G <--> Switch_7.ethg++;
        ES_14.ethg++ <--> Eth1G <--> Switch_7.ethg++;
        ES_15.ethg++ <--> Eth1G <--> Switch_8.ethg++;
        ES_16.ethg++ <--> Eth1G <--> Switch_8.ethg++;
        ES_17.ethg++ <--> Eth1G <--> Switch_9.ethg++;
        ES_18.ethg++ <--> Eth1G <--> Switch_9.ethg++;
        ES_19.ethg++ <--> Eth1G <--> Switch_10.ethg++;
        ES_20.ethg++ <--> Eth1G <--> Switch_10.ethg++;
        ES_21.ethg++ <--> Eth1G <--> Switch_11.ethg++;
        ES_22.ethg++ <--> Eth1G <--> Switch_11.ethg++;
        ES_23.ethg++ <--> Eth1G <--> Switch_12.ethg++;
        ES_24.ethg++ <--> Eth1G <--> Switch_12.ethg++;
        ES_25.ethg++ <--> Eth1G <--> Switch_13.ethg++;
        ES_26.ethg++ <--> Eth1G <--> Switch_13.ethg++;
        ES_27.ethg++ <--> Eth1G <--> Switch_14.ethg++;
        ES_28.ethg++ <--> Eth1G <--> Switch_14.ethg++;
        ES_29.ethg++ <--> Eth1G <--> Switch_15.ethg++;
        ES_30.ethg++ <--> Eth1G <--> Switch_15.ethg++;
        ES_31.ethg++ <--> Eth1G <--> Switch_16.ethg++;
        ES_32.ethg++ <--> Eth1G <--> Switch_16.ethg++;
        ES_33.ethg++ <--> Eth1G <--> Switch_17.ethg++;
        ES_34.ethg++ <--> Eth1G <--> Switch_17.ethg++;
        ES_35.ethg++ <--> Eth1G <--> Switch_18.ethg++;
        ES_36.ethg++ <--> Eth1G <--> Switch_18.ethg++;
        ES_37.ethg++ <--> Eth1G <--> Switch_19.ethg++;
        ES_38.ethg++ <--> Eth1G <--> Switch_19.ethg++;
        ES_39.ethg++ <--> Eth1G <--> Switch_20.ethg++;
        ES_40.ethg++ <--> Eth1G <--> Switch_20.ethg++;
        ES_41.ethg++ <--> Eth1G <--> Switch_21.ethg++;
        ES_42.ethg++ <--> Eth1G <--> Switch_21.ethg++;
        ES_43.ethg++ <--> Eth1G <--> Switch_22.ethg++;
        ES_44.ethg++ <--> Eth1G <--> Switch_22.ethg++;
        ES_45.ethg++ <--> Eth1G <--> Switch_23.ethg++;
        ES_46.ethg++ <--> Eth1G <--> Switch_23.ethg++;
        ES_47.ethg++ <--> Eth1G <--> Switch_24.ethg++;
        ES_48.ethg++ <--> Eth1G <--> Switch_24.ethg++;
        ES_49.ethg++ <--> Eth1G <--> Switch_25.ethg++;
        ES_50.ethg++ <--> Eth1G <--> Switch_25.ethg++;
        ES_51.ethg++ <--> Eth1G <--> Switch_26.ethg++;
        ES_52.ethg++ <--> Eth1G <--> Switch_26.ethg++;
        ES_53.ethg++ <--> Eth1G <--> Switch_27.ethg++;
        ES_54.ethg++ <--> Eth1G <--> Switch_27.ethg++;
        ES_55.ethg++ <--> Eth1G <--> Switch_28.ethg++;
        ES_56.ethg++ <--> Eth1G <--> Switch_28.ethg++;
        ES_57.ethg++ <--> Eth1G <--> Switch_29.ethg++;
        ES_58.ethg++ <--> Eth1G <--> Switch_29.ethg++;
        ES_59.ethg++ <--> Eth1G <--> Switch_30.ethg++;
        ES_60.ethg++ <--> Eth1G <--> Switch_30.ethg++;
        ES_61.ethg++ <--> Eth1G <--> Switch_31.ethg++;
        ES_62.ethg++ <--> Eth1G <--> Switch_31.ethg++;
        ES_63.ethg++ <--> Eth1G <--> Switch_32.ethg++;
        ES_64.ethg++ <--> Eth1G <--> Switch_32.ethg++;
        ES_65.ethg++ <--> Eth1G <--> Switch_33.ethg++;
        ES_66.ethg++ <--> Eth1G <--> Switch_33.ethg++;
        ES_67.ethg++ <--> Eth1G <--> Switch_34.ethg++;
        ES_68.ethg++ <--> Eth1G <--> Switch_34.ethg++;
        ES_69.ethg++ <--> Eth1G <--> Switch_35.ethg++;
        ES_70.ethg++ <--> Eth1G <--> Switch_35.ethg++;
        ES_71.ethg++ <--> Eth1G <--> Switch_36.ethg++;
        ES_72.ethg++ <--> Eth1G <--> Switch_36.ethg++;
        ES_73.ethg++ <--> Eth1G <--> Switch_37.ethg++;
        ES_74.ethg++ <--> Eth1G <--> Switch_37.ethg++;
        ES_75.ethg++ <--> Eth1G <--> Switch_38.ethg++;
        ES_76.ethg++ <--> Eth1G <--> Switch_38.ethg++;
        ES_77.ethg++ <--> Eth1G <--> Switch_39.ethg++;
        ES_78.ethg++ <--> Eth1G <--> Switch_39.ethg++;
        ES_79.ethg++ <--> Eth1G <--> Switch_40.ethg++;
        ES_80.ethg++ <--> Eth1G <--> Switch_40.ethg++;
        ES_81.ethg++ <--> Eth1G <--> Switch_41.ethg++;
        ES_82.ethg++ <--> Eth1G <--> Switch_41.ethg++;
        ES_83.ethg++ <--> Eth1G <--> Switch_42.ethg++;
        ES_84.ethg++ <--> Eth1G <--> Switch_42.ethg++;
        ES_85.ethg++ <--> Eth1G <--> Switch_43.ethg++;
        ES_86.ethg++ <--> Eth1G <--> Switch_43.ethg++;
        ES_87.ethg++ <--> Eth1G <--> Switch_44.ethg++;
        ES_88.ethg++ <--> Eth1G <--> Switch_44.ethg++;
        ES_89.ethg++ <--> Eth1G <--> Switch_45.ethg++;
        ES_90.ethg++ <--> Eth1G <--> Switch_45.ethg++;
        ES_91.ethg++ <--> Eth1G <--> Switch_46.ethg++;
        ES_92.ethg++ <--> Eth1G <--> Switch_46.ethg++;
        ES_93.ethg++ <--> Eth1G <--> Switch_47.ethg++;
        ES_94.ethg++ <--> Eth1G <--> Switch_47.ethg++;
        ES_95.ethg++ <--> Eth1G <--> Switch_48.ethg++;
        ES_96.ethg++ <--> Eth1G <--> Switch_48.ethg++;
        ES_97.ethg++ <--> Eth1G <--> Switch_49.ethg++;
        ES_98.ethg++ <--> Eth1G <--> Switch_49.ethg++;
        ES_99.ethg++ <--> Eth1G <--> Switch_50.ethg++;
        ES_100.ethg++ <--> Eth1G <--> Switch_50.ethg++;
        Switch_1.ethg++ <--> Eth1G <--> Switch_9.ethg++;
        Switch_1.ethg++ <--> Eth1G <--> Switch_2.ethg++;
        Switch_2.ethg++ <--> Eth1G <--> Switch_10.ethg++;
        Switch_2.ethg++ <--> Eth1G <--> Switch_3.ethg++;
        Switch_3.ethg++ <--> Eth1G <--> Switch_11.ethg++;
        Switch_3.ethg++ <--> Eth1G <--> Switch_4.ethg++;
        Switch_4.ethg++ <--> Eth1G <--> Switch_12.ethg++;
        Switch_4.ethg++ <--> Eth1G <--> Switch_5.ethg++;
        Switch_5.ethg++ <--> Eth1G <--> Switch_13.ethg++;
        Switch_5.ethg++ <--> Eth1G <--> Switch_6.ethg++;
        Switch_6.ethg++ <--> Eth1G <--> Switch_14.ethg++;
        Switch_6.ethg++ <--> Eth1G <--> Switch_7.ethg++;
        Switch_7.ethg++ <--> Eth1G <--> Switch_15.ethg++;
        Switch_7.ethg++ <--> Eth1G <--> Switch_8.ethg++;
        Switch_8.ethg++ <--> Eth1G <--> Switch_16.ethg++;
        Switch_9.ethg++ <--> Eth1G <--> Switch_17.ethg++;
        Switch_9.ethg++ <--> Eth1G <--> Switch_10.ethg++;
        Switch_10.ethg++ <--> Eth1G <--> Switch_18.ethg++;
        Switch_10.ethg++ <--> Eth1G <--> Switch_11.ethg++;
        Switch_11.ethg++ <--> Eth1G <--> Switch_19.ethg++;
        Switch_11.ethg++ <--> Eth1G <--> Switch_12.ethg++;
        Switch_12.ethg++ <--> Eth1G <--> Switch_20.ethg++;
        Switch_12.ethg++ <--> Eth1G <--> Switch_13.ethg++;
        Switch_13.ethg++ <--> Eth1G <--> Switch_21.ethg++;
        Switch_13.ethg++ <--> Eth1G <--> Switch_14.ethg++;
        Switch_14.ethg++ <--> Eth1G <--> Switch_22.ethg++;
        Switch_14.ethg++ <--> Eth1G <--> Switch_15.ethg++;
        Switch_15.ethg++ <--> Eth1G <--> Switch_23.ethg++;
        Switch_15.ethg++ <--> Eth1G <--> Switch_16.ethg++;
        Switch_16.ethg++ <--> Eth1G <--> Switch_24.ethg++;
        Switch_17.ethg++ <--> Eth1G <--> Switch_25.ethg++;
        Switch_17.ethg++ <--> Eth1G <--> Switch_18.ethg++;
        Switch_18.ethg++ <--> Eth1G <--> Switch_26.ethg++;
        Switch_18.ethg++ <--> Eth1G <--> Switch_19.ethg++;
        Switch_19.ethg++ <--> Eth1G <--> Switch_27.ethg++;
        Switch_19.ethg++ <--> Eth1G <--> Switch_20.ethg++;
        Switch_20.ethg++ <--> Eth1G <--> Switch_28.ethg++;
        Switch_20.ethg++ <--> Eth1G <--> Switch_21.ethg++;
        Switch_21.ethg++ <--> Eth1G <--> Switch_29.ethg++;
        Switch_21.ethg++ <--> Eth1G <--> Switch_22.ethg++;
        Switch_22.ethg++ <--> Eth1G <--> Switch_30.ethg++;
        Switch_22.ethg++ <--> Eth1G <--> Switch_23.ethg++;
        Switch_23.ethg++ <--> Eth1G <--> Switch_31.ethg++;
        Switch_23.ethg++ <--> Eth1G <--> Switch_24.ethg++;
        Switch_24.ethg++ <--> Eth1G <--> Switch_32.ethg++;
        Switch_25.ethg++ <--> Eth1G <--> Switch_33.ethg++;
        Switch_25.ethg++ <--> Eth1G <--> Switch_26.ethg++;
        Switch_26.ethg++ <--> Eth1G <--> Switch_34.ethg++;
        Switch_26.ethg++ <--> Eth1G <--> Switch_27.ethg++;
        Switch_27.ethg++ <--> Eth1G <--> Switch_35.ethg++;
        Switch_27.ethg++ <--> Eth1G <--> Switch_28.ethg++;
        Switch_28.ethg++ <--> Eth1G <--> Switch_36.ethg++;
        Switch_28.ethg++ <--> Eth1G <--> Switch_29.ethg++;
        Switch_29.ethg++ <--> Eth1G <--> Switch_37.ethg++;
        Switch_29.ethg++ <--> Eth1G <--> Switch_30.ethg++;
        Switch_30.ethg++ <--> Eth1G <--> Switch_38.ethg++;
        Switch_30.ethg++ <--> Eth1G <--> Switch_31.ethg++;
        Switch_31.ethg++ <--> Eth1G <--> Switch_39.ethg++;
        Switch_31.ethg++ <--> Eth1G <--> Switch_32.ethg++;
        Switch_32.ethg++ <--> Eth1G <--> Switch_40.ethg++;
        Switch_33.ethg++ <--> Eth1G <--> Switch_41.ethg++;
        Switch_33.ethg++ <--> Eth1G <--> Switch_34.ethg++;
        Switch_34.ethg++ <--> Eth1G <--> Switch_42.ethg++;
        Switch_34.ethg++ <--> Eth1G <--> Switch_35.ethg++;
        Switch_35.ethg++ <--> Eth1G <--> Switch_43.ethg++;
        Switch_35.ethg++ <--> Eth1G <--> Switch_36.ethg++;
        Switch_36.ethg++ <--> Eth1G <--> Switch_44.ethg++;
        Switch_36.ethg++ <--> Eth1G <--> Switch_37.ethg++;
        Switch_37.ethg++ <--> Eth1G <--> Switch_45.ethg++;
        Switch_37.ethg++ <--> Eth1G <--> Switch_38.ethg++;
        Switch_38.ethg++ <--> Eth1G <--> Switch_46.ethg++;
        Switch_38.ethg++ <--> Eth1G <--> Switch_39.ethg++;
        Switch_39.ethg++ <--> Eth1G <--> Switch_47.ethg++;
        Switch_39.ethg++ <--> Eth1G <--> Switch_40.ethg++;
        Switch_40.ethg++ <--> Eth1G <--> Switch_48.ethg++;
        Switch_41.ethg++ <--> Eth1G <--> Switch_49.ethg++;
        Switch_41.ethg++ <--> Eth1G <--> Switch_42.ethg++;
        Switch_42.ethg++ <--> Eth1G <--> Switch_50.ethg++;
        Switch_42.ethg++ <--> Eth1G <--> Switch_43.ethg++;
        Switch_43.ethg++ <--> Eth1G <--> Switch_44.ethg++;
        Switch_44.ethg++ <--> Eth1G <--> Switch_45.ethg++;
        Switch_45.ethg++ <--> Eth1G <--> Switch_46.ethg++;
        Switch_46.ethg++ <--> Eth1G <--> Switch_47.ethg++;
        Switch_47.ethg++ <--> Eth1G <--> Switch_48.ethg++;
        Switch_49.ethg++ <--> Eth1G <--> Switch_50.ethg++;
}