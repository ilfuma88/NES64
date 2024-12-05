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
        Switch_51: TsnSwitch {}
        Switch_52: TsnSwitch {}
        Switch_53: TsnSwitch {}
        Switch_54: TsnSwitch {}
        Switch_55: TsnSwitch {}
        Switch_56: TsnSwitch {}
        Switch_57: TsnSwitch {}
        Switch_58: TsnSwitch {}
        Switch_59: TsnSwitch {}
        Switch_60: TsnSwitch {}
        Switch_61: TsnSwitch {}
        Switch_62: TsnSwitch {}
        Switch_63: TsnSwitch {}
        Switch_64: TsnSwitch {}
        Switch_65: TsnSwitch {}
        Switch_66: TsnSwitch {}
        Switch_67: TsnSwitch {}
        Switch_68: TsnSwitch {}
        Switch_69: TsnSwitch {}
        Switch_70: TsnSwitch {}
        Switch_71: TsnSwitch {}
        Switch_72: TsnSwitch {}
        Switch_73: TsnSwitch {}
        Switch_74: TsnSwitch {}
        Switch_75: TsnSwitch {}
        Switch_76: TsnSwitch {}
        Switch_77: TsnSwitch {}
        Switch_78: TsnSwitch {}
        Switch_79: TsnSwitch {}
        Switch_80: TsnSwitch {}
        Switch_81: TsnSwitch {}
        Switch_82: TsnSwitch {}
        Switch_83: TsnSwitch {}
        Switch_84: TsnSwitch {}
        Switch_85: TsnSwitch {}
        Switch_86: TsnSwitch {}
        Switch_87: TsnSwitch {}
        Switch_88: TsnSwitch {}
        Switch_89: TsnSwitch {}
        Switch_90: TsnSwitch {}
        Switch_91: TsnSwitch {}
        Switch_92: TsnSwitch {}
        Switch_93: TsnSwitch {}
        Switch_94: TsnSwitch {}
        Switch_95: TsnSwitch {}
        Switch_96: TsnSwitch {}
        Switch_97: TsnSwitch {}
        Switch_98: TsnSwitch {}
        Switch_99: TsnSwitch {}
        Switch_100: TsnSwitch {}
        Switch_101: TsnSwitch {}
        Switch_102: TsnSwitch {}
        Switch_103: TsnSwitch {}
        Switch_104: TsnSwitch {}
        Switch_105: TsnSwitch {}
        Switch_106: TsnSwitch {}
        Switch_107: TsnSwitch {}
        Switch_108: TsnSwitch {}
        Switch_109: TsnSwitch {}
        Switch_110: TsnSwitch {}
        Switch_111: TsnSwitch {}
        Switch_112: TsnSwitch {}
        Switch_113: TsnSwitch {}
        Switch_114: TsnSwitch {}
        Switch_115: TsnSwitch {}
        Switch_116: TsnSwitch {}
        Switch_117: TsnSwitch {}
        Switch_118: TsnSwitch {}
        Switch_119: TsnSwitch {}
        Switch_120: TsnSwitch {}
        Switch_121: TsnSwitch {}
        Switch_122: TsnSwitch {}
        Switch_123: TsnSwitch {}
        Switch_124: TsnSwitch {}
        Switch_125: TsnSwitch {}
        Switch_126: TsnSwitch {}
        Switch_127: TsnSwitch {}
        Switch_128: TsnSwitch {}
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
        ES_101: TsnDevice {}
        ES_102: TsnDevice {}
        ES_103: TsnDevice {}
        ES_104: TsnDevice {}
        ES_105: TsnDevice {}
        ES_106: TsnDevice {}
        ES_107: TsnDevice {}
        ES_108: TsnDevice {}
        ES_109: TsnDevice {}
        ES_110: TsnDevice {}
        ES_111: TsnDevice {}
        ES_112: TsnDevice {}
        ES_113: TsnDevice {}
        ES_114: TsnDevice {}
        ES_115: TsnDevice {}
        ES_116: TsnDevice {}
        ES_117: TsnDevice {}
        ES_118: TsnDevice {}
        ES_119: TsnDevice {}
        ES_120: TsnDevice {}
        ES_121: TsnDevice {}
        ES_122: TsnDevice {}
        ES_123: TsnDevice {}
        ES_124: TsnDevice {}
        ES_125: TsnDevice {}
        ES_126: TsnDevice {}
        ES_127: TsnDevice {}
        ES_128: TsnDevice {}
        ES_129: TsnDevice {}
        ES_130: TsnDevice {}
        ES_131: TsnDevice {}
        ES_132: TsnDevice {}
        ES_133: TsnDevice {}
        ES_134: TsnDevice {}
        ES_135: TsnDevice {}
        ES_136: TsnDevice {}
        ES_137: TsnDevice {}
        ES_138: TsnDevice {}
        ES_139: TsnDevice {}
        ES_140: TsnDevice {}
        ES_141: TsnDevice {}
        ES_142: TsnDevice {}
        ES_143: TsnDevice {}
        ES_144: TsnDevice {}
        ES_145: TsnDevice {}
        ES_146: TsnDevice {}
        ES_147: TsnDevice {}
        ES_148: TsnDevice {}
        ES_149: TsnDevice {}
        ES_150: TsnDevice {}
        ES_151: TsnDevice {}
        ES_152: TsnDevice {}
        ES_153: TsnDevice {}
        ES_154: TsnDevice {}
        ES_155: TsnDevice {}
        ES_156: TsnDevice {}
        ES_157: TsnDevice {}
        ES_158: TsnDevice {}
        ES_159: TsnDevice {}
        ES_160: TsnDevice {}
        ES_161: TsnDevice {}
        ES_162: TsnDevice {}
        ES_163: TsnDevice {}
        ES_164: TsnDevice {}
        ES_165: TsnDevice {}
        ES_166: TsnDevice {}
        ES_167: TsnDevice {}
        ES_168: TsnDevice {}
        ES_169: TsnDevice {}
        ES_170: TsnDevice {}
        ES_171: TsnDevice {}
        ES_172: TsnDevice {}
        ES_173: TsnDevice {}
        ES_174: TsnDevice {}
        ES_175: TsnDevice {}
        ES_176: TsnDevice {}
        ES_177: TsnDevice {}
        ES_178: TsnDevice {}
        ES_179: TsnDevice {}
        ES_180: TsnDevice {}
        ES_181: TsnDevice {}
        ES_182: TsnDevice {}
        ES_183: TsnDevice {}
        ES_184: TsnDevice {}
        ES_185: TsnDevice {}
        ES_186: TsnDevice {}
        ES_187: TsnDevice {}
        ES_188: TsnDevice {}
        ES_189: TsnDevice {}
        ES_190: TsnDevice {}
        ES_191: TsnDevice {}
        ES_192: TsnDevice {}
        ES_193: TsnDevice {}
        ES_194: TsnDevice {}
        ES_195: TsnDevice {}
        ES_196: TsnDevice {}
        ES_197: TsnDevice {}
        ES_198: TsnDevice {}
        ES_199: TsnDevice {}
        ES_200: TsnDevice {}
        ES_201: TsnDevice {}
        ES_202: TsnDevice {}
        ES_203: TsnDevice {}
        ES_204: TsnDevice {}
        ES_205: TsnDevice {}
        ES_206: TsnDevice {}
        ES_207: TsnDevice {}
        ES_208: TsnDevice {}
        ES_209: TsnDevice {}
        ES_210: TsnDevice {}
        ES_211: TsnDevice {}
        ES_212: TsnDevice {}
        ES_213: TsnDevice {}
        ES_214: TsnDevice {}
        ES_215: TsnDevice {}
        ES_216: TsnDevice {}
        ES_217: TsnDevice {}
        ES_218: TsnDevice {}
        ES_219: TsnDevice {}
        ES_220: TsnDevice {}
        ES_221: TsnDevice {}
        ES_222: TsnDevice {}
        ES_223: TsnDevice {}
        ES_224: TsnDevice {}
        ES_225: TsnDevice {}
        ES_226: TsnDevice {}
        ES_227: TsnDevice {}
        ES_228: TsnDevice {}
        ES_229: TsnDevice {}
        ES_230: TsnDevice {}
        ES_231: TsnDevice {}
        ES_232: TsnDevice {}
        ES_233: TsnDevice {}
        ES_234: TsnDevice {}
        ES_235: TsnDevice {}
        ES_236: TsnDevice {}
        ES_237: TsnDevice {}
        ES_238: TsnDevice {}
        ES_239: TsnDevice {}
        ES_240: TsnDevice {}
        ES_241: TsnDevice {}
        ES_242: TsnDevice {}
        ES_243: TsnDevice {}
        ES_244: TsnDevice {}
        ES_245: TsnDevice {}
        ES_246: TsnDevice {}
        ES_247: TsnDevice {}
        ES_248: TsnDevice {}
        ES_249: TsnDevice {}
        ES_250: TsnDevice {}
        ES_251: TsnDevice {}
        ES_252: TsnDevice {}
        ES_253: TsnDevice {}
        ES_254: TsnDevice {}
        ES_255: TsnDevice {}
        ES_256: TsnDevice {}
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
        ES_101.ethg++ <--> Eth1G <--> Switch_51.ethg++;
        ES_102.ethg++ <--> Eth1G <--> Switch_51.ethg++;
        ES_103.ethg++ <--> Eth1G <--> Switch_52.ethg++;
        ES_104.ethg++ <--> Eth1G <--> Switch_52.ethg++;
        ES_105.ethg++ <--> Eth1G <--> Switch_53.ethg++;
        ES_106.ethg++ <--> Eth1G <--> Switch_53.ethg++;
        ES_107.ethg++ <--> Eth1G <--> Switch_54.ethg++;
        ES_108.ethg++ <--> Eth1G <--> Switch_54.ethg++;
        ES_109.ethg++ <--> Eth1G <--> Switch_55.ethg++;
        ES_110.ethg++ <--> Eth1G <--> Switch_55.ethg++;
        ES_111.ethg++ <--> Eth1G <--> Switch_56.ethg++;
        ES_112.ethg++ <--> Eth1G <--> Switch_56.ethg++;
        ES_113.ethg++ <--> Eth1G <--> Switch_57.ethg++;
        ES_114.ethg++ <--> Eth1G <--> Switch_57.ethg++;
        ES_115.ethg++ <--> Eth1G <--> Switch_58.ethg++;
        ES_116.ethg++ <--> Eth1G <--> Switch_58.ethg++;
        ES_117.ethg++ <--> Eth1G <--> Switch_59.ethg++;
        ES_118.ethg++ <--> Eth1G <--> Switch_59.ethg++;
        ES_119.ethg++ <--> Eth1G <--> Switch_60.ethg++;
        ES_120.ethg++ <--> Eth1G <--> Switch_60.ethg++;
        ES_121.ethg++ <--> Eth1G <--> Switch_61.ethg++;
        ES_122.ethg++ <--> Eth1G <--> Switch_61.ethg++;
        ES_123.ethg++ <--> Eth1G <--> Switch_62.ethg++;
        ES_124.ethg++ <--> Eth1G <--> Switch_62.ethg++;
        ES_125.ethg++ <--> Eth1G <--> Switch_63.ethg++;
        ES_126.ethg++ <--> Eth1G <--> Switch_63.ethg++;
        ES_127.ethg++ <--> Eth1G <--> Switch_64.ethg++;
        ES_128.ethg++ <--> Eth1G <--> Switch_64.ethg++;
        ES_129.ethg++ <--> Eth1G <--> Switch_65.ethg++;
        ES_130.ethg++ <--> Eth1G <--> Switch_65.ethg++;
        ES_131.ethg++ <--> Eth1G <--> Switch_66.ethg++;
        ES_132.ethg++ <--> Eth1G <--> Switch_66.ethg++;
        ES_133.ethg++ <--> Eth1G <--> Switch_67.ethg++;
        ES_134.ethg++ <--> Eth1G <--> Switch_67.ethg++;
        ES_135.ethg++ <--> Eth1G <--> Switch_68.ethg++;
        ES_136.ethg++ <--> Eth1G <--> Switch_68.ethg++;
        ES_137.ethg++ <--> Eth1G <--> Switch_69.ethg++;
        ES_138.ethg++ <--> Eth1G <--> Switch_69.ethg++;
        ES_139.ethg++ <--> Eth1G <--> Switch_70.ethg++;
        ES_140.ethg++ <--> Eth1G <--> Switch_70.ethg++;
        ES_141.ethg++ <--> Eth1G <--> Switch_71.ethg++;
        ES_142.ethg++ <--> Eth1G <--> Switch_71.ethg++;
        ES_143.ethg++ <--> Eth1G <--> Switch_72.ethg++;
        ES_144.ethg++ <--> Eth1G <--> Switch_72.ethg++;
        ES_145.ethg++ <--> Eth1G <--> Switch_73.ethg++;
        ES_146.ethg++ <--> Eth1G <--> Switch_73.ethg++;
        ES_147.ethg++ <--> Eth1G <--> Switch_74.ethg++;
        ES_148.ethg++ <--> Eth1G <--> Switch_74.ethg++;
        ES_149.ethg++ <--> Eth1G <--> Switch_75.ethg++;
        ES_150.ethg++ <--> Eth1G <--> Switch_75.ethg++;
        ES_151.ethg++ <--> Eth1G <--> Switch_76.ethg++;
        ES_152.ethg++ <--> Eth1G <--> Switch_76.ethg++;
        ES_153.ethg++ <--> Eth1G <--> Switch_77.ethg++;
        ES_154.ethg++ <--> Eth1G <--> Switch_77.ethg++;
        ES_155.ethg++ <--> Eth1G <--> Switch_78.ethg++;
        ES_156.ethg++ <--> Eth1G <--> Switch_78.ethg++;
        ES_157.ethg++ <--> Eth1G <--> Switch_79.ethg++;
        ES_158.ethg++ <--> Eth1G <--> Switch_79.ethg++;
        ES_159.ethg++ <--> Eth1G <--> Switch_80.ethg++;
        ES_160.ethg++ <--> Eth1G <--> Switch_80.ethg++;
        ES_161.ethg++ <--> Eth1G <--> Switch_81.ethg++;
        ES_162.ethg++ <--> Eth1G <--> Switch_81.ethg++;
        ES_163.ethg++ <--> Eth1G <--> Switch_82.ethg++;
        ES_164.ethg++ <--> Eth1G <--> Switch_82.ethg++;
        ES_165.ethg++ <--> Eth1G <--> Switch_83.ethg++;
        ES_166.ethg++ <--> Eth1G <--> Switch_83.ethg++;
        ES_167.ethg++ <--> Eth1G <--> Switch_84.ethg++;
        ES_168.ethg++ <--> Eth1G <--> Switch_84.ethg++;
        ES_169.ethg++ <--> Eth1G <--> Switch_85.ethg++;
        ES_170.ethg++ <--> Eth1G <--> Switch_85.ethg++;
        ES_171.ethg++ <--> Eth1G <--> Switch_86.ethg++;
        ES_172.ethg++ <--> Eth1G <--> Switch_86.ethg++;
        ES_173.ethg++ <--> Eth1G <--> Switch_87.ethg++;
        ES_174.ethg++ <--> Eth1G <--> Switch_87.ethg++;
        ES_175.ethg++ <--> Eth1G <--> Switch_88.ethg++;
        ES_176.ethg++ <--> Eth1G <--> Switch_88.ethg++;
        ES_177.ethg++ <--> Eth1G <--> Switch_89.ethg++;
        ES_178.ethg++ <--> Eth1G <--> Switch_89.ethg++;
        ES_179.ethg++ <--> Eth1G <--> Switch_90.ethg++;
        ES_180.ethg++ <--> Eth1G <--> Switch_90.ethg++;
        ES_181.ethg++ <--> Eth1G <--> Switch_91.ethg++;
        ES_182.ethg++ <--> Eth1G <--> Switch_91.ethg++;
        ES_183.ethg++ <--> Eth1G <--> Switch_92.ethg++;
        ES_184.ethg++ <--> Eth1G <--> Switch_92.ethg++;
        ES_185.ethg++ <--> Eth1G <--> Switch_93.ethg++;
        ES_186.ethg++ <--> Eth1G <--> Switch_93.ethg++;
        ES_187.ethg++ <--> Eth1G <--> Switch_94.ethg++;
        ES_188.ethg++ <--> Eth1G <--> Switch_94.ethg++;
        ES_189.ethg++ <--> Eth1G <--> Switch_95.ethg++;
        ES_190.ethg++ <--> Eth1G <--> Switch_95.ethg++;
        ES_191.ethg++ <--> Eth1G <--> Switch_96.ethg++;
        ES_192.ethg++ <--> Eth1G <--> Switch_96.ethg++;
        ES_193.ethg++ <--> Eth1G <--> Switch_97.ethg++;
        ES_194.ethg++ <--> Eth1G <--> Switch_97.ethg++;
        ES_195.ethg++ <--> Eth1G <--> Switch_98.ethg++;
        ES_196.ethg++ <--> Eth1G <--> Switch_98.ethg++;
        ES_197.ethg++ <--> Eth1G <--> Switch_99.ethg++;
        ES_198.ethg++ <--> Eth1G <--> Switch_99.ethg++;
        ES_199.ethg++ <--> Eth1G <--> Switch_100.ethg++;
        ES_200.ethg++ <--> Eth1G <--> Switch_100.ethg++;
        ES_201.ethg++ <--> Eth1G <--> Switch_101.ethg++;
        ES_202.ethg++ <--> Eth1G <--> Switch_101.ethg++;
        ES_203.ethg++ <--> Eth1G <--> Switch_102.ethg++;
        ES_204.ethg++ <--> Eth1G <--> Switch_102.ethg++;
        ES_205.ethg++ <--> Eth1G <--> Switch_103.ethg++;
        ES_206.ethg++ <--> Eth1G <--> Switch_103.ethg++;
        ES_207.ethg++ <--> Eth1G <--> Switch_104.ethg++;
        ES_208.ethg++ <--> Eth1G <--> Switch_104.ethg++;
        ES_209.ethg++ <--> Eth1G <--> Switch_105.ethg++;
        ES_210.ethg++ <--> Eth1G <--> Switch_105.ethg++;
        ES_211.ethg++ <--> Eth1G <--> Switch_106.ethg++;
        ES_212.ethg++ <--> Eth1G <--> Switch_106.ethg++;
        ES_213.ethg++ <--> Eth1G <--> Switch_107.ethg++;
        ES_214.ethg++ <--> Eth1G <--> Switch_107.ethg++;
        ES_215.ethg++ <--> Eth1G <--> Switch_108.ethg++;
        ES_216.ethg++ <--> Eth1G <--> Switch_108.ethg++;
        ES_217.ethg++ <--> Eth1G <--> Switch_109.ethg++;
        ES_218.ethg++ <--> Eth1G <--> Switch_109.ethg++;
        ES_219.ethg++ <--> Eth1G <--> Switch_110.ethg++;
        ES_220.ethg++ <--> Eth1G <--> Switch_110.ethg++;
        ES_221.ethg++ <--> Eth1G <--> Switch_111.ethg++;
        ES_222.ethg++ <--> Eth1G <--> Switch_111.ethg++;
        ES_223.ethg++ <--> Eth1G <--> Switch_112.ethg++;
        ES_224.ethg++ <--> Eth1G <--> Switch_112.ethg++;
        ES_225.ethg++ <--> Eth1G <--> Switch_113.ethg++;
        ES_226.ethg++ <--> Eth1G <--> Switch_113.ethg++;
        ES_227.ethg++ <--> Eth1G <--> Switch_114.ethg++;
        ES_228.ethg++ <--> Eth1G <--> Switch_114.ethg++;
        ES_229.ethg++ <--> Eth1G <--> Switch_115.ethg++;
        ES_230.ethg++ <--> Eth1G <--> Switch_115.ethg++;
        ES_231.ethg++ <--> Eth1G <--> Switch_116.ethg++;
        ES_232.ethg++ <--> Eth1G <--> Switch_116.ethg++;
        ES_233.ethg++ <--> Eth1G <--> Switch_117.ethg++;
        ES_234.ethg++ <--> Eth1G <--> Switch_117.ethg++;
        ES_235.ethg++ <--> Eth1G <--> Switch_118.ethg++;
        ES_236.ethg++ <--> Eth1G <--> Switch_118.ethg++;
        ES_237.ethg++ <--> Eth1G <--> Switch_119.ethg++;
        ES_238.ethg++ <--> Eth1G <--> Switch_119.ethg++;
        ES_239.ethg++ <--> Eth1G <--> Switch_120.ethg++;
        ES_240.ethg++ <--> Eth1G <--> Switch_120.ethg++;
        ES_241.ethg++ <--> Eth1G <--> Switch_121.ethg++;
        ES_242.ethg++ <--> Eth1G <--> Switch_121.ethg++;
        ES_243.ethg++ <--> Eth1G <--> Switch_122.ethg++;
        ES_244.ethg++ <--> Eth1G <--> Switch_122.ethg++;
        ES_245.ethg++ <--> Eth1G <--> Switch_123.ethg++;
        ES_246.ethg++ <--> Eth1G <--> Switch_123.ethg++;
        ES_247.ethg++ <--> Eth1G <--> Switch_124.ethg++;
        ES_248.ethg++ <--> Eth1G <--> Switch_124.ethg++;
        ES_249.ethg++ <--> Eth1G <--> Switch_125.ethg++;
        ES_250.ethg++ <--> Eth1G <--> Switch_125.ethg++;
        ES_251.ethg++ <--> Eth1G <--> Switch_126.ethg++;
        ES_252.ethg++ <--> Eth1G <--> Switch_126.ethg++;
        ES_253.ethg++ <--> Eth1G <--> Switch_127.ethg++;
        ES_254.ethg++ <--> Eth1G <--> Switch_127.ethg++;
        ES_255.ethg++ <--> Eth1G <--> Switch_128.ethg++;
        ES_256.ethg++ <--> Eth1G <--> Switch_128.ethg++;
        Switch_1.ethg++ <--> Eth1G <--> Switch_2.ethg++;
        Switch_1.ethg++ <--> Eth1G <--> Switch_128.ethg++;
        Switch_2.ethg++ <--> Eth1G <--> Switch_3.ethg++;
        Switch_3.ethg++ <--> Eth1G <--> Switch_4.ethg++;
        Switch_4.ethg++ <--> Eth1G <--> Switch_5.ethg++;
        Switch_5.ethg++ <--> Eth1G <--> Switch_6.ethg++;
        Switch_6.ethg++ <--> Eth1G <--> Switch_7.ethg++;
        Switch_7.ethg++ <--> Eth1G <--> Switch_8.ethg++;
        Switch_8.ethg++ <--> Eth1G <--> Switch_9.ethg++;
        Switch_9.ethg++ <--> Eth1G <--> Switch_10.ethg++;
        Switch_10.ethg++ <--> Eth1G <--> Switch_11.ethg++;
        Switch_11.ethg++ <--> Eth1G <--> Switch_12.ethg++;
        Switch_12.ethg++ <--> Eth1G <--> Switch_13.ethg++;
        Switch_13.ethg++ <--> Eth1G <--> Switch_14.ethg++;
        Switch_14.ethg++ <--> Eth1G <--> Switch_15.ethg++;
        Switch_15.ethg++ <--> Eth1G <--> Switch_16.ethg++;
        Switch_16.ethg++ <--> Eth1G <--> Switch_17.ethg++;
        Switch_17.ethg++ <--> Eth1G <--> Switch_18.ethg++;
        Switch_18.ethg++ <--> Eth1G <--> Switch_19.ethg++;
        Switch_19.ethg++ <--> Eth1G <--> Switch_20.ethg++;
        Switch_20.ethg++ <--> Eth1G <--> Switch_21.ethg++;
        Switch_21.ethg++ <--> Eth1G <--> Switch_22.ethg++;
        Switch_22.ethg++ <--> Eth1G <--> Switch_23.ethg++;
        Switch_23.ethg++ <--> Eth1G <--> Switch_24.ethg++;
        Switch_24.ethg++ <--> Eth1G <--> Switch_25.ethg++;
        Switch_25.ethg++ <--> Eth1G <--> Switch_26.ethg++;
        Switch_26.ethg++ <--> Eth1G <--> Switch_27.ethg++;
        Switch_27.ethg++ <--> Eth1G <--> Switch_28.ethg++;
        Switch_28.ethg++ <--> Eth1G <--> Switch_29.ethg++;
        Switch_29.ethg++ <--> Eth1G <--> Switch_30.ethg++;
        Switch_30.ethg++ <--> Eth1G <--> Switch_31.ethg++;
        Switch_31.ethg++ <--> Eth1G <--> Switch_32.ethg++;
        Switch_32.ethg++ <--> Eth1G <--> Switch_33.ethg++;
        Switch_33.ethg++ <--> Eth1G <--> Switch_34.ethg++;
        Switch_34.ethg++ <--> Eth1G <--> Switch_35.ethg++;
        Switch_35.ethg++ <--> Eth1G <--> Switch_36.ethg++;
        Switch_36.ethg++ <--> Eth1G <--> Switch_37.ethg++;
        Switch_37.ethg++ <--> Eth1G <--> Switch_38.ethg++;
        Switch_38.ethg++ <--> Eth1G <--> Switch_39.ethg++;
        Switch_39.ethg++ <--> Eth1G <--> Switch_40.ethg++;
        Switch_40.ethg++ <--> Eth1G <--> Switch_41.ethg++;
        Switch_41.ethg++ <--> Eth1G <--> Switch_42.ethg++;
        Switch_42.ethg++ <--> Eth1G <--> Switch_43.ethg++;
        Switch_43.ethg++ <--> Eth1G <--> Switch_44.ethg++;
        Switch_44.ethg++ <--> Eth1G <--> Switch_45.ethg++;
        Switch_45.ethg++ <--> Eth1G <--> Switch_46.ethg++;
        Switch_46.ethg++ <--> Eth1G <--> Switch_47.ethg++;
        Switch_47.ethg++ <--> Eth1G <--> Switch_48.ethg++;
        Switch_48.ethg++ <--> Eth1G <--> Switch_49.ethg++;
        Switch_49.ethg++ <--> Eth1G <--> Switch_50.ethg++;
        Switch_50.ethg++ <--> Eth1G <--> Switch_51.ethg++;
        Switch_51.ethg++ <--> Eth1G <--> Switch_52.ethg++;
        Switch_52.ethg++ <--> Eth1G <--> Switch_53.ethg++;
        Switch_53.ethg++ <--> Eth1G <--> Switch_54.ethg++;
        Switch_54.ethg++ <--> Eth1G <--> Switch_55.ethg++;
        Switch_55.ethg++ <--> Eth1G <--> Switch_56.ethg++;
        Switch_56.ethg++ <--> Eth1G <--> Switch_57.ethg++;
        Switch_57.ethg++ <--> Eth1G <--> Switch_58.ethg++;
        Switch_58.ethg++ <--> Eth1G <--> Switch_59.ethg++;
        Switch_59.ethg++ <--> Eth1G <--> Switch_60.ethg++;
        Switch_60.ethg++ <--> Eth1G <--> Switch_61.ethg++;
        Switch_61.ethg++ <--> Eth1G <--> Switch_62.ethg++;
        Switch_62.ethg++ <--> Eth1G <--> Switch_63.ethg++;
        Switch_63.ethg++ <--> Eth1G <--> Switch_64.ethg++;
        Switch_64.ethg++ <--> Eth1G <--> Switch_65.ethg++;
        Switch_65.ethg++ <--> Eth1G <--> Switch_66.ethg++;
        Switch_66.ethg++ <--> Eth1G <--> Switch_67.ethg++;
        Switch_67.ethg++ <--> Eth1G <--> Switch_68.ethg++;
        Switch_68.ethg++ <--> Eth1G <--> Switch_69.ethg++;
        Switch_69.ethg++ <--> Eth1G <--> Switch_70.ethg++;
        Switch_70.ethg++ <--> Eth1G <--> Switch_71.ethg++;
        Switch_71.ethg++ <--> Eth1G <--> Switch_72.ethg++;
        Switch_72.ethg++ <--> Eth1G <--> Switch_73.ethg++;
        Switch_73.ethg++ <--> Eth1G <--> Switch_74.ethg++;
        Switch_74.ethg++ <--> Eth1G <--> Switch_75.ethg++;
        Switch_75.ethg++ <--> Eth1G <--> Switch_76.ethg++;
        Switch_76.ethg++ <--> Eth1G <--> Switch_77.ethg++;
        Switch_77.ethg++ <--> Eth1G <--> Switch_78.ethg++;
        Switch_78.ethg++ <--> Eth1G <--> Switch_79.ethg++;
        Switch_79.ethg++ <--> Eth1G <--> Switch_80.ethg++;
        Switch_80.ethg++ <--> Eth1G <--> Switch_81.ethg++;
        Switch_81.ethg++ <--> Eth1G <--> Switch_82.ethg++;
        Switch_82.ethg++ <--> Eth1G <--> Switch_83.ethg++;
        Switch_83.ethg++ <--> Eth1G <--> Switch_84.ethg++;
        Switch_84.ethg++ <--> Eth1G <--> Switch_85.ethg++;
        Switch_85.ethg++ <--> Eth1G <--> Switch_86.ethg++;
        Switch_86.ethg++ <--> Eth1G <--> Switch_87.ethg++;
        Switch_87.ethg++ <--> Eth1G <--> Switch_88.ethg++;
        Switch_88.ethg++ <--> Eth1G <--> Switch_89.ethg++;
        Switch_89.ethg++ <--> Eth1G <--> Switch_90.ethg++;
        Switch_90.ethg++ <--> Eth1G <--> Switch_91.ethg++;
        Switch_91.ethg++ <--> Eth1G <--> Switch_92.ethg++;
        Switch_92.ethg++ <--> Eth1G <--> Switch_93.ethg++;
        Switch_93.ethg++ <--> Eth1G <--> Switch_94.ethg++;
        Switch_94.ethg++ <--> Eth1G <--> Switch_95.ethg++;
        Switch_95.ethg++ <--> Eth1G <--> Switch_96.ethg++;
        Switch_96.ethg++ <--> Eth1G <--> Switch_97.ethg++;
        Switch_97.ethg++ <--> Eth1G <--> Switch_98.ethg++;
        Switch_98.ethg++ <--> Eth1G <--> Switch_99.ethg++;
        Switch_99.ethg++ <--> Eth1G <--> Switch_100.ethg++;
        Switch_100.ethg++ <--> Eth1G <--> Switch_101.ethg++;
        Switch_101.ethg++ <--> Eth1G <--> Switch_102.ethg++;
        Switch_102.ethg++ <--> Eth1G <--> Switch_103.ethg++;
        Switch_103.ethg++ <--> Eth1G <--> Switch_104.ethg++;
        Switch_104.ethg++ <--> Eth1G <--> Switch_105.ethg++;
        Switch_105.ethg++ <--> Eth1G <--> Switch_106.ethg++;
        Switch_106.ethg++ <--> Eth1G <--> Switch_107.ethg++;
        Switch_107.ethg++ <--> Eth1G <--> Switch_108.ethg++;
        Switch_108.ethg++ <--> Eth1G <--> Switch_109.ethg++;
        Switch_109.ethg++ <--> Eth1G <--> Switch_110.ethg++;
        Switch_110.ethg++ <--> Eth1G <--> Switch_111.ethg++;
        Switch_111.ethg++ <--> Eth1G <--> Switch_112.ethg++;
        Switch_112.ethg++ <--> Eth1G <--> Switch_113.ethg++;
        Switch_113.ethg++ <--> Eth1G <--> Switch_114.ethg++;
        Switch_114.ethg++ <--> Eth1G <--> Switch_115.ethg++;
        Switch_115.ethg++ <--> Eth1G <--> Switch_116.ethg++;
        Switch_116.ethg++ <--> Eth1G <--> Switch_117.ethg++;
        Switch_117.ethg++ <--> Eth1G <--> Switch_118.ethg++;
        Switch_118.ethg++ <--> Eth1G <--> Switch_119.ethg++;
        Switch_119.ethg++ <--> Eth1G <--> Switch_120.ethg++;
        Switch_120.ethg++ <--> Eth1G <--> Switch_121.ethg++;
        Switch_121.ethg++ <--> Eth1G <--> Switch_122.ethg++;
        Switch_122.ethg++ <--> Eth1G <--> Switch_123.ethg++;
        Switch_123.ethg++ <--> Eth1G <--> Switch_124.ethg++;
        Switch_124.ethg++ <--> Eth1G <--> Switch_125.ethg++;
        Switch_125.ethg++ <--> Eth1G <--> Switch_126.ethg++;
        Switch_126.ethg++ <--> Eth1G <--> Switch_127.ethg++;
        Switch_127.ethg++ <--> Eth1G <--> Switch_128.ethg++;
}