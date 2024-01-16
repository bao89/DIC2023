/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03
// Date      : Tue Dec 19 15:04:51 2023
/////////////////////////////////////////////////////////////


module Convolution ( clk, rst_n, in_valid, weight_valid, In_IFM_1, In_IFM_2, 
        In_IFM_3, In_IFM_4, In_IFM_5, In_IFM_6, In_IFM_7, In_IFM_8, In_IFM_9, 
        In_Weight_1, In_Weight_2, In_Weight_3, In_Weight_4, In_Weight_5, 
        In_Weight_6, In_Weight_7, In_Weight_8, In_Weight_9, out_valid, Out_OFM
 );
  input [7:0] In_IFM_1;
  input [7:0] In_IFM_2;
  input [7:0] In_IFM_3;
  input [7:0] In_IFM_4;
  input [7:0] In_IFM_5;
  input [7:0] In_IFM_6;
  input [7:0] In_IFM_7;
  input [7:0] In_IFM_8;
  input [7:0] In_IFM_9;
  input [7:0] In_Weight_1;
  input [7:0] In_Weight_2;
  input [7:0] In_Weight_3;
  input [7:0] In_Weight_4;
  input [7:0] In_Weight_5;
  input [7:0] In_Weight_6;
  input [7:0] In_Weight_7;
  input [7:0] In_Weight_8;
  input [7:0] In_Weight_9;
  output [20:0] Out_OFM;
  input clk, rst_n, in_valid, weight_valid;
  output out_valid;
  wire   net8123, ena3, state_cs_1_, clk_gate, clk_out, n_2_net_,
         clk_gate_Weight, N93, N94, N95, N96, N97, N384, N385, N386, N387,
         N388, N389, N390, N391, N392, N393, N394, N395, N396, N397, N398,
         N399, N400, N401, N402, N403, n17, n18, n19, n20, n21, n24, n25, n27,
         n28, n30, n31, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n44,
         n45, n47, n48, n50, n51, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n64, n65, n67, n68, n70, n71, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n84, n85, n87, n88, n90, n91, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n104, n105, n107, n108, n110, n111, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n124, n125,
         n127, n128, n130, n131, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n144, n145, n147, n148, n150, n151, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n164, n165, n167,
         n168, n170, n171, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n184, n185, n187, n188, n190, n191, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n276, n278, n280, n282, n284, n286, n288, n290, n292,
         n294, n296, n298, n300, n302, n304, n306, n308, n310, n312, n318,
         n320, n322, n324, n326, n328, n330, n332, n334, n336, n338, n340,
         n342, n344, n346, n348, n350, n352, n354, n356, n358, n360, n362,
         n364, n366, n368, n370, n372, n374, n376, n378, n380, n382, n384,
         n386, n388, n390, n392, n394, n396, n398, n400, n402, n404, n406,
         n408, n410, n412, n414, n416, n418, n420, n422, n424, n426, n428,
         n430, n432, n434, n436, n438, n440, n442, n444, n446, n448, n450,
         n452, n454, n456, n458, n460, n462, n464, n466, n468, n470, n472,
         n474, n476, n478, n480, n482, n484, n486, n488, n490, n492, n494,
         n496, n498, n500, n502, n504, n506, n508, n510, n512, n514, n516,
         n518, n520, n522, n524, n526, n528, n530, n532, n534, n536, n538,
         n540, n542, n544, n546, n548, n550, n552, n554, n556, n558, n560,
         n562, n564, n566, n568, n570, n572, n574, n576, n578, n580, n582,
         n584, n586, n588, n590, n592, n594, n596, n598, n600, n602, n604,
         n606, n608, n610, n612, n614, n616, N383, N382, N381, N380, N379,
         N378, N377, N376, N375, N374, N373, N372, N371, N370, N369, N368,
         N363, N362, N361, N360, N359, N358, N357, N356, N355, N354, N353,
         N352, N351, N350, N349, N348, N346, N345, N344, N343, N342, N341,
         N340, N339, N338, N337, N336, N335, N334, N333, N332, N331, N327,
         N326, N325, N324, N323, N322, N321, N320, N319, N318, N317, N316,
         N315, N314, N313, N312, N311, N310, N309, N308, N307, N306, N305,
         N304, N303, N302, N301, N300, N299, N298, N297, N296, N295, N294,
         N289, N288, N287, N286, N285, N284, N283, N282, N281, N280, N279,
         N278, N277, N276, N275, N274, N272, N271, N270, N269, N268, N267,
         N266, N265, N264, N263, N262, N261, N260, N259, N258, N257, N253,
         N252, N251, N250, N249, N248, N247, N246, N245, N244, N243, N242,
         N241, N240, N239, N238, N237, N236, N235, N234, N233, N232, N231,
         N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, N219,
         N218, N217, N216, N215, N214, N213, N212, N211, N210, N209, N208,
         N207, N206, N205, N204, N203, N202, N201, N200, N199, N198, N197,
         N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, N186,
         N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, N157,
         N156, N155, N154, N153, N152, N134, N133, N132, N131, N130, N129,
         N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118,
         N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107,
         N106, N105, N104, N103, n620, n621, n622, n623, n624, n625, n626,
         n627, n628, n629, n630, n631, n632, n633, n634, n635, n636, n637,
         n638, n639, n640, n641, n642, n643, n644, n645, n646, n647, n648,
         n649, n650, n651, n652, n653, n654, n655, n656, n657, n658, n659,
         n660, n661, n662, n663, n664, n665, n666, n667, n668, n669, n670,
         n671, n672, n673, n674, n675, n676, n677, n678, n679, n680, n681,
         n682, n683, n684, n685, n686, n687, n688, n689, n690, n691, n692,
         n693, n694, n695, n696, n697, n698, n699, n700, n701, n702, n703,
         n704, n705, n706, n707, n708, n709, n710, n711, n712, n713, n714,
         n715, n716, n717, n718, n719, n720, n721, n722, n723, n724, n725,
         n726, n727, n728, n729, n730, n731, n732, n733, n734, n735, n736,
         n737, n738, n739, n740, n741, n742, n743, n744, n745, n746, n747,
         n748, n749, n750, n751, n752, n753, n754, n755, n756, n757, n758,
         n759, n760, n761, n762, n763, n764, n765, n766, n767, n768, n769,
         n770, n771, n772, n773, n774, n775, n776, n777, n778, n779, n780,
         n781, n782, n783, n784, n785, n786, n787, n788, n789, n790, n791,
         n792, n793, n794, n795, n796, n797, n798, n799,
         SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8,
         SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10,
         SYNOPSYS_UNCONNECTED_11;
  wire   [71:0] In_Buffer;
  wire   [71:0] Weight_Buffer;
  wire   [4:0] count_out;

  ICGx3_ASAP7_75t_R GATED_CG_U0 ( .CLK(clk), .ENA(net8123), .SE(ena3), .GCLK(
        clk_gate) );
  ICGx3_ASAP7_75t_R GATED_CG_U1 ( .CLK(clk), .ENA(net8123), .SE(n_2_net_), 
        .GCLK(clk_out) );
  ICGx3_ASAP7_75t_R GATED_CG_U9 ( .CLK(clk), .ENA(net8123), .SE(weight_valid), 
        .GCLK(clk_gate_Weight) );
  OR2x2_ASAP7_75t_R U32 ( .A(in_valid), .B(state_cs_1_), .Y(n17) );
  OR2x2_ASAP7_75t_R U107 ( .A(In_Weight_9[0]), .B(n628), .Y(n21) );
  OR2x2_ASAP7_75t_R U110 ( .A(In_Weight_9[1]), .B(n627), .Y(n25) );
  OR2x2_ASAP7_75t_R U113 ( .A(In_Weight_9[2]), .B(n630), .Y(n28) );
  OR2x2_ASAP7_75t_R U116 ( .A(In_Weight_9[3]), .B(n630), .Y(n31) );
  OR2x2_ASAP7_75t_R U119 ( .A(In_Weight_9[4]), .B(n630), .Y(n34) );
  OR2x2_ASAP7_75t_R U120 ( .A(weight_valid), .B(Weight_Buffer[4]), .Y(n33) );
  OR2x2_ASAP7_75t_R U122 ( .A(In_Weight_9[5]), .B(n629), .Y(n36) );
  OR2x2_ASAP7_75t_R U123 ( .A(weight_valid), .B(Weight_Buffer[5]), .Y(n35) );
  OR2x2_ASAP7_75t_R U125 ( .A(In_Weight_9[6]), .B(n627), .Y(n38) );
  OR2x2_ASAP7_75t_R U126 ( .A(weight_valid), .B(Weight_Buffer[6]), .Y(n37) );
  OR2x2_ASAP7_75t_R U128 ( .A(In_Weight_9[7]), .B(n630), .Y(n40) );
  OR2x2_ASAP7_75t_R U129 ( .A(weight_valid), .B(Weight_Buffer[7]), .Y(n39) );
  OR2x2_ASAP7_75t_R U131 ( .A(In_Weight_8[0]), .B(n629), .Y(n42) );
  OR2x2_ASAP7_75t_R U134 ( .A(In_Weight_8[1]), .B(n629), .Y(n45) );
  OR2x2_ASAP7_75t_R U137 ( .A(In_Weight_8[2]), .B(n629), .Y(n48) );
  OR2x2_ASAP7_75t_R U140 ( .A(In_Weight_8[3]), .B(n628), .Y(n51) );
  OR2x2_ASAP7_75t_R U143 ( .A(In_Weight_8[4]), .B(n627), .Y(n54) );
  OR2x2_ASAP7_75t_R U144 ( .A(weight_valid), .B(Weight_Buffer[12]), .Y(n53) );
  OR2x2_ASAP7_75t_R U146 ( .A(In_Weight_8[5]), .B(n627), .Y(n56) );
  OR2x2_ASAP7_75t_R U147 ( .A(weight_valid), .B(Weight_Buffer[13]), .Y(n55) );
  OR2x2_ASAP7_75t_R U149 ( .A(In_Weight_8[6]), .B(n627), .Y(n58) );
  OR2x2_ASAP7_75t_R U150 ( .A(weight_valid), .B(Weight_Buffer[14]), .Y(n57) );
  OR2x2_ASAP7_75t_R U152 ( .A(In_Weight_8[7]), .B(n627), .Y(n60) );
  OR2x2_ASAP7_75t_R U153 ( .A(weight_valid), .B(Weight_Buffer[15]), .Y(n59) );
  OR2x2_ASAP7_75t_R U155 ( .A(In_Weight_7[0]), .B(n627), .Y(n62) );
  OR2x2_ASAP7_75t_R U158 ( .A(In_Weight_7[1]), .B(n627), .Y(n65) );
  OR2x2_ASAP7_75t_R U161 ( .A(In_Weight_7[2]), .B(n627), .Y(n68) );
  OR2x2_ASAP7_75t_R U164 ( .A(In_Weight_7[3]), .B(n627), .Y(n71) );
  OR2x2_ASAP7_75t_R U167 ( .A(In_Weight_7[4]), .B(n627), .Y(n74) );
  OR2x2_ASAP7_75t_R U168 ( .A(weight_valid), .B(Weight_Buffer[20]), .Y(n73) );
  OR2x2_ASAP7_75t_R U170 ( .A(In_Weight_7[5]), .B(n627), .Y(n76) );
  OR2x2_ASAP7_75t_R U171 ( .A(weight_valid), .B(Weight_Buffer[21]), .Y(n75) );
  OR2x2_ASAP7_75t_R U173 ( .A(In_Weight_7[6]), .B(n627), .Y(n78) );
  OR2x2_ASAP7_75t_R U174 ( .A(weight_valid), .B(Weight_Buffer[22]), .Y(n77) );
  OR2x2_ASAP7_75t_R U176 ( .A(In_Weight_7[7]), .B(n627), .Y(n80) );
  OR2x2_ASAP7_75t_R U177 ( .A(weight_valid), .B(Weight_Buffer[23]), .Y(n79) );
  OR2x2_ASAP7_75t_R U179 ( .A(In_Weight_6[0]), .B(n627), .Y(n82) );
  OR2x2_ASAP7_75t_R U182 ( .A(In_Weight_6[1]), .B(n628), .Y(n85) );
  OR2x2_ASAP7_75t_R U185 ( .A(In_Weight_6[2]), .B(n630), .Y(n88) );
  OR2x2_ASAP7_75t_R U188 ( .A(In_Weight_6[3]), .B(n629), .Y(n91) );
  OR2x2_ASAP7_75t_R U191 ( .A(In_Weight_6[4]), .B(n628), .Y(n94) );
  OR2x2_ASAP7_75t_R U192 ( .A(weight_valid), .B(Weight_Buffer[28]), .Y(n93) );
  OR2x2_ASAP7_75t_R U194 ( .A(In_Weight_6[5]), .B(n630), .Y(n96) );
  OR2x2_ASAP7_75t_R U195 ( .A(weight_valid), .B(Weight_Buffer[29]), .Y(n95) );
  OR2x2_ASAP7_75t_R U197 ( .A(In_Weight_6[6]), .B(n629), .Y(n98) );
  OR2x2_ASAP7_75t_R U198 ( .A(weight_valid), .B(Weight_Buffer[30]), .Y(n97) );
  OR2x2_ASAP7_75t_R U200 ( .A(In_Weight_6[7]), .B(n628), .Y(n100) );
  OR2x2_ASAP7_75t_R U201 ( .A(weight_valid), .B(Weight_Buffer[31]), .Y(n99) );
  OR2x2_ASAP7_75t_R U203 ( .A(In_Weight_5[0]), .B(n628), .Y(n102) );
  OR2x2_ASAP7_75t_R U206 ( .A(In_Weight_5[1]), .B(n630), .Y(n105) );
  OR2x2_ASAP7_75t_R U209 ( .A(In_Weight_5[2]), .B(n629), .Y(n108) );
  OR2x2_ASAP7_75t_R U212 ( .A(In_Weight_5[3]), .B(n628), .Y(n111) );
  OR2x2_ASAP7_75t_R U215 ( .A(In_Weight_5[4]), .B(n628), .Y(n114) );
  OR2x2_ASAP7_75t_R U216 ( .A(weight_valid), .B(Weight_Buffer[36]), .Y(n113)
         );
  OR2x2_ASAP7_75t_R U218 ( .A(In_Weight_5[5]), .B(n628), .Y(n116) );
  OR2x2_ASAP7_75t_R U219 ( .A(weight_valid), .B(Weight_Buffer[37]), .Y(n115)
         );
  OR2x2_ASAP7_75t_R U221 ( .A(In_Weight_5[6]), .B(n628), .Y(n118) );
  OR2x2_ASAP7_75t_R U222 ( .A(weight_valid), .B(Weight_Buffer[38]), .Y(n117)
         );
  OR2x2_ASAP7_75t_R U224 ( .A(In_Weight_5[7]), .B(n628), .Y(n120) );
  OR2x2_ASAP7_75t_R U225 ( .A(weight_valid), .B(Weight_Buffer[39]), .Y(n119)
         );
  OR2x2_ASAP7_75t_R U227 ( .A(In_Weight_4[0]), .B(n628), .Y(n122) );
  OR2x2_ASAP7_75t_R U230 ( .A(In_Weight_4[1]), .B(n628), .Y(n125) );
  OR2x2_ASAP7_75t_R U233 ( .A(In_Weight_4[2]), .B(n628), .Y(n128) );
  OR2x2_ASAP7_75t_R U236 ( .A(In_Weight_4[3]), .B(n628), .Y(n131) );
  OR2x2_ASAP7_75t_R U239 ( .A(In_Weight_4[4]), .B(n628), .Y(n134) );
  OR2x2_ASAP7_75t_R U240 ( .A(weight_valid), .B(Weight_Buffer[44]), .Y(n133)
         );
  OR2x2_ASAP7_75t_R U242 ( .A(In_Weight_4[5]), .B(n628), .Y(n136) );
  OR2x2_ASAP7_75t_R U243 ( .A(weight_valid), .B(Weight_Buffer[45]), .Y(n135)
         );
  OR2x2_ASAP7_75t_R U245 ( .A(In_Weight_4[6]), .B(n628), .Y(n138) );
  OR2x2_ASAP7_75t_R U246 ( .A(weight_valid), .B(Weight_Buffer[46]), .Y(n137)
         );
  OR2x2_ASAP7_75t_R U248 ( .A(In_Weight_4[7]), .B(n628), .Y(n140) );
  OR2x2_ASAP7_75t_R U249 ( .A(weight_valid), .B(Weight_Buffer[47]), .Y(n139)
         );
  OR2x2_ASAP7_75t_R U251 ( .A(In_Weight_3[0]), .B(n629), .Y(n142) );
  OR2x2_ASAP7_75t_R U254 ( .A(In_Weight_3[1]), .B(n629), .Y(n145) );
  OR2x2_ASAP7_75t_R U257 ( .A(In_Weight_3[2]), .B(n629), .Y(n148) );
  OR2x2_ASAP7_75t_R U260 ( .A(In_Weight_3[3]), .B(n629), .Y(n151) );
  OR2x2_ASAP7_75t_R U263 ( .A(In_Weight_3[4]), .B(n629), .Y(n154) );
  OR2x2_ASAP7_75t_R U264 ( .A(weight_valid), .B(Weight_Buffer[52]), .Y(n153)
         );
  OR2x2_ASAP7_75t_R U266 ( .A(In_Weight_3[5]), .B(n629), .Y(n156) );
  OR2x2_ASAP7_75t_R U267 ( .A(weight_valid), .B(Weight_Buffer[53]), .Y(n155)
         );
  OR2x2_ASAP7_75t_R U269 ( .A(In_Weight_3[6]), .B(n629), .Y(n158) );
  OR2x2_ASAP7_75t_R U270 ( .A(weight_valid), .B(Weight_Buffer[54]), .Y(n157)
         );
  OR2x2_ASAP7_75t_R U272 ( .A(In_Weight_3[7]), .B(n629), .Y(n160) );
  OR2x2_ASAP7_75t_R U273 ( .A(weight_valid), .B(Weight_Buffer[55]), .Y(n159)
         );
  OR2x2_ASAP7_75t_R U275 ( .A(In_Weight_2[0]), .B(n629), .Y(n162) );
  OR2x2_ASAP7_75t_R U278 ( .A(In_Weight_2[1]), .B(n629), .Y(n165) );
  OR2x2_ASAP7_75t_R U281 ( .A(In_Weight_2[2]), .B(n629), .Y(n168) );
  OR2x2_ASAP7_75t_R U284 ( .A(In_Weight_2[3]), .B(n629), .Y(n171) );
  OR2x2_ASAP7_75t_R U287 ( .A(In_Weight_2[4]), .B(n630), .Y(n174) );
  OR2x2_ASAP7_75t_R U288 ( .A(weight_valid), .B(Weight_Buffer[60]), .Y(n173)
         );
  OR2x2_ASAP7_75t_R U290 ( .A(In_Weight_2[5]), .B(n630), .Y(n176) );
  OR2x2_ASAP7_75t_R U291 ( .A(weight_valid), .B(Weight_Buffer[61]), .Y(n175)
         );
  OR2x2_ASAP7_75t_R U293 ( .A(In_Weight_2[6]), .B(n630), .Y(n178) );
  OR2x2_ASAP7_75t_R U294 ( .A(weight_valid), .B(Weight_Buffer[62]), .Y(n177)
         );
  OR2x2_ASAP7_75t_R U296 ( .A(In_Weight_2[7]), .B(n630), .Y(n180) );
  OR2x2_ASAP7_75t_R U297 ( .A(weight_valid), .B(Weight_Buffer[63]), .Y(n179)
         );
  OR2x2_ASAP7_75t_R U299 ( .A(In_Weight_1[0]), .B(n630), .Y(n182) );
  OR2x2_ASAP7_75t_R U302 ( .A(In_Weight_1[1]), .B(n630), .Y(n185) );
  OR2x2_ASAP7_75t_R U305 ( .A(In_Weight_1[2]), .B(n630), .Y(n188) );
  OR2x2_ASAP7_75t_R U308 ( .A(In_Weight_1[3]), .B(n630), .Y(n191) );
  OR2x2_ASAP7_75t_R U311 ( .A(In_Weight_1[4]), .B(n630), .Y(n194) );
  OR2x2_ASAP7_75t_R U312 ( .A(weight_valid), .B(Weight_Buffer[68]), .Y(n193)
         );
  OR2x2_ASAP7_75t_R U314 ( .A(In_Weight_1[5]), .B(n630), .Y(n196) );
  OR2x2_ASAP7_75t_R U315 ( .A(weight_valid), .B(Weight_Buffer[69]), .Y(n195)
         );
  OR2x2_ASAP7_75t_R U317 ( .A(In_Weight_1[6]), .B(n630), .Y(n198) );
  OR2x2_ASAP7_75t_R U318 ( .A(weight_valid), .B(Weight_Buffer[70]), .Y(n197)
         );
  OR2x2_ASAP7_75t_R U320 ( .A(In_Weight_1[7]), .B(n630), .Y(n200) );
  OR2x2_ASAP7_75t_R U322 ( .A(weight_valid), .B(Weight_Buffer[71]), .Y(n199)
         );
  OR2x2_ASAP7_75t_R U324 ( .A(out_valid), .B(ena3), .Y(n_2_net_) );
  NAND5xp2_ASAP7_75t_R U325 ( .A(n201), .B(n202), .C(n203), .D(n204), .E(n205), 
        .Y(ena3) );
  AND5x1_ASAP7_75t_R U326 ( .A(n206), .B(n207), .C(n208), .D(n209), .E(n210), 
        .Y(n205) );
  NAND5xp2_ASAP7_75t_R U328 ( .A(n748), .B(n747), .C(n746), .D(n745), .E(n213), 
        .Y(n212) );
  NAND5xp2_ASAP7_75t_R U340 ( .A(n744), .B(n743), .C(n742), .D(n741), .E(n220), 
        .Y(n219) );
  NAND5xp2_ASAP7_75t_R U352 ( .A(n740), .B(n739), .C(n738), .D(n737), .E(n227), 
        .Y(n226) );
  NAND5xp2_ASAP7_75t_R U364 ( .A(n736), .B(n735), .C(n734), .D(n733), .E(n234), 
        .Y(n233) );
  NAND5xp2_ASAP7_75t_R U376 ( .A(n732), .B(n731), .C(n730), .D(n729), .E(n241), 
        .Y(n240) );
  NAND5xp2_ASAP7_75t_R U388 ( .A(n763), .B(n762), .C(n761), .D(n760), .E(n248), 
        .Y(n247) );
  NAND5xp2_ASAP7_75t_R U400 ( .A(n759), .B(n758), .C(n757), .D(n756), .E(n255), 
        .Y(n254) );
  NAND5xp2_ASAP7_75t_R U412 ( .A(n755), .B(n625), .C(n754), .D(n753), .E(n262), 
        .Y(n261) );
  NAND5xp2_ASAP7_75t_R U424 ( .A(n752), .B(n751), .C(n750), .D(n749), .E(n269), 
        .Y(n268) );
  NAND2xp5_ASAP7_75t_R U3 ( .A(N384), .B(state_cs_1_), .Y(n274) );
  NAND2xp5_ASAP7_75t_R U4 ( .A(N385), .B(state_cs_1_), .Y(n276) );
  NAND2xp5_ASAP7_75t_R U5 ( .A(N386), .B(state_cs_1_), .Y(n278) );
  NAND2xp5_ASAP7_75t_R U6 ( .A(N387), .B(state_cs_1_), .Y(n280) );
  NAND2xp5_ASAP7_75t_R U7 ( .A(N388), .B(state_cs_1_), .Y(n282) );
  NAND2xp5_ASAP7_75t_R U8 ( .A(N389), .B(state_cs_1_), .Y(n284) );
  NAND2xp5_ASAP7_75t_R U9 ( .A(N390), .B(state_cs_1_), .Y(n286) );
  NAND2xp5_ASAP7_75t_R U10 ( .A(N391), .B(state_cs_1_), .Y(n288) );
  NAND2xp5_ASAP7_75t_R U11 ( .A(N392), .B(state_cs_1_), .Y(n290) );
  NAND2xp5_ASAP7_75t_R U12 ( .A(N393), .B(state_cs_1_), .Y(n292) );
  NAND2xp5_ASAP7_75t_R U13 ( .A(N394), .B(state_cs_1_), .Y(n294) );
  NAND2xp5_ASAP7_75t_R U14 ( .A(N395), .B(state_cs_1_), .Y(n296) );
  NAND2xp5_ASAP7_75t_R U15 ( .A(N396), .B(state_cs_1_), .Y(n298) );
  NAND2xp5_ASAP7_75t_R U16 ( .A(N397), .B(state_cs_1_), .Y(n300) );
  NAND2xp5_ASAP7_75t_R U17 ( .A(N398), .B(state_cs_1_), .Y(n302) );
  NAND2xp5_ASAP7_75t_R U18 ( .A(N399), .B(state_cs_1_), .Y(n304) );
  NAND2xp5_ASAP7_75t_R U19 ( .A(N400), .B(state_cs_1_), .Y(n306) );
  NAND2xp5_ASAP7_75t_R U20 ( .A(N401), .B(state_cs_1_), .Y(n308) );
  NAND2xp5_ASAP7_75t_R U21 ( .A(N402), .B(state_cs_1_), .Y(n310) );
  NAND2xp5_ASAP7_75t_R U22 ( .A(N403), .B(state_cs_1_), .Y(n312) );
  NAND2xp5_ASAP7_75t_R U25 ( .A(N97), .B(state_cs_1_), .Y(n318) );
  NAND2xp5_ASAP7_75t_R U26 ( .A(N96), .B(state_cs_1_), .Y(n320) );
  NAND2xp5_ASAP7_75t_R U27 ( .A(N95), .B(state_cs_1_), .Y(n322) );
  NAND2xp5_ASAP7_75t_R U28 ( .A(N94), .B(state_cs_1_), .Y(n324) );
  NAND2xp5_ASAP7_75t_R U29 ( .A(n17), .B(n18), .Y(n326) );
  NAND2xp5_ASAP7_75t_R U33 ( .A(N93), .B(state_cs_1_), .Y(n328) );
  NAND2xp5_ASAP7_75t_R U34 ( .A(in_valid), .B(In_IFM_9[1]), .Y(n330) );
  NAND2xp5_ASAP7_75t_R U35 ( .A(In_IFM_9[2]), .B(in_valid), .Y(n332) );
  NAND2xp5_ASAP7_75t_R U36 ( .A(In_IFM_9[3]), .B(in_valid), .Y(n334) );
  NAND2xp5_ASAP7_75t_R U37 ( .A(In_IFM_9[4]), .B(in_valid), .Y(n336) );
  NAND2xp5_ASAP7_75t_R U38 ( .A(In_IFM_9[5]), .B(in_valid), .Y(n338) );
  NAND2xp5_ASAP7_75t_R U39 ( .A(In_IFM_9[6]), .B(in_valid), .Y(n340) );
  NAND2xp5_ASAP7_75t_R U40 ( .A(In_IFM_9[7]), .B(in_valid), .Y(n342) );
  NAND2xp5_ASAP7_75t_R U41 ( .A(In_IFM_8[0]), .B(in_valid), .Y(n344) );
  NAND2xp5_ASAP7_75t_R U42 ( .A(In_IFM_8[1]), .B(in_valid), .Y(n346) );
  NAND2xp5_ASAP7_75t_R U43 ( .A(In_IFM_8[2]), .B(in_valid), .Y(n348) );
  NAND2xp5_ASAP7_75t_R U44 ( .A(In_IFM_8[3]), .B(in_valid), .Y(n350) );
  NAND2xp5_ASAP7_75t_R U45 ( .A(In_IFM_8[4]), .B(in_valid), .Y(n352) );
  NAND2xp5_ASAP7_75t_R U46 ( .A(In_IFM_8[5]), .B(in_valid), .Y(n354) );
  NAND2xp5_ASAP7_75t_R U47 ( .A(In_IFM_8[6]), .B(in_valid), .Y(n356) );
  NAND2xp5_ASAP7_75t_R U48 ( .A(In_IFM_8[7]), .B(in_valid), .Y(n358) );
  NAND2xp5_ASAP7_75t_R U49 ( .A(In_IFM_7[0]), .B(in_valid), .Y(n360) );
  NAND2xp5_ASAP7_75t_R U50 ( .A(In_IFM_7[1]), .B(in_valid), .Y(n362) );
  NAND2xp5_ASAP7_75t_R U51 ( .A(In_IFM_7[2]), .B(in_valid), .Y(n364) );
  NAND2xp5_ASAP7_75t_R U52 ( .A(In_IFM_7[3]), .B(in_valid), .Y(n366) );
  NAND2xp5_ASAP7_75t_R U53 ( .A(In_IFM_7[4]), .B(in_valid), .Y(n368) );
  NAND2xp5_ASAP7_75t_R U54 ( .A(In_IFM_7[5]), .B(in_valid), .Y(n370) );
  NAND2xp5_ASAP7_75t_R U55 ( .A(In_IFM_7[6]), .B(in_valid), .Y(n372) );
  NAND2xp5_ASAP7_75t_R U56 ( .A(In_IFM_7[7]), .B(in_valid), .Y(n374) );
  NAND2xp5_ASAP7_75t_R U57 ( .A(In_IFM_6[0]), .B(in_valid), .Y(n376) );
  NAND2xp5_ASAP7_75t_R U58 ( .A(In_IFM_6[1]), .B(in_valid), .Y(n378) );
  NAND2xp5_ASAP7_75t_R U59 ( .A(In_IFM_6[2]), .B(in_valid), .Y(n380) );
  NAND2xp5_ASAP7_75t_R U60 ( .A(In_IFM_6[3]), .B(in_valid), .Y(n382) );
  NAND2xp5_ASAP7_75t_R U61 ( .A(In_IFM_6[4]), .B(in_valid), .Y(n384) );
  NAND2xp5_ASAP7_75t_R U62 ( .A(In_IFM_6[5]), .B(in_valid), .Y(n386) );
  NAND2xp5_ASAP7_75t_R U63 ( .A(In_IFM_6[6]), .B(in_valid), .Y(n388) );
  NAND2xp5_ASAP7_75t_R U64 ( .A(In_IFM_6[7]), .B(in_valid), .Y(n390) );
  NAND2xp5_ASAP7_75t_R U65 ( .A(In_IFM_5[0]), .B(in_valid), .Y(n392) );
  NAND2xp5_ASAP7_75t_R U66 ( .A(In_IFM_5[1]), .B(in_valid), .Y(n394) );
  NAND2xp5_ASAP7_75t_R U67 ( .A(In_IFM_5[2]), .B(in_valid), .Y(n396) );
  NAND2xp5_ASAP7_75t_R U68 ( .A(In_IFM_5[3]), .B(in_valid), .Y(n398) );
  NAND2xp5_ASAP7_75t_R U69 ( .A(In_IFM_5[4]), .B(in_valid), .Y(n400) );
  NAND2xp5_ASAP7_75t_R U70 ( .A(In_IFM_5[5]), .B(in_valid), .Y(n402) );
  NAND2xp5_ASAP7_75t_R U71 ( .A(In_IFM_5[6]), .B(in_valid), .Y(n404) );
  NAND2xp5_ASAP7_75t_R U72 ( .A(In_IFM_5[7]), .B(in_valid), .Y(n406) );
  NAND2xp5_ASAP7_75t_R U73 ( .A(In_IFM_4[0]), .B(in_valid), .Y(n408) );
  NAND2xp5_ASAP7_75t_R U74 ( .A(In_IFM_4[1]), .B(in_valid), .Y(n410) );
  NAND2xp5_ASAP7_75t_R U75 ( .A(In_IFM_4[2]), .B(in_valid), .Y(n412) );
  NAND2xp5_ASAP7_75t_R U76 ( .A(In_IFM_4[3]), .B(in_valid), .Y(n414) );
  NAND2xp5_ASAP7_75t_R U77 ( .A(In_IFM_4[4]), .B(in_valid), .Y(n416) );
  NAND2xp5_ASAP7_75t_R U78 ( .A(In_IFM_4[5]), .B(in_valid), .Y(n418) );
  NAND2xp5_ASAP7_75t_R U79 ( .A(In_IFM_4[6]), .B(in_valid), .Y(n420) );
  NAND2xp5_ASAP7_75t_R U80 ( .A(In_IFM_4[7]), .B(in_valid), .Y(n422) );
  NAND2xp5_ASAP7_75t_R U81 ( .A(In_IFM_3[0]), .B(in_valid), .Y(n424) );
  NAND2xp5_ASAP7_75t_R U82 ( .A(In_IFM_3[1]), .B(in_valid), .Y(n426) );
  NAND2xp5_ASAP7_75t_R U83 ( .A(In_IFM_3[2]), .B(in_valid), .Y(n428) );
  NAND2xp5_ASAP7_75t_R U84 ( .A(In_IFM_3[3]), .B(in_valid), .Y(n430) );
  NAND2xp5_ASAP7_75t_R U85 ( .A(In_IFM_3[4]), .B(in_valid), .Y(n432) );
  NAND2xp5_ASAP7_75t_R U86 ( .A(In_IFM_3[5]), .B(in_valid), .Y(n434) );
  NAND2xp5_ASAP7_75t_R U87 ( .A(In_IFM_3[6]), .B(in_valid), .Y(n436) );
  NAND2xp5_ASAP7_75t_R U88 ( .A(In_IFM_3[7]), .B(in_valid), .Y(n438) );
  NAND2xp5_ASAP7_75t_R U89 ( .A(In_IFM_2[0]), .B(in_valid), .Y(n440) );
  NAND2xp5_ASAP7_75t_R U90 ( .A(In_IFM_2[1]), .B(in_valid), .Y(n442) );
  NAND2xp5_ASAP7_75t_R U91 ( .A(In_IFM_2[2]), .B(in_valid), .Y(n444) );
  NAND2xp5_ASAP7_75t_R U92 ( .A(In_IFM_2[3]), .B(in_valid), .Y(n446) );
  NAND2xp5_ASAP7_75t_R U93 ( .A(In_IFM_2[4]), .B(in_valid), .Y(n448) );
  NAND2xp5_ASAP7_75t_R U94 ( .A(In_IFM_2[5]), .B(in_valid), .Y(n450) );
  NAND2xp5_ASAP7_75t_R U95 ( .A(In_IFM_2[6]), .B(in_valid), .Y(n452) );
  NAND2xp5_ASAP7_75t_R U96 ( .A(In_IFM_2[7]), .B(in_valid), .Y(n454) );
  NAND2xp5_ASAP7_75t_R U97 ( .A(In_IFM_1[0]), .B(in_valid), .Y(n456) );
  NAND2xp5_ASAP7_75t_R U98 ( .A(In_IFM_1[1]), .B(in_valid), .Y(n458) );
  NAND2xp5_ASAP7_75t_R U99 ( .A(In_IFM_1[2]), .B(in_valid), .Y(n460) );
  NAND2xp5_ASAP7_75t_R U100 ( .A(In_IFM_1[3]), .B(in_valid), .Y(n462) );
  NAND2xp5_ASAP7_75t_R U101 ( .A(In_IFM_1[4]), .B(in_valid), .Y(n464) );
  NAND2xp5_ASAP7_75t_R U102 ( .A(In_IFM_1[5]), .B(in_valid), .Y(n466) );
  NAND2xp5_ASAP7_75t_R U103 ( .A(In_IFM_1[6]), .B(in_valid), .Y(n468) );
  NAND2xp5_ASAP7_75t_R U104 ( .A(In_IFM_1[7]), .B(in_valid), .Y(n470) );
  NAND2xp5_ASAP7_75t_R U105 ( .A(In_IFM_9[0]), .B(in_valid), .Y(n472) );
  NAND2xp5_ASAP7_75t_R U106 ( .A(n20), .B(n21), .Y(n474) );
  NAND2xp5_ASAP7_75t_R U108 ( .A(n628), .B(n763), .Y(n20) );
  NAND2xp5_ASAP7_75t_R U109 ( .A(n24), .B(n25), .Y(n476) );
  NAND2xp5_ASAP7_75t_R U111 ( .A(n629), .B(n762), .Y(n24) );
  NAND2xp5_ASAP7_75t_R U112 ( .A(n27), .B(n28), .Y(n478) );
  NAND2xp5_ASAP7_75t_R U114 ( .A(n630), .B(n761), .Y(n27) );
  NAND2xp5_ASAP7_75t_R U115 ( .A(n30), .B(n31), .Y(n480) );
  NAND2xp5_ASAP7_75t_R U117 ( .A(n627), .B(n760), .Y(n30) );
  NAND2xp5_ASAP7_75t_R U118 ( .A(n33), .B(n34), .Y(n482) );
  NAND2xp5_ASAP7_75t_R U121 ( .A(n35), .B(n36), .Y(n484) );
  NAND2xp5_ASAP7_75t_R U124 ( .A(n37), .B(n38), .Y(n486) );
  NAND2xp5_ASAP7_75t_R U127 ( .A(n39), .B(n40), .Y(n488) );
  NAND2xp5_ASAP7_75t_R U130 ( .A(n41), .B(n42), .Y(n490) );
  NAND2xp5_ASAP7_75t_R U132 ( .A(n627), .B(n759), .Y(n41) );
  NAND2xp5_ASAP7_75t_R U133 ( .A(n44), .B(n45), .Y(n492) );
  NAND2xp5_ASAP7_75t_R U135 ( .A(n629), .B(n758), .Y(n44) );
  NAND2xp5_ASAP7_75t_R U136 ( .A(n47), .B(n48), .Y(n494) );
  NAND2xp5_ASAP7_75t_R U138 ( .A(n628), .B(n757), .Y(n47) );
  NAND2xp5_ASAP7_75t_R U139 ( .A(n50), .B(n51), .Y(n496) );
  NAND2xp5_ASAP7_75t_R U141 ( .A(n629), .B(n756), .Y(n50) );
  NAND2xp5_ASAP7_75t_R U142 ( .A(n53), .B(n54), .Y(n498) );
  NAND2xp5_ASAP7_75t_R U145 ( .A(n55), .B(n56), .Y(n500) );
  NAND2xp5_ASAP7_75t_R U148 ( .A(n57), .B(n58), .Y(n502) );
  NAND2xp5_ASAP7_75t_R U151 ( .A(n59), .B(n60), .Y(n504) );
  NAND2xp5_ASAP7_75t_R U154 ( .A(n61), .B(n62), .Y(n506) );
  NAND2xp5_ASAP7_75t_R U156 ( .A(n630), .B(n755), .Y(n61) );
  NAND2xp5_ASAP7_75t_R U157 ( .A(n64), .B(n65), .Y(n508) );
  NAND2xp5_ASAP7_75t_R U159 ( .A(n627), .B(n625), .Y(n64) );
  NAND2xp5_ASAP7_75t_R U160 ( .A(n67), .B(n68), .Y(n510) );
  NAND2xp5_ASAP7_75t_R U162 ( .A(n629), .B(n754), .Y(n67) );
  NAND2xp5_ASAP7_75t_R U163 ( .A(n70), .B(n71), .Y(n512) );
  NAND2xp5_ASAP7_75t_R U165 ( .A(n630), .B(n753), .Y(n70) );
  NAND2xp5_ASAP7_75t_R U166 ( .A(n73), .B(n74), .Y(n514) );
  NAND2xp5_ASAP7_75t_R U169 ( .A(n75), .B(n76), .Y(n516) );
  NAND2xp5_ASAP7_75t_R U172 ( .A(n77), .B(n78), .Y(n518) );
  NAND2xp5_ASAP7_75t_R U175 ( .A(n79), .B(n80), .Y(n520) );
  NAND2xp5_ASAP7_75t_R U178 ( .A(n81), .B(n82), .Y(n522) );
  NAND2xp5_ASAP7_75t_R U180 ( .A(n627), .B(n752), .Y(n81) );
  NAND2xp5_ASAP7_75t_R U181 ( .A(n84), .B(n85), .Y(n524) );
  NAND2xp5_ASAP7_75t_R U183 ( .A(n630), .B(n751), .Y(n84) );
  NAND2xp5_ASAP7_75t_R U184 ( .A(n87), .B(n88), .Y(n526) );
  NAND2xp5_ASAP7_75t_R U186 ( .A(n627), .B(n750), .Y(n87) );
  NAND2xp5_ASAP7_75t_R U187 ( .A(n90), .B(n91), .Y(n528) );
  NAND2xp5_ASAP7_75t_R U189 ( .A(n627), .B(n749), .Y(n90) );
  NAND2xp5_ASAP7_75t_R U190 ( .A(n93), .B(n94), .Y(n530) );
  NAND2xp5_ASAP7_75t_R U193 ( .A(n95), .B(n96), .Y(n532) );
  NAND2xp5_ASAP7_75t_R U196 ( .A(n97), .B(n98), .Y(n534) );
  NAND2xp5_ASAP7_75t_R U199 ( .A(n99), .B(n100), .Y(n536) );
  NAND2xp5_ASAP7_75t_R U202 ( .A(n101), .B(n102), .Y(n538) );
  NAND2xp5_ASAP7_75t_R U204 ( .A(n627), .B(n748), .Y(n101) );
  NAND2xp5_ASAP7_75t_R U205 ( .A(n104), .B(n105), .Y(n540) );
  NAND2xp5_ASAP7_75t_R U207 ( .A(n628), .B(n747), .Y(n104) );
  NAND2xp5_ASAP7_75t_R U208 ( .A(n107), .B(n108), .Y(n542) );
  NAND2xp5_ASAP7_75t_R U210 ( .A(n627), .B(n746), .Y(n107) );
  NAND2xp5_ASAP7_75t_R U211 ( .A(n110), .B(n111), .Y(n544) );
  NAND2xp5_ASAP7_75t_R U213 ( .A(n629), .B(n745), .Y(n110) );
  NAND2xp5_ASAP7_75t_R U214 ( .A(n113), .B(n114), .Y(n546) );
  NAND2xp5_ASAP7_75t_R U217 ( .A(n115), .B(n116), .Y(n548) );
  NAND2xp5_ASAP7_75t_R U220 ( .A(n117), .B(n118), .Y(n550) );
  NAND2xp5_ASAP7_75t_R U223 ( .A(n119), .B(n120), .Y(n552) );
  NAND2xp5_ASAP7_75t_R U226 ( .A(n121), .B(n122), .Y(n554) );
  NAND2xp5_ASAP7_75t_R U228 ( .A(n628), .B(n744), .Y(n121) );
  NAND2xp5_ASAP7_75t_R U229 ( .A(n124), .B(n125), .Y(n556) );
  NAND2xp5_ASAP7_75t_R U231 ( .A(n628), .B(n743), .Y(n124) );
  NAND2xp5_ASAP7_75t_R U232 ( .A(n127), .B(n128), .Y(n558) );
  NAND2xp5_ASAP7_75t_R U234 ( .A(n627), .B(n742), .Y(n127) );
  NAND2xp5_ASAP7_75t_R U235 ( .A(n130), .B(n131), .Y(n560) );
  NAND2xp5_ASAP7_75t_R U237 ( .A(n630), .B(n741), .Y(n130) );
  NAND2xp5_ASAP7_75t_R U238 ( .A(n133), .B(n134), .Y(n562) );
  NAND2xp5_ASAP7_75t_R U241 ( .A(n135), .B(n136), .Y(n564) );
  NAND2xp5_ASAP7_75t_R U244 ( .A(n137), .B(n138), .Y(n566) );
  NAND2xp5_ASAP7_75t_R U247 ( .A(n139), .B(n140), .Y(n568) );
  NAND2xp5_ASAP7_75t_R U250 ( .A(n141), .B(n142), .Y(n570) );
  NAND2xp5_ASAP7_75t_R U252 ( .A(n627), .B(n740), .Y(n141) );
  NAND2xp5_ASAP7_75t_R U253 ( .A(n144), .B(n145), .Y(n572) );
  NAND2xp5_ASAP7_75t_R U255 ( .A(n628), .B(n739), .Y(n144) );
  NAND2xp5_ASAP7_75t_R U256 ( .A(n147), .B(n148), .Y(n574) );
  NAND2xp5_ASAP7_75t_R U258 ( .A(n629), .B(n738), .Y(n147) );
  NAND2xp5_ASAP7_75t_R U259 ( .A(n150), .B(n151), .Y(n576) );
  NAND2xp5_ASAP7_75t_R U261 ( .A(n630), .B(n737), .Y(n150) );
  NAND2xp5_ASAP7_75t_R U262 ( .A(n153), .B(n154), .Y(n578) );
  NAND2xp5_ASAP7_75t_R U265 ( .A(n155), .B(n156), .Y(n580) );
  NAND2xp5_ASAP7_75t_R U268 ( .A(n157), .B(n158), .Y(n582) );
  NAND2xp5_ASAP7_75t_R U271 ( .A(n159), .B(n160), .Y(n584) );
  NAND2xp5_ASAP7_75t_R U274 ( .A(n161), .B(n162), .Y(n586) );
  NAND2xp5_ASAP7_75t_R U276 ( .A(n627), .B(n736), .Y(n161) );
  NAND2xp5_ASAP7_75t_R U277 ( .A(n164), .B(n165), .Y(n588) );
  NAND2xp5_ASAP7_75t_R U279 ( .A(n628), .B(n735), .Y(n164) );
  NAND2xp5_ASAP7_75t_R U280 ( .A(n167), .B(n168), .Y(n590) );
  NAND2xp5_ASAP7_75t_R U282 ( .A(n629), .B(n734), .Y(n167) );
  NAND2xp5_ASAP7_75t_R U283 ( .A(n170), .B(n171), .Y(n592) );
  NAND2xp5_ASAP7_75t_R U285 ( .A(n630), .B(n733), .Y(n170) );
  NAND2xp5_ASAP7_75t_R U286 ( .A(n173), .B(n174), .Y(n594) );
  NAND2xp5_ASAP7_75t_R U289 ( .A(n175), .B(n176), .Y(n596) );
  NAND2xp5_ASAP7_75t_R U292 ( .A(n177), .B(n178), .Y(n598) );
  NAND2xp5_ASAP7_75t_R U295 ( .A(n179), .B(n180), .Y(n600) );
  NAND2xp5_ASAP7_75t_R U298 ( .A(n181), .B(n182), .Y(n602) );
  NAND2xp5_ASAP7_75t_R U300 ( .A(n627), .B(n732), .Y(n181) );
  NAND2xp5_ASAP7_75t_R U301 ( .A(n184), .B(n185), .Y(n604) );
  NAND2xp5_ASAP7_75t_R U303 ( .A(n628), .B(n731), .Y(n184) );
  NAND2xp5_ASAP7_75t_R U304 ( .A(n187), .B(n188), .Y(n606) );
  NAND2xp5_ASAP7_75t_R U306 ( .A(n629), .B(n730), .Y(n187) );
  NAND2xp5_ASAP7_75t_R U307 ( .A(n190), .B(n191), .Y(n608) );
  NAND2xp5_ASAP7_75t_R U309 ( .A(n630), .B(n729), .Y(n190) );
  NAND2xp5_ASAP7_75t_R U310 ( .A(n193), .B(n194), .Y(n610) );
  NAND2xp5_ASAP7_75t_R U313 ( .A(n195), .B(n196), .Y(n612) );
  NAND2xp5_ASAP7_75t_R U316 ( .A(n197), .B(n198), .Y(n614) );
  NAND2xp5_ASAP7_75t_R U319 ( .A(n199), .B(n200), .Y(n616) );
  NAND2xp5_ASAP7_75t_R U327 ( .A(n211), .B(n212), .Y(n210) );
  NAND2xp5_ASAP7_75t_R U339 ( .A(n218), .B(n219), .Y(n209) );
  NAND2xp5_ASAP7_75t_R U351 ( .A(n225), .B(n226), .Y(n208) );
  NAND2xp5_ASAP7_75t_R U363 ( .A(n232), .B(n233), .Y(n207) );
  NAND2xp5_ASAP7_75t_R U375 ( .A(n239), .B(n240), .Y(n206) );
  NAND2xp5_ASAP7_75t_R U387 ( .A(n246), .B(n247), .Y(n204) );
  NAND2xp5_ASAP7_75t_R U399 ( .A(n253), .B(n254), .Y(n203) );
  NAND2xp5_ASAP7_75t_R U411 ( .A(n260), .B(n261), .Y(n202) );
  NAND2xp5_ASAP7_75t_R U423 ( .A(n267), .B(n268), .Y(n201) );
  Convolution_DW_mult_uns_8 mult_204 ( .a(In_Buffer[71:64]), .b(
        Weight_Buffer[71:64]), .product({N118, N117, N116, N115, N114, N113, 
        N112, N111, N110, N109, N108, N107, N106, N105, N104, N103}) );
  Convolution_DW_mult_uns_7 mult_204_2 ( .a(In_Buffer[63:56]), .b(
        Weight_Buffer[63:56]), .product({N134, N133, N132, N131, N130, N129, 
        N128, N127, N126, N125, N124, N123, N122, N121, N120, N119}) );
  Convolution_DW_mult_uns_6 mult_204_3 ( .a(In_Buffer[55:48]), .b(
        Weight_Buffer[55:48]), .product({N167, N166, N165, N164, N163, N162, 
        N161, N160, N159, N158, N157, N156, N155, N154, N153, N152}) );
  Convolution_DW_mult_uns_5 mult_204_4 ( .a(In_Buffer[47:40]), .b(
        Weight_Buffer[47:40]), .product({N201, N200, N199, N198, N197, N196, 
        N195, N194, N193, N192, N191, N190, N189, N188, N187, N186}) );
  Convolution_DW_mult_uns_4 mult_204_5 ( .a(In_Buffer[39:32]), .b(
        Weight_Buffer[39:32]), .product({N236, N235, N234, N233, N232, N231, 
        N230, N229, N228, N227, N226, N225, N224, N223, N222, N221}) );
  Convolution_DW_mult_uns_3 mult_204_6 ( .a(In_Buffer[31:24]), .b(
        Weight_Buffer[31:24]), .product({N272, N271, N270, N269, N268, N267, 
        N266, N265, N264, N263, N262, N261, N260, N259, N258, N257}) );
  Convolution_DW_mult_uns_2 mult_204_7 ( .a(In_Buffer[23:16]), .b({
        Weight_Buffer[23:18], n626, Weight_Buffer[16]}), .product({N309, N308, 
        N307, N306, N305, N304, N303, N302, N301, N300, N299, N298, N297, N296, 
        N295, N294}) );
  Convolution_DW_mult_uns_1 mult_204_8 ( .a(In_Buffer[15:8]), .b(
        Weight_Buffer[15:8]), .product({N346, N345, N344, N343, N342, N341, 
        N340, N339, N338, N337, N336, N335, N334, N333, N332, N331}) );
  Convolution_DW_mult_uns_0 mult_204_9 ( .a(In_Buffer[7:0]), .b(
        Weight_Buffer[7:0]), .product({N383, N382, N381, N380, N379, N378, 
        N377, N376, N375, N374, N373, N372, N371, N370, N369, N368}) );
  Convolution_DW01_add_7 add_7_root_add_0_root_add_204_8 ( .A({net8123, 
        net8123, N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, 
        N157, N156, N155, N154, N153, N152}), .B({net8123, net8123, N309, N308, 
        N307, N306, N305, N304, N303, N302, N301, N300, N299, N298, N297, N296, 
        N295, N294}), .CI(net8123), .SUM({SYNOPSYS_UNCONNECTED_1, n780, n779, 
        n778, n777, n776, n775, n774, n773, n772, n771, n770, n769, n768, n767, 
        n766, n765, n764}) );
  Convolution_DW01_add_6 add_5_root_add_0_root_add_204_8 ( .A({net8123, 
        net8123, net8123, net8123, N118, N117, N116, N115, N114, N113, N112, 
        N111, N110, N109, N108, N107, N106, N105, N104, N103}), .B({net8123, 
        net8123, net8123, net8123, N134, N133, N132, N131, N130, N129, N128, 
        N127, N126, N125, N124, N123, N122, N121, N120, N119}), .CI(net8123), 
        .SUM({SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, 
        SYNOPSYS_UNCONNECTED_4, N253, N252, N251, N250, N249, N248, N247, N246, 
        N245, N244, N243, N242, N241, N240, N239, N238, N237}) );
  Convolution_DW01_add_5 add_3_root_add_0_root_add_204_8 ( .A({net8123, 
        net8123, net8123, N272, N271, N270, N269, N268, N267, N266, N265, N264, 
        N263, N262, N261, N260, N259, N258, N257}), .B({net8123, net8123, n780, 
        n779, n778, n777, n776, n775, n774, n773, n772, n771, n770, n769, n768, 
        n767, n766, n765, n764}), .CI(net8123), .SUM({SYNOPSYS_UNCONNECTED_5, 
        N219, N218, N217, N216, N215, N214, N213, N212, N211, N210, N209, N208, 
        N207, N206, N205, N204, N203, N202}) );
  Convolution_DW01_add_4 add_2_root_add_0_root_add_204_8 ( .A({net8123, 
        net8123, net8123, net8123, N253, N252, N251, N250, N249, N248, N247, 
        N246, N245, N244, N243, N242, N241, N240, N239, N238, N237}), .B({
        net8123, net8123, net8123, N219, N218, N217, N216, N215, N214, N213, 
        N212, N211, N210, N209, N208, N207, N206, N205, N204, N203, N202}), 
        .CI(net8123), .SUM({SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, 
        n799, n798, n797, n796, n795, n794, n793, n792, n791, n790, n789, n788, 
        n787, n786, n785, n784, n783, n782, n781}) );
  Convolution_DW01_add_1 add_1_root_add_0_root_add_204_8 ( .A({net8123, 
        net8123, net8123, net8123, N363, N362, N361, N360, N359, N358, N357, 
        N356, N355, N354, N353, N352, N351, N350, N349, N348, n624}), .B({
        net8123, net8123, net8123, net8123, N289, N288, N287, N286, N285, N284, 
        N283, N282, N281, N280, N279, N278, N277, N276, N275, N274, n621}), 
        .CI(net8123), .SUM({SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9, 
        SYNOPSYS_UNCONNECTED_10, N327, N326, N325, N324, N323, N322, N321, 
        N320, N319, N318, N317, N316, N315, N314, N313, N312, N311, N310}) );
  Convolution_DW01_add_0 add_0_root_add_0_root_add_204_8 ( .A({net8123, 
        net8123, net8123, N327, N326, N325, N324, N323, N322, N321, N320, N319, 
        N318, N317, N316, N315, N314, N313, N312, N311, N310}), .B({net8123, 
        net8123, n799, n798, n797, n796, n795, n794, n793, n792, n791, n790, 
        n789, n788, n787, n786, n785, n784, n783, n782, n781}), .CI(net8123), 
        .SUM({SYNOPSYS_UNCONNECTED_11, N403, N402, N401, N400, N399, N398, 
        N397, N396, N395, N394, N393, N392, N391, N390, N389, N388, N387, N386, 
        N385, N384}) );
  HAxp5_ASAP7_75t_R add_187_U1_1_1 ( .A(count_out[1]), .B(count_out[0]), .CON(
        n721), .SN(n720) );
  HAxp5_ASAP7_75t_R add_187_U1_1_2 ( .A(count_out[2]), .B(n726), .CON(n723), 
        .SN(n722) );
  HAxp5_ASAP7_75t_R add_187_U1_1_3 ( .A(count_out[3]), .B(n727), .CON(n725), 
        .SN(n724) );
  FAx1_ASAP7_75t_R add_4_root_add_0_root_add_204_8_U1_1 ( .A(N187), .B(N332), 
        .CI(n622), .CON(n677), .SN(n676) );
  FAx1_ASAP7_75t_R add_4_root_add_0_root_add_204_8_U1_2 ( .A(N188), .B(N333), 
        .CI(n706), .CON(n679), .SN(n678) );
  FAx1_ASAP7_75t_R add_4_root_add_0_root_add_204_8_U1_3 ( .A(N189), .B(N334), 
        .CI(n707), .CON(n681), .SN(n680) );
  FAx1_ASAP7_75t_R add_4_root_add_0_root_add_204_8_U1_4 ( .A(N190), .B(N335), 
        .CI(n708), .CON(n683), .SN(n682) );
  FAx1_ASAP7_75t_R add_4_root_add_0_root_add_204_8_U1_5 ( .A(N191), .B(N336), 
        .CI(n709), .CON(n685), .SN(n684) );
  FAx1_ASAP7_75t_R add_4_root_add_0_root_add_204_8_U1_6 ( .A(N192), .B(N337), 
        .CI(n710), .CON(n687), .SN(n686) );
  FAx1_ASAP7_75t_R add_4_root_add_0_root_add_204_8_U1_7 ( .A(N193), .B(N338), 
        .CI(n711), .CON(n689), .SN(n688) );
  FAx1_ASAP7_75t_R add_4_root_add_0_root_add_204_8_U1_8 ( .A(N194), .B(N339), 
        .CI(n712), .CON(n691), .SN(n690) );
  FAx1_ASAP7_75t_R add_4_root_add_0_root_add_204_8_U1_9 ( .A(N195), .B(N340), 
        .CI(n713), .CON(n693), .SN(n692) );
  FAx1_ASAP7_75t_R add_4_root_add_0_root_add_204_8_U1_10 ( .A(N196), .B(N341), 
        .CI(n714), .CON(n695), .SN(n694) );
  FAx1_ASAP7_75t_R add_4_root_add_0_root_add_204_8_U1_11 ( .A(N197), .B(N342), 
        .CI(n715), .CON(n697), .SN(n696) );
  FAx1_ASAP7_75t_R add_4_root_add_0_root_add_204_8_U1_12 ( .A(N198), .B(N343), 
        .CI(n716), .CON(n699), .SN(n698) );
  FAx1_ASAP7_75t_R add_4_root_add_0_root_add_204_8_U1_13 ( .A(N199), .B(N344), 
        .CI(n717), .CON(n701), .SN(n700) );
  FAx1_ASAP7_75t_R add_4_root_add_0_root_add_204_8_U1_14 ( .A(N200), .B(N345), 
        .CI(n718), .CON(n703), .SN(n702) );
  FAx1_ASAP7_75t_R add_4_root_add_0_root_add_204_8_U1_15 ( .A(N201), .B(N346), 
        .CI(n719), .CON(n705), .SN(n704) );
  FAx1_ASAP7_75t_R add_6_root_add_0_root_add_204_8_U1_1 ( .A(N369), .B(N222), 
        .CI(n623), .CON(n633), .SN(n632) );
  FAx1_ASAP7_75t_R add_6_root_add_0_root_add_204_8_U1_2 ( .A(N370), .B(N223), 
        .CI(n662), .CON(n635), .SN(n634) );
  FAx1_ASAP7_75t_R add_6_root_add_0_root_add_204_8_U1_3 ( .A(N371), .B(N224), 
        .CI(n663), .CON(n637), .SN(n636) );
  FAx1_ASAP7_75t_R add_6_root_add_0_root_add_204_8_U1_4 ( .A(N372), .B(N225), 
        .CI(n664), .CON(n639), .SN(n638) );
  FAx1_ASAP7_75t_R add_6_root_add_0_root_add_204_8_U1_5 ( .A(N373), .B(N226), 
        .CI(n665), .CON(n641), .SN(n640) );
  FAx1_ASAP7_75t_R add_6_root_add_0_root_add_204_8_U1_6 ( .A(N374), .B(N227), 
        .CI(n666), .CON(n643), .SN(n642) );
  FAx1_ASAP7_75t_R add_6_root_add_0_root_add_204_8_U1_7 ( .A(N375), .B(N228), 
        .CI(n667), .CON(n645), .SN(n644) );
  FAx1_ASAP7_75t_R add_6_root_add_0_root_add_204_8_U1_8 ( .A(N376), .B(N229), 
        .CI(n668), .CON(n647), .SN(n646) );
  FAx1_ASAP7_75t_R add_6_root_add_0_root_add_204_8_U1_9 ( .A(N377), .B(N230), 
        .CI(n669), .CON(n649), .SN(n648) );
  FAx1_ASAP7_75t_R add_6_root_add_0_root_add_204_8_U1_10 ( .A(N378), .B(N231), 
        .CI(n670), .CON(n651), .SN(n650) );
  FAx1_ASAP7_75t_R add_6_root_add_0_root_add_204_8_U1_11 ( .A(N379), .B(N232), 
        .CI(n671), .CON(n653), .SN(n652) );
  FAx1_ASAP7_75t_R add_6_root_add_0_root_add_204_8_U1_12 ( .A(N380), .B(N233), 
        .CI(n672), .CON(n655), .SN(n654) );
  FAx1_ASAP7_75t_R add_6_root_add_0_root_add_204_8_U1_13 ( .A(N381), .B(N234), 
        .CI(n673), .CON(n657), .SN(n656) );
  FAx1_ASAP7_75t_R add_6_root_add_0_root_add_204_8_U1_14 ( .A(N382), .B(N235), 
        .CI(n674), .CON(n659), .SN(n658) );
  FAx1_ASAP7_75t_R add_6_root_add_0_root_add_204_8_U1_15 ( .A(N383), .B(N236), 
        .CI(n675), .CON(n661), .SN(n660) );
  ASYNC_DFFHx1_ASAP7_75t_R out_valid_reg ( .D(n631), .CLK(clk), .RESET(n728), 
        .SET(net8123), .QN(out_valid) );
  ASYNC_DFFHx1_ASAP7_75t_R count_out_reg_2_ ( .D(n322), .CLK(clk), .RESET(n728), .SET(net8123), .QN(count_out[2]) );
  ASYNC_DFFHx1_ASAP7_75t_R count_out_reg_1_ ( .D(n324), .CLK(clk), .RESET(n728), .SET(net8123), .QN(count_out[1]) );
  ASYNC_DFFHx1_ASAP7_75t_R count_out_reg_0_ ( .D(n328), .CLK(clk), .RESET(n728), .SET(net8123), .QN(count_out[0]) );
  ASYNC_DFFHx1_ASAP7_75t_R count_out_reg_3_ ( .D(n320), .CLK(clk), .RESET(n728), .SET(net8123), .QN(count_out[3]) );
  ASYNC_DFFHx1_ASAP7_75t_R count_out_reg_4_ ( .D(n318), .CLK(clk), .RESET(n728), .SET(net8123), .QN(count_out[4]) );
  ASYNC_DFFHx1_ASAP7_75t_R Out_OFM_reg_0_ ( .D(n274), .CLK(clk_out), .RESET(
        n728), .SET(net8123), .QN(Out_OFM[0]) );
  ASYNC_DFFHx1_ASAP7_75t_R Out_OFM_reg_1_ ( .D(n276), .CLK(clk_out), .RESET(
        n728), .SET(net8123), .QN(Out_OFM[1]) );
  ASYNC_DFFHx1_ASAP7_75t_R Out_OFM_reg_2_ ( .D(n278), .CLK(clk_out), .RESET(
        n728), .SET(net8123), .QN(Out_OFM[2]) );
  ASYNC_DFFHx1_ASAP7_75t_R Out_OFM_reg_3_ ( .D(n280), .CLK(clk_out), .RESET(
        n728), .SET(net8123), .QN(Out_OFM[3]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_9__7_ ( .D(n342), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[7]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_9__6_ ( .D(n340), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[6]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_9__5_ ( .D(n338), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[5]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_9__4_ ( .D(n336), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[4]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_9__3_ ( .D(n334), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[3]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_9__2_ ( .D(n332), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[2]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_9__1_ ( .D(n330), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[1]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_9__0_ ( .D(n472), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[0]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_8__7_ ( .D(n358), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[15]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_8__6_ ( .D(n356), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[14]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_8__5_ ( .D(n354), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[13]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_8__4_ ( .D(n352), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[12]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_8__3_ ( .D(n350), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[11]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_8__2_ ( .D(n348), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[10]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_8__1_ ( .D(n346), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[9]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_8__0_ ( .D(n344), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[8]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_7__7_ ( .D(n374), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[23]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_7__6_ ( .D(n372), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[22]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_7__5_ ( .D(n370), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[21]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_7__4_ ( .D(n368), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[20]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_7__3_ ( .D(n366), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[19]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_7__2_ ( .D(n364), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[18]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_7__1_ ( .D(n362), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[17]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_7__0_ ( .D(n360), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[16]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_6__7_ ( .D(n390), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[31]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_6__6_ ( .D(n388), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[30]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_6__5_ ( .D(n386), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[29]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_6__4_ ( .D(n384), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[28]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_6__3_ ( .D(n382), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[27]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_6__2_ ( .D(n380), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[26]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_6__1_ ( .D(n378), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[25]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_6__0_ ( .D(n376), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[24]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_5__7_ ( .D(n406), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[39]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_5__6_ ( .D(n404), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[38]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_5__5_ ( .D(n402), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[37]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_5__4_ ( .D(n400), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[36]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_5__3_ ( .D(n398), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[35]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_5__2_ ( .D(n396), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[34]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_5__1_ ( .D(n394), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[33]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_5__0_ ( .D(n392), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[32]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_4__7_ ( .D(n422), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[47]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_4__6_ ( .D(n420), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[46]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_4__5_ ( .D(n418), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[45]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_4__4_ ( .D(n416), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[44]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_4__3_ ( .D(n414), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[43]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_4__2_ ( .D(n412), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[42]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_4__1_ ( .D(n410), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[41]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_4__0_ ( .D(n408), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[40]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_3__7_ ( .D(n438), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[55]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_3__6_ ( .D(n436), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[54]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_3__5_ ( .D(n434), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[53]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_3__4_ ( .D(n432), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[52]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_3__3_ ( .D(n430), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[51]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_3__2_ ( .D(n428), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[50]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_3__1_ ( .D(n426), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[49]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_3__0_ ( .D(n424), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[48]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_2__7_ ( .D(n454), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[63]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_2__6_ ( .D(n452), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[62]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_2__5_ ( .D(n450), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[61]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_2__4_ ( .D(n448), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[60]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_2__3_ ( .D(n446), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[59]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_2__2_ ( .D(n444), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[58]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_2__1_ ( .D(n442), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[57]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_2__0_ ( .D(n440), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[56]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_1__7_ ( .D(n470), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[71]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_1__6_ ( .D(n468), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[70]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_1__5_ ( .D(n466), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[69]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_1__4_ ( .D(n464), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[68]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_1__3_ ( .D(n462), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[67]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_1__2_ ( .D(n460), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[66]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_1__1_ ( .D(n458), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[65]) );
  ASYNC_DFFHx1_ASAP7_75t_R In_Buffer_reg_1__0_ ( .D(n456), .CLK(clk_gate), 
        .RESET(n728), .SET(net8123), .QN(In_Buffer[64]) );
  ASYNC_DFFHx1_ASAP7_75t_R Out_OFM_reg_4_ ( .D(n282), .CLK(clk_out), .RESET(
        n728), .SET(net8123), .QN(Out_OFM[4]) );
  ASYNC_DFFHx1_ASAP7_75t_R state_cs_reg_1_ ( .D(n326), .CLK(clk), .RESET(n728), 
        .SET(net8123), .QN(state_cs_1_) );
  ASYNC_DFFHx1_ASAP7_75t_R Out_OFM_reg_5_ ( .D(n284), .CLK(clk_out), .RESET(
        n728), .SET(net8123), .QN(Out_OFM[5]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_9__7_ ( .D(n488), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[7])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_9__6_ ( .D(n486), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[6])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_9__5_ ( .D(n484), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[5])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_9__4_ ( .D(n482), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[4])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_8__7_ ( .D(n504), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[15])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_8__6_ ( .D(n502), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[14])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_8__5_ ( .D(n500), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[13])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_8__4_ ( .D(n498), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[12])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_7__7_ ( .D(n520), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[23])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_7__6_ ( .D(n518), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[22])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_7__5_ ( .D(n516), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[21])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_7__4_ ( .D(n514), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[20])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_6__7_ ( .D(n536), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[31])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_6__6_ ( .D(n534), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[30])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_6__5_ ( .D(n532), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[29])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_6__4_ ( .D(n530), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[28])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_5__7_ ( .D(n552), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[39])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_5__6_ ( .D(n550), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[38])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_5__5_ ( .D(n548), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[37])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_5__4_ ( .D(n546), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[36])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_4__7_ ( .D(n568), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[47])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_4__6_ ( .D(n566), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[46])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_4__5_ ( .D(n564), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[45])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_4__4_ ( .D(n562), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[44])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_3__7_ ( .D(n584), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[55])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_3__6_ ( .D(n582), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[54])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_3__5_ ( .D(n580), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[53])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_3__4_ ( .D(n578), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[52])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_2__7_ ( .D(n600), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[63])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_2__6_ ( .D(n598), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[62])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_2__5_ ( .D(n596), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[61])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_2__4_ ( .D(n594), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[60])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_1__7_ ( .D(n616), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[71])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_1__6_ ( .D(n614), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[70])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_1__5_ ( .D(n612), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[69])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_1__4_ ( .D(n610), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[68])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_9__3_ ( .D(n480), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[3])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_9__2_ ( .D(n478), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[2])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_9__1_ ( .D(n476), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[1])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_9__0_ ( .D(n474), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[0])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_8__3_ ( .D(n496), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[11])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_8__2_ ( .D(n494), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[10])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_8__1_ ( .D(n492), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[9])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_8__0_ ( .D(n490), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[8])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_7__1_ ( .D(n508), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[17])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_7__0_ ( .D(n506), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[16])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_7__3_ ( .D(n512), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[19])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_7__2_ ( .D(n510), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[18])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_6__3_ ( .D(n528), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[27])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_6__2_ ( .D(n526), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[26])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_6__1_ ( .D(n524), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[25])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_6__0_ ( .D(n522), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[24])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_5__3_ ( .D(n544), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[35])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_5__2_ ( .D(n542), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[34])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_5__1_ ( .D(n540), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[33])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_5__0_ ( .D(n538), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[32])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_4__3_ ( .D(n560), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[43])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_4__2_ ( .D(n558), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[42])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_4__1_ ( .D(n556), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[41])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_4__0_ ( .D(n554), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[40])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_3__3_ ( .D(n576), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[51])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_3__2_ ( .D(n574), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[50])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_3__1_ ( .D(n572), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[49])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_3__0_ ( .D(n570), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[48])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_2__3_ ( .D(n592), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[59])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_2__2_ ( .D(n590), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[58])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_2__1_ ( .D(n588), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[57])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_2__0_ ( .D(n586), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[56])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_1__3_ ( .D(n608), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[67])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_1__2_ ( .D(n606), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[66])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_1__1_ ( .D(n604), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[65])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_1__0_ ( .D(n602), .CLK(
        clk_gate_Weight), .RESET(n728), .SET(net8123), .QN(Weight_Buffer[64])
         );
  ASYNC_DFFHx1_ASAP7_75t_R Out_OFM_reg_6_ ( .D(n286), .CLK(clk_out), .RESET(
        n728), .SET(net8123), .QN(Out_OFM[6]) );
  ASYNC_DFFHx1_ASAP7_75t_R Out_OFM_reg_7_ ( .D(n288), .CLK(clk_out), .RESET(
        n728), .SET(net8123), .QN(Out_OFM[7]) );
  ASYNC_DFFHx1_ASAP7_75t_R Out_OFM_reg_8_ ( .D(n290), .CLK(clk_out), .RESET(
        n728), .SET(net8123), .QN(Out_OFM[8]) );
  ASYNC_DFFHx1_ASAP7_75t_R Out_OFM_reg_9_ ( .D(n292), .CLK(clk_out), .RESET(
        n728), .SET(net8123), .QN(Out_OFM[9]) );
  ASYNC_DFFHx1_ASAP7_75t_R Out_OFM_reg_10_ ( .D(n294), .CLK(clk_out), .RESET(
        n728), .SET(net8123), .QN(Out_OFM[10]) );
  ASYNC_DFFHx1_ASAP7_75t_R Out_OFM_reg_11_ ( .D(n296), .CLK(clk_out), .RESET(
        n728), .SET(net8123), .QN(Out_OFM[11]) );
  ASYNC_DFFHx1_ASAP7_75t_R Out_OFM_reg_12_ ( .D(n298), .CLK(clk_out), .RESET(
        n728), .SET(net8123), .QN(Out_OFM[12]) );
  ASYNC_DFFHx1_ASAP7_75t_R Out_OFM_reg_13_ ( .D(n300), .CLK(clk_out), .RESET(
        n728), .SET(net8123), .QN(Out_OFM[13]) );
  ASYNC_DFFHx1_ASAP7_75t_R Out_OFM_reg_14_ ( .D(n302), .CLK(clk_out), .RESET(
        n728), .SET(net8123), .QN(Out_OFM[14]) );
  ASYNC_DFFHx1_ASAP7_75t_R Out_OFM_reg_15_ ( .D(n304), .CLK(clk_out), .RESET(
        n728), .SET(net8123), .QN(Out_OFM[15]) );
  ASYNC_DFFHx1_ASAP7_75t_R Out_OFM_reg_16_ ( .D(n306), .CLK(clk_out), .RESET(
        n728), .SET(net8123), .QN(Out_OFM[16]) );
  ASYNC_DFFHx1_ASAP7_75t_R Out_OFM_reg_17_ ( .D(n308), .CLK(clk_out), .RESET(
        n728), .SET(net8123), .QN(Out_OFM[17]) );
  ASYNC_DFFHx1_ASAP7_75t_R Out_OFM_reg_19_ ( .D(n312), .CLK(clk_out), .RESET(
        n728), .SET(net8123), .QN(Out_OFM[19]) );
  ASYNC_DFFHx1_ASAP7_75t_R Out_OFM_reg_18_ ( .D(n310), .CLK(clk_out), .RESET(
        n728), .SET(net8123), .QN(Out_OFM[18]) );
  TIEHIx1_ASAP7_75t_R U607 ( .H(n620) );
  INVx1_ASAP7_75t_R U608 ( .A(n620), .Y(Out_OFM[20]) );
  TIELOx1_ASAP7_75t_R U609 ( .L(net8123) );
  BUFx2_ASAP7_75t_R U610 ( .A(Weight_Buffer[17]), .Y(n626) );
  XOR2xp5_ASAP7_75t_R U611 ( .A(N368), .B(N221), .Y(n621) );
  AND2x2_ASAP7_75t_R U612 ( .A(N186), .B(N331), .Y(n622) );
  AND2x2_ASAP7_75t_R U613 ( .A(N368), .B(N221), .Y(n623) );
  XOR2xp5_ASAP7_75t_R U614 ( .A(N186), .B(N331), .Y(n624) );
  INVx4_ASAP7_75t_R U615 ( .A(rst_n), .Y(n728) );
  INVxp33_ASAP7_75t_R U616 ( .A(Weight_Buffer[49]), .Y(n739) );
  INVxp33_ASAP7_75t_R U617 ( .A(Weight_Buffer[51]), .Y(n737) );
  INVxp33_ASAP7_75t_R U618 ( .A(Weight_Buffer[50]), .Y(n738) );
  INVxp33_ASAP7_75t_R U619 ( .A(Weight_Buffer[18]), .Y(n754) );
  INVxp33_ASAP7_75t_R U620 ( .A(Weight_Buffer[19]), .Y(n753) );
  INVxp33_ASAP7_75t_R U621 ( .A(n626), .Y(n625) );
  NOR4xp25_ASAP7_75t_R U622 ( .A(In_IFM_5[7]), .B(In_IFM_5[6]), .C(In_IFM_5[5]), .D(In_IFM_5[4]), .Y(n217) );
  NAND4xp25_ASAP7_75t_R U623 ( .A(n214), .B(n215), .C(n216), .D(n217), .Y(n211) );
  NOR4xp25_ASAP7_75t_R U624 ( .A(Weight_Buffer[39]), .B(Weight_Buffer[38]), 
        .C(Weight_Buffer[37]), .D(Weight_Buffer[36]), .Y(n213) );
  NOR4xp25_ASAP7_75t_R U625 ( .A(In_IFM_5[3]), .B(In_IFM_5[2]), .C(In_IFM_5[1]), .D(In_IFM_5[0]), .Y(n216) );
  NOR4xp25_ASAP7_75t_R U626 ( .A(In_IFM_4[7]), .B(In_IFM_4[6]), .C(In_IFM_4[5]), .D(In_IFM_4[4]), .Y(n224) );
  NAND4xp25_ASAP7_75t_R U627 ( .A(n221), .B(n222), .C(n223), .D(n224), .Y(n218) );
  NOR4xp25_ASAP7_75t_R U628 ( .A(Weight_Buffer[47]), .B(Weight_Buffer[46]), 
        .C(Weight_Buffer[45]), .D(Weight_Buffer[44]), .Y(n220) );
  NOR4xp25_ASAP7_75t_R U629 ( .A(In_IFM_3[7]), .B(In_IFM_3[6]), .C(In_IFM_3[5]), .D(In_IFM_3[4]), .Y(n231) );
  NAND4xp25_ASAP7_75t_R U630 ( .A(n228), .B(n229), .C(n230), .D(n231), .Y(n225) );
  NOR4xp25_ASAP7_75t_R U631 ( .A(In_Buffer[55]), .B(In_Buffer[54]), .C(
        In_Buffer[53]), .D(In_Buffer[52]), .Y(n229) );
  NOR4xp25_ASAP7_75t_R U632 ( .A(In_IFM_3[3]), .B(In_IFM_3[2]), .C(In_IFM_3[1]), .D(In_IFM_3[0]), .Y(n230) );
  NOR4xp25_ASAP7_75t_R U633 ( .A(In_IFM_4[3]), .B(In_IFM_4[2]), .C(In_IFM_4[1]), .D(In_IFM_4[0]), .Y(n223) );
  NOR4xp25_ASAP7_75t_R U634 ( .A(In_IFM_2[7]), .B(In_IFM_2[6]), .C(In_IFM_2[5]), .D(In_IFM_2[4]), .Y(n238) );
  NAND4xp25_ASAP7_75t_R U635 ( .A(n235), .B(n236), .C(n237), .D(n238), .Y(n232) );
  NOR4xp25_ASAP7_75t_R U636 ( .A(In_Buffer[59]), .B(In_Buffer[58]), .C(
        In_Buffer[57]), .D(In_Buffer[56]), .Y(n235) );
  NOR4xp25_ASAP7_75t_R U637 ( .A(In_Buffer[63]), .B(In_Buffer[62]), .C(
        In_Buffer[61]), .D(In_Buffer[60]), .Y(n236) );
  NOR4xp25_ASAP7_75t_R U638 ( .A(In_IFM_2[3]), .B(In_IFM_2[2]), .C(In_IFM_2[1]), .D(In_IFM_2[0]), .Y(n237) );
  NOR4xp25_ASAP7_75t_R U639 ( .A(In_IFM_1[7]), .B(In_IFM_1[6]), .C(In_IFM_1[5]), .D(In_IFM_1[4]), .Y(n245) );
  NAND4xp25_ASAP7_75t_R U640 ( .A(n242), .B(n243), .C(n244), .D(n245), .Y(n239) );
  NOR4xp25_ASAP7_75t_R U641 ( .A(In_Buffer[67]), .B(In_Buffer[66]), .C(
        In_Buffer[65]), .D(In_Buffer[64]), .Y(n242) );
  NOR4xp25_ASAP7_75t_R U642 ( .A(In_Buffer[71]), .B(In_Buffer[70]), .C(
        In_Buffer[69]), .D(In_Buffer[68]), .Y(n243) );
  NOR4xp25_ASAP7_75t_R U643 ( .A(In_IFM_1[3]), .B(In_IFM_1[2]), .C(In_IFM_1[1]), .D(In_IFM_1[0]), .Y(n244) );
  NOR4xp25_ASAP7_75t_R U644 ( .A(In_IFM_9[7]), .B(In_IFM_9[6]), .C(In_IFM_9[5]), .D(In_IFM_9[4]), .Y(n252) );
  NAND4xp25_ASAP7_75t_R U645 ( .A(n249), .B(n250), .C(n251), .D(n252), .Y(n246) );
  NOR4xp25_ASAP7_75t_R U646 ( .A(Weight_Buffer[7]), .B(Weight_Buffer[6]), .C(
        Weight_Buffer[5]), .D(Weight_Buffer[4]), .Y(n248) );
  NOR4xp25_ASAP7_75t_R U647 ( .A(In_IFM_9[3]), .B(In_IFM_9[2]), .C(In_IFM_9[1]), .D(In_IFM_9[0]), .Y(n251) );
  NOR4xp25_ASAP7_75t_R U648 ( .A(In_IFM_8[7]), .B(In_IFM_8[6]), .C(In_IFM_8[5]), .D(In_IFM_8[4]), .Y(n259) );
  NAND4xp25_ASAP7_75t_R U649 ( .A(n256), .B(n257), .C(n258), .D(n259), .Y(n253) );
  NOR4xp25_ASAP7_75t_R U650 ( .A(In_Buffer[11]), .B(In_Buffer[10]), .C(
        In_Buffer[9]), .D(In_Buffer[8]), .Y(n256) );
  NOR4xp25_ASAP7_75t_R U651 ( .A(In_Buffer[15]), .B(In_Buffer[14]), .C(
        In_Buffer[13]), .D(In_Buffer[12]), .Y(n257) );
  NOR4xp25_ASAP7_75t_R U652 ( .A(In_IFM_8[3]), .B(In_IFM_8[2]), .C(In_IFM_8[1]), .D(In_IFM_8[0]), .Y(n258) );
  NOR4xp25_ASAP7_75t_R U653 ( .A(In_IFM_7[7]), .B(In_IFM_7[6]), .C(In_IFM_7[5]), .D(In_IFM_7[4]), .Y(n266) );
  NAND4xp25_ASAP7_75t_R U654 ( .A(n263), .B(n264), .C(n265), .D(n266), .Y(n260) );
  NOR4xp25_ASAP7_75t_R U655 ( .A(In_Buffer[23]), .B(In_Buffer[22]), .C(
        In_Buffer[21]), .D(In_Buffer[20]), .Y(n264) );
  NOR4xp25_ASAP7_75t_R U656 ( .A(In_IFM_7[3]), .B(In_IFM_7[2]), .C(In_IFM_7[1]), .D(In_IFM_7[0]), .Y(n265) );
  NOR4xp25_ASAP7_75t_R U657 ( .A(In_IFM_6[7]), .B(In_IFM_6[6]), .C(In_IFM_6[5]), .D(In_IFM_6[4]), .Y(n273) );
  NAND4xp25_ASAP7_75t_R U658 ( .A(n270), .B(n271), .C(n272), .D(n273), .Y(n267) );
  NOR4xp25_ASAP7_75t_R U659 ( .A(In_Buffer[27]), .B(In_Buffer[26]), .C(
        In_Buffer[25]), .D(In_Buffer[24]), .Y(n270) );
  NOR4xp25_ASAP7_75t_R U660 ( .A(In_Buffer[31]), .B(In_Buffer[30]), .C(
        In_Buffer[29]), .D(In_Buffer[28]), .Y(n271) );
  NOR4xp25_ASAP7_75t_R U661 ( .A(In_IFM_6[3]), .B(In_IFM_6[2]), .C(In_IFM_6[1]), .D(In_IFM_6[0]), .Y(n272) );
  INVx1_ASAP7_75t_R U662 ( .A(weight_valid), .Y(n627) );
  INVx1_ASAP7_75t_R U663 ( .A(weight_valid), .Y(n628) );
  INVx1_ASAP7_75t_R U664 ( .A(weight_valid), .Y(n629) );
  INVx1_ASAP7_75t_R U665 ( .A(weight_valid), .Y(n630) );
  NAND4xp25_ASAP7_75t_R U666 ( .A(count_out[3]), .B(state_cs_1_), .C(
        count_out[4]), .D(n19), .Y(n18) );
  NOR3xp33_ASAP7_75t_R U667 ( .A(count_out[0]), .B(count_out[2]), .C(
        count_out[1]), .Y(n19) );
  NOR4xp25_ASAP7_75t_R U668 ( .A(Weight_Buffer[55]), .B(Weight_Buffer[54]), 
        .C(Weight_Buffer[53]), .D(Weight_Buffer[52]), .Y(n227) );
  NOR4xp25_ASAP7_75t_R U669 ( .A(In_Buffer[39]), .B(In_Buffer[38]), .C(
        In_Buffer[37]), .D(In_Buffer[36]), .Y(n215) );
  NOR4xp25_ASAP7_75t_R U670 ( .A(In_Buffer[47]), .B(In_Buffer[46]), .C(
        In_Buffer[45]), .D(In_Buffer[44]), .Y(n222) );
  NOR4xp25_ASAP7_75t_R U671 ( .A(Weight_Buffer[63]), .B(Weight_Buffer[62]), 
        .C(Weight_Buffer[61]), .D(Weight_Buffer[60]), .Y(n234) );
  NOR4xp25_ASAP7_75t_R U672 ( .A(In_Buffer[35]), .B(In_Buffer[34]), .C(
        In_Buffer[33]), .D(In_Buffer[32]), .Y(n214) );
  NOR4xp25_ASAP7_75t_R U673 ( .A(Weight_Buffer[71]), .B(Weight_Buffer[70]), 
        .C(Weight_Buffer[69]), .D(Weight_Buffer[68]), .Y(n241) );
  NOR4xp25_ASAP7_75t_R U674 ( .A(In_Buffer[43]), .B(In_Buffer[42]), .C(
        In_Buffer[41]), .D(In_Buffer[40]), .Y(n221) );
  NOR4xp25_ASAP7_75t_R U675 ( .A(Weight_Buffer[23]), .B(Weight_Buffer[22]), 
        .C(Weight_Buffer[21]), .D(Weight_Buffer[20]), .Y(n262) );
  NOR4xp25_ASAP7_75t_R U676 ( .A(Weight_Buffer[15]), .B(Weight_Buffer[14]), 
        .C(Weight_Buffer[13]), .D(Weight_Buffer[12]), .Y(n255) );
  NOR4xp25_ASAP7_75t_R U677 ( .A(In_Buffer[7]), .B(In_Buffer[6]), .C(
        In_Buffer[5]), .D(In_Buffer[4]), .Y(n250) );
  NOR4xp25_ASAP7_75t_R U678 ( .A(Weight_Buffer[31]), .B(Weight_Buffer[30]), 
        .C(Weight_Buffer[29]), .D(Weight_Buffer[28]), .Y(n269) );
  NOR4xp25_ASAP7_75t_R U679 ( .A(In_Buffer[3]), .B(In_Buffer[2]), .C(
        In_Buffer[1]), .D(In_Buffer[0]), .Y(n249) );
  INVx1_ASAP7_75t_R U680 ( .A(state_cs_1_), .Y(n631) );
  NOR4xp25_ASAP7_75t_R U681 ( .A(In_Buffer[19]), .B(In_Buffer[18]), .C(
        In_Buffer[17]), .D(In_Buffer[16]), .Y(n263) );
  NOR4xp25_ASAP7_75t_R U682 ( .A(In_Buffer[51]), .B(In_Buffer[50]), .C(
        In_Buffer[49]), .D(In_Buffer[48]), .Y(n228) );
  INVx1_ASAP7_75t_R U683 ( .A(n650), .Y(N283) );
  INVx1_ASAP7_75t_R U684 ( .A(n652), .Y(N284) );
  INVx1_ASAP7_75t_R U685 ( .A(n654), .Y(N285) );
  INVx1_ASAP7_75t_R U686 ( .A(n656), .Y(N286) );
  INVx1_ASAP7_75t_R U687 ( .A(n658), .Y(N287) );
  INVx1_ASAP7_75t_R U688 ( .A(n660), .Y(N288) );
  INVx1_ASAP7_75t_R U689 ( .A(n661), .Y(N289) );
  INVx1_ASAP7_75t_R U690 ( .A(n632), .Y(N274) );
  INVx1_ASAP7_75t_R U691 ( .A(n634), .Y(N275) );
  INVx1_ASAP7_75t_R U692 ( .A(n636), .Y(N276) );
  INVx1_ASAP7_75t_R U693 ( .A(n638), .Y(N277) );
  INVx1_ASAP7_75t_R U694 ( .A(n640), .Y(N278) );
  INVx1_ASAP7_75t_R U695 ( .A(n642), .Y(N279) );
  INVx1_ASAP7_75t_R U696 ( .A(n644), .Y(N280) );
  INVx1_ASAP7_75t_R U697 ( .A(n646), .Y(N281) );
  INVx1_ASAP7_75t_R U698 ( .A(n648), .Y(N282) );
  INVx1_ASAP7_75t_R U699 ( .A(n633), .Y(n662) );
  INVx1_ASAP7_75t_R U700 ( .A(n635), .Y(n663) );
  INVx1_ASAP7_75t_R U701 ( .A(n637), .Y(n664) );
  INVx1_ASAP7_75t_R U702 ( .A(n639), .Y(n665) );
  INVx1_ASAP7_75t_R U703 ( .A(n641), .Y(n666) );
  INVx1_ASAP7_75t_R U704 ( .A(n643), .Y(n667) );
  INVx1_ASAP7_75t_R U705 ( .A(n645), .Y(n668) );
  INVx1_ASAP7_75t_R U706 ( .A(n647), .Y(n669) );
  INVx1_ASAP7_75t_R U707 ( .A(n649), .Y(n670) );
  INVx1_ASAP7_75t_R U708 ( .A(n651), .Y(n671) );
  INVx1_ASAP7_75t_R U709 ( .A(n653), .Y(n672) );
  INVx1_ASAP7_75t_R U710 ( .A(n655), .Y(n673) );
  INVx1_ASAP7_75t_R U711 ( .A(n657), .Y(n674) );
  INVx1_ASAP7_75t_R U712 ( .A(n659), .Y(n675) );
  INVx1_ASAP7_75t_R U713 ( .A(n694), .Y(N357) );
  INVx1_ASAP7_75t_R U714 ( .A(n696), .Y(N358) );
  INVx1_ASAP7_75t_R U715 ( .A(n698), .Y(N359) );
  INVx1_ASAP7_75t_R U716 ( .A(n700), .Y(N360) );
  INVx1_ASAP7_75t_R U717 ( .A(n702), .Y(N361) );
  INVx1_ASAP7_75t_R U718 ( .A(n704), .Y(N362) );
  INVx1_ASAP7_75t_R U719 ( .A(n705), .Y(N363) );
  INVx1_ASAP7_75t_R U720 ( .A(n676), .Y(N348) );
  INVx1_ASAP7_75t_R U721 ( .A(n678), .Y(N349) );
  INVx1_ASAP7_75t_R U722 ( .A(n680), .Y(N350) );
  INVx1_ASAP7_75t_R U723 ( .A(n682), .Y(N351) );
  INVx1_ASAP7_75t_R U724 ( .A(n684), .Y(N352) );
  INVx1_ASAP7_75t_R U725 ( .A(n686), .Y(N353) );
  INVx1_ASAP7_75t_R U726 ( .A(n688), .Y(N354) );
  INVx1_ASAP7_75t_R U727 ( .A(n690), .Y(N355) );
  INVx1_ASAP7_75t_R U728 ( .A(n692), .Y(N356) );
  INVx1_ASAP7_75t_R U729 ( .A(n677), .Y(n706) );
  INVx1_ASAP7_75t_R U730 ( .A(n679), .Y(n707) );
  INVx1_ASAP7_75t_R U731 ( .A(n681), .Y(n708) );
  INVx1_ASAP7_75t_R U732 ( .A(n683), .Y(n709) );
  INVx1_ASAP7_75t_R U733 ( .A(n685), .Y(n710) );
  INVx1_ASAP7_75t_R U734 ( .A(n687), .Y(n711) );
  INVx1_ASAP7_75t_R U735 ( .A(n689), .Y(n712) );
  INVx1_ASAP7_75t_R U736 ( .A(n691), .Y(n713) );
  INVx1_ASAP7_75t_R U737 ( .A(n693), .Y(n714) );
  INVx1_ASAP7_75t_R U738 ( .A(n695), .Y(n715) );
  INVx1_ASAP7_75t_R U739 ( .A(n697), .Y(n716) );
  INVx1_ASAP7_75t_R U740 ( .A(n699), .Y(n717) );
  INVx1_ASAP7_75t_R U741 ( .A(n701), .Y(n718) );
  INVx1_ASAP7_75t_R U742 ( .A(n703), .Y(n719) );
  INVx1_ASAP7_75t_R U743 ( .A(count_out[0]), .Y(N93) );
  INVx1_ASAP7_75t_R U744 ( .A(n720), .Y(N94) );
  INVx1_ASAP7_75t_R U745 ( .A(n722), .Y(N95) );
  INVx1_ASAP7_75t_R U746 ( .A(n724), .Y(N96) );
  XNOR2xp5_ASAP7_75t_R U747 ( .A(n725), .B(count_out[4]), .Y(N97) );
  INVx1_ASAP7_75t_R U748 ( .A(n721), .Y(n726) );
  INVx1_ASAP7_75t_R U749 ( .A(n723), .Y(n727) );
  INVx1_ASAP7_75t_R U750 ( .A(Weight_Buffer[67]), .Y(n729) );
  INVx1_ASAP7_75t_R U751 ( .A(Weight_Buffer[66]), .Y(n730) );
  INVx1_ASAP7_75t_R U752 ( .A(Weight_Buffer[65]), .Y(n731) );
  INVx1_ASAP7_75t_R U753 ( .A(Weight_Buffer[64]), .Y(n732) );
  INVx1_ASAP7_75t_R U754 ( .A(Weight_Buffer[59]), .Y(n733) );
  INVx1_ASAP7_75t_R U755 ( .A(Weight_Buffer[58]), .Y(n734) );
  INVx1_ASAP7_75t_R U756 ( .A(Weight_Buffer[57]), .Y(n735) );
  INVx1_ASAP7_75t_R U757 ( .A(Weight_Buffer[56]), .Y(n736) );
  INVx1_ASAP7_75t_R U758 ( .A(Weight_Buffer[48]), .Y(n740) );
  INVx1_ASAP7_75t_R U759 ( .A(Weight_Buffer[43]), .Y(n741) );
  INVx1_ASAP7_75t_R U760 ( .A(Weight_Buffer[42]), .Y(n742) );
  INVx1_ASAP7_75t_R U761 ( .A(Weight_Buffer[41]), .Y(n743) );
  INVx1_ASAP7_75t_R U762 ( .A(Weight_Buffer[40]), .Y(n744) );
  INVx1_ASAP7_75t_R U763 ( .A(Weight_Buffer[35]), .Y(n745) );
  INVx1_ASAP7_75t_R U764 ( .A(Weight_Buffer[34]), .Y(n746) );
  INVx1_ASAP7_75t_R U765 ( .A(Weight_Buffer[33]), .Y(n747) );
  INVx1_ASAP7_75t_R U766 ( .A(Weight_Buffer[32]), .Y(n748) );
  INVx1_ASAP7_75t_R U767 ( .A(Weight_Buffer[27]), .Y(n749) );
  INVx1_ASAP7_75t_R U768 ( .A(Weight_Buffer[26]), .Y(n750) );
  INVx1_ASAP7_75t_R U769 ( .A(Weight_Buffer[25]), .Y(n751) );
  INVx1_ASAP7_75t_R U770 ( .A(Weight_Buffer[24]), .Y(n752) );
  INVx1_ASAP7_75t_R U771 ( .A(Weight_Buffer[16]), .Y(n755) );
  INVx1_ASAP7_75t_R U772 ( .A(Weight_Buffer[11]), .Y(n756) );
  INVx1_ASAP7_75t_R U773 ( .A(Weight_Buffer[10]), .Y(n757) );
  INVx1_ASAP7_75t_R U774 ( .A(Weight_Buffer[9]), .Y(n758) );
  INVx1_ASAP7_75t_R U775 ( .A(Weight_Buffer[8]), .Y(n759) );
  INVx1_ASAP7_75t_R U776 ( .A(Weight_Buffer[3]), .Y(n760) );
  INVx1_ASAP7_75t_R U777 ( .A(Weight_Buffer[2]), .Y(n761) );
  INVx1_ASAP7_75t_R U778 ( .A(Weight_Buffer[1]), .Y(n762) );
  INVx1_ASAP7_75t_R U779 ( .A(Weight_Buffer[0]), .Y(n763) );
endmodule


module Convolution_DW01_add_0 ( A, B, CI, SUM, CO );
  input [20:0] A;
  input [20:0] B;
  output [20:0] SUM;
  input CI;
  output CO;
  wire   n1, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55;

  FAx1_ASAP7_75t_R U1_17 ( .A(A[17]), .B(B[17]), .CI(n5), .CON(n22), .SN(n23)
         );
  FAx1_ASAP7_75t_R U1_16 ( .A(A[16]), .B(B[16]), .CI(n6), .CON(n24), .SN(n25)
         );
  FAx1_ASAP7_75t_R U1_15 ( .A(A[15]), .B(B[15]), .CI(n7), .CON(n26), .SN(n27)
         );
  FAx1_ASAP7_75t_R U1_14 ( .A(A[14]), .B(B[14]), .CI(n8), .CON(n28), .SN(n29)
         );
  FAx1_ASAP7_75t_R U1_13 ( .A(A[13]), .B(B[13]), .CI(n9), .CON(n30), .SN(n31)
         );
  FAx1_ASAP7_75t_R U1_12 ( .A(A[12]), .B(B[12]), .CI(n10), .CON(n32), .SN(n33)
         );
  FAx1_ASAP7_75t_R U1_11 ( .A(A[11]), .B(B[11]), .CI(n11), .CON(n34), .SN(n35)
         );
  FAx1_ASAP7_75t_R U1_10 ( .A(A[10]), .B(B[10]), .CI(n12), .CON(n36), .SN(n37)
         );
  FAx1_ASAP7_75t_R U1_9 ( .A(A[9]), .B(B[9]), .CI(n13), .CON(n38), .SN(n39) );
  FAx1_ASAP7_75t_R U1_8 ( .A(A[8]), .B(B[8]), .CI(n14), .CON(n40), .SN(n41) );
  FAx1_ASAP7_75t_R U1_7 ( .A(A[7]), .B(B[7]), .CI(n15), .CON(n42), .SN(n43) );
  FAx1_ASAP7_75t_R U1_6 ( .A(A[6]), .B(B[6]), .CI(n16), .CON(n44), .SN(n45) );
  FAx1_ASAP7_75t_R U1_5 ( .A(A[5]), .B(B[5]), .CI(n17), .CON(n46), .SN(n47) );
  FAx1_ASAP7_75t_R U1_4 ( .A(A[4]), .B(B[4]), .CI(n18), .CON(n48), .SN(n49) );
  FAx1_ASAP7_75t_R U1_3 ( .A(A[3]), .B(B[3]), .CI(n19), .CON(n50), .SN(n51) );
  FAx1_ASAP7_75t_R U1_2 ( .A(A[2]), .B(B[2]), .CI(n20), .CON(n52), .SN(n53) );
  FAx1_ASAP7_75t_R U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CON(n54), .SN(n55) );
  AND2x2_ASAP7_75t_R U1 ( .A(A[0]), .B(B[0]), .Y(n1) );
  XOR2xp5_ASAP7_75t_R U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  NAND2xp5_ASAP7_75t_R U3 ( .A(B[18]), .B(n4), .Y(n21) );
  XOR2xp5_ASAP7_75t_R U4 ( .A(n4), .B(B[18]), .Y(SUM[18]) );
  INVxp67_ASAP7_75t_R U5 ( .A(n21), .Y(SUM[19]) );
  INVxp67_ASAP7_75t_R U6 ( .A(n23), .Y(SUM[17]) );
  INVx1_ASAP7_75t_R U7 ( .A(n22), .Y(n4) );
  INVx1_ASAP7_75t_R U8 ( .A(n24), .Y(n5) );
  INVx1_ASAP7_75t_R U9 ( .A(n26), .Y(n6) );
  INVx1_ASAP7_75t_R U10 ( .A(n28), .Y(n7) );
  INVx1_ASAP7_75t_R U11 ( .A(n30), .Y(n8) );
  INVx1_ASAP7_75t_R U12 ( .A(n32), .Y(n9) );
  INVx1_ASAP7_75t_R U13 ( .A(n34), .Y(n10) );
  INVx1_ASAP7_75t_R U14 ( .A(n36), .Y(n11) );
  INVx1_ASAP7_75t_R U15 ( .A(n38), .Y(n12) );
  INVx1_ASAP7_75t_R U16 ( .A(n40), .Y(n13) );
  INVx1_ASAP7_75t_R U17 ( .A(n42), .Y(n14) );
  INVx1_ASAP7_75t_R U18 ( .A(n44), .Y(n15) );
  INVx1_ASAP7_75t_R U19 ( .A(n46), .Y(n16) );
  INVx1_ASAP7_75t_R U20 ( .A(n48), .Y(n17) );
  INVx1_ASAP7_75t_R U21 ( .A(n50), .Y(n18) );
  INVx1_ASAP7_75t_R U22 ( .A(n52), .Y(n19) );
  INVx1_ASAP7_75t_R U23 ( .A(n54), .Y(n20) );
  INVx1_ASAP7_75t_R U24 ( .A(n39), .Y(SUM[9]) );
  INVx1_ASAP7_75t_R U25 ( .A(n41), .Y(SUM[8]) );
  INVx1_ASAP7_75t_R U26 ( .A(n43), .Y(SUM[7]) );
  INVx1_ASAP7_75t_R U27 ( .A(n45), .Y(SUM[6]) );
  INVx1_ASAP7_75t_R U28 ( .A(n47), .Y(SUM[5]) );
  INVx1_ASAP7_75t_R U29 ( .A(n49), .Y(SUM[4]) );
  INVx1_ASAP7_75t_R U30 ( .A(n51), .Y(SUM[3]) );
  INVx1_ASAP7_75t_R U31 ( .A(n53), .Y(SUM[2]) );
  INVx1_ASAP7_75t_R U32 ( .A(n55), .Y(SUM[1]) );
  INVx1_ASAP7_75t_R U33 ( .A(n25), .Y(SUM[16]) );
  INVx1_ASAP7_75t_R U34 ( .A(n27), .Y(SUM[15]) );
  INVx1_ASAP7_75t_R U35 ( .A(n29), .Y(SUM[14]) );
  INVx1_ASAP7_75t_R U36 ( .A(n31), .Y(SUM[13]) );
  INVx1_ASAP7_75t_R U37 ( .A(n33), .Y(SUM[12]) );
  INVx1_ASAP7_75t_R U38 ( .A(n35), .Y(SUM[11]) );
  INVx1_ASAP7_75t_R U39 ( .A(n37), .Y(SUM[10]) );
endmodule


module Convolution_DW01_add_1 ( A, B, CI, SUM, CO );
  input [20:0] A;
  input [20:0] B;
  output [20:0] SUM;
  input CI;
  output CO;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49;

  FAx1_ASAP7_75t_R U1_16 ( .A(A[16]), .B(B[16]), .CI(n3), .CON(n18), .SN(n19)
         );
  FAx1_ASAP7_75t_R U1_15 ( .A(A[15]), .B(B[15]), .CI(n4), .CON(n20), .SN(n21)
         );
  FAx1_ASAP7_75t_R U1_14 ( .A(A[14]), .B(B[14]), .CI(n5), .CON(n22), .SN(n23)
         );
  FAx1_ASAP7_75t_R U1_13 ( .A(A[13]), .B(B[13]), .CI(n6), .CON(n24), .SN(n25)
         );
  FAx1_ASAP7_75t_R U1_12 ( .A(A[12]), .B(B[12]), .CI(n7), .CON(n26), .SN(n27)
         );
  FAx1_ASAP7_75t_R U1_11 ( .A(A[11]), .B(B[11]), .CI(n8), .CON(n28), .SN(n29)
         );
  FAx1_ASAP7_75t_R U1_10 ( .A(A[10]), .B(B[10]), .CI(n9), .CON(n30), .SN(n31)
         );
  FAx1_ASAP7_75t_R U1_9 ( .A(A[9]), .B(B[9]), .CI(n10), .CON(n32), .SN(n33) );
  FAx1_ASAP7_75t_R U1_8 ( .A(A[8]), .B(B[8]), .CI(n11), .CON(n34), .SN(n35) );
  FAx1_ASAP7_75t_R U1_7 ( .A(A[7]), .B(B[7]), .CI(n12), .CON(n36), .SN(n37) );
  FAx1_ASAP7_75t_R U1_6 ( .A(A[6]), .B(B[6]), .CI(n13), .CON(n38), .SN(n39) );
  FAx1_ASAP7_75t_R U1_5 ( .A(A[5]), .B(B[5]), .CI(n14), .CON(n40), .SN(n41) );
  FAx1_ASAP7_75t_R U1_4 ( .A(A[4]), .B(B[4]), .CI(n15), .CON(n42), .SN(n43) );
  FAx1_ASAP7_75t_R U1_3 ( .A(A[3]), .B(B[3]), .CI(n16), .CON(n44), .SN(n45) );
  FAx1_ASAP7_75t_R U1_2 ( .A(A[2]), .B(B[2]), .CI(n17), .CON(n46), .SN(n47) );
  FAx1_ASAP7_75t_R U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CON(n48), .SN(n49) );
  AND2x2_ASAP7_75t_R U1 ( .A(A[0]), .B(B[0]), .Y(n1) );
  XOR2xp5_ASAP7_75t_R U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  INVx1_ASAP7_75t_R U3 ( .A(n20), .Y(n3) );
  INVx1_ASAP7_75t_R U4 ( .A(n22), .Y(n4) );
  INVx1_ASAP7_75t_R U5 ( .A(n24), .Y(n5) );
  INVx1_ASAP7_75t_R U6 ( .A(n26), .Y(n6) );
  INVx1_ASAP7_75t_R U7 ( .A(n28), .Y(n7) );
  INVx1_ASAP7_75t_R U8 ( .A(n30), .Y(n8) );
  INVx1_ASAP7_75t_R U9 ( .A(n32), .Y(n9) );
  INVx1_ASAP7_75t_R U10 ( .A(n34), .Y(n10) );
  INVx1_ASAP7_75t_R U11 ( .A(n36), .Y(n11) );
  INVx1_ASAP7_75t_R U12 ( .A(n38), .Y(n12) );
  INVx1_ASAP7_75t_R U13 ( .A(n40), .Y(n13) );
  INVx1_ASAP7_75t_R U14 ( .A(n42), .Y(n14) );
  INVx1_ASAP7_75t_R U15 ( .A(n44), .Y(n15) );
  INVx1_ASAP7_75t_R U16 ( .A(n46), .Y(n16) );
  INVx1_ASAP7_75t_R U17 ( .A(n48), .Y(n17) );
  INVx1_ASAP7_75t_R U18 ( .A(n33), .Y(SUM[9]) );
  INVx1_ASAP7_75t_R U19 ( .A(n35), .Y(SUM[8]) );
  INVx1_ASAP7_75t_R U20 ( .A(n37), .Y(SUM[7]) );
  INVx1_ASAP7_75t_R U21 ( .A(n39), .Y(SUM[6]) );
  INVx1_ASAP7_75t_R U22 ( .A(n41), .Y(SUM[5]) );
  INVx1_ASAP7_75t_R U23 ( .A(n43), .Y(SUM[4]) );
  INVx1_ASAP7_75t_R U24 ( .A(n45), .Y(SUM[3]) );
  INVx1_ASAP7_75t_R U25 ( .A(n47), .Y(SUM[2]) );
  INVx1_ASAP7_75t_R U26 ( .A(n49), .Y(SUM[1]) );
  INVx1_ASAP7_75t_R U27 ( .A(n18), .Y(SUM[17]) );
  INVx1_ASAP7_75t_R U28 ( .A(n19), .Y(SUM[16]) );
  INVx1_ASAP7_75t_R U29 ( .A(n21), .Y(SUM[15]) );
  INVx1_ASAP7_75t_R U30 ( .A(n23), .Y(SUM[14]) );
  INVx1_ASAP7_75t_R U31 ( .A(n25), .Y(SUM[13]) );
  INVx1_ASAP7_75t_R U32 ( .A(n27), .Y(SUM[12]) );
  INVx1_ASAP7_75t_R U33 ( .A(n29), .Y(SUM[11]) );
  INVx1_ASAP7_75t_R U34 ( .A(n31), .Y(SUM[10]) );
endmodule


module Convolution_DW01_add_4 ( A, B, CI, SUM, CO );
  input [20:0] A;
  input [20:0] B;
  output [20:0] SUM;
  input CI;
  output CO;
  wire   n3, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52;

  FAx1_ASAP7_75t_R U1_16 ( .A(A[16]), .B(B[16]), .CI(n6), .CON(n21), .SN(n22)
         );
  FAx1_ASAP7_75t_R U1_15 ( .A(A[15]), .B(B[15]), .CI(n7), .CON(n23), .SN(n24)
         );
  FAx1_ASAP7_75t_R U1_14 ( .A(A[14]), .B(B[14]), .CI(n8), .CON(n25), .SN(n26)
         );
  FAx1_ASAP7_75t_R U1_13 ( .A(A[13]), .B(B[13]), .CI(n9), .CON(n27), .SN(n28)
         );
  FAx1_ASAP7_75t_R U1_12 ( .A(A[12]), .B(B[12]), .CI(n10), .CON(n29), .SN(n30)
         );
  FAx1_ASAP7_75t_R U1_11 ( .A(A[11]), .B(B[11]), .CI(n11), .CON(n31), .SN(n32)
         );
  FAx1_ASAP7_75t_R U1_10 ( .A(A[10]), .B(B[10]), .CI(n12), .CON(n33), .SN(n34)
         );
  FAx1_ASAP7_75t_R U1_9 ( .A(A[9]), .B(B[9]), .CI(n13), .CON(n35), .SN(n36) );
  FAx1_ASAP7_75t_R U1_8 ( .A(A[8]), .B(B[8]), .CI(n14), .CON(n37), .SN(n38) );
  FAx1_ASAP7_75t_R U1_7 ( .A(A[7]), .B(B[7]), .CI(n15), .CON(n39), .SN(n40) );
  FAx1_ASAP7_75t_R U1_6 ( .A(A[6]), .B(B[6]), .CI(n16), .CON(n41), .SN(n42) );
  FAx1_ASAP7_75t_R U1_5 ( .A(A[5]), .B(B[5]), .CI(n17), .CON(n43), .SN(n44) );
  FAx1_ASAP7_75t_R U1_4 ( .A(A[4]), .B(B[4]), .CI(n18), .CON(n45), .SN(n46) );
  FAx1_ASAP7_75t_R U1_3 ( .A(A[3]), .B(B[3]), .CI(n19), .CON(n47), .SN(n48) );
  FAx1_ASAP7_75t_R U1_2 ( .A(A[2]), .B(B[2]), .CI(n20), .CON(n49), .SN(n50) );
  FAx1_ASAP7_75t_R U1_1 ( .A(A[1]), .B(B[1]), .CI(n3), .CON(n51), .SN(n52) );
  XOR2xp5_ASAP7_75t_R U1 ( .A(n5), .B(B[17]), .Y(SUM[17]) );
  AND2x2_ASAP7_75t_R U2 ( .A(B[17]), .B(n5), .Y(SUM[18]) );
  AND2x2_ASAP7_75t_R U3 ( .A(A[0]), .B(B[0]), .Y(n3) );
  XOR2xp5_ASAP7_75t_R U4 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  INVx1_ASAP7_75t_R U5 ( .A(n21), .Y(n5) );
  INVx1_ASAP7_75t_R U6 ( .A(n23), .Y(n6) );
  INVx1_ASAP7_75t_R U7 ( .A(n25), .Y(n7) );
  INVx1_ASAP7_75t_R U8 ( .A(n27), .Y(n8) );
  INVx1_ASAP7_75t_R U9 ( .A(n29), .Y(n9) );
  INVx1_ASAP7_75t_R U10 ( .A(n31), .Y(n10) );
  INVx1_ASAP7_75t_R U11 ( .A(n33), .Y(n11) );
  INVx1_ASAP7_75t_R U12 ( .A(n35), .Y(n12) );
  INVx1_ASAP7_75t_R U13 ( .A(n37), .Y(n13) );
  INVx1_ASAP7_75t_R U14 ( .A(n39), .Y(n14) );
  INVx1_ASAP7_75t_R U15 ( .A(n41), .Y(n15) );
  INVx1_ASAP7_75t_R U16 ( .A(n43), .Y(n16) );
  INVx1_ASAP7_75t_R U17 ( .A(n45), .Y(n17) );
  INVx1_ASAP7_75t_R U18 ( .A(n47), .Y(n18) );
  INVx1_ASAP7_75t_R U19 ( .A(n49), .Y(n19) );
  INVx1_ASAP7_75t_R U20 ( .A(n51), .Y(n20) );
  INVx1_ASAP7_75t_R U21 ( .A(n36), .Y(SUM[9]) );
  INVx1_ASAP7_75t_R U22 ( .A(n38), .Y(SUM[8]) );
  INVx1_ASAP7_75t_R U23 ( .A(n40), .Y(SUM[7]) );
  INVx1_ASAP7_75t_R U24 ( .A(n42), .Y(SUM[6]) );
  INVx1_ASAP7_75t_R U25 ( .A(n44), .Y(SUM[5]) );
  INVx1_ASAP7_75t_R U26 ( .A(n46), .Y(SUM[4]) );
  INVx1_ASAP7_75t_R U27 ( .A(n48), .Y(SUM[3]) );
  INVx1_ASAP7_75t_R U28 ( .A(n50), .Y(SUM[2]) );
  INVx1_ASAP7_75t_R U29 ( .A(n52), .Y(SUM[1]) );
  INVx1_ASAP7_75t_R U30 ( .A(n22), .Y(SUM[16]) );
  INVx1_ASAP7_75t_R U31 ( .A(n24), .Y(SUM[15]) );
  INVx1_ASAP7_75t_R U32 ( .A(n26), .Y(SUM[14]) );
  INVx1_ASAP7_75t_R U33 ( .A(n28), .Y(SUM[13]) );
  INVx1_ASAP7_75t_R U34 ( .A(n30), .Y(SUM[12]) );
  INVx1_ASAP7_75t_R U35 ( .A(n32), .Y(SUM[11]) );
  INVx1_ASAP7_75t_R U36 ( .A(n34), .Y(SUM[10]) );
endmodule


module Convolution_DW01_add_5 ( A, B, CI, SUM, CO );
  input [18:0] A;
  input [18:0] B;
  output [18:0] SUM;
  input CI;
  output CO;
  wire   n3, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49;

  FAx1_ASAP7_75t_R U1_15 ( .A(A[15]), .B(B[15]), .CI(n6), .CON(n20), .SN(n21)
         );
  FAx1_ASAP7_75t_R U1_14 ( .A(A[14]), .B(B[14]), .CI(n7), .CON(n22), .SN(n23)
         );
  FAx1_ASAP7_75t_R U1_13 ( .A(A[13]), .B(B[13]), .CI(n8), .CON(n24), .SN(n25)
         );
  FAx1_ASAP7_75t_R U1_12 ( .A(A[12]), .B(B[12]), .CI(n9), .CON(n26), .SN(n27)
         );
  FAx1_ASAP7_75t_R U1_11 ( .A(A[11]), .B(B[11]), .CI(n10), .CON(n28), .SN(n29)
         );
  FAx1_ASAP7_75t_R U1_10 ( .A(A[10]), .B(B[10]), .CI(n11), .CON(n30), .SN(n31)
         );
  FAx1_ASAP7_75t_R U1_9 ( .A(A[9]), .B(B[9]), .CI(n12), .CON(n32), .SN(n33) );
  FAx1_ASAP7_75t_R U1_8 ( .A(A[8]), .B(B[8]), .CI(n13), .CON(n34), .SN(n35) );
  FAx1_ASAP7_75t_R U1_7 ( .A(A[7]), .B(B[7]), .CI(n14), .CON(n36), .SN(n37) );
  FAx1_ASAP7_75t_R U1_6 ( .A(A[6]), .B(B[6]), .CI(n15), .CON(n38), .SN(n39) );
  FAx1_ASAP7_75t_R U1_5 ( .A(A[5]), .B(B[5]), .CI(n16), .CON(n40), .SN(n41) );
  FAx1_ASAP7_75t_R U1_4 ( .A(A[4]), .B(B[4]), .CI(n17), .CON(n42), .SN(n43) );
  FAx1_ASAP7_75t_R U1_3 ( .A(A[3]), .B(B[3]), .CI(n18), .CON(n44), .SN(n45) );
  FAx1_ASAP7_75t_R U1_2 ( .A(A[2]), .B(B[2]), .CI(n19), .CON(n46), .SN(n47) );
  FAx1_ASAP7_75t_R U1_1 ( .A(A[1]), .B(B[1]), .CI(n3), .CON(n48), .SN(n49) );
  XOR2xp5_ASAP7_75t_R U1 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  XOR2xp5_ASAP7_75t_R U2 ( .A(n5), .B(B[16]), .Y(SUM[16]) );
  AND2x2_ASAP7_75t_R U3 ( .A(A[0]), .B(B[0]), .Y(n3) );
  AND2x2_ASAP7_75t_R U4 ( .A(B[16]), .B(n5), .Y(SUM[17]) );
  INVx1_ASAP7_75t_R U5 ( .A(n20), .Y(n5) );
  INVx1_ASAP7_75t_R U6 ( .A(n22), .Y(n6) );
  INVx1_ASAP7_75t_R U7 ( .A(n24), .Y(n7) );
  INVx1_ASAP7_75t_R U8 ( .A(n26), .Y(n8) );
  INVx1_ASAP7_75t_R U9 ( .A(n28), .Y(n9) );
  INVx1_ASAP7_75t_R U10 ( .A(n30), .Y(n10) );
  INVx1_ASAP7_75t_R U11 ( .A(n32), .Y(n11) );
  INVx1_ASAP7_75t_R U12 ( .A(n34), .Y(n12) );
  INVx1_ASAP7_75t_R U13 ( .A(n36), .Y(n13) );
  INVx1_ASAP7_75t_R U14 ( .A(n38), .Y(n14) );
  INVx1_ASAP7_75t_R U15 ( .A(n40), .Y(n15) );
  INVx1_ASAP7_75t_R U16 ( .A(n42), .Y(n16) );
  INVx1_ASAP7_75t_R U17 ( .A(n44), .Y(n17) );
  INVx1_ASAP7_75t_R U18 ( .A(n46), .Y(n18) );
  INVx1_ASAP7_75t_R U19 ( .A(n48), .Y(n19) );
  INVx1_ASAP7_75t_R U20 ( .A(n33), .Y(SUM[9]) );
  INVx1_ASAP7_75t_R U21 ( .A(n35), .Y(SUM[8]) );
  INVx1_ASAP7_75t_R U22 ( .A(n37), .Y(SUM[7]) );
  INVx1_ASAP7_75t_R U23 ( .A(n39), .Y(SUM[6]) );
  INVx1_ASAP7_75t_R U24 ( .A(n41), .Y(SUM[5]) );
  INVx1_ASAP7_75t_R U25 ( .A(n43), .Y(SUM[4]) );
  INVx1_ASAP7_75t_R U26 ( .A(n45), .Y(SUM[3]) );
  INVx1_ASAP7_75t_R U27 ( .A(n47), .Y(SUM[2]) );
  INVx1_ASAP7_75t_R U28 ( .A(n49), .Y(SUM[1]) );
  INVx1_ASAP7_75t_R U29 ( .A(n21), .Y(SUM[15]) );
  INVx1_ASAP7_75t_R U30 ( .A(n23), .Y(SUM[14]) );
  INVx1_ASAP7_75t_R U31 ( .A(n25), .Y(SUM[13]) );
  INVx1_ASAP7_75t_R U32 ( .A(n27), .Y(SUM[12]) );
  INVx1_ASAP7_75t_R U33 ( .A(n29), .Y(SUM[11]) );
  INVx1_ASAP7_75t_R U34 ( .A(n31), .Y(SUM[10]) );
endmodule


module Convolution_DW01_add_6 ( A, B, CI, SUM, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] SUM;
  input CI;
  output CO;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46;

  FAx1_ASAP7_75t_R U1_15 ( .A(A[15]), .B(B[15]), .CI(n3), .CON(n17), .SN(n18)
         );
  FAx1_ASAP7_75t_R U1_14 ( .A(A[14]), .B(B[14]), .CI(n4), .CON(n19), .SN(n20)
         );
  FAx1_ASAP7_75t_R U1_13 ( .A(A[13]), .B(B[13]), .CI(n5), .CON(n21), .SN(n22)
         );
  FAx1_ASAP7_75t_R U1_12 ( .A(A[12]), .B(B[12]), .CI(n6), .CON(n23), .SN(n24)
         );
  FAx1_ASAP7_75t_R U1_11 ( .A(A[11]), .B(B[11]), .CI(n7), .CON(n25), .SN(n26)
         );
  FAx1_ASAP7_75t_R U1_10 ( .A(A[10]), .B(B[10]), .CI(n8), .CON(n27), .SN(n28)
         );
  FAx1_ASAP7_75t_R U1_9 ( .A(A[9]), .B(B[9]), .CI(n9), .CON(n29), .SN(n30) );
  FAx1_ASAP7_75t_R U1_8 ( .A(A[8]), .B(B[8]), .CI(n10), .CON(n31), .SN(n32) );
  FAx1_ASAP7_75t_R U1_7 ( .A(A[7]), .B(B[7]), .CI(n11), .CON(n33), .SN(n34) );
  FAx1_ASAP7_75t_R U1_6 ( .A(A[6]), .B(B[6]), .CI(n12), .CON(n35), .SN(n36) );
  FAx1_ASAP7_75t_R U1_5 ( .A(A[5]), .B(B[5]), .CI(n13), .CON(n37), .SN(n38) );
  FAx1_ASAP7_75t_R U1_4 ( .A(A[4]), .B(B[4]), .CI(n14), .CON(n39), .SN(n40) );
  FAx1_ASAP7_75t_R U1_3 ( .A(A[3]), .B(B[3]), .CI(n15), .CON(n41), .SN(n42) );
  FAx1_ASAP7_75t_R U1_2 ( .A(A[2]), .B(B[2]), .CI(n16), .CON(n43), .SN(n44) );
  FAx1_ASAP7_75t_R U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CON(n45), .SN(n46) );
  AND2x2_ASAP7_75t_R U1 ( .A(A[0]), .B(B[0]), .Y(n1) );
  XOR2xp5_ASAP7_75t_R U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  INVx1_ASAP7_75t_R U3 ( .A(n19), .Y(n3) );
  INVx1_ASAP7_75t_R U4 ( .A(n21), .Y(n4) );
  INVx1_ASAP7_75t_R U5 ( .A(n23), .Y(n5) );
  INVx1_ASAP7_75t_R U6 ( .A(n25), .Y(n6) );
  INVx1_ASAP7_75t_R U7 ( .A(n27), .Y(n7) );
  INVx1_ASAP7_75t_R U8 ( .A(n29), .Y(n8) );
  INVx1_ASAP7_75t_R U9 ( .A(n31), .Y(n9) );
  INVx1_ASAP7_75t_R U10 ( .A(n33), .Y(n10) );
  INVx1_ASAP7_75t_R U11 ( .A(n35), .Y(n11) );
  INVx1_ASAP7_75t_R U12 ( .A(n37), .Y(n12) );
  INVx1_ASAP7_75t_R U13 ( .A(n39), .Y(n13) );
  INVx1_ASAP7_75t_R U14 ( .A(n41), .Y(n14) );
  INVx1_ASAP7_75t_R U15 ( .A(n43), .Y(n15) );
  INVx1_ASAP7_75t_R U16 ( .A(n45), .Y(n16) );
  INVx1_ASAP7_75t_R U17 ( .A(n30), .Y(SUM[9]) );
  INVx1_ASAP7_75t_R U18 ( .A(n32), .Y(SUM[8]) );
  INVx1_ASAP7_75t_R U19 ( .A(n34), .Y(SUM[7]) );
  INVx1_ASAP7_75t_R U20 ( .A(n36), .Y(SUM[6]) );
  INVx1_ASAP7_75t_R U21 ( .A(n38), .Y(SUM[5]) );
  INVx1_ASAP7_75t_R U22 ( .A(n40), .Y(SUM[4]) );
  INVx1_ASAP7_75t_R U23 ( .A(n42), .Y(SUM[3]) );
  INVx1_ASAP7_75t_R U24 ( .A(n44), .Y(SUM[2]) );
  INVx1_ASAP7_75t_R U25 ( .A(n46), .Y(SUM[1]) );
  INVx1_ASAP7_75t_R U26 ( .A(n17), .Y(SUM[16]) );
  INVx1_ASAP7_75t_R U27 ( .A(n18), .Y(SUM[15]) );
  INVx1_ASAP7_75t_R U28 ( .A(n20), .Y(SUM[14]) );
  INVx1_ASAP7_75t_R U29 ( .A(n22), .Y(SUM[13]) );
  INVx1_ASAP7_75t_R U30 ( .A(n24), .Y(SUM[12]) );
  INVx1_ASAP7_75t_R U31 ( .A(n26), .Y(SUM[11]) );
  INVx1_ASAP7_75t_R U32 ( .A(n28), .Y(SUM[10]) );
endmodule


module Convolution_DW01_add_7 ( A, B, CI, SUM, CO );
  input [17:0] A;
  input [17:0] B;
  output [17:0] SUM;
  input CI;
  output CO;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46;

  FAx1_ASAP7_75t_R U1_15 ( .A(A[15]), .B(B[15]), .CI(n3), .CON(n17), .SN(n18)
         );
  FAx1_ASAP7_75t_R U1_14 ( .A(A[14]), .B(B[14]), .CI(n4), .CON(n19), .SN(n20)
         );
  FAx1_ASAP7_75t_R U1_13 ( .A(A[13]), .B(B[13]), .CI(n5), .CON(n21), .SN(n22)
         );
  FAx1_ASAP7_75t_R U1_12 ( .A(A[12]), .B(B[12]), .CI(n6), .CON(n23), .SN(n24)
         );
  FAx1_ASAP7_75t_R U1_11 ( .A(A[11]), .B(B[11]), .CI(n7), .CON(n25), .SN(n26)
         );
  FAx1_ASAP7_75t_R U1_10 ( .A(A[10]), .B(B[10]), .CI(n8), .CON(n27), .SN(n28)
         );
  FAx1_ASAP7_75t_R U1_9 ( .A(A[9]), .B(B[9]), .CI(n9), .CON(n29), .SN(n30) );
  FAx1_ASAP7_75t_R U1_8 ( .A(A[8]), .B(B[8]), .CI(n10), .CON(n31), .SN(n32) );
  FAx1_ASAP7_75t_R U1_7 ( .A(A[7]), .B(B[7]), .CI(n11), .CON(n33), .SN(n34) );
  FAx1_ASAP7_75t_R U1_6 ( .A(A[6]), .B(B[6]), .CI(n12), .CON(n35), .SN(n36) );
  FAx1_ASAP7_75t_R U1_5 ( .A(A[5]), .B(B[5]), .CI(n13), .CON(n37), .SN(n38) );
  FAx1_ASAP7_75t_R U1_4 ( .A(A[4]), .B(B[4]), .CI(n14), .CON(n39), .SN(n40) );
  FAx1_ASAP7_75t_R U1_3 ( .A(A[3]), .B(B[3]), .CI(n15), .CON(n41), .SN(n42) );
  FAx1_ASAP7_75t_R U1_2 ( .A(A[2]), .B(B[2]), .CI(n16), .CON(n43), .SN(n44) );
  FAx1_ASAP7_75t_R U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CON(n45), .SN(n46) );
  AND2x2_ASAP7_75t_R U1 ( .A(A[0]), .B(B[0]), .Y(n1) );
  XOR2xp5_ASAP7_75t_R U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  INVx1_ASAP7_75t_R U3 ( .A(n19), .Y(n3) );
  INVx1_ASAP7_75t_R U4 ( .A(n21), .Y(n4) );
  INVx1_ASAP7_75t_R U5 ( .A(n23), .Y(n5) );
  INVx1_ASAP7_75t_R U6 ( .A(n25), .Y(n6) );
  INVx1_ASAP7_75t_R U7 ( .A(n27), .Y(n7) );
  INVx1_ASAP7_75t_R U8 ( .A(n29), .Y(n8) );
  INVx1_ASAP7_75t_R U9 ( .A(n31), .Y(n9) );
  INVx1_ASAP7_75t_R U10 ( .A(n33), .Y(n10) );
  INVx1_ASAP7_75t_R U11 ( .A(n35), .Y(n11) );
  INVx1_ASAP7_75t_R U12 ( .A(n37), .Y(n12) );
  INVx1_ASAP7_75t_R U13 ( .A(n39), .Y(n13) );
  INVx1_ASAP7_75t_R U14 ( .A(n41), .Y(n14) );
  INVx1_ASAP7_75t_R U15 ( .A(n43), .Y(n15) );
  INVx1_ASAP7_75t_R U16 ( .A(n45), .Y(n16) );
  INVx1_ASAP7_75t_R U17 ( .A(n30), .Y(SUM[9]) );
  INVx1_ASAP7_75t_R U18 ( .A(n32), .Y(SUM[8]) );
  INVx1_ASAP7_75t_R U19 ( .A(n34), .Y(SUM[7]) );
  INVx1_ASAP7_75t_R U20 ( .A(n36), .Y(SUM[6]) );
  INVx1_ASAP7_75t_R U21 ( .A(n38), .Y(SUM[5]) );
  INVx1_ASAP7_75t_R U22 ( .A(n40), .Y(SUM[4]) );
  INVx1_ASAP7_75t_R U23 ( .A(n42), .Y(SUM[3]) );
  INVx1_ASAP7_75t_R U24 ( .A(n44), .Y(SUM[2]) );
  INVx1_ASAP7_75t_R U25 ( .A(n46), .Y(SUM[1]) );
  INVx1_ASAP7_75t_R U26 ( .A(n17), .Y(SUM[16]) );
  INVx1_ASAP7_75t_R U27 ( .A(n18), .Y(SUM[15]) );
  INVx1_ASAP7_75t_R U28 ( .A(n20), .Y(SUM[14]) );
  INVx1_ASAP7_75t_R U29 ( .A(n22), .Y(SUM[13]) );
  INVx1_ASAP7_75t_R U30 ( .A(n24), .Y(SUM[12]) );
  INVx1_ASAP7_75t_R U31 ( .A(n26), .Y(SUM[11]) );
  INVx1_ASAP7_75t_R U32 ( .A(n28), .Y(SUM[10]) );
endmodule


module Convolution_DW_mult_uns_0 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n57, n58, n61, n62, n63, n64, n68, n69, n70, n71, n72, n73, n74, n78,
         n79, n81, n82, n84, n85, n86, n87, n90, n91, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n119, n120, n121, n122, n124, n125, n126, n127,
         n128, n129, n130, n131, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n145, n146, n147, n149, n150, n151, n152, n153,
         n158, n159, n160, n161, n162, n163, n165, n166, n167, n169, n172,
         n173, n174, n175, n176, n179, n180, n181, n182, n183, n187, n189,
         n190, n191, n192, n195, n196, n197, n198, n199, n200, n203, n204,
         n205, n206, n207, n208, n211, n212, n213, n214, n215, n216, n219,
         n220, n221, n222, n223, n224, n227, n228, n229, n230, n231, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389;

  FAx1_ASAP7_75t_R U71 ( .A(n172), .B(n179), .CI(n287), .CON(n57), .SN(n58) );
  FAx1_ASAP7_75t_R U74 ( .A(n64), .B(n73), .CI(n288), .CON(n61), .SN(n62) );
  FAx1_ASAP7_75t_R U76 ( .A(n173), .B(n187), .CI(n180), .CON(n63), .SN(n64) );
  FAx1_ASAP7_75t_R U79 ( .A(n81), .B(n290), .CI(n72), .CON(n68), .SN(n69) );
  FAx1_ASAP7_75t_R U81 ( .A(n86), .B(n70), .CI(n74), .CON(n71), .SN(n72) );
  FAx1_ASAP7_75t_R U83 ( .A(n174), .B(n195), .CI(n181), .CON(n73), .SN(n74) );
  FAx1_ASAP7_75t_R U86 ( .A(n93), .B(n291), .CI(n82), .CON(n78), .SN(n79) );
  FAx1_ASAP7_75t_R U88 ( .A(n87), .B(n98), .CI(n293), .CON(n81), .SN(n82) );
  FAx1_ASAP7_75t_R U90 ( .A(n189), .B(n196), .CI(n292), .CON(n84), .SN(n85) );
  FAx1_ASAP7_75t_R U92 ( .A(n175), .B(n203), .CI(n182), .CON(n86), .SN(n87) );
  FAx1_ASAP7_75t_R U95 ( .A(n106), .B(n97), .CI(n94), .CON(n90), .SN(n91) );
  FAx1_ASAP7_75t_R U96 ( .A(n101), .B(n99), .CI(n294), .CON(n93), .SN(n94) );
  FAx1_ASAP7_75t_R U98 ( .A(n113), .B(n95), .CI(n111), .CON(n96), .SN(n97) );
  FAx1_ASAP7_75t_R U100 ( .A(n190), .B(n204), .CI(n197), .CON(n98), .SN(n99)
         );
  FAx1_ASAP7_75t_R U101 ( .A(n176), .B(n211), .CI(n183), .CON(n100), .SN(n101)
         );
  FAx1_ASAP7_75t_R U104 ( .A(n110), .B(n121), .CI(n107), .CON(n104), .SN(n105)
         );
  FAx1_ASAP7_75t_R U105 ( .A(n112), .B(n114), .CI(n124), .CON(n106), .SN(n107)
         );
  FAx1_ASAP7_75t_R U106 ( .A(n126), .B(n128), .CI(n108), .CON(n109), .SN(n110)
         );
  FAx1_ASAP7_75t_R U108 ( .A(n205), .B(n212), .CI(n130), .CON(n111), .SN(n112)
         );
  FAx1_ASAP7_75t_R U109 ( .A(n191), .B(n219), .CI(n198), .CON(n113), .SN(n114)
         );
  FAx1_ASAP7_75t_R U113 ( .A(n297), .B(n136), .CI(n122), .CON(n119), .SN(n120)
         );
  FAx1_ASAP7_75t_R U115 ( .A(n127), .B(n138), .CI(n129), .CON(n121), .SN(n122)
         );
  FAx1_ASAP7_75t_R U116 ( .A(n298), .B(n142), .CI(n131), .CON(n124), .SN(n125)
         );
  FAx1_ASAP7_75t_R U118 ( .A(n213), .B(n206), .CI(n220), .CON(n126), .SN(n127)
         );
  FAx1_ASAP7_75t_R U119 ( .A(n192), .B(n227), .CI(n199), .CON(n128), .SN(n129)
         );
  FAx1_ASAP7_75t_R U122 ( .A(n139), .B(n149), .CI(n300), .CON(n133), .SN(n134)
         );
  FAx1_ASAP7_75t_R U124 ( .A(n135), .B(n151), .CI(n141), .CON(n136), .SN(n137)
         );
  FAx1_ASAP7_75t_R U126 ( .A(n214), .B(n221), .CI(n153), .CON(n138), .SN(n139)
         );
  FAx1_ASAP7_75t_R U127 ( .A(n200), .B(n228), .CI(n207), .CON(n140), .SN(n141)
         );
  FAx1_ASAP7_75t_R U131 ( .A(n152), .B(n145), .CI(n158), .CON(n146), .SN(n147)
         );
  FAx1_ASAP7_75t_R U133 ( .A(n162), .B(n222), .CI(n303), .CON(n149), .SN(n150)
         );
  FAx1_ASAP7_75t_R U135 ( .A(n208), .B(n229), .CI(n215), .CON(n151), .SN(n152)
         );
  FAx1_ASAP7_75t_R U140 ( .A(n163), .B(n167), .CI(n305), .CON(n158), .SN(n159)
         );
  FAx1_ASAP7_75t_R U142 ( .A(n216), .B(n230), .CI(n223), .CON(n160), .SN(n161)
         );
  FAx1_ASAP7_75t_R U146 ( .A(n224), .B(n231), .CI(n169), .CON(n165), .SN(n166)
         );
  XOR2xp5_ASAP7_75t_R U233 ( .A(n339), .B(n338), .Y(product[14]) );
  NAND2xp5_ASAP7_75t_R U234 ( .A(n357), .B(n358), .Y(n356) );
  NAND2xp5_ASAP7_75t_R U235 ( .A(n345), .B(n346), .Y(n344) );
  INVx1_ASAP7_75t_R U236 ( .A(n58), .Y(n286) );
  INVx1_ASAP7_75t_R U237 ( .A(n63), .Y(n287) );
  INVx1_ASAP7_75t_R U238 ( .A(n71), .Y(n288) );
  INVx1_ASAP7_75t_R U239 ( .A(n68), .Y(n289) );
  INVx1_ASAP7_75t_R U240 ( .A(n84), .Y(n290) );
  INVx1_ASAP7_75t_R U241 ( .A(n85), .Y(n291) );
  INVx1_ASAP7_75t_R U242 ( .A(n100), .Y(n292) );
  INVx1_ASAP7_75t_R U243 ( .A(n96), .Y(n293) );
  INVx1_ASAP7_75t_R U244 ( .A(n109), .Y(n294) );
  INVx1_ASAP7_75t_R U245 ( .A(n120), .Y(n295) );
  INVx1_ASAP7_75t_R U246 ( .A(b[7]), .Y(n296) );
  INVx1_ASAP7_75t_R U247 ( .A(n125), .Y(n297) );
  INVx1_ASAP7_75t_R U248 ( .A(n140), .Y(n298) );
  INVx1_ASAP7_75t_R U249 ( .A(b[6]), .Y(n299) );
  INVx1_ASAP7_75t_R U250 ( .A(n146), .Y(n300) );
  INVx1_ASAP7_75t_R U251 ( .A(b[5]), .Y(n301) );
  INVx1_ASAP7_75t_R U252 ( .A(n150), .Y(n302) );
  INVx1_ASAP7_75t_R U253 ( .A(n160), .Y(n303) );
  INVx1_ASAP7_75t_R U254 ( .A(b[4]), .Y(n304) );
  INVx1_ASAP7_75t_R U255 ( .A(n165), .Y(n305) );
  INVx1_ASAP7_75t_R U256 ( .A(n166), .Y(n306) );
  INVx1_ASAP7_75t_R U257 ( .A(b[3]), .Y(n307) );
  INVx1_ASAP7_75t_R U258 ( .A(b[2]), .Y(n308) );
  INVx1_ASAP7_75t_R U259 ( .A(b[0]), .Y(n309) );
  INVx1_ASAP7_75t_R U260 ( .A(a[0]), .Y(n310) );
  INVx1_ASAP7_75t_R U261 ( .A(a[7]), .Y(n311) );
  INVx1_ASAP7_75t_R U262 ( .A(a[6]), .Y(n312) );
  INVx1_ASAP7_75t_R U263 ( .A(a[5]), .Y(n313) );
  INVx1_ASAP7_75t_R U264 ( .A(a[4]), .Y(n314) );
  INVx1_ASAP7_75t_R U265 ( .A(a[3]), .Y(n315) );
  INVx1_ASAP7_75t_R U266 ( .A(a[2]), .Y(n316) );
  INVx1_ASAP7_75t_R U267 ( .A(a[1]), .Y(n317) );
  XOR2xp5_ASAP7_75t_R U268 ( .A(n318), .B(n319), .Y(product[9]) );
  XOR2xp5_ASAP7_75t_R U269 ( .A(n320), .B(n321), .Y(product[8]) );
  XOR2xp5_ASAP7_75t_R U270 ( .A(n322), .B(n323), .Y(product[7]) );
  XOR2xp5_ASAP7_75t_R U271 ( .A(n324), .B(n325), .Y(product[6]) );
  XOR2xp5_ASAP7_75t_R U272 ( .A(n326), .B(n327), .Y(product[5]) );
  XOR2xp5_ASAP7_75t_R U273 ( .A(n328), .B(n329), .Y(product[4]) );
  XOR2xp5_ASAP7_75t_R U274 ( .A(n330), .B(n331), .Y(product[3]) );
  XOR2xp5_ASAP7_75t_R U275 ( .A(n332), .B(n333), .Y(product[2]) );
  XOR2xp5_ASAP7_75t_R U276 ( .A(n334), .B(n335), .Y(product[1]) );
  NAND2xp33_ASAP7_75t_R U277 ( .A(n336), .B(n337), .Y(product[15]) );
  NAND2xp33_ASAP7_75t_R U278 ( .A(n338), .B(n339), .Y(n337) );
  OR2x2_ASAP7_75t_R U279 ( .A(n340), .B(n57), .Y(n336) );
  XOR2xp5_ASAP7_75t_R U280 ( .A(n340), .B(n57), .Y(n338) );
  NAND2xp33_ASAP7_75t_R U281 ( .A(b[7]), .B(a[7]), .Y(n340) );
  NAND2xp33_ASAP7_75t_R U282 ( .A(n341), .B(n342), .Y(n339) );
  NAND2xp33_ASAP7_75t_R U283 ( .A(n343), .B(n344), .Y(n342) );
  NAND2xp33_ASAP7_75t_R U284 ( .A(n61), .B(n286), .Y(n341) );
  XOR2xp5_ASAP7_75t_R U285 ( .A(n344), .B(n343), .Y(product[13]) );
  XOR2xp5_ASAP7_75t_R U286 ( .A(n286), .B(n61), .Y(n343) );
  NAND2xp33_ASAP7_75t_R U287 ( .A(n347), .B(n348), .Y(n346) );
  NAND2xp33_ASAP7_75t_R U288 ( .A(n62), .B(n289), .Y(n345) );
  XOR2xp5_ASAP7_75t_R U289 ( .A(n348), .B(n347), .Y(product[12]) );
  XOR2xp5_ASAP7_75t_R U290 ( .A(n62), .B(n289), .Y(n347) );
  NAND2xp33_ASAP7_75t_R U291 ( .A(n349), .B(n350), .Y(n348) );
  NAND2xp33_ASAP7_75t_R U292 ( .A(n351), .B(n352), .Y(n350) );
  OR2x2_ASAP7_75t_R U293 ( .A(n69), .B(n78), .Y(n349) );
  XOR2xp5_ASAP7_75t_R U294 ( .A(n352), .B(n351), .Y(product[11]) );
  XOR2xp5_ASAP7_75t_R U295 ( .A(n69), .B(n78), .Y(n351) );
  NAND2xp33_ASAP7_75t_R U296 ( .A(n353), .B(n354), .Y(n352) );
  NAND2xp33_ASAP7_75t_R U297 ( .A(n355), .B(n356), .Y(n354) );
  OR2x2_ASAP7_75t_R U298 ( .A(n79), .B(n90), .Y(n353) );
  XOR2xp5_ASAP7_75t_R U299 ( .A(n356), .B(n355), .Y(product[10]) );
  XOR2xp5_ASAP7_75t_R U300 ( .A(n79), .B(n90), .Y(n355) );
  NAND2xp33_ASAP7_75t_R U301 ( .A(n319), .B(n318), .Y(n358) );
  NAND2xp33_ASAP7_75t_R U302 ( .A(n359), .B(n360), .Y(n318) );
  NAND2xp33_ASAP7_75t_R U303 ( .A(n321), .B(n320), .Y(n360) );
  NAND2xp33_ASAP7_75t_R U304 ( .A(n361), .B(n362), .Y(n320) );
  NAND2xp33_ASAP7_75t_R U305 ( .A(n323), .B(n322), .Y(n362) );
  NAND2xp33_ASAP7_75t_R U306 ( .A(n363), .B(n364), .Y(n322) );
  NAND2xp33_ASAP7_75t_R U307 ( .A(n325), .B(n324), .Y(n364) );
  NAND2xp33_ASAP7_75t_R U308 ( .A(n365), .B(n366), .Y(n324) );
  NAND2xp33_ASAP7_75t_R U309 ( .A(n327), .B(n326), .Y(n366) );
  NAND2xp33_ASAP7_75t_R U310 ( .A(n367), .B(n368), .Y(n326) );
  NAND2xp33_ASAP7_75t_R U311 ( .A(n329), .B(n328), .Y(n368) );
  NAND2xp33_ASAP7_75t_R U312 ( .A(n369), .B(n370), .Y(n328) );
  NAND2xp33_ASAP7_75t_R U313 ( .A(n331), .B(n330), .Y(n370) );
  NAND2xp33_ASAP7_75t_R U314 ( .A(n371), .B(n372), .Y(n330) );
  NAND2xp33_ASAP7_75t_R U315 ( .A(n332), .B(n333), .Y(n372) );
  XOR2xp5_ASAP7_75t_R U316 ( .A(n373), .B(n374), .Y(n333) );
  NOR2xp33_ASAP7_75t_R U317 ( .A(n334), .B(n335), .Y(n332) );
  NAND2xp33_ASAP7_75t_R U318 ( .A(b[1]), .B(a[0]), .Y(n335) );
  NAND2xp33_ASAP7_75t_R U319 ( .A(b[0]), .B(a[1]), .Y(n334) );
  NAND2xp33_ASAP7_75t_R U320 ( .A(n373), .B(n374), .Y(n371) );
  XOR2xp5_ASAP7_75t_R U321 ( .A(n375), .B(n376), .Y(n374) );
  NOR2xp33_ASAP7_75t_R U322 ( .A(n316), .B(n309), .Y(n373) );
  XOR2xp5_ASAP7_75t_R U323 ( .A(n306), .B(n377), .Y(n331) );
  NAND2xp33_ASAP7_75t_R U324 ( .A(n377), .B(n306), .Y(n369) );
  XOR2xp5_ASAP7_75t_R U325 ( .A(n378), .B(n379), .Y(n377) );
  XOR2xp5_ASAP7_75t_R U326 ( .A(n159), .B(n161), .Y(n329) );
  OR2x2_ASAP7_75t_R U327 ( .A(n159), .B(n161), .Y(n367) );
  XOR2xp5_ASAP7_75t_R U328 ( .A(n147), .B(n302), .Y(n327) );
  NAND2xp33_ASAP7_75t_R U329 ( .A(n147), .B(n302), .Y(n365) );
  XOR2xp5_ASAP7_75t_R U330 ( .A(n134), .B(n137), .Y(n325) );
  NAND2xp33_ASAP7_75t_R U331 ( .A(n134), .B(n137), .Y(n363) );
  XOR2xp5_ASAP7_75t_R U332 ( .A(n295), .B(n133), .Y(n323) );
  NAND2xp33_ASAP7_75t_R U333 ( .A(n133), .B(n295), .Y(n361) );
  XOR2xp5_ASAP7_75t_R U334 ( .A(n105), .B(n119), .Y(n321) );
  OR2x2_ASAP7_75t_R U335 ( .A(n105), .B(n119), .Y(n359) );
  XOR2xp5_ASAP7_75t_R U336 ( .A(n104), .B(n91), .Y(n319) );
  OR2x2_ASAP7_75t_R U337 ( .A(n104), .B(n91), .Y(n357) );
  NOR2xp33_ASAP7_75t_R U338 ( .A(n309), .B(n310), .Y(product[0]) );
  NAND2xp33_ASAP7_75t_R U339 ( .A(n380), .B(n381), .Y(n95) );
  NAND2xp33_ASAP7_75t_R U340 ( .A(b[6]), .B(a[5]), .Y(n70) );
  NOR2xp33_ASAP7_75t_R U341 ( .A(n310), .B(n307), .Y(n231) );
  NOR2xp33_ASAP7_75t_R U342 ( .A(n310), .B(n304), .Y(n230) );
  NOR2xp33_ASAP7_75t_R U343 ( .A(n310), .B(n301), .Y(n229) );
  NOR2xp33_ASAP7_75t_R U344 ( .A(n310), .B(n299), .Y(n228) );
  NOR2xp33_ASAP7_75t_R U345 ( .A(n310), .B(n296), .Y(n227) );
  NOR2xp33_ASAP7_75t_R U346 ( .A(n317), .B(n308), .Y(n224) );
  NOR2xp33_ASAP7_75t_R U347 ( .A(n317), .B(n307), .Y(n223) );
  NOR2xp33_ASAP7_75t_R U348 ( .A(n317), .B(n304), .Y(n222) );
  NOR2xp33_ASAP7_75t_R U349 ( .A(n317), .B(n301), .Y(n221) );
  NOR2xp33_ASAP7_75t_R U350 ( .A(n317), .B(n299), .Y(n220) );
  NOR2xp33_ASAP7_75t_R U351 ( .A(n317), .B(n296), .Y(n219) );
  NOR2xp33_ASAP7_75t_R U352 ( .A(n316), .B(n308), .Y(n216) );
  NOR2xp33_ASAP7_75t_R U353 ( .A(n316), .B(n307), .Y(n215) );
  NOR2xp33_ASAP7_75t_R U354 ( .A(n316), .B(n304), .Y(n214) );
  NOR2xp33_ASAP7_75t_R U355 ( .A(n316), .B(n301), .Y(n213) );
  NOR2xp33_ASAP7_75t_R U356 ( .A(n316), .B(n299), .Y(n212) );
  NOR2xp33_ASAP7_75t_R U357 ( .A(n316), .B(n296), .Y(n211) );
  NOR2xp33_ASAP7_75t_R U358 ( .A(n308), .B(n315), .Y(n208) );
  NOR2xp33_ASAP7_75t_R U359 ( .A(n315), .B(n307), .Y(n207) );
  NOR2xp33_ASAP7_75t_R U360 ( .A(n315), .B(n304), .Y(n206) );
  NOR2xp33_ASAP7_75t_R U361 ( .A(n315), .B(n301), .Y(n205) );
  NOR2xp33_ASAP7_75t_R U362 ( .A(n315), .B(n299), .Y(n204) );
  NOR2xp33_ASAP7_75t_R U363 ( .A(n315), .B(n296), .Y(n203) );
  NOR2xp33_ASAP7_75t_R U364 ( .A(n308), .B(n314), .Y(n200) );
  NOR2xp33_ASAP7_75t_R U365 ( .A(n307), .B(n314), .Y(n199) );
  NOR2xp33_ASAP7_75t_R U366 ( .A(n304), .B(n314), .Y(n198) );
  NOR2xp33_ASAP7_75t_R U367 ( .A(n301), .B(n314), .Y(n197) );
  NOR2xp33_ASAP7_75t_R U368 ( .A(n299), .B(n314), .Y(n196) );
  NOR2xp33_ASAP7_75t_R U369 ( .A(n296), .B(n314), .Y(n195) );
  NOR2xp33_ASAP7_75t_R U370 ( .A(n308), .B(n313), .Y(n192) );
  NOR2xp33_ASAP7_75t_R U371 ( .A(n313), .B(n307), .Y(n191) );
  NOR2xp33_ASAP7_75t_R U372 ( .A(n313), .B(n304), .Y(n190) );
  NOR2xp33_ASAP7_75t_R U373 ( .A(n313), .B(n301), .Y(n189) );
  NOR2xp33_ASAP7_75t_R U374 ( .A(n296), .B(n313), .Y(n187) );
  NOR2xp33_ASAP7_75t_R U375 ( .A(n312), .B(n307), .Y(n183) );
  NOR2xp33_ASAP7_75t_R U376 ( .A(n312), .B(n304), .Y(n182) );
  NOR2xp33_ASAP7_75t_R U377 ( .A(n312), .B(n301), .Y(n181) );
  NOR2xp33_ASAP7_75t_R U378 ( .A(n312), .B(n299), .Y(n180) );
  NOR2xp33_ASAP7_75t_R U379 ( .A(n296), .B(n312), .Y(n179) );
  NOR2xp33_ASAP7_75t_R U380 ( .A(n308), .B(n311), .Y(n176) );
  NOR2xp33_ASAP7_75t_R U381 ( .A(n311), .B(n307), .Y(n175) );
  NOR2xp33_ASAP7_75t_R U382 ( .A(n311), .B(n304), .Y(n174) );
  NOR2xp33_ASAP7_75t_R U383 ( .A(n311), .B(n301), .Y(n173) );
  NOR2xp33_ASAP7_75t_R U384 ( .A(n311), .B(n299), .Y(n172) );
  NOR2xp33_ASAP7_75t_R U385 ( .A(n376), .B(n375), .Y(n169) );
  NAND2xp33_ASAP7_75t_R U386 ( .A(b[1]), .B(a[1]), .Y(n375) );
  NAND2xp33_ASAP7_75t_R U387 ( .A(b[2]), .B(a[0]), .Y(n376) );
  NOR2xp33_ASAP7_75t_R U388 ( .A(n379), .B(n378), .Y(n167) );
  NAND2xp33_ASAP7_75t_R U389 ( .A(a[3]), .B(b[0]), .Y(n378) );
  NAND2xp33_ASAP7_75t_R U390 ( .A(a[2]), .B(b[1]), .Y(n379) );
  XOR2xp5_ASAP7_75t_R U391 ( .A(n382), .B(n383), .Y(n163) );
  NOR2xp33_ASAP7_75t_R U392 ( .A(n382), .B(n383), .Y(n162) );
  NAND2xp33_ASAP7_75t_R U393 ( .A(a[4]), .B(b[0]), .Y(n383) );
  NAND2xp33_ASAP7_75t_R U394 ( .A(a[3]), .B(b[1]), .Y(n382) );
  NOR2xp33_ASAP7_75t_R U395 ( .A(n384), .B(n385), .Y(n153) );
  XNOR2xp5_ASAP7_75t_R U396 ( .A(n384), .B(n385), .Y(n145) );
  NAND2xp33_ASAP7_75t_R U397 ( .A(a[4]), .B(b[1]), .Y(n385) );
  NAND2xp33_ASAP7_75t_R U398 ( .A(a[5]), .B(b[0]), .Y(n384) );
  NOR2xp33_ASAP7_75t_R U399 ( .A(n386), .B(n387), .Y(n142) );
  XNOR2xp5_ASAP7_75t_R U400 ( .A(n386), .B(n387), .Y(n135) );
  NAND2xp33_ASAP7_75t_R U401 ( .A(a[5]), .B(b[1]), .Y(n387) );
  NAND2xp33_ASAP7_75t_R U402 ( .A(a[6]), .B(b[0]), .Y(n386) );
  XOR2xp5_ASAP7_75t_R U403 ( .A(n388), .B(n389), .Y(n131) );
  NOR2xp33_ASAP7_75t_R U404 ( .A(n388), .B(n389), .Y(n130) );
  NAND2xp33_ASAP7_75t_R U405 ( .A(a[7]), .B(b[0]), .Y(n389) );
  NAND2xp33_ASAP7_75t_R U406 ( .A(a[6]), .B(b[1]), .Y(n388) );
  XNOR2xp5_ASAP7_75t_R U407 ( .A(n381), .B(n380), .Y(n108) );
  NOR2xp33_ASAP7_75t_R U408 ( .A(n312), .B(n308), .Y(n380) );
  AND2x2_ASAP7_75t_R U409 ( .A(a[7]), .B(b[1]), .Y(n381) );
endmodule


module Convolution_DW_mult_uns_1 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n57, n58, n61, n62, n63, n64, n68, n69, n70, n71, n72, n73, n74, n78,
         n79, n81, n82, n84, n85, n86, n87, n90, n91, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n119, n120, n121, n122, n124, n125, n126, n127,
         n128, n129, n130, n131, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n145, n146, n147, n149, n150, n151, n152, n153,
         n158, n159, n160, n161, n162, n163, n165, n166, n167, n169, n172,
         n173, n174, n175, n176, n179, n180, n181, n182, n183, n187, n189,
         n190, n191, n192, n195, n196, n197, n198, n199, n200, n203, n204,
         n205, n206, n207, n208, n211, n212, n213, n214, n215, n216, n219,
         n220, n221, n222, n223, n224, n227, n228, n229, n230, n231, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389;

  FAx1_ASAP7_75t_R U71 ( .A(n172), .B(n179), .CI(n287), .CON(n57), .SN(n58) );
  FAx1_ASAP7_75t_R U74 ( .A(n64), .B(n73), .CI(n288), .CON(n61), .SN(n62) );
  FAx1_ASAP7_75t_R U76 ( .A(n173), .B(n187), .CI(n180), .CON(n63), .SN(n64) );
  FAx1_ASAP7_75t_R U79 ( .A(n81), .B(n290), .CI(n72), .CON(n68), .SN(n69) );
  FAx1_ASAP7_75t_R U81 ( .A(n86), .B(n70), .CI(n74), .CON(n71), .SN(n72) );
  FAx1_ASAP7_75t_R U83 ( .A(n174), .B(n195), .CI(n181), .CON(n73), .SN(n74) );
  FAx1_ASAP7_75t_R U86 ( .A(n93), .B(n291), .CI(n82), .CON(n78), .SN(n79) );
  FAx1_ASAP7_75t_R U88 ( .A(n87), .B(n98), .CI(n293), .CON(n81), .SN(n82) );
  FAx1_ASAP7_75t_R U90 ( .A(n189), .B(n196), .CI(n292), .CON(n84), .SN(n85) );
  FAx1_ASAP7_75t_R U92 ( .A(n175), .B(n203), .CI(n182), .CON(n86), .SN(n87) );
  FAx1_ASAP7_75t_R U95 ( .A(n106), .B(n97), .CI(n94), .CON(n90), .SN(n91) );
  FAx1_ASAP7_75t_R U96 ( .A(n101), .B(n99), .CI(n294), .CON(n93), .SN(n94) );
  FAx1_ASAP7_75t_R U98 ( .A(n113), .B(n95), .CI(n111), .CON(n96), .SN(n97) );
  FAx1_ASAP7_75t_R U100 ( .A(n190), .B(n204), .CI(n197), .CON(n98), .SN(n99)
         );
  FAx1_ASAP7_75t_R U101 ( .A(n176), .B(n211), .CI(n183), .CON(n100), .SN(n101)
         );
  FAx1_ASAP7_75t_R U104 ( .A(n110), .B(n121), .CI(n107), .CON(n104), .SN(n105)
         );
  FAx1_ASAP7_75t_R U105 ( .A(n112), .B(n114), .CI(n124), .CON(n106), .SN(n107)
         );
  FAx1_ASAP7_75t_R U106 ( .A(n126), .B(n128), .CI(n108), .CON(n109), .SN(n110)
         );
  FAx1_ASAP7_75t_R U108 ( .A(n205), .B(n212), .CI(n130), .CON(n111), .SN(n112)
         );
  FAx1_ASAP7_75t_R U109 ( .A(n191), .B(n219), .CI(n198), .CON(n113), .SN(n114)
         );
  FAx1_ASAP7_75t_R U113 ( .A(n297), .B(n136), .CI(n122), .CON(n119), .SN(n120)
         );
  FAx1_ASAP7_75t_R U115 ( .A(n127), .B(n138), .CI(n129), .CON(n121), .SN(n122)
         );
  FAx1_ASAP7_75t_R U116 ( .A(n298), .B(n142), .CI(n131), .CON(n124), .SN(n125)
         );
  FAx1_ASAP7_75t_R U118 ( .A(n213), .B(n206), .CI(n220), .CON(n126), .SN(n127)
         );
  FAx1_ASAP7_75t_R U119 ( .A(n192), .B(n227), .CI(n199), .CON(n128), .SN(n129)
         );
  FAx1_ASAP7_75t_R U122 ( .A(n139), .B(n149), .CI(n300), .CON(n133), .SN(n134)
         );
  FAx1_ASAP7_75t_R U124 ( .A(n135), .B(n151), .CI(n141), .CON(n136), .SN(n137)
         );
  FAx1_ASAP7_75t_R U126 ( .A(n214), .B(n221), .CI(n153), .CON(n138), .SN(n139)
         );
  FAx1_ASAP7_75t_R U127 ( .A(n200), .B(n228), .CI(n207), .CON(n140), .SN(n141)
         );
  FAx1_ASAP7_75t_R U131 ( .A(n152), .B(n145), .CI(n158), .CON(n146), .SN(n147)
         );
  FAx1_ASAP7_75t_R U133 ( .A(n162), .B(n222), .CI(n303), .CON(n149), .SN(n150)
         );
  FAx1_ASAP7_75t_R U135 ( .A(n208), .B(n229), .CI(n215), .CON(n151), .SN(n152)
         );
  FAx1_ASAP7_75t_R U140 ( .A(n163), .B(n167), .CI(n305), .CON(n158), .SN(n159)
         );
  FAx1_ASAP7_75t_R U142 ( .A(n216), .B(n230), .CI(n223), .CON(n160), .SN(n161)
         );
  FAx1_ASAP7_75t_R U146 ( .A(n224), .B(n231), .CI(n169), .CON(n165), .SN(n166)
         );
  XOR2xp5_ASAP7_75t_R U233 ( .A(n339), .B(n338), .Y(product[14]) );
  NAND2xp5_ASAP7_75t_R U234 ( .A(n367), .B(n368), .Y(n326) );
  NAND2xp5_ASAP7_75t_R U235 ( .A(n329), .B(n328), .Y(n368) );
  NAND2xp5_ASAP7_75t_R U236 ( .A(n361), .B(n362), .Y(n320) );
  NAND2xp5_ASAP7_75t_R U237 ( .A(n323), .B(n322), .Y(n362) );
  NAND2xp5_ASAP7_75t_R U238 ( .A(n363), .B(n364), .Y(n322) );
  INVx1_ASAP7_75t_R U239 ( .A(n58), .Y(n286) );
  INVx1_ASAP7_75t_R U240 ( .A(n63), .Y(n287) );
  INVx1_ASAP7_75t_R U241 ( .A(n71), .Y(n288) );
  INVx1_ASAP7_75t_R U242 ( .A(n68), .Y(n289) );
  INVx1_ASAP7_75t_R U243 ( .A(n84), .Y(n290) );
  INVx1_ASAP7_75t_R U244 ( .A(n85), .Y(n291) );
  INVx1_ASAP7_75t_R U245 ( .A(n100), .Y(n292) );
  INVx1_ASAP7_75t_R U246 ( .A(n96), .Y(n293) );
  INVx1_ASAP7_75t_R U247 ( .A(n109), .Y(n294) );
  INVx1_ASAP7_75t_R U248 ( .A(n120), .Y(n295) );
  INVx1_ASAP7_75t_R U249 ( .A(b[7]), .Y(n296) );
  INVx1_ASAP7_75t_R U250 ( .A(n125), .Y(n297) );
  INVx1_ASAP7_75t_R U251 ( .A(n140), .Y(n298) );
  INVx1_ASAP7_75t_R U252 ( .A(b[6]), .Y(n299) );
  INVx1_ASAP7_75t_R U253 ( .A(n146), .Y(n300) );
  INVx1_ASAP7_75t_R U254 ( .A(b[5]), .Y(n301) );
  INVx1_ASAP7_75t_R U255 ( .A(n150), .Y(n302) );
  INVx1_ASAP7_75t_R U256 ( .A(n160), .Y(n303) );
  INVx1_ASAP7_75t_R U257 ( .A(b[4]), .Y(n304) );
  INVx1_ASAP7_75t_R U258 ( .A(n165), .Y(n305) );
  INVx1_ASAP7_75t_R U259 ( .A(n166), .Y(n306) );
  INVx1_ASAP7_75t_R U260 ( .A(b[3]), .Y(n307) );
  INVx1_ASAP7_75t_R U261 ( .A(b[2]), .Y(n308) );
  INVx1_ASAP7_75t_R U262 ( .A(b[0]), .Y(n309) );
  INVx1_ASAP7_75t_R U263 ( .A(a[7]), .Y(n310) );
  INVx1_ASAP7_75t_R U264 ( .A(a[6]), .Y(n311) );
  INVx1_ASAP7_75t_R U265 ( .A(a[5]), .Y(n312) );
  INVx1_ASAP7_75t_R U266 ( .A(a[4]), .Y(n313) );
  INVx1_ASAP7_75t_R U267 ( .A(a[3]), .Y(n314) );
  INVx1_ASAP7_75t_R U268 ( .A(a[2]), .Y(n315) );
  INVx1_ASAP7_75t_R U269 ( .A(a[1]), .Y(n316) );
  INVx1_ASAP7_75t_R U270 ( .A(a[0]), .Y(n317) );
  XOR2xp5_ASAP7_75t_R U271 ( .A(n318), .B(n319), .Y(product[9]) );
  XOR2xp5_ASAP7_75t_R U272 ( .A(n320), .B(n321), .Y(product[8]) );
  XOR2xp5_ASAP7_75t_R U273 ( .A(n322), .B(n323), .Y(product[7]) );
  XOR2xp5_ASAP7_75t_R U274 ( .A(n324), .B(n325), .Y(product[6]) );
  XOR2xp5_ASAP7_75t_R U275 ( .A(n326), .B(n327), .Y(product[5]) );
  XOR2xp5_ASAP7_75t_R U276 ( .A(n328), .B(n329), .Y(product[4]) );
  XOR2xp5_ASAP7_75t_R U277 ( .A(n330), .B(n331), .Y(product[3]) );
  XOR2xp5_ASAP7_75t_R U278 ( .A(n332), .B(n333), .Y(product[2]) );
  XOR2xp5_ASAP7_75t_R U279 ( .A(n334), .B(n335), .Y(product[1]) );
  NAND2xp33_ASAP7_75t_R U280 ( .A(n336), .B(n337), .Y(product[15]) );
  NAND2xp33_ASAP7_75t_R U281 ( .A(n338), .B(n339), .Y(n337) );
  OR2x2_ASAP7_75t_R U282 ( .A(n340), .B(n57), .Y(n336) );
  XOR2xp5_ASAP7_75t_R U283 ( .A(n340), .B(n57), .Y(n338) );
  NAND2xp33_ASAP7_75t_R U284 ( .A(b[7]), .B(a[7]), .Y(n340) );
  NAND2xp33_ASAP7_75t_R U285 ( .A(n341), .B(n342), .Y(n339) );
  NAND2xp33_ASAP7_75t_R U286 ( .A(n343), .B(n344), .Y(n342) );
  NAND2xp33_ASAP7_75t_R U287 ( .A(n61), .B(n286), .Y(n341) );
  XOR2xp5_ASAP7_75t_R U288 ( .A(n344), .B(n343), .Y(product[13]) );
  XOR2xp5_ASAP7_75t_R U289 ( .A(n286), .B(n61), .Y(n343) );
  NAND2xp33_ASAP7_75t_R U290 ( .A(n345), .B(n346), .Y(n344) );
  NAND2xp33_ASAP7_75t_R U291 ( .A(n347), .B(n348), .Y(n346) );
  NAND2xp33_ASAP7_75t_R U292 ( .A(n62), .B(n289), .Y(n345) );
  XOR2xp5_ASAP7_75t_R U293 ( .A(n348), .B(n347), .Y(product[12]) );
  XOR2xp5_ASAP7_75t_R U294 ( .A(n62), .B(n289), .Y(n347) );
  NAND2xp33_ASAP7_75t_R U295 ( .A(n349), .B(n350), .Y(n348) );
  NAND2xp33_ASAP7_75t_R U296 ( .A(n351), .B(n352), .Y(n350) );
  OR2x2_ASAP7_75t_R U297 ( .A(n69), .B(n78), .Y(n349) );
  XOR2xp5_ASAP7_75t_R U298 ( .A(n352), .B(n351), .Y(product[11]) );
  XOR2xp5_ASAP7_75t_R U299 ( .A(n69), .B(n78), .Y(n351) );
  NAND2xp33_ASAP7_75t_R U300 ( .A(n353), .B(n354), .Y(n352) );
  NAND2xp33_ASAP7_75t_R U301 ( .A(n355), .B(n356), .Y(n354) );
  OR2x2_ASAP7_75t_R U302 ( .A(n79), .B(n90), .Y(n353) );
  XOR2xp5_ASAP7_75t_R U303 ( .A(n356), .B(n355), .Y(product[10]) );
  XOR2xp5_ASAP7_75t_R U304 ( .A(n79), .B(n90), .Y(n355) );
  NAND2xp33_ASAP7_75t_R U305 ( .A(n357), .B(n358), .Y(n356) );
  NAND2xp33_ASAP7_75t_R U306 ( .A(n319), .B(n318), .Y(n358) );
  NAND2xp33_ASAP7_75t_R U307 ( .A(n359), .B(n360), .Y(n318) );
  NAND2xp33_ASAP7_75t_R U308 ( .A(n321), .B(n320), .Y(n360) );
  NAND2xp33_ASAP7_75t_R U309 ( .A(n325), .B(n324), .Y(n364) );
  NAND2xp33_ASAP7_75t_R U310 ( .A(n365), .B(n366), .Y(n324) );
  NAND2xp33_ASAP7_75t_R U311 ( .A(n327), .B(n326), .Y(n366) );
  NAND2xp33_ASAP7_75t_R U312 ( .A(n369), .B(n370), .Y(n328) );
  NAND2xp33_ASAP7_75t_R U313 ( .A(n331), .B(n330), .Y(n370) );
  NAND2xp33_ASAP7_75t_R U314 ( .A(n371), .B(n372), .Y(n330) );
  NAND2xp33_ASAP7_75t_R U315 ( .A(n332), .B(n333), .Y(n372) );
  XOR2xp5_ASAP7_75t_R U316 ( .A(n373), .B(n374), .Y(n333) );
  NOR2xp33_ASAP7_75t_R U317 ( .A(n334), .B(n335), .Y(n332) );
  NAND2xp33_ASAP7_75t_R U318 ( .A(b[1]), .B(a[0]), .Y(n335) );
  NAND2xp33_ASAP7_75t_R U319 ( .A(b[0]), .B(a[1]), .Y(n334) );
  NAND2xp33_ASAP7_75t_R U320 ( .A(n373), .B(n374), .Y(n371) );
  XOR2xp5_ASAP7_75t_R U321 ( .A(n375), .B(n376), .Y(n374) );
  NOR2xp33_ASAP7_75t_R U322 ( .A(n315), .B(n309), .Y(n373) );
  XOR2xp5_ASAP7_75t_R U323 ( .A(n306), .B(n377), .Y(n331) );
  NAND2xp33_ASAP7_75t_R U324 ( .A(n377), .B(n306), .Y(n369) );
  XOR2xp5_ASAP7_75t_R U325 ( .A(n378), .B(n379), .Y(n377) );
  XOR2xp5_ASAP7_75t_R U326 ( .A(n159), .B(n161), .Y(n329) );
  OR2x2_ASAP7_75t_R U327 ( .A(n159), .B(n161), .Y(n367) );
  XOR2xp5_ASAP7_75t_R U328 ( .A(n147), .B(n302), .Y(n327) );
  NAND2xp33_ASAP7_75t_R U329 ( .A(n147), .B(n302), .Y(n365) );
  XOR2xp5_ASAP7_75t_R U330 ( .A(n134), .B(n137), .Y(n325) );
  NAND2xp33_ASAP7_75t_R U331 ( .A(n134), .B(n137), .Y(n363) );
  XOR2xp5_ASAP7_75t_R U332 ( .A(n295), .B(n133), .Y(n323) );
  NAND2xp33_ASAP7_75t_R U333 ( .A(n133), .B(n295), .Y(n361) );
  XOR2xp5_ASAP7_75t_R U334 ( .A(n105), .B(n119), .Y(n321) );
  OR2x2_ASAP7_75t_R U335 ( .A(n105), .B(n119), .Y(n359) );
  XOR2xp5_ASAP7_75t_R U336 ( .A(n104), .B(n91), .Y(n319) );
  OR2x2_ASAP7_75t_R U337 ( .A(n104), .B(n91), .Y(n357) );
  NOR2xp33_ASAP7_75t_R U338 ( .A(n309), .B(n317), .Y(product[0]) );
  NAND2xp33_ASAP7_75t_R U339 ( .A(n380), .B(n381), .Y(n95) );
  NAND2xp33_ASAP7_75t_R U340 ( .A(b[6]), .B(a[5]), .Y(n70) );
  NOR2xp33_ASAP7_75t_R U341 ( .A(n317), .B(n307), .Y(n231) );
  NOR2xp33_ASAP7_75t_R U342 ( .A(n317), .B(n304), .Y(n230) );
  NOR2xp33_ASAP7_75t_R U343 ( .A(n317), .B(n301), .Y(n229) );
  NOR2xp33_ASAP7_75t_R U344 ( .A(n317), .B(n299), .Y(n228) );
  NOR2xp33_ASAP7_75t_R U345 ( .A(n317), .B(n296), .Y(n227) );
  NOR2xp33_ASAP7_75t_R U346 ( .A(n316), .B(n308), .Y(n224) );
  NOR2xp33_ASAP7_75t_R U347 ( .A(n316), .B(n307), .Y(n223) );
  NOR2xp33_ASAP7_75t_R U348 ( .A(n316), .B(n304), .Y(n222) );
  NOR2xp33_ASAP7_75t_R U349 ( .A(n316), .B(n301), .Y(n221) );
  NOR2xp33_ASAP7_75t_R U350 ( .A(n316), .B(n299), .Y(n220) );
  NOR2xp33_ASAP7_75t_R U351 ( .A(n316), .B(n296), .Y(n219) );
  NOR2xp33_ASAP7_75t_R U352 ( .A(n315), .B(n308), .Y(n216) );
  NOR2xp33_ASAP7_75t_R U353 ( .A(n315), .B(n307), .Y(n215) );
  NOR2xp33_ASAP7_75t_R U354 ( .A(n315), .B(n304), .Y(n214) );
  NOR2xp33_ASAP7_75t_R U355 ( .A(n315), .B(n301), .Y(n213) );
  NOR2xp33_ASAP7_75t_R U356 ( .A(n315), .B(n299), .Y(n212) );
  NOR2xp33_ASAP7_75t_R U357 ( .A(n315), .B(n296), .Y(n211) );
  NOR2xp33_ASAP7_75t_R U358 ( .A(n308), .B(n314), .Y(n208) );
  NOR2xp33_ASAP7_75t_R U359 ( .A(n314), .B(n307), .Y(n207) );
  NOR2xp33_ASAP7_75t_R U360 ( .A(n314), .B(n304), .Y(n206) );
  NOR2xp33_ASAP7_75t_R U361 ( .A(n314), .B(n301), .Y(n205) );
  NOR2xp33_ASAP7_75t_R U362 ( .A(n314), .B(n299), .Y(n204) );
  NOR2xp33_ASAP7_75t_R U363 ( .A(n314), .B(n296), .Y(n203) );
  NOR2xp33_ASAP7_75t_R U364 ( .A(n308), .B(n313), .Y(n200) );
  NOR2xp33_ASAP7_75t_R U365 ( .A(n307), .B(n313), .Y(n199) );
  NOR2xp33_ASAP7_75t_R U366 ( .A(n304), .B(n313), .Y(n198) );
  NOR2xp33_ASAP7_75t_R U367 ( .A(n301), .B(n313), .Y(n197) );
  NOR2xp33_ASAP7_75t_R U368 ( .A(n299), .B(n313), .Y(n196) );
  NOR2xp33_ASAP7_75t_R U369 ( .A(n296), .B(n313), .Y(n195) );
  NOR2xp33_ASAP7_75t_R U370 ( .A(n308), .B(n312), .Y(n192) );
  NOR2xp33_ASAP7_75t_R U371 ( .A(n312), .B(n307), .Y(n191) );
  NOR2xp33_ASAP7_75t_R U372 ( .A(n312), .B(n304), .Y(n190) );
  NOR2xp33_ASAP7_75t_R U373 ( .A(n312), .B(n301), .Y(n189) );
  NOR2xp33_ASAP7_75t_R U374 ( .A(n296), .B(n312), .Y(n187) );
  NOR2xp33_ASAP7_75t_R U375 ( .A(n311), .B(n307), .Y(n183) );
  NOR2xp33_ASAP7_75t_R U376 ( .A(n311), .B(n304), .Y(n182) );
  NOR2xp33_ASAP7_75t_R U377 ( .A(n311), .B(n301), .Y(n181) );
  NOR2xp33_ASAP7_75t_R U378 ( .A(n311), .B(n299), .Y(n180) );
  NOR2xp33_ASAP7_75t_R U379 ( .A(n296), .B(n311), .Y(n179) );
  NOR2xp33_ASAP7_75t_R U380 ( .A(n308), .B(n310), .Y(n176) );
  NOR2xp33_ASAP7_75t_R U381 ( .A(n310), .B(n307), .Y(n175) );
  NOR2xp33_ASAP7_75t_R U382 ( .A(n310), .B(n304), .Y(n174) );
  NOR2xp33_ASAP7_75t_R U383 ( .A(n310), .B(n301), .Y(n173) );
  NOR2xp33_ASAP7_75t_R U384 ( .A(n310), .B(n299), .Y(n172) );
  NOR2xp33_ASAP7_75t_R U385 ( .A(n376), .B(n375), .Y(n169) );
  NAND2xp33_ASAP7_75t_R U386 ( .A(b[1]), .B(a[1]), .Y(n375) );
  NAND2xp33_ASAP7_75t_R U387 ( .A(b[2]), .B(a[0]), .Y(n376) );
  NOR2xp33_ASAP7_75t_R U388 ( .A(n379), .B(n378), .Y(n167) );
  NAND2xp33_ASAP7_75t_R U389 ( .A(a[3]), .B(b[0]), .Y(n378) );
  NAND2xp33_ASAP7_75t_R U390 ( .A(a[2]), .B(b[1]), .Y(n379) );
  XOR2xp5_ASAP7_75t_R U391 ( .A(n382), .B(n383), .Y(n163) );
  NOR2xp33_ASAP7_75t_R U392 ( .A(n382), .B(n383), .Y(n162) );
  NAND2xp33_ASAP7_75t_R U393 ( .A(a[4]), .B(b[0]), .Y(n383) );
  NAND2xp33_ASAP7_75t_R U394 ( .A(a[3]), .B(b[1]), .Y(n382) );
  NOR2xp33_ASAP7_75t_R U395 ( .A(n384), .B(n385), .Y(n153) );
  XNOR2xp5_ASAP7_75t_R U396 ( .A(n384), .B(n385), .Y(n145) );
  NAND2xp33_ASAP7_75t_R U397 ( .A(a[4]), .B(b[1]), .Y(n385) );
  NAND2xp33_ASAP7_75t_R U398 ( .A(a[5]), .B(b[0]), .Y(n384) );
  NOR2xp33_ASAP7_75t_R U399 ( .A(n386), .B(n387), .Y(n142) );
  XNOR2xp5_ASAP7_75t_R U400 ( .A(n386), .B(n387), .Y(n135) );
  NAND2xp33_ASAP7_75t_R U401 ( .A(a[5]), .B(b[1]), .Y(n387) );
  NAND2xp33_ASAP7_75t_R U402 ( .A(a[6]), .B(b[0]), .Y(n386) );
  XOR2xp5_ASAP7_75t_R U403 ( .A(n388), .B(n389), .Y(n131) );
  NOR2xp33_ASAP7_75t_R U404 ( .A(n388), .B(n389), .Y(n130) );
  NAND2xp33_ASAP7_75t_R U405 ( .A(a[7]), .B(b[0]), .Y(n389) );
  NAND2xp33_ASAP7_75t_R U406 ( .A(a[6]), .B(b[1]), .Y(n388) );
  XNOR2xp5_ASAP7_75t_R U407 ( .A(n381), .B(n380), .Y(n108) );
  NOR2xp33_ASAP7_75t_R U408 ( .A(n311), .B(n308), .Y(n380) );
  AND2x2_ASAP7_75t_R U409 ( .A(a[7]), .B(b[1]), .Y(n381) );
endmodule


module Convolution_DW_mult_uns_2 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n57, n58, n61, n62, n63, n64, n68, n69, n70, n71, n72, n73, n74, n78,
         n79, n81, n82, n84, n85, n86, n87, n90, n91, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n119, n120, n121, n122, n124, n125, n126, n127,
         n128, n129, n130, n131, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n145, n146, n147, n149, n150, n151, n152, n153,
         n158, n159, n160, n161, n162, n163, n165, n166, n167, n169, n172,
         n173, n174, n175, n176, n179, n180, n181, n182, n183, n187, n189,
         n190, n191, n192, n195, n196, n197, n198, n199, n200, n203, n204,
         n205, n206, n207, n208, n211, n212, n213, n214, n215, n216, n219,
         n220, n221, n222, n223, n224, n227, n228, n229, n230, n231, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389, n390, n391;

  FAx1_ASAP7_75t_R U71 ( .A(n172), .B(n179), .CI(n289), .CON(n57), .SN(n58) );
  FAx1_ASAP7_75t_R U74 ( .A(n64), .B(n73), .CI(n290), .CON(n61), .SN(n62) );
  FAx1_ASAP7_75t_R U76 ( .A(n173), .B(n187), .CI(n180), .CON(n63), .SN(n64) );
  FAx1_ASAP7_75t_R U79 ( .A(n81), .B(n292), .CI(n72), .CON(n68), .SN(n69) );
  FAx1_ASAP7_75t_R U81 ( .A(n86), .B(n70), .CI(n74), .CON(n71), .SN(n72) );
  FAx1_ASAP7_75t_R U83 ( .A(n174), .B(n195), .CI(n181), .CON(n73), .SN(n74) );
  FAx1_ASAP7_75t_R U86 ( .A(n93), .B(n293), .CI(n82), .CON(n78), .SN(n79) );
  FAx1_ASAP7_75t_R U88 ( .A(n87), .B(n98), .CI(n295), .CON(n81), .SN(n82) );
  FAx1_ASAP7_75t_R U90 ( .A(n189), .B(n196), .CI(n294), .CON(n84), .SN(n85) );
  FAx1_ASAP7_75t_R U92 ( .A(n175), .B(n203), .CI(n182), .CON(n86), .SN(n87) );
  FAx1_ASAP7_75t_R U95 ( .A(n106), .B(n97), .CI(n94), .CON(n90), .SN(n91) );
  FAx1_ASAP7_75t_R U96 ( .A(n101), .B(n99), .CI(n296), .CON(n93), .SN(n94) );
  FAx1_ASAP7_75t_R U98 ( .A(n113), .B(n95), .CI(n111), .CON(n96), .SN(n97) );
  FAx1_ASAP7_75t_R U100 ( .A(n190), .B(n204), .CI(n197), .CON(n98), .SN(n99)
         );
  FAx1_ASAP7_75t_R U101 ( .A(n176), .B(n211), .CI(n183), .CON(n100), .SN(n101)
         );
  FAx1_ASAP7_75t_R U104 ( .A(n110), .B(n121), .CI(n107), .CON(n104), .SN(n105)
         );
  FAx1_ASAP7_75t_R U105 ( .A(n112), .B(n114), .CI(n124), .CON(n106), .SN(n107)
         );
  FAx1_ASAP7_75t_R U106 ( .A(n126), .B(n128), .CI(n108), .CON(n109), .SN(n110)
         );
  FAx1_ASAP7_75t_R U108 ( .A(n205), .B(n212), .CI(n130), .CON(n111), .SN(n112)
         );
  FAx1_ASAP7_75t_R U109 ( .A(n191), .B(n219), .CI(n198), .CON(n113), .SN(n114)
         );
  FAx1_ASAP7_75t_R U113 ( .A(n299), .B(n136), .CI(n122), .CON(n119), .SN(n120)
         );
  FAx1_ASAP7_75t_R U115 ( .A(n127), .B(n138), .CI(n129), .CON(n121), .SN(n122)
         );
  FAx1_ASAP7_75t_R U116 ( .A(n300), .B(n142), .CI(n131), .CON(n124), .SN(n125)
         );
  FAx1_ASAP7_75t_R U118 ( .A(n213), .B(n206), .CI(n220), .CON(n126), .SN(n127)
         );
  FAx1_ASAP7_75t_R U119 ( .A(n192), .B(n227), .CI(n199), .CON(n128), .SN(n129)
         );
  FAx1_ASAP7_75t_R U122 ( .A(n139), .B(n149), .CI(n302), .CON(n133), .SN(n134)
         );
  FAx1_ASAP7_75t_R U124 ( .A(n135), .B(n151), .CI(n141), .CON(n136), .SN(n137)
         );
  FAx1_ASAP7_75t_R U126 ( .A(n214), .B(n221), .CI(n153), .CON(n138), .SN(n139)
         );
  FAx1_ASAP7_75t_R U127 ( .A(n200), .B(n228), .CI(n207), .CON(n140), .SN(n141)
         );
  FAx1_ASAP7_75t_R U131 ( .A(n152), .B(n145), .CI(n158), .CON(n146), .SN(n147)
         );
  FAx1_ASAP7_75t_R U133 ( .A(n162), .B(n222), .CI(n305), .CON(n149), .SN(n150)
         );
  FAx1_ASAP7_75t_R U135 ( .A(n208), .B(n229), .CI(n215), .CON(n151), .SN(n152)
         );
  FAx1_ASAP7_75t_R U140 ( .A(n163), .B(n167), .CI(n307), .CON(n158), .SN(n159)
         );
  FAx1_ASAP7_75t_R U142 ( .A(n216), .B(n230), .CI(n223), .CON(n160), .SN(n161)
         );
  FAx1_ASAP7_75t_R U146 ( .A(n224), .B(n231), .CI(n169), .CON(n165), .SN(n166)
         );
  XOR2x2_ASAP7_75t_R U233 ( .A(n328), .B(n329), .Y(product[5]) );
  INVxp67_ASAP7_75t_R U234 ( .A(n147), .Y(n286) );
  INVx1_ASAP7_75t_R U235 ( .A(n286), .Y(n287) );
  INVx1_ASAP7_75t_R U236 ( .A(a[0]), .Y(n319) );
  XOR2x2_ASAP7_75t_R U237 ( .A(n332), .B(n333), .Y(product[3]) );
  XOR2x2_ASAP7_75t_R U238 ( .A(n330), .B(n331), .Y(product[4]) );
  XOR2xp5_ASAP7_75t_R U239 ( .A(n287), .B(n304), .Y(n329) );
  XOR2xp5_ASAP7_75t_R U240 ( .A(n326), .B(n327), .Y(product[6]) );
  XOR2xp5_ASAP7_75t_R U241 ( .A(n324), .B(n325), .Y(product[7]) );
  INVx1_ASAP7_75t_R U242 ( .A(n166), .Y(n308) );
  NAND2xp33_ASAP7_75t_R U243 ( .A(n331), .B(n330), .Y(n370) );
  XOR2xp5_ASAP7_75t_R U244 ( .A(n377), .B(n378), .Y(n376) );
  INVx1_ASAP7_75t_R U245 ( .A(b[3]), .Y(n309) );
  INVx1_ASAP7_75t_R U246 ( .A(b[5]), .Y(n303) );
  INVx1_ASAP7_75t_R U247 ( .A(a[3]), .Y(n316) );
  INVx1_ASAP7_75t_R U248 ( .A(b[4]), .Y(n306) );
  NAND2xp5_ASAP7_75t_R U249 ( .A(b[2]), .B(a[0]), .Y(n378) );
  NAND2xp5_ASAP7_75t_R U250 ( .A(n367), .B(n368), .Y(n326) );
  NAND2xp33_ASAP7_75t_R U251 ( .A(n323), .B(n322), .Y(n362) );
  NAND2xp33_ASAP7_75t_R U252 ( .A(n357), .B(n358), .Y(n356) );
  NAND2xp5_ASAP7_75t_R U253 ( .A(n371), .B(n372), .Y(n330) );
  XOR2xp5_ASAP7_75t_R U254 ( .A(n322), .B(n323), .Y(product[8]) );
  XOR2xp5_ASAP7_75t_R U255 ( .A(n341), .B(n340), .Y(product[14]) );
  NOR2xp33_ASAP7_75t_R U256 ( .A(n378), .B(n377), .Y(n169) );
  NOR2xp33_ASAP7_75t_R U257 ( .A(n317), .B(n303), .Y(n213) );
  NOR2xp33_ASAP7_75t_R U258 ( .A(n316), .B(n306), .Y(n206) );
  NOR2xp33_ASAP7_75t_R U259 ( .A(n319), .B(n303), .Y(n229) );
  NAND2xp5_ASAP7_75t_R U260 ( .A(n369), .B(n370), .Y(n328) );
  NAND2xp5_ASAP7_75t_R U261 ( .A(n351), .B(n352), .Y(n350) );
  NAND2xp5_ASAP7_75t_R U262 ( .A(n365), .B(n366), .Y(n324) );
  NAND2xp5_ASAP7_75t_R U263 ( .A(n355), .B(n356), .Y(n354) );
  NAND2xp5_ASAP7_75t_R U264 ( .A(n361), .B(n362), .Y(n320) );
  NAND2xp5_ASAP7_75t_R U265 ( .A(b[1]), .B(a[1]), .Y(n377) );
  NAND2xp5_ASAP7_75t_R U266 ( .A(n343), .B(n344), .Y(n341) );
  NAND2xp5_ASAP7_75t_R U267 ( .A(n359), .B(n360), .Y(n358) );
  NAND2xp5_ASAP7_75t_R U268 ( .A(n363), .B(n364), .Y(n322) );
  NAND2xp5_ASAP7_75t_R U269 ( .A(n347), .B(n348), .Y(n346) );
  INVx1_ASAP7_75t_R U270 ( .A(n58), .Y(n288) );
  INVx1_ASAP7_75t_R U271 ( .A(n63), .Y(n289) );
  INVx1_ASAP7_75t_R U272 ( .A(n71), .Y(n290) );
  INVx1_ASAP7_75t_R U273 ( .A(n68), .Y(n291) );
  INVx1_ASAP7_75t_R U274 ( .A(n84), .Y(n292) );
  INVx1_ASAP7_75t_R U275 ( .A(n85), .Y(n293) );
  INVx1_ASAP7_75t_R U276 ( .A(n100), .Y(n294) );
  INVx1_ASAP7_75t_R U277 ( .A(n96), .Y(n295) );
  INVx1_ASAP7_75t_R U278 ( .A(n109), .Y(n296) );
  INVx1_ASAP7_75t_R U279 ( .A(n120), .Y(n297) );
  INVx1_ASAP7_75t_R U280 ( .A(b[7]), .Y(n298) );
  INVx1_ASAP7_75t_R U281 ( .A(n125), .Y(n299) );
  INVx1_ASAP7_75t_R U282 ( .A(n140), .Y(n300) );
  INVx1_ASAP7_75t_R U283 ( .A(b[6]), .Y(n301) );
  INVx1_ASAP7_75t_R U284 ( .A(n146), .Y(n302) );
  INVx1_ASAP7_75t_R U285 ( .A(n150), .Y(n304) );
  INVx1_ASAP7_75t_R U286 ( .A(n160), .Y(n305) );
  INVx1_ASAP7_75t_R U287 ( .A(n165), .Y(n307) );
  INVx1_ASAP7_75t_R U288 ( .A(b[2]), .Y(n310) );
  INVx1_ASAP7_75t_R U289 ( .A(b[0]), .Y(n311) );
  INVx1_ASAP7_75t_R U290 ( .A(a[7]), .Y(n312) );
  INVx1_ASAP7_75t_R U291 ( .A(a[6]), .Y(n313) );
  INVx1_ASAP7_75t_R U292 ( .A(a[5]), .Y(n314) );
  INVx1_ASAP7_75t_R U293 ( .A(a[4]), .Y(n315) );
  INVx1_ASAP7_75t_R U294 ( .A(a[2]), .Y(n317) );
  INVx1_ASAP7_75t_R U295 ( .A(a[1]), .Y(n318) );
  XOR2xp5_ASAP7_75t_R U296 ( .A(n320), .B(n321), .Y(product[9]) );
  XOR2xp5_ASAP7_75t_R U297 ( .A(n334), .B(n335), .Y(product[2]) );
  XOR2xp5_ASAP7_75t_R U298 ( .A(n336), .B(n337), .Y(product[1]) );
  NAND2xp33_ASAP7_75t_R U299 ( .A(n338), .B(n339), .Y(product[15]) );
  NAND2xp33_ASAP7_75t_R U300 ( .A(n340), .B(n341), .Y(n339) );
  OR2x2_ASAP7_75t_R U301 ( .A(n342), .B(n57), .Y(n338) );
  XOR2xp5_ASAP7_75t_R U302 ( .A(n342), .B(n57), .Y(n340) );
  NAND2xp33_ASAP7_75t_R U303 ( .A(b[7]), .B(a[7]), .Y(n342) );
  NAND2xp33_ASAP7_75t_R U304 ( .A(n345), .B(n346), .Y(n344) );
  NAND2xp33_ASAP7_75t_R U305 ( .A(n61), .B(n288), .Y(n343) );
  XOR2xp5_ASAP7_75t_R U306 ( .A(n346), .B(n345), .Y(product[13]) );
  XOR2xp5_ASAP7_75t_R U307 ( .A(n288), .B(n61), .Y(n345) );
  NAND2xp33_ASAP7_75t_R U308 ( .A(n349), .B(n350), .Y(n348) );
  NAND2xp33_ASAP7_75t_R U309 ( .A(n62), .B(n291), .Y(n347) );
  XOR2xp5_ASAP7_75t_R U310 ( .A(n350), .B(n349), .Y(product[12]) );
  XOR2xp5_ASAP7_75t_R U311 ( .A(n62), .B(n291), .Y(n349) );
  NAND2xp33_ASAP7_75t_R U312 ( .A(n353), .B(n354), .Y(n352) );
  OR2x2_ASAP7_75t_R U313 ( .A(n69), .B(n78), .Y(n351) );
  XOR2xp5_ASAP7_75t_R U314 ( .A(n354), .B(n353), .Y(product[11]) );
  XOR2xp5_ASAP7_75t_R U315 ( .A(n69), .B(n78), .Y(n353) );
  OR2x2_ASAP7_75t_R U316 ( .A(n79), .B(n90), .Y(n355) );
  XOR2xp5_ASAP7_75t_R U317 ( .A(n358), .B(n357), .Y(product[10]) );
  XOR2xp5_ASAP7_75t_R U318 ( .A(n79), .B(n90), .Y(n357) );
  NAND2xp33_ASAP7_75t_R U319 ( .A(n321), .B(n320), .Y(n360) );
  NAND2xp33_ASAP7_75t_R U320 ( .A(n325), .B(n324), .Y(n364) );
  NAND2xp33_ASAP7_75t_R U321 ( .A(n327), .B(n326), .Y(n366) );
  NAND2xp33_ASAP7_75t_R U322 ( .A(n329), .B(n328), .Y(n368) );
  NAND2xp33_ASAP7_75t_R U323 ( .A(n333), .B(n332), .Y(n372) );
  NAND2xp33_ASAP7_75t_R U324 ( .A(n373), .B(n374), .Y(n332) );
  NAND2xp33_ASAP7_75t_R U325 ( .A(n334), .B(n335), .Y(n374) );
  XOR2xp5_ASAP7_75t_R U326 ( .A(n375), .B(n376), .Y(n335) );
  NOR2xp33_ASAP7_75t_R U327 ( .A(n336), .B(n337), .Y(n334) );
  NAND2xp33_ASAP7_75t_R U328 ( .A(b[1]), .B(a[0]), .Y(n337) );
  NAND2xp33_ASAP7_75t_R U329 ( .A(b[0]), .B(a[1]), .Y(n336) );
  NAND2xp33_ASAP7_75t_R U330 ( .A(n375), .B(n376), .Y(n373) );
  NOR2xp33_ASAP7_75t_R U331 ( .A(n317), .B(n311), .Y(n375) );
  XOR2xp5_ASAP7_75t_R U332 ( .A(n308), .B(n379), .Y(n333) );
  NAND2xp33_ASAP7_75t_R U333 ( .A(n379), .B(n308), .Y(n371) );
  XOR2xp5_ASAP7_75t_R U334 ( .A(n380), .B(n381), .Y(n379) );
  XOR2xp5_ASAP7_75t_R U335 ( .A(n159), .B(n161), .Y(n331) );
  OR2x2_ASAP7_75t_R U336 ( .A(n159), .B(n161), .Y(n369) );
  NAND2xp33_ASAP7_75t_R U337 ( .A(n287), .B(n304), .Y(n367) );
  XOR2xp5_ASAP7_75t_R U338 ( .A(n137), .B(n134), .Y(n327) );
  NAND2xp33_ASAP7_75t_R U339 ( .A(n134), .B(n137), .Y(n365) );
  XOR2xp5_ASAP7_75t_R U340 ( .A(n297), .B(n133), .Y(n325) );
  NAND2xp33_ASAP7_75t_R U341 ( .A(n133), .B(n297), .Y(n363) );
  XOR2xp5_ASAP7_75t_R U342 ( .A(n105), .B(n119), .Y(n323) );
  OR2x2_ASAP7_75t_R U343 ( .A(n105), .B(n119), .Y(n361) );
  XOR2xp5_ASAP7_75t_R U344 ( .A(n104), .B(n91), .Y(n321) );
  OR2x2_ASAP7_75t_R U345 ( .A(n104), .B(n91), .Y(n359) );
  NOR2xp33_ASAP7_75t_R U346 ( .A(n311), .B(n319), .Y(product[0]) );
  NAND2xp33_ASAP7_75t_R U347 ( .A(n382), .B(n383), .Y(n95) );
  NAND2xp33_ASAP7_75t_R U348 ( .A(b[6]), .B(a[5]), .Y(n70) );
  NOR2xp33_ASAP7_75t_R U349 ( .A(n319), .B(n309), .Y(n231) );
  NOR2xp33_ASAP7_75t_R U350 ( .A(n319), .B(n306), .Y(n230) );
  NOR2xp33_ASAP7_75t_R U351 ( .A(n319), .B(n301), .Y(n228) );
  NOR2xp33_ASAP7_75t_R U352 ( .A(n319), .B(n298), .Y(n227) );
  NOR2xp33_ASAP7_75t_R U353 ( .A(n318), .B(n310), .Y(n224) );
  NOR2xp33_ASAP7_75t_R U354 ( .A(n318), .B(n309), .Y(n223) );
  NOR2xp33_ASAP7_75t_R U355 ( .A(n318), .B(n306), .Y(n222) );
  NOR2xp33_ASAP7_75t_R U356 ( .A(n318), .B(n303), .Y(n221) );
  NOR2xp33_ASAP7_75t_R U357 ( .A(n318), .B(n301), .Y(n220) );
  NOR2xp33_ASAP7_75t_R U358 ( .A(n318), .B(n298), .Y(n219) );
  NOR2xp33_ASAP7_75t_R U359 ( .A(n317), .B(n310), .Y(n216) );
  NOR2xp33_ASAP7_75t_R U360 ( .A(n317), .B(n309), .Y(n215) );
  NOR2xp33_ASAP7_75t_R U361 ( .A(n317), .B(n306), .Y(n214) );
  NOR2xp33_ASAP7_75t_R U362 ( .A(n317), .B(n301), .Y(n212) );
  NOR2xp33_ASAP7_75t_R U363 ( .A(n317), .B(n298), .Y(n211) );
  NOR2xp33_ASAP7_75t_R U364 ( .A(n310), .B(n316), .Y(n208) );
  NOR2xp33_ASAP7_75t_R U365 ( .A(n316), .B(n309), .Y(n207) );
  NOR2xp33_ASAP7_75t_R U366 ( .A(n316), .B(n303), .Y(n205) );
  NOR2xp33_ASAP7_75t_R U367 ( .A(n316), .B(n301), .Y(n204) );
  NOR2xp33_ASAP7_75t_R U368 ( .A(n316), .B(n298), .Y(n203) );
  NOR2xp33_ASAP7_75t_R U369 ( .A(n310), .B(n315), .Y(n200) );
  NOR2xp33_ASAP7_75t_R U370 ( .A(n309), .B(n315), .Y(n199) );
  NOR2xp33_ASAP7_75t_R U371 ( .A(n306), .B(n315), .Y(n198) );
  NOR2xp33_ASAP7_75t_R U372 ( .A(n303), .B(n315), .Y(n197) );
  NOR2xp33_ASAP7_75t_R U373 ( .A(n301), .B(n315), .Y(n196) );
  NOR2xp33_ASAP7_75t_R U374 ( .A(n298), .B(n315), .Y(n195) );
  NOR2xp33_ASAP7_75t_R U375 ( .A(n310), .B(n314), .Y(n192) );
  NOR2xp33_ASAP7_75t_R U376 ( .A(n314), .B(n309), .Y(n191) );
  NOR2xp33_ASAP7_75t_R U377 ( .A(n314), .B(n306), .Y(n190) );
  NOR2xp33_ASAP7_75t_R U378 ( .A(n314), .B(n303), .Y(n189) );
  NOR2xp33_ASAP7_75t_R U379 ( .A(n298), .B(n314), .Y(n187) );
  NOR2xp33_ASAP7_75t_R U380 ( .A(n313), .B(n309), .Y(n183) );
  NOR2xp33_ASAP7_75t_R U381 ( .A(n313), .B(n306), .Y(n182) );
  NOR2xp33_ASAP7_75t_R U382 ( .A(n313), .B(n303), .Y(n181) );
  NOR2xp33_ASAP7_75t_R U383 ( .A(n313), .B(n301), .Y(n180) );
  NOR2xp33_ASAP7_75t_R U384 ( .A(n298), .B(n313), .Y(n179) );
  NOR2xp33_ASAP7_75t_R U385 ( .A(n310), .B(n312), .Y(n176) );
  NOR2xp33_ASAP7_75t_R U386 ( .A(n312), .B(n309), .Y(n175) );
  NOR2xp33_ASAP7_75t_R U387 ( .A(n312), .B(n306), .Y(n174) );
  NOR2xp33_ASAP7_75t_R U388 ( .A(n312), .B(n303), .Y(n173) );
  NOR2xp33_ASAP7_75t_R U389 ( .A(n312), .B(n301), .Y(n172) );
  NOR2xp33_ASAP7_75t_R U390 ( .A(n381), .B(n380), .Y(n167) );
  NAND2xp33_ASAP7_75t_R U391 ( .A(a[3]), .B(b[0]), .Y(n380) );
  NAND2xp33_ASAP7_75t_R U392 ( .A(a[2]), .B(b[1]), .Y(n381) );
  XOR2xp5_ASAP7_75t_R U393 ( .A(n384), .B(n385), .Y(n163) );
  NOR2xp33_ASAP7_75t_R U394 ( .A(n384), .B(n385), .Y(n162) );
  NAND2xp33_ASAP7_75t_R U395 ( .A(a[4]), .B(b[0]), .Y(n385) );
  NAND2xp33_ASAP7_75t_R U396 ( .A(a[3]), .B(b[1]), .Y(n384) );
  NOR2xp33_ASAP7_75t_R U397 ( .A(n386), .B(n387), .Y(n153) );
  XNOR2xp5_ASAP7_75t_R U398 ( .A(n386), .B(n387), .Y(n145) );
  NAND2xp33_ASAP7_75t_R U399 ( .A(a[4]), .B(b[1]), .Y(n387) );
  NAND2xp33_ASAP7_75t_R U400 ( .A(a[5]), .B(b[0]), .Y(n386) );
  NOR2xp33_ASAP7_75t_R U401 ( .A(n388), .B(n389), .Y(n142) );
  XNOR2xp5_ASAP7_75t_R U402 ( .A(n388), .B(n389), .Y(n135) );
  NAND2xp33_ASAP7_75t_R U403 ( .A(a[5]), .B(b[1]), .Y(n389) );
  NAND2xp33_ASAP7_75t_R U404 ( .A(a[6]), .B(b[0]), .Y(n388) );
  XOR2xp5_ASAP7_75t_R U405 ( .A(n390), .B(n391), .Y(n131) );
  NOR2xp33_ASAP7_75t_R U406 ( .A(n390), .B(n391), .Y(n130) );
  NAND2xp33_ASAP7_75t_R U407 ( .A(a[7]), .B(b[0]), .Y(n391) );
  NAND2xp33_ASAP7_75t_R U408 ( .A(a[6]), .B(b[1]), .Y(n390) );
  XNOR2xp5_ASAP7_75t_R U409 ( .A(n383), .B(n382), .Y(n108) );
  NOR2xp33_ASAP7_75t_R U410 ( .A(n313), .B(n310), .Y(n382) );
  AND2x2_ASAP7_75t_R U411 ( .A(a[7]), .B(b[1]), .Y(n383) );
endmodule


module Convolution_DW_mult_uns_3 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n57, n58, n61, n62, n63, n64, n68, n69, n70, n71, n72, n73, n74, n78,
         n79, n81, n82, n84, n85, n86, n87, n90, n91, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n119, n120, n121, n122, n124, n125, n126, n127,
         n128, n129, n130, n131, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n145, n146, n147, n149, n150, n151, n152, n153,
         n158, n159, n160, n161, n162, n163, n165, n166, n167, n169, n172,
         n173, n174, n175, n176, n179, n180, n181, n182, n183, n187, n189,
         n190, n191, n192, n195, n196, n197, n198, n199, n200, n203, n204,
         n205, n206, n207, n208, n211, n212, n213, n214, n215, n216, n219,
         n220, n221, n222, n223, n224, n227, n228, n229, n230, n231, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389;

  FAx1_ASAP7_75t_R U71 ( .A(n172), .B(n179), .CI(n287), .CON(n57), .SN(n58) );
  FAx1_ASAP7_75t_R U74 ( .A(n64), .B(n73), .CI(n288), .CON(n61), .SN(n62) );
  FAx1_ASAP7_75t_R U76 ( .A(n173), .B(n187), .CI(n180), .CON(n63), .SN(n64) );
  FAx1_ASAP7_75t_R U79 ( .A(n81), .B(n290), .CI(n72), .CON(n68), .SN(n69) );
  FAx1_ASAP7_75t_R U81 ( .A(n86), .B(n70), .CI(n74), .CON(n71), .SN(n72) );
  FAx1_ASAP7_75t_R U83 ( .A(n174), .B(n195), .CI(n181), .CON(n73), .SN(n74) );
  FAx1_ASAP7_75t_R U86 ( .A(n93), .B(n291), .CI(n82), .CON(n78), .SN(n79) );
  FAx1_ASAP7_75t_R U88 ( .A(n87), .B(n98), .CI(n293), .CON(n81), .SN(n82) );
  FAx1_ASAP7_75t_R U90 ( .A(n189), .B(n196), .CI(n292), .CON(n84), .SN(n85) );
  FAx1_ASAP7_75t_R U92 ( .A(n175), .B(n203), .CI(n182), .CON(n86), .SN(n87) );
  FAx1_ASAP7_75t_R U95 ( .A(n106), .B(n97), .CI(n94), .CON(n90), .SN(n91) );
  FAx1_ASAP7_75t_R U96 ( .A(n101), .B(n99), .CI(n294), .CON(n93), .SN(n94) );
  FAx1_ASAP7_75t_R U98 ( .A(n113), .B(n95), .CI(n111), .CON(n96), .SN(n97) );
  FAx1_ASAP7_75t_R U100 ( .A(n190), .B(n204), .CI(n197), .CON(n98), .SN(n99)
         );
  FAx1_ASAP7_75t_R U101 ( .A(n176), .B(n211), .CI(n183), .CON(n100), .SN(n101)
         );
  FAx1_ASAP7_75t_R U104 ( .A(n110), .B(n121), .CI(n107), .CON(n104), .SN(n105)
         );
  FAx1_ASAP7_75t_R U105 ( .A(n112), .B(n114), .CI(n124), .CON(n106), .SN(n107)
         );
  FAx1_ASAP7_75t_R U106 ( .A(n126), .B(n128), .CI(n108), .CON(n109), .SN(n110)
         );
  FAx1_ASAP7_75t_R U108 ( .A(n205), .B(n212), .CI(n130), .CON(n111), .SN(n112)
         );
  FAx1_ASAP7_75t_R U109 ( .A(n191), .B(n219), .CI(n198), .CON(n113), .SN(n114)
         );
  FAx1_ASAP7_75t_R U113 ( .A(n297), .B(n136), .CI(n122), .CON(n119), .SN(n120)
         );
  FAx1_ASAP7_75t_R U115 ( .A(n127), .B(n138), .CI(n129), .CON(n121), .SN(n122)
         );
  FAx1_ASAP7_75t_R U116 ( .A(n298), .B(n142), .CI(n131), .CON(n124), .SN(n125)
         );
  FAx1_ASAP7_75t_R U118 ( .A(n213), .B(n206), .CI(n220), .CON(n126), .SN(n127)
         );
  FAx1_ASAP7_75t_R U119 ( .A(n192), .B(n227), .CI(n199), .CON(n128), .SN(n129)
         );
  FAx1_ASAP7_75t_R U122 ( .A(n139), .B(n149), .CI(n300), .CON(n133), .SN(n134)
         );
  FAx1_ASAP7_75t_R U124 ( .A(n135), .B(n151), .CI(n141), .CON(n136), .SN(n137)
         );
  FAx1_ASAP7_75t_R U126 ( .A(n214), .B(n221), .CI(n153), .CON(n138), .SN(n139)
         );
  FAx1_ASAP7_75t_R U127 ( .A(n200), .B(n228), .CI(n207), .CON(n140), .SN(n141)
         );
  FAx1_ASAP7_75t_R U131 ( .A(n152), .B(n145), .CI(n158), .CON(n146), .SN(n147)
         );
  FAx1_ASAP7_75t_R U133 ( .A(n162), .B(n222), .CI(n303), .CON(n149), .SN(n150)
         );
  FAx1_ASAP7_75t_R U135 ( .A(n208), .B(n229), .CI(n215), .CON(n151), .SN(n152)
         );
  FAx1_ASAP7_75t_R U140 ( .A(n163), .B(n167), .CI(n305), .CON(n158), .SN(n159)
         );
  FAx1_ASAP7_75t_R U142 ( .A(n216), .B(n230), .CI(n223), .CON(n160), .SN(n161)
         );
  FAx1_ASAP7_75t_R U146 ( .A(n224), .B(n231), .CI(n169), .CON(n165), .SN(n166)
         );
  XOR2xp5_ASAP7_75t_R U233 ( .A(n322), .B(n323), .Y(product[7]) );
  XOR2xp5_ASAP7_75t_R U234 ( .A(n339), .B(n338), .Y(product[14]) );
  NAND2xp5_ASAP7_75t_R U235 ( .A(n363), .B(n364), .Y(n322) );
  NAND2xp5_ASAP7_75t_R U236 ( .A(b[1]), .B(a[1]), .Y(n375) );
  INVx1_ASAP7_75t_R U237 ( .A(n58), .Y(n286) );
  INVx1_ASAP7_75t_R U238 ( .A(n63), .Y(n287) );
  INVx1_ASAP7_75t_R U239 ( .A(n71), .Y(n288) );
  INVx1_ASAP7_75t_R U240 ( .A(n68), .Y(n289) );
  INVx1_ASAP7_75t_R U241 ( .A(n84), .Y(n290) );
  INVx1_ASAP7_75t_R U242 ( .A(n85), .Y(n291) );
  INVx1_ASAP7_75t_R U243 ( .A(n100), .Y(n292) );
  INVx1_ASAP7_75t_R U244 ( .A(n96), .Y(n293) );
  INVx1_ASAP7_75t_R U245 ( .A(n109), .Y(n294) );
  INVx1_ASAP7_75t_R U246 ( .A(n120), .Y(n295) );
  INVx1_ASAP7_75t_R U247 ( .A(b[7]), .Y(n296) );
  INVx1_ASAP7_75t_R U248 ( .A(n125), .Y(n297) );
  INVx1_ASAP7_75t_R U249 ( .A(n140), .Y(n298) );
  INVx1_ASAP7_75t_R U250 ( .A(b[6]), .Y(n299) );
  INVx1_ASAP7_75t_R U251 ( .A(n146), .Y(n300) );
  INVx1_ASAP7_75t_R U252 ( .A(b[5]), .Y(n301) );
  INVx1_ASAP7_75t_R U253 ( .A(n150), .Y(n302) );
  INVx1_ASAP7_75t_R U254 ( .A(n160), .Y(n303) );
  INVx1_ASAP7_75t_R U255 ( .A(b[4]), .Y(n304) );
  INVx1_ASAP7_75t_R U256 ( .A(n165), .Y(n305) );
  INVx1_ASAP7_75t_R U257 ( .A(n166), .Y(n306) );
  INVx1_ASAP7_75t_R U258 ( .A(b[3]), .Y(n307) );
  INVx1_ASAP7_75t_R U259 ( .A(b[2]), .Y(n308) );
  INVx1_ASAP7_75t_R U260 ( .A(b[0]), .Y(n309) );
  INVx1_ASAP7_75t_R U261 ( .A(a[7]), .Y(n310) );
  INVx1_ASAP7_75t_R U262 ( .A(a[6]), .Y(n311) );
  INVx1_ASAP7_75t_R U263 ( .A(a[5]), .Y(n312) );
  INVx1_ASAP7_75t_R U264 ( .A(a[4]), .Y(n313) );
  INVx1_ASAP7_75t_R U265 ( .A(a[3]), .Y(n314) );
  INVx1_ASAP7_75t_R U266 ( .A(a[2]), .Y(n315) );
  INVx1_ASAP7_75t_R U267 ( .A(a[1]), .Y(n316) );
  INVx1_ASAP7_75t_R U268 ( .A(a[0]), .Y(n317) );
  XOR2xp5_ASAP7_75t_R U269 ( .A(n318), .B(n319), .Y(product[9]) );
  XOR2xp5_ASAP7_75t_R U270 ( .A(n320), .B(n321), .Y(product[8]) );
  XOR2xp5_ASAP7_75t_R U271 ( .A(n324), .B(n325), .Y(product[6]) );
  XOR2xp5_ASAP7_75t_R U272 ( .A(n326), .B(n327), .Y(product[5]) );
  XOR2xp5_ASAP7_75t_R U273 ( .A(n328), .B(n329), .Y(product[4]) );
  XOR2xp5_ASAP7_75t_R U274 ( .A(n330), .B(n331), .Y(product[3]) );
  XOR2xp5_ASAP7_75t_R U275 ( .A(n332), .B(n333), .Y(product[2]) );
  XOR2xp5_ASAP7_75t_R U276 ( .A(n334), .B(n335), .Y(product[1]) );
  NAND2xp33_ASAP7_75t_R U277 ( .A(n336), .B(n337), .Y(product[15]) );
  NAND2xp33_ASAP7_75t_R U278 ( .A(n338), .B(n339), .Y(n337) );
  OR2x2_ASAP7_75t_R U279 ( .A(n340), .B(n57), .Y(n336) );
  XOR2xp5_ASAP7_75t_R U280 ( .A(n340), .B(n57), .Y(n338) );
  NAND2xp33_ASAP7_75t_R U281 ( .A(b[7]), .B(a[7]), .Y(n340) );
  NAND2xp33_ASAP7_75t_R U282 ( .A(n341), .B(n342), .Y(n339) );
  NAND2xp33_ASAP7_75t_R U283 ( .A(n343), .B(n344), .Y(n342) );
  NAND2xp33_ASAP7_75t_R U284 ( .A(n61), .B(n286), .Y(n341) );
  XOR2xp5_ASAP7_75t_R U285 ( .A(n344), .B(n343), .Y(product[13]) );
  XOR2xp5_ASAP7_75t_R U286 ( .A(n286), .B(n61), .Y(n343) );
  NAND2xp33_ASAP7_75t_R U287 ( .A(n345), .B(n346), .Y(n344) );
  NAND2xp33_ASAP7_75t_R U288 ( .A(n347), .B(n348), .Y(n346) );
  NAND2xp33_ASAP7_75t_R U289 ( .A(n62), .B(n289), .Y(n345) );
  XOR2xp5_ASAP7_75t_R U290 ( .A(n348), .B(n347), .Y(product[12]) );
  XOR2xp5_ASAP7_75t_R U291 ( .A(n62), .B(n289), .Y(n347) );
  NAND2xp33_ASAP7_75t_R U292 ( .A(n349), .B(n350), .Y(n348) );
  NAND2xp33_ASAP7_75t_R U293 ( .A(n351), .B(n352), .Y(n350) );
  OR2x2_ASAP7_75t_R U294 ( .A(n69), .B(n78), .Y(n349) );
  XOR2xp5_ASAP7_75t_R U295 ( .A(n352), .B(n351), .Y(product[11]) );
  XOR2xp5_ASAP7_75t_R U296 ( .A(n69), .B(n78), .Y(n351) );
  NAND2xp33_ASAP7_75t_R U297 ( .A(n353), .B(n354), .Y(n352) );
  NAND2xp33_ASAP7_75t_R U298 ( .A(n355), .B(n356), .Y(n354) );
  OR2x2_ASAP7_75t_R U299 ( .A(n79), .B(n90), .Y(n353) );
  XOR2xp5_ASAP7_75t_R U300 ( .A(n356), .B(n355), .Y(product[10]) );
  XOR2xp5_ASAP7_75t_R U301 ( .A(n79), .B(n90), .Y(n355) );
  NAND2xp33_ASAP7_75t_R U302 ( .A(n357), .B(n358), .Y(n356) );
  NAND2xp33_ASAP7_75t_R U303 ( .A(n319), .B(n318), .Y(n358) );
  NAND2xp33_ASAP7_75t_R U304 ( .A(n359), .B(n360), .Y(n318) );
  NAND2xp33_ASAP7_75t_R U305 ( .A(n321), .B(n320), .Y(n360) );
  NAND2xp33_ASAP7_75t_R U306 ( .A(n361), .B(n362), .Y(n320) );
  NAND2xp33_ASAP7_75t_R U307 ( .A(n323), .B(n322), .Y(n362) );
  NAND2xp33_ASAP7_75t_R U308 ( .A(n325), .B(n324), .Y(n364) );
  NAND2xp33_ASAP7_75t_R U309 ( .A(n365), .B(n366), .Y(n324) );
  NAND2xp33_ASAP7_75t_R U310 ( .A(n327), .B(n326), .Y(n366) );
  NAND2xp33_ASAP7_75t_R U311 ( .A(n367), .B(n368), .Y(n326) );
  NAND2xp33_ASAP7_75t_R U312 ( .A(n329), .B(n328), .Y(n368) );
  NAND2xp33_ASAP7_75t_R U313 ( .A(n369), .B(n370), .Y(n328) );
  NAND2xp33_ASAP7_75t_R U314 ( .A(n331), .B(n330), .Y(n370) );
  NAND2xp33_ASAP7_75t_R U315 ( .A(n371), .B(n372), .Y(n330) );
  NAND2xp33_ASAP7_75t_R U316 ( .A(n332), .B(n333), .Y(n372) );
  XOR2xp5_ASAP7_75t_R U317 ( .A(n373), .B(n374), .Y(n333) );
  NOR2xp33_ASAP7_75t_R U318 ( .A(n334), .B(n335), .Y(n332) );
  NAND2xp33_ASAP7_75t_R U319 ( .A(b[1]), .B(a[0]), .Y(n335) );
  NAND2xp33_ASAP7_75t_R U320 ( .A(b[0]), .B(a[1]), .Y(n334) );
  NAND2xp33_ASAP7_75t_R U321 ( .A(n373), .B(n374), .Y(n371) );
  XOR2xp5_ASAP7_75t_R U322 ( .A(n375), .B(n376), .Y(n374) );
  NOR2xp33_ASAP7_75t_R U323 ( .A(n315), .B(n309), .Y(n373) );
  XOR2xp5_ASAP7_75t_R U324 ( .A(n306), .B(n377), .Y(n331) );
  NAND2xp33_ASAP7_75t_R U325 ( .A(n377), .B(n306), .Y(n369) );
  XOR2xp5_ASAP7_75t_R U326 ( .A(n378), .B(n379), .Y(n377) );
  XOR2xp5_ASAP7_75t_R U327 ( .A(n159), .B(n161), .Y(n329) );
  OR2x2_ASAP7_75t_R U328 ( .A(n159), .B(n161), .Y(n367) );
  XOR2xp5_ASAP7_75t_R U329 ( .A(n147), .B(n302), .Y(n327) );
  NAND2xp33_ASAP7_75t_R U330 ( .A(n147), .B(n302), .Y(n365) );
  XOR2xp5_ASAP7_75t_R U331 ( .A(n134), .B(n137), .Y(n325) );
  NAND2xp33_ASAP7_75t_R U332 ( .A(n134), .B(n137), .Y(n363) );
  XOR2xp5_ASAP7_75t_R U333 ( .A(n295), .B(n133), .Y(n323) );
  NAND2xp33_ASAP7_75t_R U334 ( .A(n133), .B(n295), .Y(n361) );
  XOR2xp5_ASAP7_75t_R U335 ( .A(n105), .B(n119), .Y(n321) );
  OR2x2_ASAP7_75t_R U336 ( .A(n105), .B(n119), .Y(n359) );
  XOR2xp5_ASAP7_75t_R U337 ( .A(n104), .B(n91), .Y(n319) );
  OR2x2_ASAP7_75t_R U338 ( .A(n104), .B(n91), .Y(n357) );
  NOR2xp33_ASAP7_75t_R U339 ( .A(n309), .B(n317), .Y(product[0]) );
  NAND2xp33_ASAP7_75t_R U340 ( .A(n380), .B(n381), .Y(n95) );
  NAND2xp33_ASAP7_75t_R U341 ( .A(b[6]), .B(a[5]), .Y(n70) );
  NOR2xp33_ASAP7_75t_R U342 ( .A(n317), .B(n307), .Y(n231) );
  NOR2xp33_ASAP7_75t_R U343 ( .A(n317), .B(n304), .Y(n230) );
  NOR2xp33_ASAP7_75t_R U344 ( .A(n317), .B(n301), .Y(n229) );
  NOR2xp33_ASAP7_75t_R U345 ( .A(n317), .B(n299), .Y(n228) );
  NOR2xp33_ASAP7_75t_R U346 ( .A(n317), .B(n296), .Y(n227) );
  NOR2xp33_ASAP7_75t_R U347 ( .A(n316), .B(n308), .Y(n224) );
  NOR2xp33_ASAP7_75t_R U348 ( .A(n316), .B(n307), .Y(n223) );
  NOR2xp33_ASAP7_75t_R U349 ( .A(n316), .B(n304), .Y(n222) );
  NOR2xp33_ASAP7_75t_R U350 ( .A(n316), .B(n301), .Y(n221) );
  NOR2xp33_ASAP7_75t_R U351 ( .A(n316), .B(n299), .Y(n220) );
  NOR2xp33_ASAP7_75t_R U352 ( .A(n316), .B(n296), .Y(n219) );
  NOR2xp33_ASAP7_75t_R U353 ( .A(n315), .B(n308), .Y(n216) );
  NOR2xp33_ASAP7_75t_R U354 ( .A(n315), .B(n307), .Y(n215) );
  NOR2xp33_ASAP7_75t_R U355 ( .A(n315), .B(n304), .Y(n214) );
  NOR2xp33_ASAP7_75t_R U356 ( .A(n315), .B(n301), .Y(n213) );
  NOR2xp33_ASAP7_75t_R U357 ( .A(n315), .B(n299), .Y(n212) );
  NOR2xp33_ASAP7_75t_R U358 ( .A(n315), .B(n296), .Y(n211) );
  NOR2xp33_ASAP7_75t_R U359 ( .A(n308), .B(n314), .Y(n208) );
  NOR2xp33_ASAP7_75t_R U360 ( .A(n314), .B(n307), .Y(n207) );
  NOR2xp33_ASAP7_75t_R U361 ( .A(n314), .B(n304), .Y(n206) );
  NOR2xp33_ASAP7_75t_R U362 ( .A(n314), .B(n301), .Y(n205) );
  NOR2xp33_ASAP7_75t_R U363 ( .A(n314), .B(n299), .Y(n204) );
  NOR2xp33_ASAP7_75t_R U364 ( .A(n314), .B(n296), .Y(n203) );
  NOR2xp33_ASAP7_75t_R U365 ( .A(n308), .B(n313), .Y(n200) );
  NOR2xp33_ASAP7_75t_R U366 ( .A(n307), .B(n313), .Y(n199) );
  NOR2xp33_ASAP7_75t_R U367 ( .A(n304), .B(n313), .Y(n198) );
  NOR2xp33_ASAP7_75t_R U368 ( .A(n301), .B(n313), .Y(n197) );
  NOR2xp33_ASAP7_75t_R U369 ( .A(n299), .B(n313), .Y(n196) );
  NOR2xp33_ASAP7_75t_R U370 ( .A(n296), .B(n313), .Y(n195) );
  NOR2xp33_ASAP7_75t_R U371 ( .A(n308), .B(n312), .Y(n192) );
  NOR2xp33_ASAP7_75t_R U372 ( .A(n312), .B(n307), .Y(n191) );
  NOR2xp33_ASAP7_75t_R U373 ( .A(n312), .B(n304), .Y(n190) );
  NOR2xp33_ASAP7_75t_R U374 ( .A(n312), .B(n301), .Y(n189) );
  NOR2xp33_ASAP7_75t_R U375 ( .A(n296), .B(n312), .Y(n187) );
  NOR2xp33_ASAP7_75t_R U376 ( .A(n311), .B(n307), .Y(n183) );
  NOR2xp33_ASAP7_75t_R U377 ( .A(n311), .B(n304), .Y(n182) );
  NOR2xp33_ASAP7_75t_R U378 ( .A(n311), .B(n301), .Y(n181) );
  NOR2xp33_ASAP7_75t_R U379 ( .A(n311), .B(n299), .Y(n180) );
  NOR2xp33_ASAP7_75t_R U380 ( .A(n296), .B(n311), .Y(n179) );
  NOR2xp33_ASAP7_75t_R U381 ( .A(n308), .B(n310), .Y(n176) );
  NOR2xp33_ASAP7_75t_R U382 ( .A(n310), .B(n307), .Y(n175) );
  NOR2xp33_ASAP7_75t_R U383 ( .A(n310), .B(n304), .Y(n174) );
  NOR2xp33_ASAP7_75t_R U384 ( .A(n310), .B(n301), .Y(n173) );
  NOR2xp33_ASAP7_75t_R U385 ( .A(n310), .B(n299), .Y(n172) );
  NOR2xp33_ASAP7_75t_R U386 ( .A(n376), .B(n375), .Y(n169) );
  NAND2xp33_ASAP7_75t_R U387 ( .A(b[2]), .B(a[0]), .Y(n376) );
  NOR2xp33_ASAP7_75t_R U388 ( .A(n379), .B(n378), .Y(n167) );
  NAND2xp33_ASAP7_75t_R U389 ( .A(a[3]), .B(b[0]), .Y(n378) );
  NAND2xp33_ASAP7_75t_R U390 ( .A(a[2]), .B(b[1]), .Y(n379) );
  XOR2xp5_ASAP7_75t_R U391 ( .A(n382), .B(n383), .Y(n163) );
  NOR2xp33_ASAP7_75t_R U392 ( .A(n382), .B(n383), .Y(n162) );
  NAND2xp33_ASAP7_75t_R U393 ( .A(a[4]), .B(b[0]), .Y(n383) );
  NAND2xp33_ASAP7_75t_R U394 ( .A(a[3]), .B(b[1]), .Y(n382) );
  NOR2xp33_ASAP7_75t_R U395 ( .A(n384), .B(n385), .Y(n153) );
  XNOR2xp5_ASAP7_75t_R U396 ( .A(n384), .B(n385), .Y(n145) );
  NAND2xp33_ASAP7_75t_R U397 ( .A(a[4]), .B(b[1]), .Y(n385) );
  NAND2xp33_ASAP7_75t_R U398 ( .A(a[5]), .B(b[0]), .Y(n384) );
  NOR2xp33_ASAP7_75t_R U399 ( .A(n386), .B(n387), .Y(n142) );
  XNOR2xp5_ASAP7_75t_R U400 ( .A(n386), .B(n387), .Y(n135) );
  NAND2xp33_ASAP7_75t_R U401 ( .A(a[5]), .B(b[1]), .Y(n387) );
  NAND2xp33_ASAP7_75t_R U402 ( .A(a[6]), .B(b[0]), .Y(n386) );
  XOR2xp5_ASAP7_75t_R U403 ( .A(n388), .B(n389), .Y(n131) );
  NOR2xp33_ASAP7_75t_R U404 ( .A(n388), .B(n389), .Y(n130) );
  NAND2xp33_ASAP7_75t_R U405 ( .A(a[7]), .B(b[0]), .Y(n389) );
  NAND2xp33_ASAP7_75t_R U406 ( .A(a[6]), .B(b[1]), .Y(n388) );
  XNOR2xp5_ASAP7_75t_R U407 ( .A(n381), .B(n380), .Y(n108) );
  NOR2xp33_ASAP7_75t_R U408 ( .A(n311), .B(n308), .Y(n380) );
  AND2x2_ASAP7_75t_R U409 ( .A(a[7]), .B(b[1]), .Y(n381) );
endmodule


module Convolution_DW_mult_uns_4 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n57, n58, n61, n62, n63, n64, n68, n69, n70, n71, n72, n73, n74, n78,
         n79, n81, n82, n84, n85, n86, n87, n90, n91, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n119, n120, n121, n122, n124, n125, n126, n127,
         n128, n129, n130, n131, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n145, n146, n147, n149, n150, n151, n152, n153,
         n158, n159, n160, n161, n162, n163, n165, n166, n167, n169, n172,
         n173, n174, n175, n176, n179, n180, n181, n182, n183, n187, n189,
         n190, n191, n192, n195, n196, n197, n198, n199, n200, n203, n204,
         n205, n206, n207, n208, n211, n212, n213, n214, n215, n216, n219,
         n220, n221, n222, n223, n224, n227, n228, n229, n230, n231, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389;

  FAx1_ASAP7_75t_R U71 ( .A(n172), .B(n179), .CI(n287), .CON(n57), .SN(n58) );
  FAx1_ASAP7_75t_R U74 ( .A(n64), .B(n73), .CI(n288), .CON(n61), .SN(n62) );
  FAx1_ASAP7_75t_R U76 ( .A(n173), .B(n187), .CI(n180), .CON(n63), .SN(n64) );
  FAx1_ASAP7_75t_R U79 ( .A(n81), .B(n290), .CI(n72), .CON(n68), .SN(n69) );
  FAx1_ASAP7_75t_R U81 ( .A(n86), .B(n70), .CI(n74), .CON(n71), .SN(n72) );
  FAx1_ASAP7_75t_R U83 ( .A(n174), .B(n195), .CI(n181), .CON(n73), .SN(n74) );
  FAx1_ASAP7_75t_R U86 ( .A(n93), .B(n291), .CI(n82), .CON(n78), .SN(n79) );
  FAx1_ASAP7_75t_R U88 ( .A(n87), .B(n98), .CI(n293), .CON(n81), .SN(n82) );
  FAx1_ASAP7_75t_R U90 ( .A(n189), .B(n196), .CI(n292), .CON(n84), .SN(n85) );
  FAx1_ASAP7_75t_R U92 ( .A(n175), .B(n203), .CI(n182), .CON(n86), .SN(n87) );
  FAx1_ASAP7_75t_R U95 ( .A(n106), .B(n97), .CI(n94), .CON(n90), .SN(n91) );
  FAx1_ASAP7_75t_R U96 ( .A(n101), .B(n99), .CI(n294), .CON(n93), .SN(n94) );
  FAx1_ASAP7_75t_R U98 ( .A(n113), .B(n95), .CI(n111), .CON(n96), .SN(n97) );
  FAx1_ASAP7_75t_R U100 ( .A(n190), .B(n204), .CI(n197), .CON(n98), .SN(n99)
         );
  FAx1_ASAP7_75t_R U101 ( .A(n176), .B(n211), .CI(n183), .CON(n100), .SN(n101)
         );
  FAx1_ASAP7_75t_R U104 ( .A(n110), .B(n121), .CI(n107), .CON(n104), .SN(n105)
         );
  FAx1_ASAP7_75t_R U105 ( .A(n112), .B(n114), .CI(n124), .CON(n106), .SN(n107)
         );
  FAx1_ASAP7_75t_R U106 ( .A(n126), .B(n128), .CI(n108), .CON(n109), .SN(n110)
         );
  FAx1_ASAP7_75t_R U108 ( .A(n205), .B(n212), .CI(n130), .CON(n111), .SN(n112)
         );
  FAx1_ASAP7_75t_R U109 ( .A(n191), .B(n219), .CI(n198), .CON(n113), .SN(n114)
         );
  FAx1_ASAP7_75t_R U113 ( .A(n297), .B(n136), .CI(n122), .CON(n119), .SN(n120)
         );
  FAx1_ASAP7_75t_R U115 ( .A(n127), .B(n138), .CI(n129), .CON(n121), .SN(n122)
         );
  FAx1_ASAP7_75t_R U116 ( .A(n298), .B(n142), .CI(n131), .CON(n124), .SN(n125)
         );
  FAx1_ASAP7_75t_R U118 ( .A(n213), .B(n206), .CI(n220), .CON(n126), .SN(n127)
         );
  FAx1_ASAP7_75t_R U119 ( .A(n192), .B(n227), .CI(n199), .CON(n128), .SN(n129)
         );
  FAx1_ASAP7_75t_R U122 ( .A(n139), .B(n149), .CI(n300), .CON(n133), .SN(n134)
         );
  FAx1_ASAP7_75t_R U124 ( .A(n135), .B(n151), .CI(n141), .CON(n136), .SN(n137)
         );
  FAx1_ASAP7_75t_R U126 ( .A(n214), .B(n221), .CI(n153), .CON(n138), .SN(n139)
         );
  FAx1_ASAP7_75t_R U127 ( .A(n200), .B(n228), .CI(n207), .CON(n140), .SN(n141)
         );
  FAx1_ASAP7_75t_R U131 ( .A(n152), .B(n145), .CI(n158), .CON(n146), .SN(n147)
         );
  FAx1_ASAP7_75t_R U133 ( .A(n162), .B(n222), .CI(n303), .CON(n149), .SN(n150)
         );
  FAx1_ASAP7_75t_R U135 ( .A(n208), .B(n229), .CI(n215), .CON(n151), .SN(n152)
         );
  FAx1_ASAP7_75t_R U140 ( .A(n163), .B(n167), .CI(n305), .CON(n158), .SN(n159)
         );
  FAx1_ASAP7_75t_R U142 ( .A(n216), .B(n230), .CI(n223), .CON(n160), .SN(n161)
         );
  FAx1_ASAP7_75t_R U146 ( .A(n224), .B(n231), .CI(n169), .CON(n165), .SN(n166)
         );
  NAND2xp5_ASAP7_75t_R U233 ( .A(b[1]), .B(a[1]), .Y(n375) );
  NAND2xp5_ASAP7_75t_R U234 ( .A(n345), .B(n346), .Y(n344) );
  NAND2xp5_ASAP7_75t_R U235 ( .A(n341), .B(n342), .Y(n339) );
  INVx1_ASAP7_75t_R U236 ( .A(n58), .Y(n286) );
  INVx1_ASAP7_75t_R U237 ( .A(n63), .Y(n287) );
  INVx1_ASAP7_75t_R U238 ( .A(n71), .Y(n288) );
  INVx1_ASAP7_75t_R U239 ( .A(n68), .Y(n289) );
  INVx1_ASAP7_75t_R U240 ( .A(n84), .Y(n290) );
  INVx1_ASAP7_75t_R U241 ( .A(n85), .Y(n291) );
  INVx1_ASAP7_75t_R U242 ( .A(n100), .Y(n292) );
  INVx1_ASAP7_75t_R U243 ( .A(n96), .Y(n293) );
  INVx1_ASAP7_75t_R U244 ( .A(n109), .Y(n294) );
  INVx1_ASAP7_75t_R U245 ( .A(n120), .Y(n295) );
  INVx1_ASAP7_75t_R U246 ( .A(b[7]), .Y(n296) );
  INVx1_ASAP7_75t_R U247 ( .A(n125), .Y(n297) );
  INVx1_ASAP7_75t_R U248 ( .A(n140), .Y(n298) );
  INVx1_ASAP7_75t_R U249 ( .A(b[6]), .Y(n299) );
  INVx1_ASAP7_75t_R U250 ( .A(n146), .Y(n300) );
  INVx1_ASAP7_75t_R U251 ( .A(b[5]), .Y(n301) );
  INVx1_ASAP7_75t_R U252 ( .A(n150), .Y(n302) );
  INVx1_ASAP7_75t_R U253 ( .A(n160), .Y(n303) );
  INVx1_ASAP7_75t_R U254 ( .A(b[4]), .Y(n304) );
  INVx1_ASAP7_75t_R U255 ( .A(n165), .Y(n305) );
  INVx1_ASAP7_75t_R U256 ( .A(n166), .Y(n306) );
  INVx1_ASAP7_75t_R U257 ( .A(b[3]), .Y(n307) );
  INVx1_ASAP7_75t_R U258 ( .A(b[2]), .Y(n308) );
  INVx1_ASAP7_75t_R U259 ( .A(b[0]), .Y(n309) );
  INVx1_ASAP7_75t_R U260 ( .A(a[7]), .Y(n310) );
  INVx1_ASAP7_75t_R U261 ( .A(a[6]), .Y(n311) );
  INVx1_ASAP7_75t_R U262 ( .A(a[5]), .Y(n312) );
  INVx1_ASAP7_75t_R U263 ( .A(a[4]), .Y(n313) );
  INVx1_ASAP7_75t_R U264 ( .A(a[3]), .Y(n314) );
  INVx1_ASAP7_75t_R U265 ( .A(a[2]), .Y(n315) );
  INVx1_ASAP7_75t_R U266 ( .A(a[1]), .Y(n316) );
  INVx1_ASAP7_75t_R U267 ( .A(a[0]), .Y(n317) );
  XOR2xp5_ASAP7_75t_R U268 ( .A(n318), .B(n319), .Y(product[9]) );
  XOR2xp5_ASAP7_75t_R U269 ( .A(n320), .B(n321), .Y(product[8]) );
  XOR2xp5_ASAP7_75t_R U270 ( .A(n322), .B(n323), .Y(product[7]) );
  XOR2xp5_ASAP7_75t_R U271 ( .A(n324), .B(n325), .Y(product[6]) );
  XOR2xp5_ASAP7_75t_R U272 ( .A(n326), .B(n327), .Y(product[5]) );
  XOR2xp5_ASAP7_75t_R U273 ( .A(n328), .B(n329), .Y(product[4]) );
  XOR2xp5_ASAP7_75t_R U274 ( .A(n330), .B(n331), .Y(product[3]) );
  XOR2xp5_ASAP7_75t_R U275 ( .A(n332), .B(n333), .Y(product[2]) );
  XOR2xp5_ASAP7_75t_R U276 ( .A(n334), .B(n335), .Y(product[1]) );
  NAND2xp33_ASAP7_75t_R U277 ( .A(n336), .B(n337), .Y(product[15]) );
  NAND2xp33_ASAP7_75t_R U278 ( .A(n338), .B(n339), .Y(n337) );
  OR2x2_ASAP7_75t_R U279 ( .A(n340), .B(n57), .Y(n336) );
  XOR2xp5_ASAP7_75t_R U280 ( .A(n339), .B(n338), .Y(product[14]) );
  XOR2xp5_ASAP7_75t_R U281 ( .A(n340), .B(n57), .Y(n338) );
  NAND2xp33_ASAP7_75t_R U282 ( .A(b[7]), .B(a[7]), .Y(n340) );
  NAND2xp33_ASAP7_75t_R U283 ( .A(n343), .B(n344), .Y(n342) );
  NAND2xp33_ASAP7_75t_R U284 ( .A(n61), .B(n286), .Y(n341) );
  XOR2xp5_ASAP7_75t_R U285 ( .A(n344), .B(n343), .Y(product[13]) );
  XOR2xp5_ASAP7_75t_R U286 ( .A(n286), .B(n61), .Y(n343) );
  NAND2xp33_ASAP7_75t_R U287 ( .A(n347), .B(n348), .Y(n346) );
  NAND2xp33_ASAP7_75t_R U288 ( .A(n62), .B(n289), .Y(n345) );
  XOR2xp5_ASAP7_75t_R U289 ( .A(n348), .B(n347), .Y(product[12]) );
  XOR2xp5_ASAP7_75t_R U290 ( .A(n62), .B(n289), .Y(n347) );
  NAND2xp33_ASAP7_75t_R U291 ( .A(n349), .B(n350), .Y(n348) );
  NAND2xp33_ASAP7_75t_R U292 ( .A(n351), .B(n352), .Y(n350) );
  OR2x2_ASAP7_75t_R U293 ( .A(n69), .B(n78), .Y(n349) );
  XOR2xp5_ASAP7_75t_R U294 ( .A(n352), .B(n351), .Y(product[11]) );
  XOR2xp5_ASAP7_75t_R U295 ( .A(n69), .B(n78), .Y(n351) );
  NAND2xp33_ASAP7_75t_R U296 ( .A(n353), .B(n354), .Y(n352) );
  NAND2xp33_ASAP7_75t_R U297 ( .A(n355), .B(n356), .Y(n354) );
  OR2x2_ASAP7_75t_R U298 ( .A(n79), .B(n90), .Y(n353) );
  XOR2xp5_ASAP7_75t_R U299 ( .A(n356), .B(n355), .Y(product[10]) );
  XOR2xp5_ASAP7_75t_R U300 ( .A(n79), .B(n90), .Y(n355) );
  NAND2xp33_ASAP7_75t_R U301 ( .A(n357), .B(n358), .Y(n356) );
  NAND2xp33_ASAP7_75t_R U302 ( .A(n319), .B(n318), .Y(n358) );
  NAND2xp33_ASAP7_75t_R U303 ( .A(n359), .B(n360), .Y(n318) );
  NAND2xp33_ASAP7_75t_R U304 ( .A(n321), .B(n320), .Y(n360) );
  NAND2xp33_ASAP7_75t_R U305 ( .A(n361), .B(n362), .Y(n320) );
  NAND2xp33_ASAP7_75t_R U306 ( .A(n323), .B(n322), .Y(n362) );
  NAND2xp33_ASAP7_75t_R U307 ( .A(n363), .B(n364), .Y(n322) );
  NAND2xp33_ASAP7_75t_R U308 ( .A(n325), .B(n324), .Y(n364) );
  NAND2xp33_ASAP7_75t_R U309 ( .A(n365), .B(n366), .Y(n324) );
  NAND2xp33_ASAP7_75t_R U310 ( .A(n327), .B(n326), .Y(n366) );
  NAND2xp33_ASAP7_75t_R U311 ( .A(n367), .B(n368), .Y(n326) );
  NAND2xp33_ASAP7_75t_R U312 ( .A(n329), .B(n328), .Y(n368) );
  NAND2xp33_ASAP7_75t_R U313 ( .A(n369), .B(n370), .Y(n328) );
  NAND2xp33_ASAP7_75t_R U314 ( .A(n331), .B(n330), .Y(n370) );
  NAND2xp33_ASAP7_75t_R U315 ( .A(n371), .B(n372), .Y(n330) );
  NAND2xp33_ASAP7_75t_R U316 ( .A(n332), .B(n333), .Y(n372) );
  XOR2xp5_ASAP7_75t_R U317 ( .A(n373), .B(n374), .Y(n333) );
  NOR2xp33_ASAP7_75t_R U318 ( .A(n334), .B(n335), .Y(n332) );
  NAND2xp33_ASAP7_75t_R U319 ( .A(b[1]), .B(a[0]), .Y(n335) );
  NAND2xp33_ASAP7_75t_R U320 ( .A(b[0]), .B(a[1]), .Y(n334) );
  NAND2xp33_ASAP7_75t_R U321 ( .A(n373), .B(n374), .Y(n371) );
  XOR2xp5_ASAP7_75t_R U322 ( .A(n375), .B(n376), .Y(n374) );
  NOR2xp33_ASAP7_75t_R U323 ( .A(n315), .B(n309), .Y(n373) );
  XOR2xp5_ASAP7_75t_R U324 ( .A(n306), .B(n377), .Y(n331) );
  NAND2xp33_ASAP7_75t_R U325 ( .A(n377), .B(n306), .Y(n369) );
  XOR2xp5_ASAP7_75t_R U326 ( .A(n378), .B(n379), .Y(n377) );
  XOR2xp5_ASAP7_75t_R U327 ( .A(n159), .B(n161), .Y(n329) );
  OR2x2_ASAP7_75t_R U328 ( .A(n159), .B(n161), .Y(n367) );
  XOR2xp5_ASAP7_75t_R U329 ( .A(n147), .B(n302), .Y(n327) );
  NAND2xp33_ASAP7_75t_R U330 ( .A(n147), .B(n302), .Y(n365) );
  XOR2xp5_ASAP7_75t_R U331 ( .A(n134), .B(n137), .Y(n325) );
  NAND2xp33_ASAP7_75t_R U332 ( .A(n134), .B(n137), .Y(n363) );
  XOR2xp5_ASAP7_75t_R U333 ( .A(n295), .B(n133), .Y(n323) );
  NAND2xp33_ASAP7_75t_R U334 ( .A(n133), .B(n295), .Y(n361) );
  XOR2xp5_ASAP7_75t_R U335 ( .A(n105), .B(n119), .Y(n321) );
  OR2x2_ASAP7_75t_R U336 ( .A(n105), .B(n119), .Y(n359) );
  XOR2xp5_ASAP7_75t_R U337 ( .A(n104), .B(n91), .Y(n319) );
  OR2x2_ASAP7_75t_R U338 ( .A(n104), .B(n91), .Y(n357) );
  NOR2xp33_ASAP7_75t_R U339 ( .A(n309), .B(n317), .Y(product[0]) );
  NAND2xp33_ASAP7_75t_R U340 ( .A(n380), .B(n381), .Y(n95) );
  NAND2xp33_ASAP7_75t_R U341 ( .A(b[6]), .B(a[5]), .Y(n70) );
  NOR2xp33_ASAP7_75t_R U342 ( .A(n317), .B(n307), .Y(n231) );
  NOR2xp33_ASAP7_75t_R U343 ( .A(n317), .B(n304), .Y(n230) );
  NOR2xp33_ASAP7_75t_R U344 ( .A(n317), .B(n301), .Y(n229) );
  NOR2xp33_ASAP7_75t_R U345 ( .A(n317), .B(n299), .Y(n228) );
  NOR2xp33_ASAP7_75t_R U346 ( .A(n317), .B(n296), .Y(n227) );
  NOR2xp33_ASAP7_75t_R U347 ( .A(n316), .B(n308), .Y(n224) );
  NOR2xp33_ASAP7_75t_R U348 ( .A(n316), .B(n307), .Y(n223) );
  NOR2xp33_ASAP7_75t_R U349 ( .A(n316), .B(n304), .Y(n222) );
  NOR2xp33_ASAP7_75t_R U350 ( .A(n316), .B(n301), .Y(n221) );
  NOR2xp33_ASAP7_75t_R U351 ( .A(n316), .B(n299), .Y(n220) );
  NOR2xp33_ASAP7_75t_R U352 ( .A(n316), .B(n296), .Y(n219) );
  NOR2xp33_ASAP7_75t_R U353 ( .A(n315), .B(n308), .Y(n216) );
  NOR2xp33_ASAP7_75t_R U354 ( .A(n315), .B(n307), .Y(n215) );
  NOR2xp33_ASAP7_75t_R U355 ( .A(n315), .B(n304), .Y(n214) );
  NOR2xp33_ASAP7_75t_R U356 ( .A(n315), .B(n301), .Y(n213) );
  NOR2xp33_ASAP7_75t_R U357 ( .A(n315), .B(n299), .Y(n212) );
  NOR2xp33_ASAP7_75t_R U358 ( .A(n315), .B(n296), .Y(n211) );
  NOR2xp33_ASAP7_75t_R U359 ( .A(n308), .B(n314), .Y(n208) );
  NOR2xp33_ASAP7_75t_R U360 ( .A(n314), .B(n307), .Y(n207) );
  NOR2xp33_ASAP7_75t_R U361 ( .A(n314), .B(n304), .Y(n206) );
  NOR2xp33_ASAP7_75t_R U362 ( .A(n314), .B(n301), .Y(n205) );
  NOR2xp33_ASAP7_75t_R U363 ( .A(n314), .B(n299), .Y(n204) );
  NOR2xp33_ASAP7_75t_R U364 ( .A(n314), .B(n296), .Y(n203) );
  NOR2xp33_ASAP7_75t_R U365 ( .A(n308), .B(n313), .Y(n200) );
  NOR2xp33_ASAP7_75t_R U366 ( .A(n307), .B(n313), .Y(n199) );
  NOR2xp33_ASAP7_75t_R U367 ( .A(n304), .B(n313), .Y(n198) );
  NOR2xp33_ASAP7_75t_R U368 ( .A(n301), .B(n313), .Y(n197) );
  NOR2xp33_ASAP7_75t_R U369 ( .A(n299), .B(n313), .Y(n196) );
  NOR2xp33_ASAP7_75t_R U370 ( .A(n296), .B(n313), .Y(n195) );
  NOR2xp33_ASAP7_75t_R U371 ( .A(n308), .B(n312), .Y(n192) );
  NOR2xp33_ASAP7_75t_R U372 ( .A(n312), .B(n307), .Y(n191) );
  NOR2xp33_ASAP7_75t_R U373 ( .A(n312), .B(n304), .Y(n190) );
  NOR2xp33_ASAP7_75t_R U374 ( .A(n312), .B(n301), .Y(n189) );
  NOR2xp33_ASAP7_75t_R U375 ( .A(n296), .B(n312), .Y(n187) );
  NOR2xp33_ASAP7_75t_R U376 ( .A(n311), .B(n307), .Y(n183) );
  NOR2xp33_ASAP7_75t_R U377 ( .A(n311), .B(n304), .Y(n182) );
  NOR2xp33_ASAP7_75t_R U378 ( .A(n311), .B(n301), .Y(n181) );
  NOR2xp33_ASAP7_75t_R U379 ( .A(n311), .B(n299), .Y(n180) );
  NOR2xp33_ASAP7_75t_R U380 ( .A(n296), .B(n311), .Y(n179) );
  NOR2xp33_ASAP7_75t_R U381 ( .A(n308), .B(n310), .Y(n176) );
  NOR2xp33_ASAP7_75t_R U382 ( .A(n310), .B(n307), .Y(n175) );
  NOR2xp33_ASAP7_75t_R U383 ( .A(n310), .B(n304), .Y(n174) );
  NOR2xp33_ASAP7_75t_R U384 ( .A(n310), .B(n301), .Y(n173) );
  NOR2xp33_ASAP7_75t_R U385 ( .A(n310), .B(n299), .Y(n172) );
  NOR2xp33_ASAP7_75t_R U386 ( .A(n376), .B(n375), .Y(n169) );
  NAND2xp33_ASAP7_75t_R U387 ( .A(b[2]), .B(a[0]), .Y(n376) );
  NOR2xp33_ASAP7_75t_R U388 ( .A(n379), .B(n378), .Y(n167) );
  NAND2xp33_ASAP7_75t_R U389 ( .A(a[3]), .B(b[0]), .Y(n378) );
  NAND2xp33_ASAP7_75t_R U390 ( .A(a[2]), .B(b[1]), .Y(n379) );
  XOR2xp5_ASAP7_75t_R U391 ( .A(n382), .B(n383), .Y(n163) );
  NOR2xp33_ASAP7_75t_R U392 ( .A(n382), .B(n383), .Y(n162) );
  NAND2xp33_ASAP7_75t_R U393 ( .A(a[4]), .B(b[0]), .Y(n383) );
  NAND2xp33_ASAP7_75t_R U394 ( .A(a[3]), .B(b[1]), .Y(n382) );
  NOR2xp33_ASAP7_75t_R U395 ( .A(n384), .B(n385), .Y(n153) );
  XNOR2xp5_ASAP7_75t_R U396 ( .A(n384), .B(n385), .Y(n145) );
  NAND2xp33_ASAP7_75t_R U397 ( .A(a[4]), .B(b[1]), .Y(n385) );
  NAND2xp33_ASAP7_75t_R U398 ( .A(a[5]), .B(b[0]), .Y(n384) );
  NOR2xp33_ASAP7_75t_R U399 ( .A(n386), .B(n387), .Y(n142) );
  XNOR2xp5_ASAP7_75t_R U400 ( .A(n386), .B(n387), .Y(n135) );
  NAND2xp33_ASAP7_75t_R U401 ( .A(a[5]), .B(b[1]), .Y(n387) );
  NAND2xp33_ASAP7_75t_R U402 ( .A(a[6]), .B(b[0]), .Y(n386) );
  XOR2xp5_ASAP7_75t_R U403 ( .A(n388), .B(n389), .Y(n131) );
  NOR2xp33_ASAP7_75t_R U404 ( .A(n388), .B(n389), .Y(n130) );
  NAND2xp33_ASAP7_75t_R U405 ( .A(a[7]), .B(b[0]), .Y(n389) );
  NAND2xp33_ASAP7_75t_R U406 ( .A(a[6]), .B(b[1]), .Y(n388) );
  XNOR2xp5_ASAP7_75t_R U407 ( .A(n381), .B(n380), .Y(n108) );
  NOR2xp33_ASAP7_75t_R U408 ( .A(n311), .B(n308), .Y(n380) );
  AND2x2_ASAP7_75t_R U409 ( .A(a[7]), .B(b[1]), .Y(n381) );
endmodule


module Convolution_DW_mult_uns_5 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n57, n58, n61, n62, n63, n64, n68, n69, n70, n71, n72, n73, n74, n78,
         n79, n81, n82, n84, n85, n86, n87, n90, n91, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n119, n120, n121, n122, n124, n125, n126, n127,
         n128, n129, n130, n131, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n145, n146, n147, n149, n150, n151, n152, n153,
         n158, n159, n160, n161, n162, n163, n165, n166, n167, n169, n172,
         n173, n174, n175, n176, n179, n180, n181, n182, n183, n187, n189,
         n190, n191, n192, n195, n196, n197, n198, n199, n200, n203, n204,
         n205, n206, n207, n208, n211, n212, n213, n214, n215, n216, n219,
         n220, n221, n222, n223, n224, n227, n228, n229, n230, n231, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389;

  FAx1_ASAP7_75t_R U71 ( .A(n172), .B(n179), .CI(n287), .CON(n57), .SN(n58) );
  FAx1_ASAP7_75t_R U74 ( .A(n64), .B(n73), .CI(n288), .CON(n61), .SN(n62) );
  FAx1_ASAP7_75t_R U76 ( .A(n173), .B(n187), .CI(n180), .CON(n63), .SN(n64) );
  FAx1_ASAP7_75t_R U79 ( .A(n81), .B(n290), .CI(n72), .CON(n68), .SN(n69) );
  FAx1_ASAP7_75t_R U81 ( .A(n86), .B(n70), .CI(n74), .CON(n71), .SN(n72) );
  FAx1_ASAP7_75t_R U83 ( .A(n174), .B(n195), .CI(n181), .CON(n73), .SN(n74) );
  FAx1_ASAP7_75t_R U86 ( .A(n93), .B(n291), .CI(n82), .CON(n78), .SN(n79) );
  FAx1_ASAP7_75t_R U88 ( .A(n87), .B(n98), .CI(n293), .CON(n81), .SN(n82) );
  FAx1_ASAP7_75t_R U90 ( .A(n189), .B(n196), .CI(n292), .CON(n84), .SN(n85) );
  FAx1_ASAP7_75t_R U92 ( .A(n175), .B(n203), .CI(n182), .CON(n86), .SN(n87) );
  FAx1_ASAP7_75t_R U95 ( .A(n106), .B(n97), .CI(n94), .CON(n90), .SN(n91) );
  FAx1_ASAP7_75t_R U96 ( .A(n101), .B(n99), .CI(n294), .CON(n93), .SN(n94) );
  FAx1_ASAP7_75t_R U98 ( .A(n113), .B(n95), .CI(n111), .CON(n96), .SN(n97) );
  FAx1_ASAP7_75t_R U100 ( .A(n190), .B(n204), .CI(n197), .CON(n98), .SN(n99)
         );
  FAx1_ASAP7_75t_R U101 ( .A(n176), .B(n211), .CI(n183), .CON(n100), .SN(n101)
         );
  FAx1_ASAP7_75t_R U104 ( .A(n110), .B(n121), .CI(n107), .CON(n104), .SN(n105)
         );
  FAx1_ASAP7_75t_R U105 ( .A(n112), .B(n114), .CI(n124), .CON(n106), .SN(n107)
         );
  FAx1_ASAP7_75t_R U106 ( .A(n126), .B(n128), .CI(n108), .CON(n109), .SN(n110)
         );
  FAx1_ASAP7_75t_R U108 ( .A(n205), .B(n212), .CI(n130), .CON(n111), .SN(n112)
         );
  FAx1_ASAP7_75t_R U109 ( .A(n191), .B(n219), .CI(n198), .CON(n113), .SN(n114)
         );
  FAx1_ASAP7_75t_R U113 ( .A(n297), .B(n136), .CI(n122), .CON(n119), .SN(n120)
         );
  FAx1_ASAP7_75t_R U115 ( .A(n127), .B(n138), .CI(n129), .CON(n121), .SN(n122)
         );
  FAx1_ASAP7_75t_R U116 ( .A(n298), .B(n142), .CI(n131), .CON(n124), .SN(n125)
         );
  FAx1_ASAP7_75t_R U118 ( .A(n213), .B(n206), .CI(n220), .CON(n126), .SN(n127)
         );
  FAx1_ASAP7_75t_R U119 ( .A(n192), .B(n227), .CI(n199), .CON(n128), .SN(n129)
         );
  FAx1_ASAP7_75t_R U122 ( .A(n139), .B(n149), .CI(n300), .CON(n133), .SN(n134)
         );
  FAx1_ASAP7_75t_R U124 ( .A(n135), .B(n151), .CI(n141), .CON(n136), .SN(n137)
         );
  FAx1_ASAP7_75t_R U126 ( .A(n214), .B(n221), .CI(n153), .CON(n138), .SN(n139)
         );
  FAx1_ASAP7_75t_R U127 ( .A(n200), .B(n228), .CI(n207), .CON(n140), .SN(n141)
         );
  FAx1_ASAP7_75t_R U131 ( .A(n152), .B(n145), .CI(n158), .CON(n146), .SN(n147)
         );
  FAx1_ASAP7_75t_R U133 ( .A(n162), .B(n222), .CI(n303), .CON(n149), .SN(n150)
         );
  FAx1_ASAP7_75t_R U135 ( .A(n208), .B(n229), .CI(n215), .CON(n151), .SN(n152)
         );
  FAx1_ASAP7_75t_R U140 ( .A(n163), .B(n167), .CI(n305), .CON(n158), .SN(n159)
         );
  FAx1_ASAP7_75t_R U142 ( .A(n216), .B(n230), .CI(n223), .CON(n160), .SN(n161)
         );
  FAx1_ASAP7_75t_R U146 ( .A(n224), .B(n231), .CI(n169), .CON(n165), .SN(n166)
         );
  NAND2xp5_ASAP7_75t_R U233 ( .A(n341), .B(n342), .Y(n339) );
  NAND2xp5_ASAP7_75t_R U234 ( .A(n361), .B(n362), .Y(n320) );
  NAND2xp5_ASAP7_75t_R U235 ( .A(n345), .B(n346), .Y(n344) );
  NAND2xp5_ASAP7_75t_R U236 ( .A(n363), .B(n364), .Y(n322) );
  INVx1_ASAP7_75t_R U237 ( .A(n58), .Y(n286) );
  INVx1_ASAP7_75t_R U238 ( .A(n63), .Y(n287) );
  INVx1_ASAP7_75t_R U239 ( .A(n71), .Y(n288) );
  INVx1_ASAP7_75t_R U240 ( .A(n68), .Y(n289) );
  INVx1_ASAP7_75t_R U241 ( .A(n84), .Y(n290) );
  INVx1_ASAP7_75t_R U242 ( .A(n85), .Y(n291) );
  INVx1_ASAP7_75t_R U243 ( .A(n100), .Y(n292) );
  INVx1_ASAP7_75t_R U244 ( .A(n96), .Y(n293) );
  INVx1_ASAP7_75t_R U245 ( .A(n109), .Y(n294) );
  INVx1_ASAP7_75t_R U246 ( .A(n120), .Y(n295) );
  INVx1_ASAP7_75t_R U247 ( .A(b[7]), .Y(n296) );
  INVx1_ASAP7_75t_R U248 ( .A(n125), .Y(n297) );
  INVx1_ASAP7_75t_R U249 ( .A(n140), .Y(n298) );
  INVx1_ASAP7_75t_R U250 ( .A(b[6]), .Y(n299) );
  INVx1_ASAP7_75t_R U251 ( .A(n146), .Y(n300) );
  INVx1_ASAP7_75t_R U252 ( .A(b[5]), .Y(n301) );
  INVx1_ASAP7_75t_R U253 ( .A(n150), .Y(n302) );
  INVx1_ASAP7_75t_R U254 ( .A(n160), .Y(n303) );
  INVx1_ASAP7_75t_R U255 ( .A(b[4]), .Y(n304) );
  INVx1_ASAP7_75t_R U256 ( .A(n165), .Y(n305) );
  INVx1_ASAP7_75t_R U257 ( .A(n166), .Y(n306) );
  INVx1_ASAP7_75t_R U258 ( .A(b[3]), .Y(n307) );
  INVx1_ASAP7_75t_R U259 ( .A(b[2]), .Y(n308) );
  INVx1_ASAP7_75t_R U260 ( .A(b[0]), .Y(n309) );
  INVx1_ASAP7_75t_R U261 ( .A(a[7]), .Y(n310) );
  INVx1_ASAP7_75t_R U262 ( .A(a[6]), .Y(n311) );
  INVx1_ASAP7_75t_R U263 ( .A(a[5]), .Y(n312) );
  INVx1_ASAP7_75t_R U264 ( .A(a[4]), .Y(n313) );
  INVx1_ASAP7_75t_R U265 ( .A(a[3]), .Y(n314) );
  INVx1_ASAP7_75t_R U266 ( .A(a[2]), .Y(n315) );
  INVx1_ASAP7_75t_R U267 ( .A(a[1]), .Y(n316) );
  INVx1_ASAP7_75t_R U268 ( .A(a[0]), .Y(n317) );
  XOR2xp5_ASAP7_75t_R U269 ( .A(n318), .B(n319), .Y(product[9]) );
  XOR2xp5_ASAP7_75t_R U270 ( .A(n320), .B(n321), .Y(product[8]) );
  XOR2xp5_ASAP7_75t_R U271 ( .A(n322), .B(n323), .Y(product[7]) );
  XOR2xp5_ASAP7_75t_R U272 ( .A(n324), .B(n325), .Y(product[6]) );
  XOR2xp5_ASAP7_75t_R U273 ( .A(n326), .B(n327), .Y(product[5]) );
  XOR2xp5_ASAP7_75t_R U274 ( .A(n328), .B(n329), .Y(product[4]) );
  XOR2xp5_ASAP7_75t_R U275 ( .A(n330), .B(n331), .Y(product[3]) );
  XOR2xp5_ASAP7_75t_R U276 ( .A(n332), .B(n333), .Y(product[2]) );
  XOR2xp5_ASAP7_75t_R U277 ( .A(n334), .B(n335), .Y(product[1]) );
  NAND2xp33_ASAP7_75t_R U278 ( .A(n336), .B(n337), .Y(product[15]) );
  NAND2xp33_ASAP7_75t_R U279 ( .A(n338), .B(n339), .Y(n337) );
  OR2x2_ASAP7_75t_R U280 ( .A(n340), .B(n57), .Y(n336) );
  XOR2xp5_ASAP7_75t_R U281 ( .A(n339), .B(n338), .Y(product[14]) );
  XOR2xp5_ASAP7_75t_R U282 ( .A(n340), .B(n57), .Y(n338) );
  NAND2xp33_ASAP7_75t_R U283 ( .A(b[7]), .B(a[7]), .Y(n340) );
  NAND2xp33_ASAP7_75t_R U284 ( .A(n343), .B(n344), .Y(n342) );
  NAND2xp33_ASAP7_75t_R U285 ( .A(n61), .B(n286), .Y(n341) );
  XOR2xp5_ASAP7_75t_R U286 ( .A(n344), .B(n343), .Y(product[13]) );
  XOR2xp5_ASAP7_75t_R U287 ( .A(n286), .B(n61), .Y(n343) );
  NAND2xp33_ASAP7_75t_R U288 ( .A(n347), .B(n348), .Y(n346) );
  NAND2xp33_ASAP7_75t_R U289 ( .A(n62), .B(n289), .Y(n345) );
  XOR2xp5_ASAP7_75t_R U290 ( .A(n348), .B(n347), .Y(product[12]) );
  XOR2xp5_ASAP7_75t_R U291 ( .A(n62), .B(n289), .Y(n347) );
  NAND2xp33_ASAP7_75t_R U292 ( .A(n349), .B(n350), .Y(n348) );
  NAND2xp33_ASAP7_75t_R U293 ( .A(n351), .B(n352), .Y(n350) );
  OR2x2_ASAP7_75t_R U294 ( .A(n69), .B(n78), .Y(n349) );
  XOR2xp5_ASAP7_75t_R U295 ( .A(n352), .B(n351), .Y(product[11]) );
  XOR2xp5_ASAP7_75t_R U296 ( .A(n69), .B(n78), .Y(n351) );
  NAND2xp33_ASAP7_75t_R U297 ( .A(n353), .B(n354), .Y(n352) );
  NAND2xp33_ASAP7_75t_R U298 ( .A(n355), .B(n356), .Y(n354) );
  OR2x2_ASAP7_75t_R U299 ( .A(n79), .B(n90), .Y(n353) );
  XOR2xp5_ASAP7_75t_R U300 ( .A(n356), .B(n355), .Y(product[10]) );
  XOR2xp5_ASAP7_75t_R U301 ( .A(n79), .B(n90), .Y(n355) );
  NAND2xp33_ASAP7_75t_R U302 ( .A(n357), .B(n358), .Y(n356) );
  NAND2xp33_ASAP7_75t_R U303 ( .A(n319), .B(n318), .Y(n358) );
  NAND2xp33_ASAP7_75t_R U304 ( .A(n359), .B(n360), .Y(n318) );
  NAND2xp33_ASAP7_75t_R U305 ( .A(n321), .B(n320), .Y(n360) );
  NAND2xp33_ASAP7_75t_R U306 ( .A(n323), .B(n322), .Y(n362) );
  NAND2xp33_ASAP7_75t_R U307 ( .A(n325), .B(n324), .Y(n364) );
  NAND2xp33_ASAP7_75t_R U308 ( .A(n365), .B(n366), .Y(n324) );
  NAND2xp33_ASAP7_75t_R U309 ( .A(n327), .B(n326), .Y(n366) );
  NAND2xp33_ASAP7_75t_R U310 ( .A(n367), .B(n368), .Y(n326) );
  NAND2xp33_ASAP7_75t_R U311 ( .A(n329), .B(n328), .Y(n368) );
  NAND2xp33_ASAP7_75t_R U312 ( .A(n369), .B(n370), .Y(n328) );
  NAND2xp33_ASAP7_75t_R U313 ( .A(n331), .B(n330), .Y(n370) );
  NAND2xp33_ASAP7_75t_R U314 ( .A(n371), .B(n372), .Y(n330) );
  NAND2xp33_ASAP7_75t_R U315 ( .A(n332), .B(n333), .Y(n372) );
  XOR2xp5_ASAP7_75t_R U316 ( .A(n373), .B(n374), .Y(n333) );
  NOR2xp33_ASAP7_75t_R U317 ( .A(n334), .B(n335), .Y(n332) );
  NAND2xp33_ASAP7_75t_R U318 ( .A(b[1]), .B(a[0]), .Y(n335) );
  NAND2xp33_ASAP7_75t_R U319 ( .A(b[0]), .B(a[1]), .Y(n334) );
  NAND2xp33_ASAP7_75t_R U320 ( .A(n373), .B(n374), .Y(n371) );
  XOR2xp5_ASAP7_75t_R U321 ( .A(n375), .B(n376), .Y(n374) );
  NOR2xp33_ASAP7_75t_R U322 ( .A(n315), .B(n309), .Y(n373) );
  XOR2xp5_ASAP7_75t_R U323 ( .A(n306), .B(n377), .Y(n331) );
  NAND2xp33_ASAP7_75t_R U324 ( .A(n377), .B(n306), .Y(n369) );
  XOR2xp5_ASAP7_75t_R U325 ( .A(n378), .B(n379), .Y(n377) );
  XOR2xp5_ASAP7_75t_R U326 ( .A(n159), .B(n161), .Y(n329) );
  OR2x2_ASAP7_75t_R U327 ( .A(n159), .B(n161), .Y(n367) );
  XOR2xp5_ASAP7_75t_R U328 ( .A(n147), .B(n302), .Y(n327) );
  NAND2xp33_ASAP7_75t_R U329 ( .A(n147), .B(n302), .Y(n365) );
  XOR2xp5_ASAP7_75t_R U330 ( .A(n134), .B(n137), .Y(n325) );
  NAND2xp33_ASAP7_75t_R U331 ( .A(n134), .B(n137), .Y(n363) );
  XOR2xp5_ASAP7_75t_R U332 ( .A(n295), .B(n133), .Y(n323) );
  NAND2xp33_ASAP7_75t_R U333 ( .A(n133), .B(n295), .Y(n361) );
  XOR2xp5_ASAP7_75t_R U334 ( .A(n105), .B(n119), .Y(n321) );
  OR2x2_ASAP7_75t_R U335 ( .A(n105), .B(n119), .Y(n359) );
  XOR2xp5_ASAP7_75t_R U336 ( .A(n104), .B(n91), .Y(n319) );
  OR2x2_ASAP7_75t_R U337 ( .A(n104), .B(n91), .Y(n357) );
  NOR2xp33_ASAP7_75t_R U338 ( .A(n309), .B(n317), .Y(product[0]) );
  NAND2xp33_ASAP7_75t_R U339 ( .A(n380), .B(n381), .Y(n95) );
  NAND2xp33_ASAP7_75t_R U340 ( .A(b[6]), .B(a[5]), .Y(n70) );
  NOR2xp33_ASAP7_75t_R U341 ( .A(n317), .B(n307), .Y(n231) );
  NOR2xp33_ASAP7_75t_R U342 ( .A(n317), .B(n304), .Y(n230) );
  NOR2xp33_ASAP7_75t_R U343 ( .A(n317), .B(n301), .Y(n229) );
  NOR2xp33_ASAP7_75t_R U344 ( .A(n317), .B(n299), .Y(n228) );
  NOR2xp33_ASAP7_75t_R U345 ( .A(n317), .B(n296), .Y(n227) );
  NOR2xp33_ASAP7_75t_R U346 ( .A(n316), .B(n308), .Y(n224) );
  NOR2xp33_ASAP7_75t_R U347 ( .A(n316), .B(n307), .Y(n223) );
  NOR2xp33_ASAP7_75t_R U348 ( .A(n316), .B(n304), .Y(n222) );
  NOR2xp33_ASAP7_75t_R U349 ( .A(n316), .B(n301), .Y(n221) );
  NOR2xp33_ASAP7_75t_R U350 ( .A(n316), .B(n299), .Y(n220) );
  NOR2xp33_ASAP7_75t_R U351 ( .A(n316), .B(n296), .Y(n219) );
  NOR2xp33_ASAP7_75t_R U352 ( .A(n315), .B(n308), .Y(n216) );
  NOR2xp33_ASAP7_75t_R U353 ( .A(n315), .B(n307), .Y(n215) );
  NOR2xp33_ASAP7_75t_R U354 ( .A(n315), .B(n304), .Y(n214) );
  NOR2xp33_ASAP7_75t_R U355 ( .A(n315), .B(n301), .Y(n213) );
  NOR2xp33_ASAP7_75t_R U356 ( .A(n315), .B(n299), .Y(n212) );
  NOR2xp33_ASAP7_75t_R U357 ( .A(n315), .B(n296), .Y(n211) );
  NOR2xp33_ASAP7_75t_R U358 ( .A(n308), .B(n314), .Y(n208) );
  NOR2xp33_ASAP7_75t_R U359 ( .A(n314), .B(n307), .Y(n207) );
  NOR2xp33_ASAP7_75t_R U360 ( .A(n314), .B(n304), .Y(n206) );
  NOR2xp33_ASAP7_75t_R U361 ( .A(n314), .B(n301), .Y(n205) );
  NOR2xp33_ASAP7_75t_R U362 ( .A(n314), .B(n299), .Y(n204) );
  NOR2xp33_ASAP7_75t_R U363 ( .A(n314), .B(n296), .Y(n203) );
  NOR2xp33_ASAP7_75t_R U364 ( .A(n308), .B(n313), .Y(n200) );
  NOR2xp33_ASAP7_75t_R U365 ( .A(n307), .B(n313), .Y(n199) );
  NOR2xp33_ASAP7_75t_R U366 ( .A(n304), .B(n313), .Y(n198) );
  NOR2xp33_ASAP7_75t_R U367 ( .A(n301), .B(n313), .Y(n197) );
  NOR2xp33_ASAP7_75t_R U368 ( .A(n299), .B(n313), .Y(n196) );
  NOR2xp33_ASAP7_75t_R U369 ( .A(n296), .B(n313), .Y(n195) );
  NOR2xp33_ASAP7_75t_R U370 ( .A(n308), .B(n312), .Y(n192) );
  NOR2xp33_ASAP7_75t_R U371 ( .A(n312), .B(n307), .Y(n191) );
  NOR2xp33_ASAP7_75t_R U372 ( .A(n312), .B(n304), .Y(n190) );
  NOR2xp33_ASAP7_75t_R U373 ( .A(n312), .B(n301), .Y(n189) );
  NOR2xp33_ASAP7_75t_R U374 ( .A(n296), .B(n312), .Y(n187) );
  NOR2xp33_ASAP7_75t_R U375 ( .A(n311), .B(n307), .Y(n183) );
  NOR2xp33_ASAP7_75t_R U376 ( .A(n311), .B(n304), .Y(n182) );
  NOR2xp33_ASAP7_75t_R U377 ( .A(n311), .B(n301), .Y(n181) );
  NOR2xp33_ASAP7_75t_R U378 ( .A(n311), .B(n299), .Y(n180) );
  NOR2xp33_ASAP7_75t_R U379 ( .A(n296), .B(n311), .Y(n179) );
  NOR2xp33_ASAP7_75t_R U380 ( .A(n308), .B(n310), .Y(n176) );
  NOR2xp33_ASAP7_75t_R U381 ( .A(n310), .B(n307), .Y(n175) );
  NOR2xp33_ASAP7_75t_R U382 ( .A(n310), .B(n304), .Y(n174) );
  NOR2xp33_ASAP7_75t_R U383 ( .A(n310), .B(n301), .Y(n173) );
  NOR2xp33_ASAP7_75t_R U384 ( .A(n310), .B(n299), .Y(n172) );
  NOR2xp33_ASAP7_75t_R U385 ( .A(n376), .B(n375), .Y(n169) );
  NAND2xp33_ASAP7_75t_R U386 ( .A(b[1]), .B(a[1]), .Y(n375) );
  NAND2xp33_ASAP7_75t_R U387 ( .A(b[2]), .B(a[0]), .Y(n376) );
  NOR2xp33_ASAP7_75t_R U388 ( .A(n379), .B(n378), .Y(n167) );
  NAND2xp33_ASAP7_75t_R U389 ( .A(a[3]), .B(b[0]), .Y(n378) );
  NAND2xp33_ASAP7_75t_R U390 ( .A(a[2]), .B(b[1]), .Y(n379) );
  XOR2xp5_ASAP7_75t_R U391 ( .A(n382), .B(n383), .Y(n163) );
  NOR2xp33_ASAP7_75t_R U392 ( .A(n382), .B(n383), .Y(n162) );
  NAND2xp33_ASAP7_75t_R U393 ( .A(a[4]), .B(b[0]), .Y(n383) );
  NAND2xp33_ASAP7_75t_R U394 ( .A(a[3]), .B(b[1]), .Y(n382) );
  NOR2xp33_ASAP7_75t_R U395 ( .A(n384), .B(n385), .Y(n153) );
  XNOR2xp5_ASAP7_75t_R U396 ( .A(n384), .B(n385), .Y(n145) );
  NAND2xp33_ASAP7_75t_R U397 ( .A(a[4]), .B(b[1]), .Y(n385) );
  NAND2xp33_ASAP7_75t_R U398 ( .A(a[5]), .B(b[0]), .Y(n384) );
  NOR2xp33_ASAP7_75t_R U399 ( .A(n386), .B(n387), .Y(n142) );
  XNOR2xp5_ASAP7_75t_R U400 ( .A(n386), .B(n387), .Y(n135) );
  NAND2xp33_ASAP7_75t_R U401 ( .A(a[5]), .B(b[1]), .Y(n387) );
  NAND2xp33_ASAP7_75t_R U402 ( .A(a[6]), .B(b[0]), .Y(n386) );
  XOR2xp5_ASAP7_75t_R U403 ( .A(n388), .B(n389), .Y(n131) );
  NOR2xp33_ASAP7_75t_R U404 ( .A(n388), .B(n389), .Y(n130) );
  NAND2xp33_ASAP7_75t_R U405 ( .A(a[7]), .B(b[0]), .Y(n389) );
  NAND2xp33_ASAP7_75t_R U406 ( .A(a[6]), .B(b[1]), .Y(n388) );
  XNOR2xp5_ASAP7_75t_R U407 ( .A(n381), .B(n380), .Y(n108) );
  NOR2xp33_ASAP7_75t_R U408 ( .A(n311), .B(n308), .Y(n380) );
  AND2x2_ASAP7_75t_R U409 ( .A(a[7]), .B(b[1]), .Y(n381) );
endmodule


module Convolution_DW_mult_uns_6 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n57, n58, n61, n62, n63, n64, n68, n69, n70, n71, n72, n73, n74, n78,
         n79, n81, n82, n84, n85, n86, n87, n90, n91, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n119, n120, n121, n122, n124, n125, n126, n127,
         n128, n129, n130, n131, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n145, n146, n147, n149, n150, n151, n152, n153,
         n158, n159, n160, n161, n162, n163, n165, n166, n167, n169, n172,
         n173, n174, n175, n176, n179, n180, n181, n182, n183, n187, n189,
         n190, n191, n192, n195, n196, n197, n198, n199, n200, n203, n204,
         n205, n206, n207, n208, n211, n212, n213, n214, n215, n216, n219,
         n220, n221, n222, n223, n224, n227, n228, n229, n230, n231, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389, n390, n391;

  FAx1_ASAP7_75t_R U71 ( .A(n172), .B(n179), .CI(n289), .CON(n57), .SN(n58) );
  FAx1_ASAP7_75t_R U74 ( .A(n64), .B(n73), .CI(n290), .CON(n61), .SN(n62) );
  FAx1_ASAP7_75t_R U76 ( .A(n173), .B(n187), .CI(n180), .CON(n63), .SN(n64) );
  FAx1_ASAP7_75t_R U79 ( .A(n81), .B(n292), .CI(n72), .CON(n68), .SN(n69) );
  FAx1_ASAP7_75t_R U81 ( .A(n86), .B(n70), .CI(n74), .CON(n71), .SN(n72) );
  FAx1_ASAP7_75t_R U83 ( .A(n174), .B(n195), .CI(n181), .CON(n73), .SN(n74) );
  FAx1_ASAP7_75t_R U86 ( .A(n93), .B(n293), .CI(n82), .CON(n78), .SN(n79) );
  FAx1_ASAP7_75t_R U88 ( .A(n87), .B(n98), .CI(n295), .CON(n81), .SN(n82) );
  FAx1_ASAP7_75t_R U90 ( .A(n189), .B(n196), .CI(n294), .CON(n84), .SN(n85) );
  FAx1_ASAP7_75t_R U92 ( .A(n175), .B(n203), .CI(n182), .CON(n86), .SN(n87) );
  FAx1_ASAP7_75t_R U95 ( .A(n106), .B(n97), .CI(n94), .CON(n90), .SN(n91) );
  FAx1_ASAP7_75t_R U96 ( .A(n101), .B(n99), .CI(n296), .CON(n93), .SN(n94) );
  FAx1_ASAP7_75t_R U98 ( .A(n113), .B(n95), .CI(n111), .CON(n96), .SN(n97) );
  FAx1_ASAP7_75t_R U100 ( .A(n190), .B(n204), .CI(n197), .CON(n98), .SN(n99)
         );
  FAx1_ASAP7_75t_R U101 ( .A(n176), .B(n211), .CI(n183), .CON(n100), .SN(n101)
         );
  FAx1_ASAP7_75t_R U104 ( .A(n110), .B(n287), .CI(n107), .CON(n104), .SN(n105)
         );
  FAx1_ASAP7_75t_R U105 ( .A(n112), .B(n114), .CI(n124), .CON(n106), .SN(n107)
         );
  FAx1_ASAP7_75t_R U106 ( .A(n126), .B(n128), .CI(n108), .CON(n109), .SN(n110)
         );
  FAx1_ASAP7_75t_R U108 ( .A(n205), .B(n212), .CI(n130), .CON(n111), .SN(n112)
         );
  FAx1_ASAP7_75t_R U109 ( .A(n191), .B(n219), .CI(n198), .CON(n113), .SN(n114)
         );
  FAx1_ASAP7_75t_R U113 ( .A(n299), .B(n136), .CI(n122), .CON(n119), .SN(n120)
         );
  FAx1_ASAP7_75t_R U115 ( .A(n127), .B(n138), .CI(n129), .CON(n121), .SN(n122)
         );
  FAx1_ASAP7_75t_R U116 ( .A(n300), .B(n142), .CI(n131), .CON(n124), .SN(n125)
         );
  FAx1_ASAP7_75t_R U118 ( .A(n213), .B(n206), .CI(n220), .CON(n126), .SN(n127)
         );
  FAx1_ASAP7_75t_R U119 ( .A(n192), .B(n227), .CI(n199), .CON(n128), .SN(n129)
         );
  FAx1_ASAP7_75t_R U122 ( .A(n139), .B(n149), .CI(n302), .CON(n133), .SN(n134)
         );
  FAx1_ASAP7_75t_R U124 ( .A(n135), .B(n151), .CI(n141), .CON(n136), .SN(n137)
         );
  FAx1_ASAP7_75t_R U126 ( .A(n214), .B(n221), .CI(n153), .CON(n138), .SN(n139)
         );
  FAx1_ASAP7_75t_R U127 ( .A(n200), .B(n228), .CI(n207), .CON(n140), .SN(n141)
         );
  FAx1_ASAP7_75t_R U131 ( .A(n152), .B(n145), .CI(n158), .CON(n146), .SN(n147)
         );
  FAx1_ASAP7_75t_R U133 ( .A(n162), .B(n222), .CI(n305), .CON(n149), .SN(n150)
         );
  FAx1_ASAP7_75t_R U135 ( .A(n208), .B(n229), .CI(n215), .CON(n151), .SN(n152)
         );
  FAx1_ASAP7_75t_R U140 ( .A(n163), .B(n167), .CI(n307), .CON(n158), .SN(n159)
         );
  FAx1_ASAP7_75t_R U142 ( .A(n216), .B(n230), .CI(n223), .CON(n160), .SN(n161)
         );
  FAx1_ASAP7_75t_R U146 ( .A(n224), .B(n231), .CI(n169), .CON(n165), .SN(n166)
         );
  INVx1_ASAP7_75t_R U233 ( .A(a[0]), .Y(n319) );
  NAND2xp5_ASAP7_75t_R U234 ( .A(n371), .B(n372), .Y(n330) );
  HB1xp67_ASAP7_75t_R U235 ( .A(n159), .Y(n286) );
  XOR2xp5_ASAP7_75t_R U236 ( .A(n147), .B(n304), .Y(n329) );
  NOR2x1_ASAP7_75t_R U237 ( .A(n378), .B(n377), .Y(n169) );
  INVx1_ASAP7_75t_R U238 ( .A(b[5]), .Y(n303) );
  INVx1_ASAP7_75t_R U239 ( .A(a[3]), .Y(n316) );
  INVx1_ASAP7_75t_R U240 ( .A(b[3]), .Y(n309) );
  INVx1_ASAP7_75t_R U241 ( .A(b[4]), .Y(n306) );
  NAND2xp5_ASAP7_75t_R U242 ( .A(n361), .B(n362), .Y(n320) );
  NAND2xp5_ASAP7_75t_R U243 ( .A(n355), .B(n356), .Y(n354) );
  NAND2xp33_ASAP7_75t_R U244 ( .A(n325), .B(n324), .Y(n364) );
  INVxp67_ASAP7_75t_R U245 ( .A(n166), .Y(n308) );
  NAND2xp5_ASAP7_75t_R U246 ( .A(n351), .B(n352), .Y(n350) );
  XOR2xp5_ASAP7_75t_R U247 ( .A(n330), .B(n331), .Y(product[4]) );
  XOR2xp5_ASAP7_75t_R U248 ( .A(n354), .B(n353), .Y(product[11]) );
  XOR2xp5_ASAP7_75t_R U249 ( .A(n350), .B(n349), .Y(product[12]) );
  XOR2xp5_ASAP7_75t_R U250 ( .A(n328), .B(n329), .Y(product[5]) );
  XOR2xp5_ASAP7_75t_R U251 ( .A(n326), .B(n327), .Y(product[6]) );
  XOR2xp5_ASAP7_75t_R U252 ( .A(n324), .B(n325), .Y(product[7]) );
  XOR2xp5_ASAP7_75t_R U253 ( .A(n332), .B(n333), .Y(product[3]) );
  XOR2xp5_ASAP7_75t_R U254 ( .A(n308), .B(n379), .Y(n333) );
  XOR2xp5_ASAP7_75t_R U255 ( .A(n334), .B(n335), .Y(product[2]) );
  NOR2xp33_ASAP7_75t_R U256 ( .A(n316), .B(n306), .Y(n206) );
  XOR2xp5_ASAP7_75t_R U257 ( .A(n377), .B(n378), .Y(n376) );
  NOR2xp33_ASAP7_75t_R U258 ( .A(n310), .B(n316), .Y(n208) );
  NOR2xp33_ASAP7_75t_R U259 ( .A(n319), .B(n303), .Y(n229) );
  INVx1_ASAP7_75t_R U260 ( .A(b[2]), .Y(n310) );
  NAND2xp5_ASAP7_75t_R U261 ( .A(n373), .B(n374), .Y(n332) );
  HB1xp67_ASAP7_75t_R U262 ( .A(n121), .Y(n287) );
  OR2x2_ASAP7_75t_R U263 ( .A(n310), .B(n319), .Y(n378) );
  NAND2xp5_ASAP7_75t_R U264 ( .A(n333), .B(n332), .Y(n372) );
  NAND2xp5_ASAP7_75t_R U265 ( .A(n369), .B(n370), .Y(n328) );
  NAND2xp5_ASAP7_75t_R U266 ( .A(b[1]), .B(a[1]), .Y(n377) );
  NAND2xp5_ASAP7_75t_R U267 ( .A(n367), .B(n368), .Y(n326) );
  NAND2xp5_ASAP7_75t_R U268 ( .A(n359), .B(n360), .Y(n358) );
  NAND2xp5_ASAP7_75t_R U269 ( .A(n343), .B(n344), .Y(n341) );
  NAND2xp5_ASAP7_75t_R U270 ( .A(n345), .B(n346), .Y(n344) );
  NAND2xp5_ASAP7_75t_R U271 ( .A(n363), .B(n364), .Y(n322) );
  NAND2xp5_ASAP7_75t_R U272 ( .A(n347), .B(n348), .Y(n346) );
  NAND2xp5_ASAP7_75t_R U273 ( .A(n365), .B(n366), .Y(n324) );
  INVx1_ASAP7_75t_R U274 ( .A(n58), .Y(n288) );
  INVx1_ASAP7_75t_R U275 ( .A(n63), .Y(n289) );
  INVx1_ASAP7_75t_R U276 ( .A(n71), .Y(n290) );
  INVx1_ASAP7_75t_R U277 ( .A(n68), .Y(n291) );
  INVx1_ASAP7_75t_R U278 ( .A(n84), .Y(n292) );
  INVx1_ASAP7_75t_R U279 ( .A(n85), .Y(n293) );
  INVx1_ASAP7_75t_R U280 ( .A(n100), .Y(n294) );
  INVx1_ASAP7_75t_R U281 ( .A(n96), .Y(n295) );
  INVx1_ASAP7_75t_R U282 ( .A(n109), .Y(n296) );
  INVx1_ASAP7_75t_R U283 ( .A(n120), .Y(n297) );
  INVx1_ASAP7_75t_R U284 ( .A(b[7]), .Y(n298) );
  INVx1_ASAP7_75t_R U285 ( .A(n125), .Y(n299) );
  INVx1_ASAP7_75t_R U286 ( .A(n140), .Y(n300) );
  INVx1_ASAP7_75t_R U287 ( .A(b[6]), .Y(n301) );
  INVx1_ASAP7_75t_R U288 ( .A(n146), .Y(n302) );
  INVx1_ASAP7_75t_R U289 ( .A(n150), .Y(n304) );
  INVx1_ASAP7_75t_R U290 ( .A(n160), .Y(n305) );
  INVx1_ASAP7_75t_R U291 ( .A(n165), .Y(n307) );
  INVx1_ASAP7_75t_R U292 ( .A(b[0]), .Y(n311) );
  INVx1_ASAP7_75t_R U293 ( .A(a[7]), .Y(n312) );
  INVx1_ASAP7_75t_R U294 ( .A(a[6]), .Y(n313) );
  INVx1_ASAP7_75t_R U295 ( .A(a[5]), .Y(n314) );
  INVx1_ASAP7_75t_R U296 ( .A(a[4]), .Y(n315) );
  INVx1_ASAP7_75t_R U297 ( .A(a[2]), .Y(n317) );
  INVx1_ASAP7_75t_R U298 ( .A(a[1]), .Y(n318) );
  XOR2xp5_ASAP7_75t_R U299 ( .A(n320), .B(n321), .Y(product[9]) );
  XOR2xp5_ASAP7_75t_R U300 ( .A(n322), .B(n323), .Y(product[8]) );
  XOR2xp5_ASAP7_75t_R U301 ( .A(n336), .B(n337), .Y(product[1]) );
  NAND2xp33_ASAP7_75t_R U302 ( .A(n338), .B(n339), .Y(product[15]) );
  NAND2xp33_ASAP7_75t_R U303 ( .A(n340), .B(n341), .Y(n339) );
  OR2x2_ASAP7_75t_R U304 ( .A(n342), .B(n57), .Y(n338) );
  XOR2xp5_ASAP7_75t_R U305 ( .A(n341), .B(n340), .Y(product[14]) );
  XOR2xp5_ASAP7_75t_R U306 ( .A(n342), .B(n57), .Y(n340) );
  NAND2xp33_ASAP7_75t_R U307 ( .A(b[7]), .B(a[7]), .Y(n342) );
  NAND2xp33_ASAP7_75t_R U308 ( .A(n61), .B(n288), .Y(n343) );
  XOR2xp5_ASAP7_75t_R U309 ( .A(n346), .B(n345), .Y(product[13]) );
  XOR2xp5_ASAP7_75t_R U310 ( .A(n288), .B(n61), .Y(n345) );
  NAND2xp33_ASAP7_75t_R U311 ( .A(n349), .B(n350), .Y(n348) );
  NAND2xp33_ASAP7_75t_R U312 ( .A(n62), .B(n291), .Y(n347) );
  XOR2xp5_ASAP7_75t_R U313 ( .A(n62), .B(n291), .Y(n349) );
  NAND2xp33_ASAP7_75t_R U314 ( .A(n353), .B(n354), .Y(n352) );
  OR2x2_ASAP7_75t_R U315 ( .A(n69), .B(n78), .Y(n351) );
  XOR2xp5_ASAP7_75t_R U316 ( .A(n69), .B(n78), .Y(n353) );
  NAND2xp33_ASAP7_75t_R U317 ( .A(n357), .B(n358), .Y(n356) );
  OR2x2_ASAP7_75t_R U318 ( .A(n79), .B(n90), .Y(n355) );
  XOR2xp5_ASAP7_75t_R U319 ( .A(n358), .B(n357), .Y(product[10]) );
  XOR2xp5_ASAP7_75t_R U320 ( .A(n79), .B(n90), .Y(n357) );
  NAND2xp33_ASAP7_75t_R U321 ( .A(n321), .B(n320), .Y(n360) );
  NAND2xp33_ASAP7_75t_R U322 ( .A(n323), .B(n322), .Y(n362) );
  NAND2xp33_ASAP7_75t_R U323 ( .A(n327), .B(n326), .Y(n366) );
  NAND2xp33_ASAP7_75t_R U324 ( .A(n329), .B(n328), .Y(n368) );
  NAND2xp33_ASAP7_75t_R U325 ( .A(n331), .B(n330), .Y(n370) );
  NAND2xp33_ASAP7_75t_R U326 ( .A(n334), .B(n335), .Y(n374) );
  XOR2xp5_ASAP7_75t_R U327 ( .A(n375), .B(n376), .Y(n335) );
  NOR2xp33_ASAP7_75t_R U328 ( .A(n336), .B(n337), .Y(n334) );
  NAND2xp33_ASAP7_75t_R U329 ( .A(b[1]), .B(a[0]), .Y(n337) );
  NAND2xp33_ASAP7_75t_R U330 ( .A(b[0]), .B(a[1]), .Y(n336) );
  NAND2xp33_ASAP7_75t_R U331 ( .A(n375), .B(n376), .Y(n373) );
  NOR2xp33_ASAP7_75t_R U332 ( .A(n317), .B(n311), .Y(n375) );
  NAND2xp33_ASAP7_75t_R U333 ( .A(n379), .B(n308), .Y(n371) );
  XOR2xp5_ASAP7_75t_R U334 ( .A(n380), .B(n381), .Y(n379) );
  XOR2xp5_ASAP7_75t_R U335 ( .A(n159), .B(n161), .Y(n331) );
  OR2x2_ASAP7_75t_R U336 ( .A(n286), .B(n161), .Y(n369) );
  NAND2xp33_ASAP7_75t_R U337 ( .A(n147), .B(n304), .Y(n367) );
  XOR2xp5_ASAP7_75t_R U338 ( .A(n134), .B(n137), .Y(n327) );
  NAND2xp33_ASAP7_75t_R U339 ( .A(n134), .B(n137), .Y(n365) );
  XOR2xp5_ASAP7_75t_R U340 ( .A(n297), .B(n133), .Y(n325) );
  NAND2xp33_ASAP7_75t_R U341 ( .A(n133), .B(n297), .Y(n363) );
  XOR2xp5_ASAP7_75t_R U342 ( .A(n105), .B(n119), .Y(n323) );
  OR2x2_ASAP7_75t_R U343 ( .A(n105), .B(n119), .Y(n361) );
  XOR2xp5_ASAP7_75t_R U344 ( .A(n104), .B(n91), .Y(n321) );
  OR2x2_ASAP7_75t_R U345 ( .A(n104), .B(n91), .Y(n359) );
  NOR2xp33_ASAP7_75t_R U346 ( .A(n311), .B(n319), .Y(product[0]) );
  NAND2xp33_ASAP7_75t_R U347 ( .A(n382), .B(n383), .Y(n95) );
  NAND2xp33_ASAP7_75t_R U348 ( .A(b[6]), .B(a[5]), .Y(n70) );
  NOR2xp33_ASAP7_75t_R U349 ( .A(n319), .B(n309), .Y(n231) );
  NOR2xp33_ASAP7_75t_R U350 ( .A(n319), .B(n306), .Y(n230) );
  NOR2xp33_ASAP7_75t_R U351 ( .A(n319), .B(n301), .Y(n228) );
  NOR2xp33_ASAP7_75t_R U352 ( .A(n319), .B(n298), .Y(n227) );
  NOR2xp33_ASAP7_75t_R U353 ( .A(n318), .B(n310), .Y(n224) );
  NOR2xp33_ASAP7_75t_R U354 ( .A(n318), .B(n309), .Y(n223) );
  NOR2xp33_ASAP7_75t_R U355 ( .A(n318), .B(n306), .Y(n222) );
  NOR2xp33_ASAP7_75t_R U356 ( .A(n318), .B(n303), .Y(n221) );
  NOR2xp33_ASAP7_75t_R U357 ( .A(n318), .B(n301), .Y(n220) );
  NOR2xp33_ASAP7_75t_R U358 ( .A(n318), .B(n298), .Y(n219) );
  NOR2xp33_ASAP7_75t_R U359 ( .A(n317), .B(n310), .Y(n216) );
  NOR2xp33_ASAP7_75t_R U360 ( .A(n317), .B(n309), .Y(n215) );
  NOR2xp33_ASAP7_75t_R U361 ( .A(n317), .B(n306), .Y(n214) );
  NOR2xp33_ASAP7_75t_R U362 ( .A(n317), .B(n303), .Y(n213) );
  NOR2xp33_ASAP7_75t_R U363 ( .A(n317), .B(n301), .Y(n212) );
  NOR2xp33_ASAP7_75t_R U364 ( .A(n317), .B(n298), .Y(n211) );
  NOR2xp33_ASAP7_75t_R U365 ( .A(n316), .B(n309), .Y(n207) );
  NOR2xp33_ASAP7_75t_R U366 ( .A(n316), .B(n303), .Y(n205) );
  NOR2xp33_ASAP7_75t_R U367 ( .A(n316), .B(n301), .Y(n204) );
  NOR2xp33_ASAP7_75t_R U368 ( .A(n316), .B(n298), .Y(n203) );
  NOR2xp33_ASAP7_75t_R U369 ( .A(n310), .B(n315), .Y(n200) );
  NOR2xp33_ASAP7_75t_R U370 ( .A(n309), .B(n315), .Y(n199) );
  NOR2xp33_ASAP7_75t_R U371 ( .A(n306), .B(n315), .Y(n198) );
  NOR2xp33_ASAP7_75t_R U372 ( .A(n303), .B(n315), .Y(n197) );
  NOR2xp33_ASAP7_75t_R U373 ( .A(n301), .B(n315), .Y(n196) );
  NOR2xp33_ASAP7_75t_R U374 ( .A(n298), .B(n315), .Y(n195) );
  NOR2xp33_ASAP7_75t_R U375 ( .A(n310), .B(n314), .Y(n192) );
  NOR2xp33_ASAP7_75t_R U376 ( .A(n314), .B(n309), .Y(n191) );
  NOR2xp33_ASAP7_75t_R U377 ( .A(n314), .B(n306), .Y(n190) );
  NOR2xp33_ASAP7_75t_R U378 ( .A(n314), .B(n303), .Y(n189) );
  NOR2xp33_ASAP7_75t_R U379 ( .A(n298), .B(n314), .Y(n187) );
  NOR2xp33_ASAP7_75t_R U380 ( .A(n313), .B(n309), .Y(n183) );
  NOR2xp33_ASAP7_75t_R U381 ( .A(n313), .B(n306), .Y(n182) );
  NOR2xp33_ASAP7_75t_R U382 ( .A(n313), .B(n303), .Y(n181) );
  NOR2xp33_ASAP7_75t_R U383 ( .A(n313), .B(n301), .Y(n180) );
  NOR2xp33_ASAP7_75t_R U384 ( .A(n298), .B(n313), .Y(n179) );
  NOR2xp33_ASAP7_75t_R U385 ( .A(n310), .B(n312), .Y(n176) );
  NOR2xp33_ASAP7_75t_R U386 ( .A(n312), .B(n309), .Y(n175) );
  NOR2xp33_ASAP7_75t_R U387 ( .A(n312), .B(n306), .Y(n174) );
  NOR2xp33_ASAP7_75t_R U388 ( .A(n312), .B(n303), .Y(n173) );
  NOR2xp33_ASAP7_75t_R U389 ( .A(n312), .B(n301), .Y(n172) );
  NOR2xp33_ASAP7_75t_R U390 ( .A(n381), .B(n380), .Y(n167) );
  NAND2xp33_ASAP7_75t_R U391 ( .A(a[3]), .B(b[0]), .Y(n380) );
  NAND2xp33_ASAP7_75t_R U392 ( .A(a[2]), .B(b[1]), .Y(n381) );
  XOR2xp5_ASAP7_75t_R U393 ( .A(n384), .B(n385), .Y(n163) );
  NOR2xp33_ASAP7_75t_R U394 ( .A(n384), .B(n385), .Y(n162) );
  NAND2xp33_ASAP7_75t_R U395 ( .A(a[4]), .B(b[0]), .Y(n385) );
  NAND2xp33_ASAP7_75t_R U396 ( .A(a[3]), .B(b[1]), .Y(n384) );
  NOR2xp33_ASAP7_75t_R U397 ( .A(n386), .B(n387), .Y(n153) );
  XNOR2xp5_ASAP7_75t_R U398 ( .A(n386), .B(n387), .Y(n145) );
  NAND2xp33_ASAP7_75t_R U399 ( .A(a[4]), .B(b[1]), .Y(n387) );
  NAND2xp33_ASAP7_75t_R U400 ( .A(a[5]), .B(b[0]), .Y(n386) );
  NOR2xp33_ASAP7_75t_R U401 ( .A(n388), .B(n389), .Y(n142) );
  XNOR2xp5_ASAP7_75t_R U402 ( .A(n388), .B(n389), .Y(n135) );
  NAND2xp33_ASAP7_75t_R U403 ( .A(a[5]), .B(b[1]), .Y(n389) );
  NAND2xp33_ASAP7_75t_R U404 ( .A(a[6]), .B(b[0]), .Y(n388) );
  XOR2xp5_ASAP7_75t_R U405 ( .A(n390), .B(n391), .Y(n131) );
  NOR2xp33_ASAP7_75t_R U406 ( .A(n390), .B(n391), .Y(n130) );
  NAND2xp33_ASAP7_75t_R U407 ( .A(a[7]), .B(b[0]), .Y(n391) );
  NAND2xp33_ASAP7_75t_R U408 ( .A(a[6]), .B(b[1]), .Y(n390) );
  XNOR2xp5_ASAP7_75t_R U409 ( .A(n383), .B(n382), .Y(n108) );
  NOR2xp33_ASAP7_75t_R U410 ( .A(n313), .B(n310), .Y(n382) );
  AND2x2_ASAP7_75t_R U411 ( .A(a[7]), .B(b[1]), .Y(n383) );
endmodule


module Convolution_DW_mult_uns_7 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n57, n58, n61, n62, n63, n64, n68, n69, n70, n71, n72, n73, n74, n78,
         n79, n81, n82, n84, n85, n86, n87, n90, n91, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n119, n120, n121, n122, n124, n125, n126, n127,
         n128, n129, n130, n131, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n145, n146, n147, n149, n150, n151, n152, n153,
         n158, n159, n160, n161, n162, n163, n165, n166, n167, n169, n172,
         n173, n174, n175, n176, n179, n180, n181, n182, n183, n187, n189,
         n190, n191, n192, n195, n196, n197, n198, n199, n200, n203, n204,
         n205, n206, n207, n208, n211, n212, n213, n214, n215, n216, n219,
         n220, n221, n222, n223, n224, n227, n228, n229, n230, n231, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389;

  FAx1_ASAP7_75t_R U71 ( .A(n172), .B(n179), .CI(n287), .CON(n57), .SN(n58) );
  FAx1_ASAP7_75t_R U74 ( .A(n64), .B(n73), .CI(n288), .CON(n61), .SN(n62) );
  FAx1_ASAP7_75t_R U76 ( .A(n173), .B(n187), .CI(n180), .CON(n63), .SN(n64) );
  FAx1_ASAP7_75t_R U79 ( .A(n81), .B(n290), .CI(n72), .CON(n68), .SN(n69) );
  FAx1_ASAP7_75t_R U81 ( .A(n86), .B(n70), .CI(n74), .CON(n71), .SN(n72) );
  FAx1_ASAP7_75t_R U83 ( .A(n174), .B(n195), .CI(n181), .CON(n73), .SN(n74) );
  FAx1_ASAP7_75t_R U86 ( .A(n93), .B(n291), .CI(n82), .CON(n78), .SN(n79) );
  FAx1_ASAP7_75t_R U88 ( .A(n87), .B(n98), .CI(n293), .CON(n81), .SN(n82) );
  FAx1_ASAP7_75t_R U90 ( .A(n189), .B(n196), .CI(n292), .CON(n84), .SN(n85) );
  FAx1_ASAP7_75t_R U92 ( .A(n175), .B(n203), .CI(n182), .CON(n86), .SN(n87) );
  FAx1_ASAP7_75t_R U95 ( .A(n106), .B(n97), .CI(n94), .CON(n90), .SN(n91) );
  FAx1_ASAP7_75t_R U96 ( .A(n101), .B(n99), .CI(n294), .CON(n93), .SN(n94) );
  FAx1_ASAP7_75t_R U98 ( .A(n113), .B(n95), .CI(n111), .CON(n96), .SN(n97) );
  FAx1_ASAP7_75t_R U100 ( .A(n190), .B(n204), .CI(n197), .CON(n98), .SN(n99)
         );
  FAx1_ASAP7_75t_R U101 ( .A(n176), .B(n211), .CI(n183), .CON(n100), .SN(n101)
         );
  FAx1_ASAP7_75t_R U104 ( .A(n110), .B(n121), .CI(n107), .CON(n104), .SN(n105)
         );
  FAx1_ASAP7_75t_R U105 ( .A(n112), .B(n114), .CI(n124), .CON(n106), .SN(n107)
         );
  FAx1_ASAP7_75t_R U106 ( .A(n126), .B(n128), .CI(n108), .CON(n109), .SN(n110)
         );
  FAx1_ASAP7_75t_R U108 ( .A(n205), .B(n212), .CI(n130), .CON(n111), .SN(n112)
         );
  FAx1_ASAP7_75t_R U109 ( .A(n191), .B(n219), .CI(n198), .CON(n113), .SN(n114)
         );
  FAx1_ASAP7_75t_R U113 ( .A(n297), .B(n136), .CI(n122), .CON(n119), .SN(n120)
         );
  FAx1_ASAP7_75t_R U115 ( .A(n127), .B(n138), .CI(n129), .CON(n121), .SN(n122)
         );
  FAx1_ASAP7_75t_R U116 ( .A(n298), .B(n142), .CI(n131), .CON(n124), .SN(n125)
         );
  FAx1_ASAP7_75t_R U118 ( .A(n213), .B(n206), .CI(n220), .CON(n126), .SN(n127)
         );
  FAx1_ASAP7_75t_R U119 ( .A(n192), .B(n227), .CI(n199), .CON(n128), .SN(n129)
         );
  FAx1_ASAP7_75t_R U122 ( .A(n139), .B(n149), .CI(n300), .CON(n133), .SN(n134)
         );
  FAx1_ASAP7_75t_R U124 ( .A(n135), .B(n151), .CI(n141), .CON(n136), .SN(n137)
         );
  FAx1_ASAP7_75t_R U126 ( .A(n214), .B(n221), .CI(n153), .CON(n138), .SN(n139)
         );
  FAx1_ASAP7_75t_R U127 ( .A(n200), .B(n228), .CI(n207), .CON(n140), .SN(n141)
         );
  FAx1_ASAP7_75t_R U131 ( .A(n152), .B(n145), .CI(n158), .CON(n146), .SN(n147)
         );
  FAx1_ASAP7_75t_R U133 ( .A(n162), .B(n222), .CI(n303), .CON(n149), .SN(n150)
         );
  FAx1_ASAP7_75t_R U135 ( .A(n208), .B(n229), .CI(n215), .CON(n151), .SN(n152)
         );
  FAx1_ASAP7_75t_R U140 ( .A(n163), .B(n167), .CI(n305), .CON(n158), .SN(n159)
         );
  FAx1_ASAP7_75t_R U142 ( .A(n216), .B(n230), .CI(n223), .CON(n160), .SN(n161)
         );
  FAx1_ASAP7_75t_R U146 ( .A(n224), .B(n231), .CI(n169), .CON(n165), .SN(n166)
         );
  XOR2xp5_ASAP7_75t_R U233 ( .A(n339), .B(n338), .Y(product[14]) );
  NAND2xp5_ASAP7_75t_R U234 ( .A(n367), .B(n368), .Y(n326) );
  NAND2xp5_ASAP7_75t_R U235 ( .A(n329), .B(n328), .Y(n368) );
  NAND2xp5_ASAP7_75t_R U236 ( .A(n361), .B(n362), .Y(n320) );
  NAND2xp5_ASAP7_75t_R U237 ( .A(n323), .B(n322), .Y(n362) );
  NAND2xp5_ASAP7_75t_R U238 ( .A(n363), .B(n364), .Y(n322) );
  INVx1_ASAP7_75t_R U239 ( .A(n58), .Y(n286) );
  INVx1_ASAP7_75t_R U240 ( .A(n63), .Y(n287) );
  INVx1_ASAP7_75t_R U241 ( .A(n71), .Y(n288) );
  INVx1_ASAP7_75t_R U242 ( .A(n68), .Y(n289) );
  INVx1_ASAP7_75t_R U243 ( .A(n84), .Y(n290) );
  INVx1_ASAP7_75t_R U244 ( .A(n85), .Y(n291) );
  INVx1_ASAP7_75t_R U245 ( .A(n100), .Y(n292) );
  INVx1_ASAP7_75t_R U246 ( .A(n96), .Y(n293) );
  INVx1_ASAP7_75t_R U247 ( .A(n109), .Y(n294) );
  INVx1_ASAP7_75t_R U248 ( .A(n120), .Y(n295) );
  INVx1_ASAP7_75t_R U249 ( .A(b[7]), .Y(n296) );
  INVx1_ASAP7_75t_R U250 ( .A(n125), .Y(n297) );
  INVx1_ASAP7_75t_R U251 ( .A(n140), .Y(n298) );
  INVx1_ASAP7_75t_R U252 ( .A(b[6]), .Y(n299) );
  INVx1_ASAP7_75t_R U253 ( .A(n146), .Y(n300) );
  INVx1_ASAP7_75t_R U254 ( .A(b[5]), .Y(n301) );
  INVx1_ASAP7_75t_R U255 ( .A(n150), .Y(n302) );
  INVx1_ASAP7_75t_R U256 ( .A(n160), .Y(n303) );
  INVx1_ASAP7_75t_R U257 ( .A(b[4]), .Y(n304) );
  INVx1_ASAP7_75t_R U258 ( .A(n165), .Y(n305) );
  INVx1_ASAP7_75t_R U259 ( .A(n166), .Y(n306) );
  INVx1_ASAP7_75t_R U260 ( .A(b[3]), .Y(n307) );
  INVx1_ASAP7_75t_R U261 ( .A(b[2]), .Y(n308) );
  INVx1_ASAP7_75t_R U262 ( .A(b[0]), .Y(n309) );
  INVx1_ASAP7_75t_R U263 ( .A(a[7]), .Y(n310) );
  INVx1_ASAP7_75t_R U264 ( .A(a[6]), .Y(n311) );
  INVx1_ASAP7_75t_R U265 ( .A(a[5]), .Y(n312) );
  INVx1_ASAP7_75t_R U266 ( .A(a[4]), .Y(n313) );
  INVx1_ASAP7_75t_R U267 ( .A(a[3]), .Y(n314) );
  INVx1_ASAP7_75t_R U268 ( .A(a[2]), .Y(n315) );
  INVx1_ASAP7_75t_R U269 ( .A(a[1]), .Y(n316) );
  INVx1_ASAP7_75t_R U270 ( .A(a[0]), .Y(n317) );
  XOR2xp5_ASAP7_75t_R U271 ( .A(n318), .B(n319), .Y(product[9]) );
  XOR2xp5_ASAP7_75t_R U272 ( .A(n320), .B(n321), .Y(product[8]) );
  XOR2xp5_ASAP7_75t_R U273 ( .A(n322), .B(n323), .Y(product[7]) );
  XOR2xp5_ASAP7_75t_R U274 ( .A(n324), .B(n325), .Y(product[6]) );
  XOR2xp5_ASAP7_75t_R U275 ( .A(n326), .B(n327), .Y(product[5]) );
  XOR2xp5_ASAP7_75t_R U276 ( .A(n328), .B(n329), .Y(product[4]) );
  XOR2xp5_ASAP7_75t_R U277 ( .A(n330), .B(n331), .Y(product[3]) );
  XOR2xp5_ASAP7_75t_R U278 ( .A(n332), .B(n333), .Y(product[2]) );
  XOR2xp5_ASAP7_75t_R U279 ( .A(n334), .B(n335), .Y(product[1]) );
  NAND2xp33_ASAP7_75t_R U280 ( .A(n336), .B(n337), .Y(product[15]) );
  NAND2xp33_ASAP7_75t_R U281 ( .A(n338), .B(n339), .Y(n337) );
  OR2x2_ASAP7_75t_R U282 ( .A(n340), .B(n57), .Y(n336) );
  XOR2xp5_ASAP7_75t_R U283 ( .A(n340), .B(n57), .Y(n338) );
  NAND2xp33_ASAP7_75t_R U284 ( .A(b[7]), .B(a[7]), .Y(n340) );
  NAND2xp33_ASAP7_75t_R U285 ( .A(n341), .B(n342), .Y(n339) );
  NAND2xp33_ASAP7_75t_R U286 ( .A(n343), .B(n344), .Y(n342) );
  NAND2xp33_ASAP7_75t_R U287 ( .A(n61), .B(n286), .Y(n341) );
  XOR2xp5_ASAP7_75t_R U288 ( .A(n344), .B(n343), .Y(product[13]) );
  XOR2xp5_ASAP7_75t_R U289 ( .A(n286), .B(n61), .Y(n343) );
  NAND2xp33_ASAP7_75t_R U290 ( .A(n345), .B(n346), .Y(n344) );
  NAND2xp33_ASAP7_75t_R U291 ( .A(n347), .B(n348), .Y(n346) );
  NAND2xp33_ASAP7_75t_R U292 ( .A(n62), .B(n289), .Y(n345) );
  XOR2xp5_ASAP7_75t_R U293 ( .A(n348), .B(n347), .Y(product[12]) );
  XOR2xp5_ASAP7_75t_R U294 ( .A(n62), .B(n289), .Y(n347) );
  NAND2xp33_ASAP7_75t_R U295 ( .A(n349), .B(n350), .Y(n348) );
  NAND2xp33_ASAP7_75t_R U296 ( .A(n351), .B(n352), .Y(n350) );
  OR2x2_ASAP7_75t_R U297 ( .A(n69), .B(n78), .Y(n349) );
  XOR2xp5_ASAP7_75t_R U298 ( .A(n352), .B(n351), .Y(product[11]) );
  XOR2xp5_ASAP7_75t_R U299 ( .A(n69), .B(n78), .Y(n351) );
  NAND2xp33_ASAP7_75t_R U300 ( .A(n353), .B(n354), .Y(n352) );
  NAND2xp33_ASAP7_75t_R U301 ( .A(n355), .B(n356), .Y(n354) );
  OR2x2_ASAP7_75t_R U302 ( .A(n79), .B(n90), .Y(n353) );
  XOR2xp5_ASAP7_75t_R U303 ( .A(n356), .B(n355), .Y(product[10]) );
  XOR2xp5_ASAP7_75t_R U304 ( .A(n79), .B(n90), .Y(n355) );
  NAND2xp33_ASAP7_75t_R U305 ( .A(n357), .B(n358), .Y(n356) );
  NAND2xp33_ASAP7_75t_R U306 ( .A(n319), .B(n318), .Y(n358) );
  NAND2xp33_ASAP7_75t_R U307 ( .A(n359), .B(n360), .Y(n318) );
  NAND2xp33_ASAP7_75t_R U308 ( .A(n321), .B(n320), .Y(n360) );
  NAND2xp33_ASAP7_75t_R U309 ( .A(n325), .B(n324), .Y(n364) );
  NAND2xp33_ASAP7_75t_R U310 ( .A(n365), .B(n366), .Y(n324) );
  NAND2xp33_ASAP7_75t_R U311 ( .A(n327), .B(n326), .Y(n366) );
  NAND2xp33_ASAP7_75t_R U312 ( .A(n369), .B(n370), .Y(n328) );
  NAND2xp33_ASAP7_75t_R U313 ( .A(n331), .B(n330), .Y(n370) );
  NAND2xp33_ASAP7_75t_R U314 ( .A(n371), .B(n372), .Y(n330) );
  NAND2xp33_ASAP7_75t_R U315 ( .A(n332), .B(n333), .Y(n372) );
  XOR2xp5_ASAP7_75t_R U316 ( .A(n373), .B(n374), .Y(n333) );
  NOR2xp33_ASAP7_75t_R U317 ( .A(n334), .B(n335), .Y(n332) );
  NAND2xp33_ASAP7_75t_R U318 ( .A(b[1]), .B(a[0]), .Y(n335) );
  NAND2xp33_ASAP7_75t_R U319 ( .A(b[0]), .B(a[1]), .Y(n334) );
  NAND2xp33_ASAP7_75t_R U320 ( .A(n373), .B(n374), .Y(n371) );
  XOR2xp5_ASAP7_75t_R U321 ( .A(n375), .B(n376), .Y(n374) );
  NOR2xp33_ASAP7_75t_R U322 ( .A(n315), .B(n309), .Y(n373) );
  XOR2xp5_ASAP7_75t_R U323 ( .A(n306), .B(n377), .Y(n331) );
  NAND2xp33_ASAP7_75t_R U324 ( .A(n377), .B(n306), .Y(n369) );
  XOR2xp5_ASAP7_75t_R U325 ( .A(n378), .B(n379), .Y(n377) );
  XOR2xp5_ASAP7_75t_R U326 ( .A(n159), .B(n161), .Y(n329) );
  OR2x2_ASAP7_75t_R U327 ( .A(n159), .B(n161), .Y(n367) );
  XOR2xp5_ASAP7_75t_R U328 ( .A(n147), .B(n302), .Y(n327) );
  NAND2xp33_ASAP7_75t_R U329 ( .A(n147), .B(n302), .Y(n365) );
  XOR2xp5_ASAP7_75t_R U330 ( .A(n134), .B(n137), .Y(n325) );
  NAND2xp33_ASAP7_75t_R U331 ( .A(n134), .B(n137), .Y(n363) );
  XOR2xp5_ASAP7_75t_R U332 ( .A(n295), .B(n133), .Y(n323) );
  NAND2xp33_ASAP7_75t_R U333 ( .A(n133), .B(n295), .Y(n361) );
  XOR2xp5_ASAP7_75t_R U334 ( .A(n105), .B(n119), .Y(n321) );
  OR2x2_ASAP7_75t_R U335 ( .A(n105), .B(n119), .Y(n359) );
  XOR2xp5_ASAP7_75t_R U336 ( .A(n104), .B(n91), .Y(n319) );
  OR2x2_ASAP7_75t_R U337 ( .A(n104), .B(n91), .Y(n357) );
  NOR2xp33_ASAP7_75t_R U338 ( .A(n309), .B(n317), .Y(product[0]) );
  NAND2xp33_ASAP7_75t_R U339 ( .A(n380), .B(n381), .Y(n95) );
  NAND2xp33_ASAP7_75t_R U340 ( .A(b[6]), .B(a[5]), .Y(n70) );
  NOR2xp33_ASAP7_75t_R U341 ( .A(n317), .B(n307), .Y(n231) );
  NOR2xp33_ASAP7_75t_R U342 ( .A(n317), .B(n304), .Y(n230) );
  NOR2xp33_ASAP7_75t_R U343 ( .A(n317), .B(n301), .Y(n229) );
  NOR2xp33_ASAP7_75t_R U344 ( .A(n317), .B(n299), .Y(n228) );
  NOR2xp33_ASAP7_75t_R U345 ( .A(n317), .B(n296), .Y(n227) );
  NOR2xp33_ASAP7_75t_R U346 ( .A(n316), .B(n308), .Y(n224) );
  NOR2xp33_ASAP7_75t_R U347 ( .A(n316), .B(n307), .Y(n223) );
  NOR2xp33_ASAP7_75t_R U348 ( .A(n316), .B(n304), .Y(n222) );
  NOR2xp33_ASAP7_75t_R U349 ( .A(n316), .B(n301), .Y(n221) );
  NOR2xp33_ASAP7_75t_R U350 ( .A(n316), .B(n299), .Y(n220) );
  NOR2xp33_ASAP7_75t_R U351 ( .A(n316), .B(n296), .Y(n219) );
  NOR2xp33_ASAP7_75t_R U352 ( .A(n315), .B(n308), .Y(n216) );
  NOR2xp33_ASAP7_75t_R U353 ( .A(n315), .B(n307), .Y(n215) );
  NOR2xp33_ASAP7_75t_R U354 ( .A(n315), .B(n304), .Y(n214) );
  NOR2xp33_ASAP7_75t_R U355 ( .A(n315), .B(n301), .Y(n213) );
  NOR2xp33_ASAP7_75t_R U356 ( .A(n315), .B(n299), .Y(n212) );
  NOR2xp33_ASAP7_75t_R U357 ( .A(n315), .B(n296), .Y(n211) );
  NOR2xp33_ASAP7_75t_R U358 ( .A(n308), .B(n314), .Y(n208) );
  NOR2xp33_ASAP7_75t_R U359 ( .A(n314), .B(n307), .Y(n207) );
  NOR2xp33_ASAP7_75t_R U360 ( .A(n314), .B(n304), .Y(n206) );
  NOR2xp33_ASAP7_75t_R U361 ( .A(n314), .B(n301), .Y(n205) );
  NOR2xp33_ASAP7_75t_R U362 ( .A(n314), .B(n299), .Y(n204) );
  NOR2xp33_ASAP7_75t_R U363 ( .A(n314), .B(n296), .Y(n203) );
  NOR2xp33_ASAP7_75t_R U364 ( .A(n308), .B(n313), .Y(n200) );
  NOR2xp33_ASAP7_75t_R U365 ( .A(n307), .B(n313), .Y(n199) );
  NOR2xp33_ASAP7_75t_R U366 ( .A(n304), .B(n313), .Y(n198) );
  NOR2xp33_ASAP7_75t_R U367 ( .A(n301), .B(n313), .Y(n197) );
  NOR2xp33_ASAP7_75t_R U368 ( .A(n299), .B(n313), .Y(n196) );
  NOR2xp33_ASAP7_75t_R U369 ( .A(n296), .B(n313), .Y(n195) );
  NOR2xp33_ASAP7_75t_R U370 ( .A(n308), .B(n312), .Y(n192) );
  NOR2xp33_ASAP7_75t_R U371 ( .A(n312), .B(n307), .Y(n191) );
  NOR2xp33_ASAP7_75t_R U372 ( .A(n312), .B(n304), .Y(n190) );
  NOR2xp33_ASAP7_75t_R U373 ( .A(n312), .B(n301), .Y(n189) );
  NOR2xp33_ASAP7_75t_R U374 ( .A(n296), .B(n312), .Y(n187) );
  NOR2xp33_ASAP7_75t_R U375 ( .A(n311), .B(n307), .Y(n183) );
  NOR2xp33_ASAP7_75t_R U376 ( .A(n311), .B(n304), .Y(n182) );
  NOR2xp33_ASAP7_75t_R U377 ( .A(n311), .B(n301), .Y(n181) );
  NOR2xp33_ASAP7_75t_R U378 ( .A(n311), .B(n299), .Y(n180) );
  NOR2xp33_ASAP7_75t_R U379 ( .A(n296), .B(n311), .Y(n179) );
  NOR2xp33_ASAP7_75t_R U380 ( .A(n308), .B(n310), .Y(n176) );
  NOR2xp33_ASAP7_75t_R U381 ( .A(n310), .B(n307), .Y(n175) );
  NOR2xp33_ASAP7_75t_R U382 ( .A(n310), .B(n304), .Y(n174) );
  NOR2xp33_ASAP7_75t_R U383 ( .A(n310), .B(n301), .Y(n173) );
  NOR2xp33_ASAP7_75t_R U384 ( .A(n310), .B(n299), .Y(n172) );
  NOR2xp33_ASAP7_75t_R U385 ( .A(n376), .B(n375), .Y(n169) );
  NAND2xp33_ASAP7_75t_R U386 ( .A(b[1]), .B(a[1]), .Y(n375) );
  NAND2xp33_ASAP7_75t_R U387 ( .A(b[2]), .B(a[0]), .Y(n376) );
  NOR2xp33_ASAP7_75t_R U388 ( .A(n379), .B(n378), .Y(n167) );
  NAND2xp33_ASAP7_75t_R U389 ( .A(a[3]), .B(b[0]), .Y(n378) );
  NAND2xp33_ASAP7_75t_R U390 ( .A(a[2]), .B(b[1]), .Y(n379) );
  XOR2xp5_ASAP7_75t_R U391 ( .A(n382), .B(n383), .Y(n163) );
  NOR2xp33_ASAP7_75t_R U392 ( .A(n382), .B(n383), .Y(n162) );
  NAND2xp33_ASAP7_75t_R U393 ( .A(a[4]), .B(b[0]), .Y(n383) );
  NAND2xp33_ASAP7_75t_R U394 ( .A(a[3]), .B(b[1]), .Y(n382) );
  NOR2xp33_ASAP7_75t_R U395 ( .A(n384), .B(n385), .Y(n153) );
  XNOR2xp5_ASAP7_75t_R U396 ( .A(n384), .B(n385), .Y(n145) );
  NAND2xp33_ASAP7_75t_R U397 ( .A(a[4]), .B(b[1]), .Y(n385) );
  NAND2xp33_ASAP7_75t_R U398 ( .A(a[5]), .B(b[0]), .Y(n384) );
  NOR2xp33_ASAP7_75t_R U399 ( .A(n386), .B(n387), .Y(n142) );
  XNOR2xp5_ASAP7_75t_R U400 ( .A(n386), .B(n387), .Y(n135) );
  NAND2xp33_ASAP7_75t_R U401 ( .A(a[5]), .B(b[1]), .Y(n387) );
  NAND2xp33_ASAP7_75t_R U402 ( .A(a[6]), .B(b[0]), .Y(n386) );
  XOR2xp5_ASAP7_75t_R U403 ( .A(n388), .B(n389), .Y(n131) );
  NOR2xp33_ASAP7_75t_R U404 ( .A(n388), .B(n389), .Y(n130) );
  NAND2xp33_ASAP7_75t_R U405 ( .A(a[7]), .B(b[0]), .Y(n389) );
  NAND2xp33_ASAP7_75t_R U406 ( .A(a[6]), .B(b[1]), .Y(n388) );
  XNOR2xp5_ASAP7_75t_R U407 ( .A(n381), .B(n380), .Y(n108) );
  NOR2xp33_ASAP7_75t_R U408 ( .A(n311), .B(n308), .Y(n380) );
  AND2x2_ASAP7_75t_R U409 ( .A(a[7]), .B(b[1]), .Y(n381) );
endmodule


module Convolution_DW_mult_uns_8 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n57, n58, n61, n62, n63, n64, n68, n69, n70, n71, n72, n73, n74, n78,
         n79, n81, n82, n84, n85, n86, n87, n90, n91, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n119, n120, n121, n122, n124, n125, n126, n127,
         n128, n129, n130, n131, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n145, n146, n147, n149, n150, n151, n152, n153,
         n158, n159, n160, n161, n162, n163, n165, n166, n167, n169, n172,
         n173, n174, n175, n176, n179, n180, n181, n182, n183, n187, n189,
         n190, n191, n192, n195, n196, n197, n198, n199, n200, n203, n204,
         n205, n206, n207, n208, n211, n212, n213, n214, n215, n216, n219,
         n220, n221, n222, n223, n224, n227, n228, n229, n230, n231, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389;

  FAx1_ASAP7_75t_R U71 ( .A(n172), .B(n179), .CI(n287), .CON(n57), .SN(n58) );
  FAx1_ASAP7_75t_R U74 ( .A(n64), .B(n73), .CI(n288), .CON(n61), .SN(n62) );
  FAx1_ASAP7_75t_R U76 ( .A(n173), .B(n187), .CI(n180), .CON(n63), .SN(n64) );
  FAx1_ASAP7_75t_R U79 ( .A(n81), .B(n290), .CI(n72), .CON(n68), .SN(n69) );
  FAx1_ASAP7_75t_R U81 ( .A(n86), .B(n70), .CI(n74), .CON(n71), .SN(n72) );
  FAx1_ASAP7_75t_R U83 ( .A(n174), .B(n195), .CI(n181), .CON(n73), .SN(n74) );
  FAx1_ASAP7_75t_R U86 ( .A(n93), .B(n291), .CI(n82), .CON(n78), .SN(n79) );
  FAx1_ASAP7_75t_R U88 ( .A(n87), .B(n98), .CI(n293), .CON(n81), .SN(n82) );
  FAx1_ASAP7_75t_R U90 ( .A(n189), .B(n196), .CI(n292), .CON(n84), .SN(n85) );
  FAx1_ASAP7_75t_R U92 ( .A(n175), .B(n203), .CI(n182), .CON(n86), .SN(n87) );
  FAx1_ASAP7_75t_R U95 ( .A(n106), .B(n97), .CI(n94), .CON(n90), .SN(n91) );
  FAx1_ASAP7_75t_R U96 ( .A(n101), .B(n99), .CI(n294), .CON(n93), .SN(n94) );
  FAx1_ASAP7_75t_R U98 ( .A(n113), .B(n95), .CI(n111), .CON(n96), .SN(n97) );
  FAx1_ASAP7_75t_R U100 ( .A(n190), .B(n204), .CI(n197), .CON(n98), .SN(n99)
         );
  FAx1_ASAP7_75t_R U101 ( .A(n176), .B(n211), .CI(n183), .CON(n100), .SN(n101)
         );
  FAx1_ASAP7_75t_R U104 ( .A(n110), .B(n121), .CI(n107), .CON(n104), .SN(n105)
         );
  FAx1_ASAP7_75t_R U105 ( .A(n112), .B(n114), .CI(n124), .CON(n106), .SN(n107)
         );
  FAx1_ASAP7_75t_R U106 ( .A(n126), .B(n128), .CI(n108), .CON(n109), .SN(n110)
         );
  FAx1_ASAP7_75t_R U108 ( .A(n205), .B(n212), .CI(n130), .CON(n111), .SN(n112)
         );
  FAx1_ASAP7_75t_R U109 ( .A(n191), .B(n219), .CI(n198), .CON(n113), .SN(n114)
         );
  FAx1_ASAP7_75t_R U113 ( .A(n297), .B(n136), .CI(n122), .CON(n119), .SN(n120)
         );
  FAx1_ASAP7_75t_R U115 ( .A(n127), .B(n138), .CI(n129), .CON(n121), .SN(n122)
         );
  FAx1_ASAP7_75t_R U116 ( .A(n298), .B(n142), .CI(n131), .CON(n124), .SN(n125)
         );
  FAx1_ASAP7_75t_R U118 ( .A(n213), .B(n206), .CI(n220), .CON(n126), .SN(n127)
         );
  FAx1_ASAP7_75t_R U119 ( .A(n192), .B(n227), .CI(n199), .CON(n128), .SN(n129)
         );
  FAx1_ASAP7_75t_R U122 ( .A(n139), .B(n149), .CI(n300), .CON(n133), .SN(n134)
         );
  FAx1_ASAP7_75t_R U124 ( .A(n135), .B(n151), .CI(n141), .CON(n136), .SN(n137)
         );
  FAx1_ASAP7_75t_R U126 ( .A(n214), .B(n221), .CI(n153), .CON(n138), .SN(n139)
         );
  FAx1_ASAP7_75t_R U127 ( .A(n200), .B(n228), .CI(n207), .CON(n140), .SN(n141)
         );
  FAx1_ASAP7_75t_R U131 ( .A(n152), .B(n145), .CI(n158), .CON(n146), .SN(n147)
         );
  FAx1_ASAP7_75t_R U133 ( .A(n162), .B(n222), .CI(n303), .CON(n149), .SN(n150)
         );
  FAx1_ASAP7_75t_R U135 ( .A(n208), .B(n229), .CI(n215), .CON(n151), .SN(n152)
         );
  FAx1_ASAP7_75t_R U140 ( .A(n163), .B(n167), .CI(n305), .CON(n158), .SN(n159)
         );
  FAx1_ASAP7_75t_R U142 ( .A(n216), .B(n230), .CI(n223), .CON(n160), .SN(n161)
         );
  FAx1_ASAP7_75t_R U146 ( .A(n224), .B(n231), .CI(n169), .CON(n165), .SN(n166)
         );
  NAND2xp5_ASAP7_75t_R U233 ( .A(n323), .B(n322), .Y(n362) );
  NAND2xp5_ASAP7_75t_R U234 ( .A(n341), .B(n342), .Y(n339) );
  NAND2xp5_ASAP7_75t_R U235 ( .A(n343), .B(n344), .Y(n342) );
  NAND2xp5_ASAP7_75t_R U236 ( .A(n361), .B(n362), .Y(n320) );
  NAND2xp5_ASAP7_75t_R U237 ( .A(n345), .B(n346), .Y(n344) );
  NAND2xp5_ASAP7_75t_R U238 ( .A(n363), .B(n364), .Y(n322) );
  NAND2xp5_ASAP7_75t_R U239 ( .A(n325), .B(n324), .Y(n364) );
  INVx1_ASAP7_75t_R U240 ( .A(n58), .Y(n286) );
  INVx1_ASAP7_75t_R U241 ( .A(n63), .Y(n287) );
  INVx1_ASAP7_75t_R U242 ( .A(n71), .Y(n288) );
  INVx1_ASAP7_75t_R U243 ( .A(n68), .Y(n289) );
  INVx1_ASAP7_75t_R U244 ( .A(n84), .Y(n290) );
  INVx1_ASAP7_75t_R U245 ( .A(n85), .Y(n291) );
  INVx1_ASAP7_75t_R U246 ( .A(n100), .Y(n292) );
  INVx1_ASAP7_75t_R U247 ( .A(n96), .Y(n293) );
  INVx1_ASAP7_75t_R U248 ( .A(n109), .Y(n294) );
  INVx1_ASAP7_75t_R U249 ( .A(n120), .Y(n295) );
  INVx1_ASAP7_75t_R U250 ( .A(b[7]), .Y(n296) );
  INVx1_ASAP7_75t_R U251 ( .A(n125), .Y(n297) );
  INVx1_ASAP7_75t_R U252 ( .A(n140), .Y(n298) );
  INVx1_ASAP7_75t_R U253 ( .A(b[6]), .Y(n299) );
  INVx1_ASAP7_75t_R U254 ( .A(n146), .Y(n300) );
  INVx1_ASAP7_75t_R U255 ( .A(b[5]), .Y(n301) );
  INVx1_ASAP7_75t_R U256 ( .A(n150), .Y(n302) );
  INVx1_ASAP7_75t_R U257 ( .A(n160), .Y(n303) );
  INVx1_ASAP7_75t_R U258 ( .A(b[4]), .Y(n304) );
  INVx1_ASAP7_75t_R U259 ( .A(n165), .Y(n305) );
  INVx1_ASAP7_75t_R U260 ( .A(n166), .Y(n306) );
  INVx1_ASAP7_75t_R U261 ( .A(b[3]), .Y(n307) );
  INVx1_ASAP7_75t_R U262 ( .A(b[2]), .Y(n308) );
  INVx1_ASAP7_75t_R U263 ( .A(b[0]), .Y(n309) );
  INVx1_ASAP7_75t_R U264 ( .A(a[7]), .Y(n310) );
  INVx1_ASAP7_75t_R U265 ( .A(a[6]), .Y(n311) );
  INVx1_ASAP7_75t_R U266 ( .A(a[5]), .Y(n312) );
  INVx1_ASAP7_75t_R U267 ( .A(a[4]), .Y(n313) );
  INVx1_ASAP7_75t_R U268 ( .A(a[3]), .Y(n314) );
  INVx1_ASAP7_75t_R U269 ( .A(a[2]), .Y(n315) );
  INVx1_ASAP7_75t_R U270 ( .A(a[1]), .Y(n316) );
  INVx1_ASAP7_75t_R U271 ( .A(a[0]), .Y(n317) );
  XOR2xp5_ASAP7_75t_R U272 ( .A(n318), .B(n319), .Y(product[9]) );
  XOR2xp5_ASAP7_75t_R U273 ( .A(n320), .B(n321), .Y(product[8]) );
  XOR2xp5_ASAP7_75t_R U274 ( .A(n322), .B(n323), .Y(product[7]) );
  XOR2xp5_ASAP7_75t_R U275 ( .A(n324), .B(n325), .Y(product[6]) );
  XOR2xp5_ASAP7_75t_R U276 ( .A(n326), .B(n327), .Y(product[5]) );
  XOR2xp5_ASAP7_75t_R U277 ( .A(n328), .B(n329), .Y(product[4]) );
  XOR2xp5_ASAP7_75t_R U278 ( .A(n330), .B(n331), .Y(product[3]) );
  XOR2xp5_ASAP7_75t_R U279 ( .A(n332), .B(n333), .Y(product[2]) );
  XOR2xp5_ASAP7_75t_R U280 ( .A(n334), .B(n335), .Y(product[1]) );
  NAND2xp33_ASAP7_75t_R U281 ( .A(n336), .B(n337), .Y(product[15]) );
  NAND2xp33_ASAP7_75t_R U282 ( .A(n338), .B(n339), .Y(n337) );
  OR2x2_ASAP7_75t_R U283 ( .A(n340), .B(n57), .Y(n336) );
  XOR2xp5_ASAP7_75t_R U284 ( .A(n339), .B(n338), .Y(product[14]) );
  XOR2xp5_ASAP7_75t_R U285 ( .A(n340), .B(n57), .Y(n338) );
  NAND2xp33_ASAP7_75t_R U286 ( .A(b[7]), .B(a[7]), .Y(n340) );
  NAND2xp33_ASAP7_75t_R U287 ( .A(n61), .B(n286), .Y(n341) );
  XOR2xp5_ASAP7_75t_R U288 ( .A(n344), .B(n343), .Y(product[13]) );
  XOR2xp5_ASAP7_75t_R U289 ( .A(n286), .B(n61), .Y(n343) );
  NAND2xp33_ASAP7_75t_R U290 ( .A(n347), .B(n348), .Y(n346) );
  NAND2xp33_ASAP7_75t_R U291 ( .A(n62), .B(n289), .Y(n345) );
  XOR2xp5_ASAP7_75t_R U292 ( .A(n348), .B(n347), .Y(product[12]) );
  XOR2xp5_ASAP7_75t_R U293 ( .A(n62), .B(n289), .Y(n347) );
  NAND2xp33_ASAP7_75t_R U294 ( .A(n349), .B(n350), .Y(n348) );
  NAND2xp33_ASAP7_75t_R U295 ( .A(n351), .B(n352), .Y(n350) );
  OR2x2_ASAP7_75t_R U296 ( .A(n69), .B(n78), .Y(n349) );
  XOR2xp5_ASAP7_75t_R U297 ( .A(n352), .B(n351), .Y(product[11]) );
  XOR2xp5_ASAP7_75t_R U298 ( .A(n69), .B(n78), .Y(n351) );
  NAND2xp33_ASAP7_75t_R U299 ( .A(n353), .B(n354), .Y(n352) );
  NAND2xp33_ASAP7_75t_R U300 ( .A(n355), .B(n356), .Y(n354) );
  OR2x2_ASAP7_75t_R U301 ( .A(n79), .B(n90), .Y(n353) );
  XOR2xp5_ASAP7_75t_R U302 ( .A(n356), .B(n355), .Y(product[10]) );
  XOR2xp5_ASAP7_75t_R U303 ( .A(n79), .B(n90), .Y(n355) );
  NAND2xp33_ASAP7_75t_R U304 ( .A(n357), .B(n358), .Y(n356) );
  NAND2xp33_ASAP7_75t_R U305 ( .A(n319), .B(n318), .Y(n358) );
  NAND2xp33_ASAP7_75t_R U306 ( .A(n359), .B(n360), .Y(n318) );
  NAND2xp33_ASAP7_75t_R U307 ( .A(n321), .B(n320), .Y(n360) );
  NAND2xp33_ASAP7_75t_R U308 ( .A(n365), .B(n366), .Y(n324) );
  NAND2xp33_ASAP7_75t_R U309 ( .A(n327), .B(n326), .Y(n366) );
  NAND2xp33_ASAP7_75t_R U310 ( .A(n367), .B(n368), .Y(n326) );
  NAND2xp33_ASAP7_75t_R U311 ( .A(n329), .B(n328), .Y(n368) );
  NAND2xp33_ASAP7_75t_R U312 ( .A(n369), .B(n370), .Y(n328) );
  NAND2xp33_ASAP7_75t_R U313 ( .A(n331), .B(n330), .Y(n370) );
  NAND2xp33_ASAP7_75t_R U314 ( .A(n371), .B(n372), .Y(n330) );
  NAND2xp33_ASAP7_75t_R U315 ( .A(n332), .B(n333), .Y(n372) );
  XOR2xp5_ASAP7_75t_R U316 ( .A(n373), .B(n374), .Y(n333) );
  NOR2xp33_ASAP7_75t_R U317 ( .A(n334), .B(n335), .Y(n332) );
  NAND2xp33_ASAP7_75t_R U318 ( .A(b[1]), .B(a[0]), .Y(n335) );
  NAND2xp33_ASAP7_75t_R U319 ( .A(b[0]), .B(a[1]), .Y(n334) );
  NAND2xp33_ASAP7_75t_R U320 ( .A(n373), .B(n374), .Y(n371) );
  XOR2xp5_ASAP7_75t_R U321 ( .A(n375), .B(n376), .Y(n374) );
  NOR2xp33_ASAP7_75t_R U322 ( .A(n315), .B(n309), .Y(n373) );
  XOR2xp5_ASAP7_75t_R U323 ( .A(n306), .B(n377), .Y(n331) );
  NAND2xp33_ASAP7_75t_R U324 ( .A(n377), .B(n306), .Y(n369) );
  XOR2xp5_ASAP7_75t_R U325 ( .A(n378), .B(n379), .Y(n377) );
  XOR2xp5_ASAP7_75t_R U326 ( .A(n159), .B(n161), .Y(n329) );
  OR2x2_ASAP7_75t_R U327 ( .A(n159), .B(n161), .Y(n367) );
  XOR2xp5_ASAP7_75t_R U328 ( .A(n147), .B(n302), .Y(n327) );
  NAND2xp33_ASAP7_75t_R U329 ( .A(n147), .B(n302), .Y(n365) );
  XOR2xp5_ASAP7_75t_R U330 ( .A(n134), .B(n137), .Y(n325) );
  NAND2xp33_ASAP7_75t_R U331 ( .A(n134), .B(n137), .Y(n363) );
  XOR2xp5_ASAP7_75t_R U332 ( .A(n295), .B(n133), .Y(n323) );
  NAND2xp33_ASAP7_75t_R U333 ( .A(n133), .B(n295), .Y(n361) );
  XOR2xp5_ASAP7_75t_R U334 ( .A(n105), .B(n119), .Y(n321) );
  OR2x2_ASAP7_75t_R U335 ( .A(n105), .B(n119), .Y(n359) );
  XOR2xp5_ASAP7_75t_R U336 ( .A(n104), .B(n91), .Y(n319) );
  OR2x2_ASAP7_75t_R U337 ( .A(n104), .B(n91), .Y(n357) );
  NOR2xp33_ASAP7_75t_R U338 ( .A(n309), .B(n317), .Y(product[0]) );
  NAND2xp33_ASAP7_75t_R U339 ( .A(n380), .B(n381), .Y(n95) );
  NAND2xp33_ASAP7_75t_R U340 ( .A(b[6]), .B(a[5]), .Y(n70) );
  NOR2xp33_ASAP7_75t_R U341 ( .A(n317), .B(n307), .Y(n231) );
  NOR2xp33_ASAP7_75t_R U342 ( .A(n317), .B(n304), .Y(n230) );
  NOR2xp33_ASAP7_75t_R U343 ( .A(n317), .B(n301), .Y(n229) );
  NOR2xp33_ASAP7_75t_R U344 ( .A(n317), .B(n299), .Y(n228) );
  NOR2xp33_ASAP7_75t_R U345 ( .A(n317), .B(n296), .Y(n227) );
  NOR2xp33_ASAP7_75t_R U346 ( .A(n316), .B(n308), .Y(n224) );
  NOR2xp33_ASAP7_75t_R U347 ( .A(n316), .B(n307), .Y(n223) );
  NOR2xp33_ASAP7_75t_R U348 ( .A(n316), .B(n304), .Y(n222) );
  NOR2xp33_ASAP7_75t_R U349 ( .A(n316), .B(n301), .Y(n221) );
  NOR2xp33_ASAP7_75t_R U350 ( .A(n316), .B(n299), .Y(n220) );
  NOR2xp33_ASAP7_75t_R U351 ( .A(n316), .B(n296), .Y(n219) );
  NOR2xp33_ASAP7_75t_R U352 ( .A(n315), .B(n308), .Y(n216) );
  NOR2xp33_ASAP7_75t_R U353 ( .A(n315), .B(n307), .Y(n215) );
  NOR2xp33_ASAP7_75t_R U354 ( .A(n315), .B(n304), .Y(n214) );
  NOR2xp33_ASAP7_75t_R U355 ( .A(n315), .B(n301), .Y(n213) );
  NOR2xp33_ASAP7_75t_R U356 ( .A(n315), .B(n299), .Y(n212) );
  NOR2xp33_ASAP7_75t_R U357 ( .A(n315), .B(n296), .Y(n211) );
  NOR2xp33_ASAP7_75t_R U358 ( .A(n308), .B(n314), .Y(n208) );
  NOR2xp33_ASAP7_75t_R U359 ( .A(n314), .B(n307), .Y(n207) );
  NOR2xp33_ASAP7_75t_R U360 ( .A(n314), .B(n304), .Y(n206) );
  NOR2xp33_ASAP7_75t_R U361 ( .A(n314), .B(n301), .Y(n205) );
  NOR2xp33_ASAP7_75t_R U362 ( .A(n314), .B(n299), .Y(n204) );
  NOR2xp33_ASAP7_75t_R U363 ( .A(n314), .B(n296), .Y(n203) );
  NOR2xp33_ASAP7_75t_R U364 ( .A(n308), .B(n313), .Y(n200) );
  NOR2xp33_ASAP7_75t_R U365 ( .A(n307), .B(n313), .Y(n199) );
  NOR2xp33_ASAP7_75t_R U366 ( .A(n304), .B(n313), .Y(n198) );
  NOR2xp33_ASAP7_75t_R U367 ( .A(n301), .B(n313), .Y(n197) );
  NOR2xp33_ASAP7_75t_R U368 ( .A(n299), .B(n313), .Y(n196) );
  NOR2xp33_ASAP7_75t_R U369 ( .A(n296), .B(n313), .Y(n195) );
  NOR2xp33_ASAP7_75t_R U370 ( .A(n308), .B(n312), .Y(n192) );
  NOR2xp33_ASAP7_75t_R U371 ( .A(n312), .B(n307), .Y(n191) );
  NOR2xp33_ASAP7_75t_R U372 ( .A(n312), .B(n304), .Y(n190) );
  NOR2xp33_ASAP7_75t_R U373 ( .A(n312), .B(n301), .Y(n189) );
  NOR2xp33_ASAP7_75t_R U374 ( .A(n296), .B(n312), .Y(n187) );
  NOR2xp33_ASAP7_75t_R U375 ( .A(n311), .B(n307), .Y(n183) );
  NOR2xp33_ASAP7_75t_R U376 ( .A(n311), .B(n304), .Y(n182) );
  NOR2xp33_ASAP7_75t_R U377 ( .A(n311), .B(n301), .Y(n181) );
  NOR2xp33_ASAP7_75t_R U378 ( .A(n311), .B(n299), .Y(n180) );
  NOR2xp33_ASAP7_75t_R U379 ( .A(n296), .B(n311), .Y(n179) );
  NOR2xp33_ASAP7_75t_R U380 ( .A(n308), .B(n310), .Y(n176) );
  NOR2xp33_ASAP7_75t_R U381 ( .A(n310), .B(n307), .Y(n175) );
  NOR2xp33_ASAP7_75t_R U382 ( .A(n310), .B(n304), .Y(n174) );
  NOR2xp33_ASAP7_75t_R U383 ( .A(n310), .B(n301), .Y(n173) );
  NOR2xp33_ASAP7_75t_R U384 ( .A(n310), .B(n299), .Y(n172) );
  NOR2xp33_ASAP7_75t_R U385 ( .A(n376), .B(n375), .Y(n169) );
  NAND2xp33_ASAP7_75t_R U386 ( .A(b[1]), .B(a[1]), .Y(n375) );
  NAND2xp33_ASAP7_75t_R U387 ( .A(b[2]), .B(a[0]), .Y(n376) );
  NOR2xp33_ASAP7_75t_R U388 ( .A(n379), .B(n378), .Y(n167) );
  NAND2xp33_ASAP7_75t_R U389 ( .A(a[3]), .B(b[0]), .Y(n378) );
  NAND2xp33_ASAP7_75t_R U390 ( .A(a[2]), .B(b[1]), .Y(n379) );
  XOR2xp5_ASAP7_75t_R U391 ( .A(n382), .B(n383), .Y(n163) );
  NOR2xp33_ASAP7_75t_R U392 ( .A(n382), .B(n383), .Y(n162) );
  NAND2xp33_ASAP7_75t_R U393 ( .A(a[4]), .B(b[0]), .Y(n383) );
  NAND2xp33_ASAP7_75t_R U394 ( .A(a[3]), .B(b[1]), .Y(n382) );
  NOR2xp33_ASAP7_75t_R U395 ( .A(n384), .B(n385), .Y(n153) );
  XNOR2xp5_ASAP7_75t_R U396 ( .A(n384), .B(n385), .Y(n145) );
  NAND2xp33_ASAP7_75t_R U397 ( .A(a[4]), .B(b[1]), .Y(n385) );
  NAND2xp33_ASAP7_75t_R U398 ( .A(a[5]), .B(b[0]), .Y(n384) );
  NOR2xp33_ASAP7_75t_R U399 ( .A(n386), .B(n387), .Y(n142) );
  XNOR2xp5_ASAP7_75t_R U400 ( .A(n386), .B(n387), .Y(n135) );
  NAND2xp33_ASAP7_75t_R U401 ( .A(a[5]), .B(b[1]), .Y(n387) );
  NAND2xp33_ASAP7_75t_R U402 ( .A(a[6]), .B(b[0]), .Y(n386) );
  XOR2xp5_ASAP7_75t_R U403 ( .A(n388), .B(n389), .Y(n131) );
  NOR2xp33_ASAP7_75t_R U404 ( .A(n388), .B(n389), .Y(n130) );
  NAND2xp33_ASAP7_75t_R U405 ( .A(a[7]), .B(b[0]), .Y(n389) );
  NAND2xp33_ASAP7_75t_R U406 ( .A(a[6]), .B(b[1]), .Y(n388) );
  XNOR2xp5_ASAP7_75t_R U407 ( .A(n381), .B(n380), .Y(n108) );
  NOR2xp33_ASAP7_75t_R U408 ( .A(n311), .B(n308), .Y(n380) );
  AND2x2_ASAP7_75t_R U409 ( .A(a[7]), .B(b[1]), .Y(n381) );
endmodule

