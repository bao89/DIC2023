/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03
// Date      : Sun Jan  7 18:31:42 2024
/////////////////////////////////////////////////////////////


module Convolution ( clk1, clk2, rst_n, in_valid, weight_valid, In_IFM_1, 
        In_IFM_2, In_IFM_3, In_IFM_4, In_IFM_5, In_IFM_6, In_IFM_7, In_IFM_8, 
        In_IFM_9, In_Weight_1, In_Weight_2, In_Weight_3, In_Weight_4, 
        In_Weight_5, In_Weight_6, In_Weight_7, In_Weight_8, In_Weight_9, 
        out_valid, Out_OFM );
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
  input clk1, clk2, rst_n, in_valid, weight_valid;
  output out_valid;
  wire   A_syn, n17, n18, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n309, n311, n313,
         n315, n317, n319, n321, n323, n325, n327, n329, n331, n333, n335,
         n337, n339, n341, n343, n345, n347, n435, n437, n439, n441, n443,
         n445, n447, n449, n451, n453, n455, n457, n459, n461, n463, n465,
         n467, n469, n471, n473, n475, n477, n479, n481, n483, n485, n487,
         n489, n491, n493, n495, n497, n499, n501, n503, n505, n507, n509,
         n511, n513, n515, n517, n519, n521, n523, n525, n527, n529, n531,
         n533, n535, n537, n539, n541, n543, n545, n547, n549, n551, n553,
         n555, n557, n559, n561, n563, n565, n567, n569, n571, n573, n575,
         n577, n579, n581, n583, n585, n587, n589, n591, n593, n595, n597,
         n599, n601, n603, n605, n607, n609, n611, n613, n615, n617, n619,
         n621, n623, n625, n627, n629, n631, n633, n635, n637, n639, n641,
         n643, n645, n647, n649, n651, n653, n655, n657, n659, n661, n663,
         n665, n667, n669, n671, n673, n675, n677, n679, n681, n683, n685,
         n687, n689, n691, n693, n695, n697, n699, n701, n703, n705, n707,
         n709, n711, n713, n715, n717, n719, n721, out_9__9_, out_9__8_,
         out_9__7_, out_9__6_, out_9__5_, out_9__4_, out_9__3_, out_9__2_,
         out_9__1_, out_9__15_, out_9__14_, out_9__13_, out_9__12_, out_9__11_,
         out_9__10_, out_9__0_, out_8__9_, out_8__8_, out_8__7_, out_8__6_,
         out_8__5_, out_8__4_, out_8__3_, out_8__2_, out_8__1_, out_8__15_,
         out_8__14_, out_8__13_, out_8__12_, out_8__11_, out_8__10_, out_8__0_,
         out_7__9_, out_7__8_, out_7__7_, out_7__6_, out_7__5_, out_7__4_,
         out_7__3_, out_7__2_, out_7__1_, out_7__15_, out_7__14_, out_7__13_,
         out_7__12_, out_7__11_, out_7__10_, out_7__0_, out_6__9_, out_6__8_,
         out_6__7_, out_6__6_, out_6__5_, out_6__4_, out_6__3_, out_6__2_,
         out_6__1_, out_6__15_, out_6__14_, out_6__13_, out_6__12_, out_6__11_,
         out_6__10_, out_6__0_, out_5__9_, out_5__8_, out_5__7_, out_5__6_,
         out_5__5_, out_5__4_, out_5__3_, out_5__2_, out_5__1_, out_5__15_,
         out_5__14_, out_5__13_, out_5__12_, out_5__11_, out_5__10_, out_5__0_,
         out_4__9_, out_4__8_, out_4__7_, out_4__6_, out_4__5_, out_4__4_,
         out_4__3_, out_4__2_, out_4__1_, out_4__15_, out_4__14_, out_4__13_,
         out_4__12_, out_4__11_, out_4__10_, out_4__0_, out_3__9_, out_3__8_,
         out_3__7_, out_3__6_, out_3__5_, out_3__4_, out_3__3_, out_3__2_,
         out_3__1_, out_3__15_, out_3__14_, out_3__13_, out_3__12_, out_3__11_,
         out_3__10_, out_3__0_, out_2__9_, out_2__8_, out_2__7_, out_2__6_,
         out_2__5_, out_2__4_, out_2__3_, out_2__2_, out_2__1_, out_2__15_,
         out_2__14_, out_2__13_, out_2__12_, out_2__11_, out_2__10_, out_2__0_,
         out_1__9_, out_1__8_, out_1__7_, out_1__6_, out_1__5_, out_1__4_,
         out_1__3_, out_1__2_, out_1__1_, out_1__15_, out_1__14_, out_1__13_,
         out_1__12_, out_1__11_, out_1__10_, out_1__0_, net7679, N95, N94, N93,
         N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N75,
         N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61,
         N60, N59, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46,
         N45, N44, N43, N42, N41, N40, N137, N136, N135, N134, N133, N132,
         N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, N117,
         N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106,
         N105, N104, N103, N102, N101, N100, n725, n726, n727, n728, n729,
         n730, n731, n732, n733, n734, n735, n736, n737, n738, n739, n740,
         n741, n742, n743, n744, n745, n746, n747, n748, n749, n750, n751,
         n752, n753, n754, n755, n756, n757, n758, n759, n760, n761, n762,
         n763, n764, n765, n766, n767, n768, n769, n770, n771, n772, n773,
         n774, n775, n776, n777, n778, n779, n780, n781, n782, n783, n784,
         n785, n786, n787, n788, n789, n790, n791, n792, n793, n794, n795,
         n796, n797, n798, n799, n800, n801, n802, n803, n804, n805, n806,
         n807, n808, n809, n810, n811, n812, n813, n814, n815, n816, n817,
         n818, n819, n820, n821, n822, n823, n824, n825, n826, n827, n828,
         n829, n830, n831, n832, n833, n834, n835, n836, n837, n838, n839,
         n840, n841, n842, n843, n844, n845, n846, n847, n848, n849, n850,
         n851, n852, n853, n854, n855, n856, n857, n858, n859, n860, n861,
         n862, n863, n864, n865, n866, n867, n868, n869, n870, n871, n872,
         n873, n874, n875, n876, n877, n878, n879, n880, n881, n882, n883,
         n884, n885, n886, n887, n888, n889, n890, n891, n892, n893, n894,
         n895, n896, n897, n898, n899, n900, n901, n902, n903, n904, n905,
         n906, n907, n908, n909, n910, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3,
         SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5,
         SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7,
         SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9,
         SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11;
  wire   [71:0] Weight_Buffer;
  wire   [71:0] IFM_Buffer;
  wire   [19:0] out_sum;
  wire   [19:0] A1;
  wire   [19:0] A2;

  syn_XOR D1 ( .IN(n742), .OUT(A_syn), .TX_CLK(clk1), .RX_CLK(clk2), .RST_N(
        rst_n) );
  ASYNC_DFFHx1_ASAP7_75t_R A1_reg_19_ ( .D(n834), .CLK(clk2), .RESET(n735), 
        .SET(net7679), .QN(A1[19]) );
  ASYNC_DFFHx1_ASAP7_75t_R A1_reg_18_ ( .D(n835), .CLK(clk2), .RESET(n735), 
        .SET(net7679), .QN(A1[18]) );
  ASYNC_DFFHx1_ASAP7_75t_R A1_reg_17_ ( .D(n836), .CLK(clk2), .RESET(n735), 
        .SET(net7679), .QN(A1[17]) );
  ASYNC_DFFHx1_ASAP7_75t_R A1_reg_16_ ( .D(n837), .CLK(clk2), .RESET(n735), 
        .SET(net7679), .QN(A1[16]) );
  ASYNC_DFFHx1_ASAP7_75t_R A1_reg_15_ ( .D(n838), .CLK(clk2), .RESET(n735), 
        .SET(net7679), .QN(A1[15]) );
  ASYNC_DFFHx1_ASAP7_75t_R A1_reg_14_ ( .D(n839), .CLK(clk2), .RESET(n735), 
        .SET(net7679), .QN(A1[14]) );
  ASYNC_DFFHx1_ASAP7_75t_R A1_reg_13_ ( .D(n840), .CLK(clk2), .RESET(n735), 
        .SET(net7679), .QN(A1[13]) );
  ASYNC_DFFHx1_ASAP7_75t_R A1_reg_12_ ( .D(n841), .CLK(clk2), .RESET(n735), 
        .SET(net7679), .QN(A1[12]) );
  ASYNC_DFFHx1_ASAP7_75t_R A1_reg_11_ ( .D(n842), .CLK(clk2), .RESET(n735), 
        .SET(net7679), .QN(A1[11]) );
  ASYNC_DFFHx1_ASAP7_75t_R A1_reg_10_ ( .D(n843), .CLK(clk2), .RESET(n735), 
        .SET(net7679), .QN(A1[10]) );
  ASYNC_DFFHx1_ASAP7_75t_R A1_reg_9_ ( .D(n844), .CLK(clk2), .RESET(n735), 
        .SET(net7679), .QN(A1[9]) );
  ASYNC_DFFHx1_ASAP7_75t_R A1_reg_8_ ( .D(n845), .CLK(clk2), .RESET(n734), 
        .SET(net7679), .QN(A1[8]) );
  ASYNC_DFFHx1_ASAP7_75t_R A1_reg_7_ ( .D(n846), .CLK(clk2), .RESET(n734), 
        .SET(net7679), .QN(A1[7]) );
  ASYNC_DFFHx1_ASAP7_75t_R A1_reg_6_ ( .D(n847), .CLK(clk2), .RESET(n734), 
        .SET(net7679), .QN(A1[6]) );
  ASYNC_DFFHx1_ASAP7_75t_R A1_reg_5_ ( .D(n848), .CLK(clk2), .RESET(n734), 
        .SET(net7679), .QN(A1[5]) );
  ASYNC_DFFHx1_ASAP7_75t_R A1_reg_4_ ( .D(n849), .CLK(clk2), .RESET(n734), 
        .SET(net7679), .QN(A1[4]) );
  ASYNC_DFFHx1_ASAP7_75t_R A1_reg_3_ ( .D(n850), .CLK(clk2), .RESET(n734), 
        .SET(net7679), .QN(A1[3]) );
  ASYNC_DFFHx1_ASAP7_75t_R A1_reg_2_ ( .D(n851), .CLK(clk2), .RESET(n734), 
        .SET(net7679), .QN(A1[2]) );
  ASYNC_DFFHx1_ASAP7_75t_R A1_reg_1_ ( .D(n852), .CLK(clk2), .RESET(n734), 
        .SET(net7679), .QN(A1[1]) );
  ASYNC_DFFHx1_ASAP7_75t_R A1_reg_0_ ( .D(n853), .CLK(clk2), .RESET(n734), 
        .SET(net7679), .QN(A1[0]) );
  OR2x2_ASAP7_75t_R U3 ( .A(n17), .B(n18), .Y(n543) );
  OR2x2_ASAP7_75t_R U6 ( .A(n20), .B(n21), .Y(n545) );
  OR2x2_ASAP7_75t_R U9 ( .A(n22), .B(n23), .Y(n547) );
  OR2x2_ASAP7_75t_R U12 ( .A(n24), .B(n25), .Y(n549) );
  OR2x2_ASAP7_75t_R U15 ( .A(n26), .B(n27), .Y(n551) );
  OR2x2_ASAP7_75t_R U18 ( .A(n28), .B(n29), .Y(n553) );
  OR2x2_ASAP7_75t_R U21 ( .A(n30), .B(n31), .Y(n555) );
  OR2x2_ASAP7_75t_R U24 ( .A(n32), .B(n33), .Y(n557) );
  OR2x2_ASAP7_75t_R U27 ( .A(n34), .B(n35), .Y(n559) );
  OR2x2_ASAP7_75t_R U30 ( .A(n36), .B(n37), .Y(n561) );
  OR2x2_ASAP7_75t_R U33 ( .A(n38), .B(n39), .Y(n563) );
  OR2x2_ASAP7_75t_R U36 ( .A(n40), .B(n41), .Y(n565) );
  OR2x2_ASAP7_75t_R U39 ( .A(n42), .B(n43), .Y(n567) );
  OR2x2_ASAP7_75t_R U42 ( .A(n44), .B(n45), .Y(n569) );
  OR2x2_ASAP7_75t_R U45 ( .A(n46), .B(n47), .Y(n571) );
  OR2x2_ASAP7_75t_R U48 ( .A(n48), .B(n49), .Y(n573) );
  OR2x2_ASAP7_75t_R U51 ( .A(n50), .B(n51), .Y(n575) );
  OR2x2_ASAP7_75t_R U54 ( .A(n52), .B(n53), .Y(n577) );
  OR2x2_ASAP7_75t_R U57 ( .A(n54), .B(n55), .Y(n579) );
  OR2x2_ASAP7_75t_R U60 ( .A(n57), .B(n58), .Y(n581) );
  OR2x2_ASAP7_75t_R U63 ( .A(n59), .B(n60), .Y(n583) );
  OR2x2_ASAP7_75t_R U66 ( .A(n61), .B(n62), .Y(n585) );
  OR2x2_ASAP7_75t_R U69 ( .A(n63), .B(n64), .Y(n587) );
  OR2x2_ASAP7_75t_R U72 ( .A(n65), .B(n66), .Y(n589) );
  OR2x2_ASAP7_75t_R U75 ( .A(n67), .B(n68), .Y(n591) );
  OR2x2_ASAP7_75t_R U78 ( .A(n69), .B(n70), .Y(n593) );
  OR2x2_ASAP7_75t_R U81 ( .A(n71), .B(n72), .Y(n595) );
  OR2x2_ASAP7_75t_R U84 ( .A(n73), .B(n74), .Y(n597) );
  OR2x2_ASAP7_75t_R U87 ( .A(n75), .B(n76), .Y(n599) );
  OR2x2_ASAP7_75t_R U90 ( .A(n77), .B(n78), .Y(n601) );
  OR2x2_ASAP7_75t_R U93 ( .A(n79), .B(n80), .Y(n603) );
  OR2x2_ASAP7_75t_R U96 ( .A(n81), .B(n82), .Y(n605) );
  OR2x2_ASAP7_75t_R U99 ( .A(n83), .B(n84), .Y(n607) );
  OR2x2_ASAP7_75t_R U102 ( .A(n85), .B(n86), .Y(n609) );
  OR2x2_ASAP7_75t_R U105 ( .A(n87), .B(n88), .Y(n611) );
  OR2x2_ASAP7_75t_R U108 ( .A(n89), .B(n90), .Y(n613) );
  OR2x2_ASAP7_75t_R U111 ( .A(n91), .B(n92), .Y(n615) );
  OR2x2_ASAP7_75t_R U114 ( .A(n93), .B(n94), .Y(n617) );
  OR2x2_ASAP7_75t_R U117 ( .A(n95), .B(n96), .Y(n619) );
  OR2x2_ASAP7_75t_R U120 ( .A(n97), .B(n98), .Y(n621) );
  OR2x2_ASAP7_75t_R U123 ( .A(n99), .B(n100), .Y(n623) );
  OR2x2_ASAP7_75t_R U126 ( .A(n101), .B(n102), .Y(n625) );
  OR2x2_ASAP7_75t_R U129 ( .A(n103), .B(n104), .Y(n627) );
  OR2x2_ASAP7_75t_R U132 ( .A(n105), .B(n106), .Y(n629) );
  OR2x2_ASAP7_75t_R U135 ( .A(n107), .B(n108), .Y(n631) );
  OR2x2_ASAP7_75t_R U138 ( .A(n109), .B(n110), .Y(n633) );
  OR2x2_ASAP7_75t_R U141 ( .A(n111), .B(n112), .Y(n635) );
  OR2x2_ASAP7_75t_R U144 ( .A(n113), .B(n114), .Y(n637) );
  OR2x2_ASAP7_75t_R U147 ( .A(n115), .B(n116), .Y(n639) );
  OR2x2_ASAP7_75t_R U150 ( .A(n117), .B(n118), .Y(n641) );
  OR2x2_ASAP7_75t_R U153 ( .A(n119), .B(n120), .Y(n643) );
  OR2x2_ASAP7_75t_R U156 ( .A(n121), .B(n122), .Y(n645) );
  OR2x2_ASAP7_75t_R U159 ( .A(n123), .B(n124), .Y(n647) );
  OR2x2_ASAP7_75t_R U162 ( .A(n125), .B(n126), .Y(n649) );
  OR2x2_ASAP7_75t_R U165 ( .A(n127), .B(n128), .Y(n651) );
  OR2x2_ASAP7_75t_R U168 ( .A(n129), .B(n130), .Y(n653) );
  OR2x2_ASAP7_75t_R U171 ( .A(n131), .B(n132), .Y(n655) );
  OR2x2_ASAP7_75t_R U174 ( .A(n133), .B(n134), .Y(n657) );
  OR2x2_ASAP7_75t_R U177 ( .A(n135), .B(n136), .Y(n659) );
  OR2x2_ASAP7_75t_R U180 ( .A(n137), .B(n138), .Y(n661) );
  OR2x2_ASAP7_75t_R U183 ( .A(n139), .B(n140), .Y(n663) );
  OR2x2_ASAP7_75t_R U186 ( .A(n141), .B(n142), .Y(n665) );
  OR2x2_ASAP7_75t_R U189 ( .A(n143), .B(n144), .Y(n667) );
  OR2x2_ASAP7_75t_R U192 ( .A(n145), .B(n146), .Y(n669) );
  OR2x2_ASAP7_75t_R U195 ( .A(n147), .B(n148), .Y(n671) );
  OR2x2_ASAP7_75t_R U198 ( .A(n149), .B(n150), .Y(n673) );
  OR2x2_ASAP7_75t_R U201 ( .A(n151), .B(n152), .Y(n675) );
  OR2x2_ASAP7_75t_R U204 ( .A(n153), .B(n154), .Y(n677) );
  OR2x2_ASAP7_75t_R U207 ( .A(n155), .B(n156), .Y(n679) );
  OR2x2_ASAP7_75t_R U210 ( .A(n157), .B(n158), .Y(n681) );
  OR2x2_ASAP7_75t_R U213 ( .A(n159), .B(n160), .Y(n683) );
  OR2x2_ASAP7_75t_R U216 ( .A(n161), .B(n162), .Y(n685) );
  OR2x2_ASAP7_75t_R U219 ( .A(n163), .B(n164), .Y(n687) );
  OR2x2_ASAP7_75t_R U222 ( .A(n165), .B(n166), .Y(n689) );
  OR2x2_ASAP7_75t_R U225 ( .A(n167), .B(n168), .Y(n691) );
  OR2x2_ASAP7_75t_R U228 ( .A(n169), .B(n170), .Y(n693) );
  OR2x2_ASAP7_75t_R U231 ( .A(n171), .B(n172), .Y(n695) );
  OR2x2_ASAP7_75t_R U234 ( .A(n173), .B(n174), .Y(n697) );
  OR2x2_ASAP7_75t_R U237 ( .A(n175), .B(n176), .Y(n699) );
  OR2x2_ASAP7_75t_R U240 ( .A(n177), .B(n178), .Y(n701) );
  OR2x2_ASAP7_75t_R U243 ( .A(n179), .B(n180), .Y(n703) );
  OR2x2_ASAP7_75t_R U246 ( .A(n181), .B(n182), .Y(n705) );
  OR2x2_ASAP7_75t_R U249 ( .A(n183), .B(n184), .Y(n707) );
  OR2x2_ASAP7_75t_R U252 ( .A(n185), .B(n186), .Y(n709) );
  OR2x2_ASAP7_75t_R U255 ( .A(n187), .B(n188), .Y(n711) );
  OR2x2_ASAP7_75t_R U258 ( .A(n189), .B(n190), .Y(n713) );
  OR2x2_ASAP7_75t_R U261 ( .A(n191), .B(n192), .Y(n715) );
  OR2x2_ASAP7_75t_R U264 ( .A(n193), .B(n194), .Y(n717) );
  OR2x2_ASAP7_75t_R U267 ( .A(n195), .B(n196), .Y(n719) );
  OR2x2_ASAP7_75t_R U270 ( .A(n197), .B(n198), .Y(n721) );
  OR2x2_ASAP7_75t_R U339 ( .A(n199), .B(n200), .Y(n435) );
  OR2x2_ASAP7_75t_R U342 ( .A(n201), .B(n202), .Y(n437) );
  OR2x2_ASAP7_75t_R U345 ( .A(n203), .B(n204), .Y(n439) );
  OR2x2_ASAP7_75t_R U348 ( .A(n205), .B(n206), .Y(n441) );
  OR2x2_ASAP7_75t_R U351 ( .A(n207), .B(n208), .Y(n443) );
  OR2x2_ASAP7_75t_R U354 ( .A(n209), .B(n210), .Y(n445) );
  OR2x2_ASAP7_75t_R U357 ( .A(n211), .B(n212), .Y(n447) );
  OR2x2_ASAP7_75t_R U360 ( .A(n213), .B(n214), .Y(n449) );
  OR2x2_ASAP7_75t_R U363 ( .A(n215), .B(n216), .Y(n451) );
  OR2x2_ASAP7_75t_R U366 ( .A(n217), .B(n218), .Y(n453) );
  OR2x2_ASAP7_75t_R U369 ( .A(n219), .B(n220), .Y(n455) );
  OR2x2_ASAP7_75t_R U372 ( .A(n221), .B(n222), .Y(n457) );
  OR2x2_ASAP7_75t_R U375 ( .A(n223), .B(n224), .Y(n459) );
  OR2x2_ASAP7_75t_R U378 ( .A(n225), .B(n226), .Y(n461) );
  OR2x2_ASAP7_75t_R U381 ( .A(n227), .B(n228), .Y(n463) );
  OR2x2_ASAP7_75t_R U384 ( .A(n229), .B(n230), .Y(n465) );
  OR2x2_ASAP7_75t_R U387 ( .A(n231), .B(n232), .Y(n467) );
  OR2x2_ASAP7_75t_R U390 ( .A(n233), .B(n234), .Y(n469) );
  OR2x2_ASAP7_75t_R U393 ( .A(n235), .B(n236), .Y(n471) );
  OR2x2_ASAP7_75t_R U396 ( .A(n237), .B(n238), .Y(n473) );
  OR2x2_ASAP7_75t_R U399 ( .A(n239), .B(n240), .Y(n475) );
  OR2x2_ASAP7_75t_R U402 ( .A(n241), .B(n242), .Y(n477) );
  OR2x2_ASAP7_75t_R U405 ( .A(n243), .B(n244), .Y(n479) );
  OR2x2_ASAP7_75t_R U408 ( .A(n245), .B(n246), .Y(n481) );
  OR2x2_ASAP7_75t_R U411 ( .A(n247), .B(n248), .Y(n483) );
  OR2x2_ASAP7_75t_R U414 ( .A(n249), .B(n250), .Y(n485) );
  OR2x2_ASAP7_75t_R U417 ( .A(n251), .B(n252), .Y(n487) );
  OR2x2_ASAP7_75t_R U420 ( .A(n253), .B(n254), .Y(n489) );
  OR2x2_ASAP7_75t_R U423 ( .A(n255), .B(n256), .Y(n491) );
  OR2x2_ASAP7_75t_R U426 ( .A(n257), .B(n258), .Y(n493) );
  OR2x2_ASAP7_75t_R U429 ( .A(n259), .B(n260), .Y(n495) );
  OR2x2_ASAP7_75t_R U432 ( .A(n261), .B(n262), .Y(n497) );
  OR2x2_ASAP7_75t_R U435 ( .A(n263), .B(n264), .Y(n499) );
  OR2x2_ASAP7_75t_R U438 ( .A(n265), .B(n266), .Y(n501) );
  OR2x2_ASAP7_75t_R U441 ( .A(n267), .B(n268), .Y(n503) );
  OR2x2_ASAP7_75t_R U444 ( .A(n269), .B(n270), .Y(n505) );
  OR2x2_ASAP7_75t_R U447 ( .A(n271), .B(n272), .Y(n507) );
  OR2x2_ASAP7_75t_R U450 ( .A(n273), .B(n274), .Y(n509) );
  OR2x2_ASAP7_75t_R U453 ( .A(n275), .B(n276), .Y(n511) );
  OR2x2_ASAP7_75t_R U456 ( .A(n277), .B(n278), .Y(n513) );
  OR2x2_ASAP7_75t_R U459 ( .A(n279), .B(n280), .Y(n515) );
  OR2x2_ASAP7_75t_R U462 ( .A(n281), .B(n282), .Y(n517) );
  OR2x2_ASAP7_75t_R U465 ( .A(n283), .B(n284), .Y(n519) );
  OR2x2_ASAP7_75t_R U468 ( .A(n285), .B(n286), .Y(n521) );
  OR2x2_ASAP7_75t_R U471 ( .A(n287), .B(n288), .Y(n523) );
  OR2x2_ASAP7_75t_R U474 ( .A(n289), .B(n290), .Y(n525) );
  OR2x2_ASAP7_75t_R U477 ( .A(n291), .B(n292), .Y(n527) );
  OR2x2_ASAP7_75t_R U480 ( .A(n293), .B(n294), .Y(n529) );
  OR2x2_ASAP7_75t_R U483 ( .A(n295), .B(n296), .Y(n531) );
  OR2x2_ASAP7_75t_R U486 ( .A(n297), .B(n298), .Y(n533) );
  OR2x2_ASAP7_75t_R U489 ( .A(n299), .B(n300), .Y(n535) );
  OR2x2_ASAP7_75t_R U492 ( .A(n301), .B(n302), .Y(n537) );
  OR2x2_ASAP7_75t_R U495 ( .A(n303), .B(n304), .Y(n539) );
  OR2x2_ASAP7_75t_R U498 ( .A(n305), .B(n306), .Y(n541) );
  NAND2xp5_ASAP7_75t_R U276 ( .A(A2[0]), .B(n732), .Y(n309) );
  NAND2xp5_ASAP7_75t_R U277 ( .A(A2[1]), .B(n732), .Y(n311) );
  NAND2xp5_ASAP7_75t_R U278 ( .A(A2[2]), .B(n732), .Y(n313) );
  NAND2xp5_ASAP7_75t_R U279 ( .A(A2[3]), .B(n732), .Y(n315) );
  NAND2xp5_ASAP7_75t_R U280 ( .A(A2[4]), .B(n732), .Y(n317) );
  NAND2xp5_ASAP7_75t_R U281 ( .A(A2[5]), .B(n732), .Y(n319) );
  NAND2xp5_ASAP7_75t_R U282 ( .A(A2[6]), .B(n732), .Y(n321) );
  NAND2xp5_ASAP7_75t_R U283 ( .A(A2[7]), .B(n732), .Y(n323) );
  NAND2xp5_ASAP7_75t_R U284 ( .A(A2[8]), .B(n732), .Y(n325) );
  NAND2xp5_ASAP7_75t_R U285 ( .A(A2[9]), .B(n732), .Y(n327) );
  NAND2xp5_ASAP7_75t_R U286 ( .A(A2[10]), .B(n732), .Y(n329) );
  NAND2xp5_ASAP7_75t_R U287 ( .A(A2[11]), .B(n732), .Y(n331) );
  NAND2xp5_ASAP7_75t_R U288 ( .A(A2[12]), .B(n732), .Y(n333) );
  NAND2xp5_ASAP7_75t_R U289 ( .A(A2[13]), .B(n732), .Y(n335) );
  NAND2xp5_ASAP7_75t_R U290 ( .A(A2[14]), .B(n732), .Y(n337) );
  NAND2xp5_ASAP7_75t_R U291 ( .A(A2[15]), .B(n732), .Y(n339) );
  NAND2xp5_ASAP7_75t_R U292 ( .A(A2[16]), .B(n732), .Y(n341) );
  NAND2xp5_ASAP7_75t_R U293 ( .A(A2[17]), .B(n732), .Y(n343) );
  NAND2xp5_ASAP7_75t_R U294 ( .A(A2[18]), .B(n732), .Y(n345) );
  NAND2xp5_ASAP7_75t_R U295 ( .A(A2[19]), .B(n732), .Y(n347) );
  Convolution_DW_mult_uns_8 mult_142_G9 ( .a(Weight_Buffer[7:0]), .b(
        IFM_Buffer[7:0]), .product({out_9__15_, out_9__14_, out_9__13_, 
        out_9__12_, out_9__11_, out_9__10_, out_9__9_, out_9__8_, out_9__7_, 
        out_9__6_, out_9__5_, out_9__4_, out_9__3_, out_9__2_, out_9__1_, 
        out_9__0_}) );
  Convolution_DW_mult_uns_7 mult_142_G8 ( .a(Weight_Buffer[15:8]), .b(
        IFM_Buffer[15:8]), .product({out_8__15_, out_8__14_, out_8__13_, 
        out_8__12_, out_8__11_, out_8__10_, out_8__9_, out_8__8_, out_8__7_, 
        out_8__6_, out_8__5_, out_8__4_, out_8__3_, out_8__2_, out_8__1_, 
        out_8__0_}) );
  Convolution_DW_mult_uns_6 mult_142_G7 ( .a(Weight_Buffer[23:16]), .b(
        IFM_Buffer[23:16]), .product({out_7__15_, out_7__14_, out_7__13_, 
        out_7__12_, out_7__11_, out_7__10_, out_7__9_, out_7__8_, out_7__7_, 
        out_7__6_, out_7__5_, out_7__4_, out_7__3_, out_7__2_, out_7__1_, 
        out_7__0_}) );
  Convolution_DW_mult_uns_5 mult_142_G6 ( .a(Weight_Buffer[31:24]), .b(
        IFM_Buffer[31:24]), .product({out_6__15_, out_6__14_, out_6__13_, 
        out_6__12_, out_6__11_, out_6__10_, out_6__9_, out_6__8_, out_6__7_, 
        out_6__6_, out_6__5_, out_6__4_, out_6__3_, out_6__2_, out_6__1_, 
        out_6__0_}) );
  Convolution_DW_mult_uns_4 mult_142_G5 ( .a(Weight_Buffer[39:32]), .b(
        IFM_Buffer[39:32]), .product({out_5__15_, out_5__14_, out_5__13_, 
        out_5__12_, out_5__11_, out_5__10_, out_5__9_, out_5__8_, out_5__7_, 
        out_5__6_, out_5__5_, out_5__4_, out_5__3_, out_5__2_, out_5__1_, 
        out_5__0_}) );
  Convolution_DW_mult_uns_3 mult_142_G4 ( .a(Weight_Buffer[47:40]), .b(
        IFM_Buffer[47:40]), .product({out_4__15_, out_4__14_, out_4__13_, 
        out_4__12_, out_4__11_, out_4__10_, out_4__9_, out_4__8_, out_4__7_, 
        out_4__6_, out_4__5_, out_4__4_, out_4__3_, out_4__2_, out_4__1_, 
        out_4__0_}) );
  Convolution_DW_mult_uns_2 mult_142_G3 ( .a(Weight_Buffer[55:48]), .b(
        IFM_Buffer[55:48]), .product({out_3__15_, out_3__14_, out_3__13_, 
        out_3__12_, out_3__11_, out_3__10_, out_3__9_, out_3__8_, out_3__7_, 
        out_3__6_, out_3__5_, out_3__4_, out_3__3_, out_3__2_, out_3__1_, 
        out_3__0_}) );
  Convolution_DW_mult_uns_1 mult_142_G2 ( .a(Weight_Buffer[63:56]), .b(
        IFM_Buffer[63:56]), .product({out_2__15_, out_2__14_, out_2__13_, 
        out_2__12_, out_2__11_, out_2__10_, out_2__9_, out_2__8_, out_2__7_, 
        out_2__6_, out_2__5_, out_2__4_, out_2__3_, out_2__2_, out_2__1_, 
        out_2__0_}) );
  Convolution_DW_mult_uns_0 mult_142 ( .a(Weight_Buffer[71:64]), .b(
        IFM_Buffer[71:64]), .product({out_1__15_, out_1__14_, out_1__13_, 
        out_1__12_, out_1__11_, out_1__10_, out_1__9_, out_1__8_, out_1__7_, 
        out_1__6_, out_1__5_, out_1__4_, out_1__3_, out_1__2_, out_1__1_, 
        out_1__0_}) );
  Convolution_DW01_add_7 add_5_root_add_0_root_add_146_8 ( .A({net7679, 
        net7679, net7679, net7679, out_1__15_, out_1__14_, out_1__13_, 
        out_1__12_, out_1__11_, out_1__10_, out_1__9_, out_1__8_, out_1__7_, 
        out_1__6_, out_1__5_, out_1__4_, out_1__3_, out_1__2_, out_1__1_, 
        out_1__0_}), .B({net7679, net7679, net7679, net7679, out_2__15_, 
        out_2__14_, out_2__13_, out_2__12_, out_2__11_, out_2__10_, out_2__9_, 
        out_2__8_, out_2__7_, out_2__6_, out_2__5_, out_2__4_, out_2__3_, 
        out_2__2_, out_2__1_, out_2__0_}), .CI(net7679), .SUM({
        SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, 
        N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, 
        N61, N60, N59}) );
  Convolution_DW01_add_6 add_7_root_add_0_root_add_146_8 ( .A({net7679, 
        net7679, out_3__15_, out_3__14_, out_3__13_, out_3__12_, out_3__11_, 
        out_3__10_, out_3__9_, out_3__8_, out_3__7_, out_3__6_, out_3__5_, 
        out_3__4_, out_3__3_, out_3__2_, out_3__1_, out_3__0_}), .B({net7679, 
        net7679, out_7__15_, out_7__14_, out_7__13_, out_7__12_, out_7__11_, 
        out_7__10_, out_7__9_, out_7__8_, out_7__7_, out_7__6_, out_7__5_, 
        out_7__4_, out_7__3_, out_7__2_, out_7__1_, out_7__0_}), .CI(net7679), 
        .SUM({SYNOPSYS_UNCONNECTED_4, n891, n890, n889, n888, n887, n886, n885, 
        n884, n883, n882, n881, n880, n879, n878, n877, n876, n875}) );
  Convolution_DW01_add_5 add_3_root_add_0_root_add_146_8 ( .A({net7679, 
        net7679, net7679, out_6__15_, out_6__14_, out_6__13_, out_6__12_, 
        out_6__11_, out_6__10_, out_6__9_, out_6__8_, out_6__7_, out_6__6_, 
        out_6__5_, out_6__4_, out_6__3_, out_6__2_, out_6__1_, out_6__0_}), 
        .B({net7679, net7679, n891, n890, n889, n888, n887, n886, n885, n884, 
        n883, n882, n881, n880, n879, n878, n877, n876, n875}), .CI(net7679), 
        .SUM({SYNOPSYS_UNCONNECTED_5, N57, N56, N55, N54, N53, N52, N51, N50, 
        N49, N48, N47, N46, N45, N44, N43, N42, N41, N40}) );
  Convolution_DW01_add_4 add_2_root_add_0_root_add_146_8 ( .A({net7679, 
        net7679, net7679, net7679, N75, N74, N73, N72, N71, N70, N69, N68, N67, 
        N66, N65, N64, N63, N62, N61, N60, N59}), .B({net7679, net7679, 
        net7679, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, 
        N45, N44, N43, N42, N41, N40}), .CI(net7679), .SUM({
        SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, n910, n909, n908, n907, 
        n906, n905, n904, n903, n902, n901, n900, n899, n898, n897, n896, n895, 
        n894, n893, n892}) );
  Convolution_DW01_add_1 add_1_root_add_0_root_add_146_8 ( .A({net7679, 
        net7679, net7679, net7679, N137, N136, N135, N134, N133, N132, N131, 
        N130, N129, N128, N127, N126, N125, N124, N123, N122, n729}), .B({
        net7679, net7679, net7679, net7679, N95, N94, N93, N92, N91, N90, N89, 
        N88, N87, N86, N85, N84, N83, N82, N81, N80, n726}), .CI(net7679), 
        .SUM({SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9, 
        SYNOPSYS_UNCONNECTED_10, N117, N116, N115, N114, N113, N112, N111, 
        N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100}) );
  Convolution_DW01_add_0 add_0_root_add_0_root_add_146_8 ( .A({net7679, 
        net7679, net7679, N117, N116, N115, N114, N113, N112, N111, N110, N109, 
        N108, N107, N106, N105, N104, N103, N102, N101, N100}), .B({net7679, 
        net7679, n910, n909, n908, n907, n906, n905, n904, n903, n902, n901, 
        n900, n899, n898, n897, n896, n895, n894, n893, n892}), .CI(net7679), 
        .SUM({SYNOPSYS_UNCONNECTED_11, out_sum}) );
  FAx1_ASAP7_75t_R add_6_root_add_0_root_add_146_8_U1_1 ( .A(out_9__1_), .B(
        out_5__1_), .CI(n728), .CON(n791), .SN(n790) );
  FAx1_ASAP7_75t_R add_6_root_add_0_root_add_146_8_U1_2 ( .A(out_9__2_), .B(
        out_5__2_), .CI(n820), .CON(n793), .SN(n792) );
  FAx1_ASAP7_75t_R add_6_root_add_0_root_add_146_8_U1_3 ( .A(out_9__3_), .B(
        out_5__3_), .CI(n821), .CON(n795), .SN(n794) );
  FAx1_ASAP7_75t_R add_6_root_add_0_root_add_146_8_U1_4 ( .A(out_9__4_), .B(
        out_5__4_), .CI(n822), .CON(n797), .SN(n796) );
  FAx1_ASAP7_75t_R add_6_root_add_0_root_add_146_8_U1_5 ( .A(out_9__5_), .B(
        out_5__5_), .CI(n823), .CON(n799), .SN(n798) );
  FAx1_ASAP7_75t_R add_6_root_add_0_root_add_146_8_U1_6 ( .A(out_9__6_), .B(
        out_5__6_), .CI(n824), .CON(n801), .SN(n800) );
  FAx1_ASAP7_75t_R add_6_root_add_0_root_add_146_8_U1_7 ( .A(out_9__7_), .B(
        out_5__7_), .CI(n825), .CON(n803), .SN(n802) );
  FAx1_ASAP7_75t_R add_6_root_add_0_root_add_146_8_U1_8 ( .A(out_9__8_), .B(
        out_5__8_), .CI(n826), .CON(n805), .SN(n804) );
  FAx1_ASAP7_75t_R add_6_root_add_0_root_add_146_8_U1_9 ( .A(out_9__9_), .B(
        out_5__9_), .CI(n827), .CON(n807), .SN(n806) );
  FAx1_ASAP7_75t_R add_6_root_add_0_root_add_146_8_U1_10 ( .A(out_9__10_), .B(
        out_5__10_), .CI(n828), .CON(n809), .SN(n808) );
  FAx1_ASAP7_75t_R add_6_root_add_0_root_add_146_8_U1_11 ( .A(out_9__11_), .B(
        out_5__11_), .CI(n829), .CON(n811), .SN(n810) );
  FAx1_ASAP7_75t_R add_6_root_add_0_root_add_146_8_U1_12 ( .A(out_9__12_), .B(
        out_5__12_), .CI(n830), .CON(n813), .SN(n812) );
  FAx1_ASAP7_75t_R add_6_root_add_0_root_add_146_8_U1_13 ( .A(out_9__13_), .B(
        out_5__13_), .CI(n831), .CON(n815), .SN(n814) );
  FAx1_ASAP7_75t_R add_6_root_add_0_root_add_146_8_U1_14 ( .A(out_9__14_), .B(
        out_5__14_), .CI(n832), .CON(n817), .SN(n816) );
  FAx1_ASAP7_75t_R add_6_root_add_0_root_add_146_8_U1_15 ( .A(out_9__15_), .B(
        out_5__15_), .CI(n833), .CON(n819), .SN(n818) );
  FAx1_ASAP7_75t_R add_4_root_add_0_root_add_146_8_U1_1 ( .A(out_4__1_), .B(
        out_8__1_), .CI(n727), .CON(n747), .SN(n746) );
  FAx1_ASAP7_75t_R add_4_root_add_0_root_add_146_8_U1_2 ( .A(out_4__2_), .B(
        out_8__2_), .CI(n776), .CON(n749), .SN(n748) );
  FAx1_ASAP7_75t_R add_4_root_add_0_root_add_146_8_U1_3 ( .A(out_4__3_), .B(
        out_8__3_), .CI(n777), .CON(n751), .SN(n750) );
  FAx1_ASAP7_75t_R add_4_root_add_0_root_add_146_8_U1_4 ( .A(out_4__4_), .B(
        out_8__4_), .CI(n778), .CON(n753), .SN(n752) );
  FAx1_ASAP7_75t_R add_4_root_add_0_root_add_146_8_U1_5 ( .A(out_4__5_), .B(
        out_8__5_), .CI(n779), .CON(n755), .SN(n754) );
  FAx1_ASAP7_75t_R add_4_root_add_0_root_add_146_8_U1_6 ( .A(out_4__6_), .B(
        out_8__6_), .CI(n780), .CON(n757), .SN(n756) );
  FAx1_ASAP7_75t_R add_4_root_add_0_root_add_146_8_U1_7 ( .A(out_4__7_), .B(
        out_8__7_), .CI(n781), .CON(n759), .SN(n758) );
  FAx1_ASAP7_75t_R add_4_root_add_0_root_add_146_8_U1_8 ( .A(out_4__8_), .B(
        out_8__8_), .CI(n782), .CON(n761), .SN(n760) );
  FAx1_ASAP7_75t_R add_4_root_add_0_root_add_146_8_U1_9 ( .A(out_4__9_), .B(
        out_8__9_), .CI(n783), .CON(n763), .SN(n762) );
  FAx1_ASAP7_75t_R add_4_root_add_0_root_add_146_8_U1_10 ( .A(out_4__10_), .B(
        out_8__10_), .CI(n784), .CON(n765), .SN(n764) );
  FAx1_ASAP7_75t_R add_4_root_add_0_root_add_146_8_U1_11 ( .A(out_4__11_), .B(
        out_8__11_), .CI(n785), .CON(n767), .SN(n766) );
  FAx1_ASAP7_75t_R add_4_root_add_0_root_add_146_8_U1_12 ( .A(out_4__12_), .B(
        out_8__12_), .CI(n786), .CON(n769), .SN(n768) );
  FAx1_ASAP7_75t_R add_4_root_add_0_root_add_146_8_U1_13 ( .A(out_4__13_), .B(
        out_8__13_), .CI(n787), .CON(n771), .SN(n770) );
  FAx1_ASAP7_75t_R add_4_root_add_0_root_add_146_8_U1_14 ( .A(out_4__14_), .B(
        out_8__14_), .CI(n788), .CON(n773), .SN(n772) );
  FAx1_ASAP7_75t_R add_4_root_add_0_root_add_146_8_U1_15 ( .A(out_4__15_), .B(
        out_8__15_), .CI(n789), .CON(n775), .SN(n774) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_9__7_ ( .D(n593), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[7]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_9__6_ ( .D(n591), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[6]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_9__5_ ( .D(n589), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[5]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_9__4_ ( .D(n587), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[4]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_9__3_ ( .D(n585), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[3]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_9__2_ ( .D(n583), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[2]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_9__1_ ( .D(n581), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[1]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_9__0_ ( .D(n579), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[0]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_8__7_ ( .D(n609), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[15]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_8__6_ ( .D(n607), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[14]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_8__5_ ( .D(n605), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[13]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_8__4_ ( .D(n603), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[12]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_8__3_ ( .D(n601), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[11]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_8__2_ ( .D(n599), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[10]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_8__1_ ( .D(n597), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[9]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_8__0_ ( .D(n595), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[8]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_7__7_ ( .D(n625), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[23]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_7__6_ ( .D(n623), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[22]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_7__5_ ( .D(n621), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[21]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_7__4_ ( .D(n619), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[20]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_7__3_ ( .D(n617), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[19]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_7__2_ ( .D(n615), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[18]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_7__1_ ( .D(n613), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[17]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_7__0_ ( .D(n611), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[16]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_6__7_ ( .D(n641), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[31]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_6__6_ ( .D(n639), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[30]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_6__5_ ( .D(n637), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[29]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_6__4_ ( .D(n635), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[28]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_6__3_ ( .D(n633), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[27]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_6__2_ ( .D(n631), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[26]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_6__1_ ( .D(n629), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[25]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_6__0_ ( .D(n627), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[24]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_5__7_ ( .D(n657), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[39]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_5__6_ ( .D(n655), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[38]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_5__5_ ( .D(n653), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[37]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_5__4_ ( .D(n651), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[36]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_5__3_ ( .D(n649), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[35]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_5__2_ ( .D(n647), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[34]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_5__1_ ( .D(n645), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[33]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_5__0_ ( .D(n643), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[32]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_4__7_ ( .D(n673), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[47]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_4__6_ ( .D(n671), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[46]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_4__5_ ( .D(n669), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[45]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_4__4_ ( .D(n667), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[44]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_4__3_ ( .D(n665), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[43]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_4__2_ ( .D(n663), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[42]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_4__1_ ( .D(n661), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[41]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_4__0_ ( .D(n659), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[40]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_3__7_ ( .D(n689), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[55]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_3__6_ ( .D(n687), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[54]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_3__5_ ( .D(n685), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[53]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_3__4_ ( .D(n683), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[52]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_3__3_ ( .D(n681), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[51]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_3__2_ ( .D(n679), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[50]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_3__1_ ( .D(n677), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[49]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_3__0_ ( .D(n675), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[48]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_2__7_ ( .D(n705), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[63]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_2__6_ ( .D(n703), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[62]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_2__5_ ( .D(n701), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[61]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_2__4_ ( .D(n699), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[60]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_2__3_ ( .D(n697), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[59]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_2__2_ ( .D(n695), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[58]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_2__1_ ( .D(n693), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[57]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_2__0_ ( .D(n691), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[56]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_1__7_ ( .D(n721), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[71]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_1__6_ ( .D(n719), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[70]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_1__5_ ( .D(n717), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[69]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_1__4_ ( .D(n715), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[68]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_1__3_ ( .D(n713), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[67]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_1__2_ ( .D(n711), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[66]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_1__1_ ( .D(n709), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[65]) );
  ASYNC_DFFHx1_ASAP7_75t_R Weight_Buffer_reg_1__0_ ( .D(n707), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(Weight_Buffer[64]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_3__7_ ( .D(n545), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[55]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_3__6_ ( .D(n543), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[54]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_2__7_ ( .D(n561), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[63]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_2__6_ ( .D(n559), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[62]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_2__5_ ( .D(n557), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[61]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_2__4_ ( .D(n555), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[60]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_2__3_ ( .D(n553), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[59]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_2__2_ ( .D(n551), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[58]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_2__1_ ( .D(n549), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[57]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_2__0_ ( .D(n547), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[56]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_1__6_ ( .D(n575), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[70]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_1__5_ ( .D(n573), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[69]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_1__4_ ( .D(n571), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[68]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_1__3_ ( .D(n569), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[67]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_1__2_ ( .D(n567), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[66]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_1__1_ ( .D(n565), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[65]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_1__0_ ( .D(n563), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[64]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_9__7_ ( .D(n449), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[7]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_9__6_ ( .D(n447), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[6]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_9__5_ ( .D(n445), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[5]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_9__4_ ( .D(n443), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[4]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_9__3_ ( .D(n441), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[3]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_9__2_ ( .D(n439), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[2]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_9__1_ ( .D(n437), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[1]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_9__0_ ( .D(n435), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[0]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_8__7_ ( .D(n465), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[15]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_8__6_ ( .D(n463), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[14]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_8__5_ ( .D(n461), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[13]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_8__4_ ( .D(n459), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[12]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_8__3_ ( .D(n457), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[11]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_8__2_ ( .D(n455), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[10]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_8__1_ ( .D(n453), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[9]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_8__0_ ( .D(n451), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[8]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_7__7_ ( .D(n481), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[23]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_7__6_ ( .D(n479), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[22]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_7__5_ ( .D(n477), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[21]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_7__4_ ( .D(n475), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[20]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_7__3_ ( .D(n473), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[19]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_7__2_ ( .D(n471), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[18]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_7__1_ ( .D(n469), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[17]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_7__0_ ( .D(n467), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[16]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_6__7_ ( .D(n497), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[31]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_6__6_ ( .D(n495), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[30]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_6__5_ ( .D(n493), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[29]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_6__4_ ( .D(n491), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[28]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_6__3_ ( .D(n489), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[27]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_6__2_ ( .D(n487), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[26]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_6__1_ ( .D(n485), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[25]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_6__0_ ( .D(n483), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[24]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_5__7_ ( .D(n513), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[39]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_5__6_ ( .D(n511), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[38]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_5__5_ ( .D(n509), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[37]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_5__4_ ( .D(n507), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[36]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_5__3_ ( .D(n505), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[35]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_5__2_ ( .D(n503), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[34]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_5__1_ ( .D(n501), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[33]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_5__0_ ( .D(n499), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[32]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_4__1_ ( .D(n517), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[41]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_4__0_ ( .D(n515), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[40]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_1__7_ ( .D(n577), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[71]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_4__7_ ( .D(n529), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[47]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_4__6_ ( .D(n527), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[46]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_4__5_ ( .D(n525), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[45]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_3__5_ ( .D(n541), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[53]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_3__4_ ( .D(n539), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[52]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_3__3_ ( .D(n537), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[51]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_3__2_ ( .D(n535), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[50]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_4__4_ ( .D(n523), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[44]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_4__3_ ( .D(n521), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[43]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_4__2_ ( .D(n519), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[42]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_3__0_ ( .D(n531), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[48]) );
  ASYNC_DFFHx1_ASAP7_75t_R IFM_Buffer_reg_3__1_ ( .D(n533), .CLK(clk1), 
        .RESET(n854), .SET(net7679), .QN(IFM_Buffer[49]) );
  ASYNC_DFFHx1_ASAP7_75t_R A2_reg_19_ ( .D(n855), .CLK(clk2), .RESET(n854), 
        .SET(net7679), .QN(A2[19]) );
  ASYNC_DFFHx1_ASAP7_75t_R A2_reg_18_ ( .D(n856), .CLK(clk2), .RESET(n854), 
        .SET(net7679), .QN(A2[18]) );
  ASYNC_DFFHx1_ASAP7_75t_R A2_reg_17_ ( .D(n857), .CLK(clk2), .RESET(n854), 
        .SET(net7679), .QN(A2[17]) );
  ASYNC_DFFHx1_ASAP7_75t_R A2_reg_16_ ( .D(n858), .CLK(clk2), .RESET(n854), 
        .SET(net7679), .QN(A2[16]) );
  ASYNC_DFFHx1_ASAP7_75t_R A2_reg_15_ ( .D(n859), .CLK(clk2), .RESET(n854), 
        .SET(net7679), .QN(A2[15]) );
  ASYNC_DFFHx1_ASAP7_75t_R A2_reg_14_ ( .D(n860), .CLK(clk2), .RESET(n854), 
        .SET(net7679), .QN(A2[14]) );
  ASYNC_DFFHx1_ASAP7_75t_R A2_reg_13_ ( .D(n861), .CLK(clk2), .RESET(n854), 
        .SET(net7679), .QN(A2[13]) );
  ASYNC_DFFHx1_ASAP7_75t_R A2_reg_12_ ( .D(n862), .CLK(clk2), .RESET(n854), 
        .SET(net7679), .QN(A2[12]) );
  ASYNC_DFFHx1_ASAP7_75t_R A2_reg_11_ ( .D(n863), .CLK(clk2), .RESET(n854), 
        .SET(net7679), .QN(A2[11]) );
  ASYNC_DFFHx1_ASAP7_75t_R A2_reg_10_ ( .D(n864), .CLK(clk2), .RESET(n854), 
        .SET(net7679), .QN(A2[10]) );
  ASYNC_DFFHx1_ASAP7_75t_R A2_reg_9_ ( .D(n865), .CLK(clk2), .RESET(n854), 
        .SET(net7679), .QN(A2[9]) );
  ASYNC_DFFHx1_ASAP7_75t_R A2_reg_8_ ( .D(n866), .CLK(clk2), .RESET(n854), 
        .SET(net7679), .QN(A2[8]) );
  ASYNC_DFFHx1_ASAP7_75t_R A2_reg_7_ ( .D(n867), .CLK(clk2), .RESET(n854), 
        .SET(net7679), .QN(A2[7]) );
  ASYNC_DFFHx1_ASAP7_75t_R A2_reg_6_ ( .D(n868), .CLK(clk2), .RESET(n854), 
        .SET(net7679), .QN(A2[6]) );
  ASYNC_DFFHx1_ASAP7_75t_R A2_reg_5_ ( .D(n869), .CLK(clk2), .RESET(n854), 
        .SET(net7679), .QN(A2[5]) );
  ASYNC_DFFHx1_ASAP7_75t_R A2_reg_4_ ( .D(n870), .CLK(clk2), .RESET(n854), 
        .SET(net7679), .QN(A2[4]) );
  ASYNC_DFFHx1_ASAP7_75t_R A2_reg_3_ ( .D(n871), .CLK(clk2), .RESET(n854), 
        .SET(net7679), .QN(A2[3]) );
  ASYNC_DFFHx1_ASAP7_75t_R A2_reg_2_ ( .D(n872), .CLK(clk2), .RESET(n854), 
        .SET(net7679), .QN(A2[2]) );
  ASYNC_DFFHx1_ASAP7_75t_R A2_reg_1_ ( .D(n873), .CLK(clk2), .RESET(n854), 
        .SET(net7679), .QN(A2[1]) );
  ASYNC_DFFHx1_ASAP7_75t_R A2_reg_0_ ( .D(n874), .CLK(clk2), .RESET(n854), 
        .SET(net7679), .QN(A2[0]) );
  ASYNC_DFFHx1_ASAP7_75t_R out_valid_reg ( .D(n730), .CLK(clk2), .RESET(n854), 
        .SET(net7679), .QN(out_valid) );
  ASYNC_DFFHx1_ASAP7_75t_R Out_OFM_reg_19_ ( .D(n347), .CLK(clk2), .RESET(n854), .SET(net7679), .QN(Out_OFM[19]) );
  ASYNC_DFFHx1_ASAP7_75t_R Out_OFM_reg_18_ ( .D(n345), .CLK(clk2), .RESET(n854), .SET(net7679), .QN(Out_OFM[18]) );
  ASYNC_DFFHx1_ASAP7_75t_R Out_OFM_reg_17_ ( .D(n343), .CLK(clk2), .RESET(n854), .SET(net7679), .QN(Out_OFM[17]) );
  ASYNC_DFFHx1_ASAP7_75t_R Out_OFM_reg_16_ ( .D(n341), .CLK(clk2), .RESET(n854), .SET(net7679), .QN(Out_OFM[16]) );
  ASYNC_DFFHx1_ASAP7_75t_R Out_OFM_reg_15_ ( .D(n339), .CLK(clk2), .RESET(n854), .SET(net7679), .QN(Out_OFM[15]) );
  ASYNC_DFFHx1_ASAP7_75t_R Out_OFM_reg_14_ ( .D(n337), .CLK(clk2), .RESET(n854), .SET(net7679), .QN(Out_OFM[14]) );
  ASYNC_DFFHx1_ASAP7_75t_R Out_OFM_reg_13_ ( .D(n335), .CLK(clk2), .RESET(n854), .SET(net7679), .QN(Out_OFM[13]) );
  ASYNC_DFFHx1_ASAP7_75t_R Out_OFM_reg_12_ ( .D(n333), .CLK(clk2), .RESET(n854), .SET(net7679), .QN(Out_OFM[12]) );
  ASYNC_DFFHx1_ASAP7_75t_R Out_OFM_reg_11_ ( .D(n331), .CLK(clk2), .RESET(n854), .SET(net7679), .QN(Out_OFM[11]) );
  ASYNC_DFFHx1_ASAP7_75t_R Out_OFM_reg_10_ ( .D(n329), .CLK(clk2), .RESET(n854), .SET(net7679), .QN(Out_OFM[10]) );
  ASYNC_DFFHx1_ASAP7_75t_R Out_OFM_reg_9_ ( .D(n327), .CLK(clk2), .RESET(n854), 
        .SET(net7679), .QN(Out_OFM[9]) );
  ASYNC_DFFHx1_ASAP7_75t_R Out_OFM_reg_8_ ( .D(n325), .CLK(clk2), .RESET(n854), 
        .SET(net7679), .QN(Out_OFM[8]) );
  ASYNC_DFFHx1_ASAP7_75t_R Out_OFM_reg_7_ ( .D(n323), .CLK(clk2), .RESET(n854), 
        .SET(net7679), .QN(Out_OFM[7]) );
  ASYNC_DFFHx1_ASAP7_75t_R Out_OFM_reg_6_ ( .D(n321), .CLK(clk2), .RESET(n854), 
        .SET(net7679), .QN(Out_OFM[6]) );
  ASYNC_DFFHx1_ASAP7_75t_R Out_OFM_reg_5_ ( .D(n319), .CLK(clk2), .RESET(n854), 
        .SET(net7679), .QN(Out_OFM[5]) );
  ASYNC_DFFHx1_ASAP7_75t_R Out_OFM_reg_4_ ( .D(n317), .CLK(clk2), .RESET(n854), 
        .SET(net7679), .QN(Out_OFM[4]) );
  ASYNC_DFFHx1_ASAP7_75t_R Out_OFM_reg_3_ ( .D(n315), .CLK(clk2), .RESET(n854), 
        .SET(net7679), .QN(Out_OFM[3]) );
  ASYNC_DFFHx1_ASAP7_75t_R Out_OFM_reg_2_ ( .D(n313), .CLK(clk2), .RESET(n854), 
        .SET(net7679), .QN(Out_OFM[2]) );
  ASYNC_DFFHx1_ASAP7_75t_R Out_OFM_reg_1_ ( .D(n311), .CLK(clk2), .RESET(n854), 
        .SET(net7679), .QN(Out_OFM[1]) );
  ASYNC_DFFHx1_ASAP7_75t_R Out_OFM_reg_0_ ( .D(n309), .CLK(clk2), .RESET(n854), 
        .SET(net7679), .QN(Out_OFM[0]) );
  TIEHIx1_ASAP7_75t_R U710 ( .H(n725) );
  INVx1_ASAP7_75t_R U711 ( .A(n725), .Y(Out_OFM[20]) );
  TIELOx1_ASAP7_75t_R U712 ( .L(net7679) );
  XOR2xp5_ASAP7_75t_R U713 ( .A(out_9__0_), .B(out_5__0_), .Y(n726) );
  AND2x2_ASAP7_75t_R U714 ( .A(out_4__0_), .B(out_8__0_), .Y(n727) );
  AND2x2_ASAP7_75t_R U715 ( .A(out_9__0_), .B(out_5__0_), .Y(n728) );
  XOR2xp5_ASAP7_75t_R U716 ( .A(out_4__0_), .B(out_8__0_), .Y(n729) );
  INVx4_ASAP7_75t_R U717 ( .A(rst_n), .Y(n854) );
  INVxp33_ASAP7_75t_R U718 ( .A(A_syn), .Y(n730) );
  HB1xp67_ASAP7_75t_R U719 ( .A(n737), .Y(n734) );
  HB1xp67_ASAP7_75t_R U720 ( .A(n736), .Y(n735) );
  HB1xp67_ASAP7_75t_R U721 ( .A(n733), .Y(n737) );
  HB1xp67_ASAP7_75t_R U722 ( .A(n733), .Y(n736) );
  INVx1_ASAP7_75t_R U723 ( .A(n743), .Y(n741) );
  INVx1_ASAP7_75t_R U724 ( .A(n743), .Y(n740) );
  INVx1_ASAP7_75t_R U725 ( .A(n743), .Y(n739) );
  INVx1_ASAP7_75t_R U726 ( .A(n743), .Y(n742) );
  INVx1_ASAP7_75t_R U727 ( .A(n744), .Y(n738) );
  HB1xp67_ASAP7_75t_R U728 ( .A(n854), .Y(n733) );
  INVx1_ASAP7_75t_R U729 ( .A(in_valid), .Y(n743) );
  NOR2xp33_ASAP7_75t_R U730 ( .A(In_IFM_9[0]), .B(n745), .Y(n200) );
  NOR2xp33_ASAP7_75t_R U731 ( .A(n742), .B(IFM_Buffer[0]), .Y(n199) );
  NOR2xp33_ASAP7_75t_R U732 ( .A(In_IFM_9[1]), .B(n745), .Y(n202) );
  NOR2xp33_ASAP7_75t_R U733 ( .A(n742), .B(IFM_Buffer[1]), .Y(n201) );
  NOR2xp33_ASAP7_75t_R U734 ( .A(In_IFM_8[0]), .B(n745), .Y(n216) );
  NOR2xp33_ASAP7_75t_R U735 ( .A(n741), .B(IFM_Buffer[8]), .Y(n215) );
  NOR2xp33_ASAP7_75t_R U736 ( .A(In_IFM_8[1]), .B(n745), .Y(n218) );
  NOR2xp33_ASAP7_75t_R U737 ( .A(n741), .B(IFM_Buffer[9]), .Y(n217) );
  NOR2xp33_ASAP7_75t_R U738 ( .A(In_IFM_7[0]), .B(n745), .Y(n232) );
  NOR2xp33_ASAP7_75t_R U739 ( .A(n741), .B(IFM_Buffer[16]), .Y(n231) );
  NOR2xp33_ASAP7_75t_R U740 ( .A(In_IFM_7[1]), .B(n745), .Y(n234) );
  NOR2xp33_ASAP7_75t_R U741 ( .A(n741), .B(IFM_Buffer[17]), .Y(n233) );
  NOR2xp33_ASAP7_75t_R U742 ( .A(In_IFM_6[0]), .B(n745), .Y(n248) );
  NOR2xp33_ASAP7_75t_R U743 ( .A(n740), .B(IFM_Buffer[24]), .Y(n247) );
  NOR2xp33_ASAP7_75t_R U744 ( .A(In_IFM_6[1]), .B(n745), .Y(n250) );
  NOR2xp33_ASAP7_75t_R U745 ( .A(n740), .B(IFM_Buffer[25]), .Y(n249) );
  NOR2xp33_ASAP7_75t_R U746 ( .A(In_IFM_5[0]), .B(n745), .Y(n264) );
  NOR2xp33_ASAP7_75t_R U747 ( .A(n739), .B(IFM_Buffer[32]), .Y(n263) );
  NOR2xp33_ASAP7_75t_R U748 ( .A(In_IFM_5[1]), .B(n745), .Y(n266) );
  NOR2xp33_ASAP7_75t_R U749 ( .A(n739), .B(IFM_Buffer[33]), .Y(n265) );
  NOR2xp33_ASAP7_75t_R U750 ( .A(In_IFM_4[0]), .B(n745), .Y(n280) );
  NOR2xp33_ASAP7_75t_R U751 ( .A(n739), .B(IFM_Buffer[40]), .Y(n279) );
  NOR2xp33_ASAP7_75t_R U752 ( .A(In_IFM_4[1]), .B(n745), .Y(n282) );
  NOR2xp33_ASAP7_75t_R U753 ( .A(n739), .B(IFM_Buffer[41]), .Y(n281) );
  NOR2xp33_ASAP7_75t_R U754 ( .A(In_IFM_2[0]), .B(n744), .Y(n23) );
  NOR2xp33_ASAP7_75t_R U755 ( .A(n742), .B(IFM_Buffer[56]), .Y(n22) );
  NOR2xp33_ASAP7_75t_R U756 ( .A(In_IFM_2[1]), .B(n744), .Y(n25) );
  NOR2xp33_ASAP7_75t_R U757 ( .A(n742), .B(IFM_Buffer[57]), .Y(n24) );
  NOR2xp33_ASAP7_75t_R U758 ( .A(In_IFM_1[0]), .B(n744), .Y(n39) );
  NOR2xp33_ASAP7_75t_R U759 ( .A(n742), .B(IFM_Buffer[64]), .Y(n38) );
  NOR2xp33_ASAP7_75t_R U760 ( .A(In_IFM_1[1]), .B(n744), .Y(n41) );
  NOR2xp33_ASAP7_75t_R U761 ( .A(n742), .B(IFM_Buffer[65]), .Y(n40) );
  INVx1_ASAP7_75t_R U762 ( .A(in_valid), .Y(n744) );
  NOR2xp33_ASAP7_75t_R U763 ( .A(In_IFM_3[0]), .B(n743), .Y(n296) );
  NOR2xp33_ASAP7_75t_R U764 ( .A(n738), .B(IFM_Buffer[48]), .Y(n295) );
  NOR2xp33_ASAP7_75t_R U765 ( .A(In_IFM_3[1]), .B(n743), .Y(n298) );
  NOR2xp33_ASAP7_75t_R U766 ( .A(n738), .B(IFM_Buffer[49]), .Y(n297) );
  NOR2xp33_ASAP7_75t_R U767 ( .A(In_IFM_9[2]), .B(n745), .Y(n204) );
  NOR2xp33_ASAP7_75t_R U768 ( .A(n742), .B(IFM_Buffer[2]), .Y(n203) );
  NOR2xp33_ASAP7_75t_R U769 ( .A(In_IFM_9[6]), .B(n745), .Y(n212) );
  NOR2xp33_ASAP7_75t_R U770 ( .A(n741), .B(IFM_Buffer[6]), .Y(n211) );
  NOR2xp33_ASAP7_75t_R U771 ( .A(In_IFM_9[7]), .B(n745), .Y(n214) );
  NOR2xp33_ASAP7_75t_R U772 ( .A(n741), .B(IFM_Buffer[7]), .Y(n213) );
  NOR2xp33_ASAP7_75t_R U773 ( .A(In_IFM_8[2]), .B(n745), .Y(n220) );
  NOR2xp33_ASAP7_75t_R U774 ( .A(n741), .B(IFM_Buffer[10]), .Y(n219) );
  NOR2xp33_ASAP7_75t_R U775 ( .A(In_IFM_8[6]), .B(n745), .Y(n228) );
  NOR2xp33_ASAP7_75t_R U776 ( .A(n741), .B(IFM_Buffer[14]), .Y(n227) );
  NOR2xp33_ASAP7_75t_R U777 ( .A(In_IFM_8[7]), .B(n745), .Y(n230) );
  NOR2xp33_ASAP7_75t_R U778 ( .A(n741), .B(IFM_Buffer[15]), .Y(n229) );
  NOR2xp33_ASAP7_75t_R U779 ( .A(In_IFM_7[2]), .B(n745), .Y(n236) );
  NOR2xp33_ASAP7_75t_R U780 ( .A(n740), .B(IFM_Buffer[18]), .Y(n235) );
  NOR2xp33_ASAP7_75t_R U781 ( .A(In_IFM_7[6]), .B(n743), .Y(n244) );
  NOR2xp33_ASAP7_75t_R U782 ( .A(n740), .B(IFM_Buffer[22]), .Y(n243) );
  NOR2xp33_ASAP7_75t_R U783 ( .A(In_IFM_7[7]), .B(n745), .Y(n246) );
  NOR2xp33_ASAP7_75t_R U784 ( .A(n740), .B(IFM_Buffer[23]), .Y(n245) );
  NOR2xp33_ASAP7_75t_R U785 ( .A(In_IFM_6[2]), .B(n743), .Y(n252) );
  NOR2xp33_ASAP7_75t_R U786 ( .A(n740), .B(IFM_Buffer[26]), .Y(n251) );
  NOR2xp33_ASAP7_75t_R U787 ( .A(In_IFM_6[6]), .B(n745), .Y(n260) );
  NOR2xp33_ASAP7_75t_R U788 ( .A(n739), .B(IFM_Buffer[30]), .Y(n259) );
  NOR2xp33_ASAP7_75t_R U789 ( .A(In_IFM_6[7]), .B(n743), .Y(n262) );
  NOR2xp33_ASAP7_75t_R U790 ( .A(n739), .B(IFM_Buffer[31]), .Y(n261) );
  NOR2xp33_ASAP7_75t_R U791 ( .A(In_IFM_5[2]), .B(n744), .Y(n268) );
  NOR2xp33_ASAP7_75t_R U792 ( .A(n739), .B(IFM_Buffer[34]), .Y(n267) );
  NOR2xp33_ASAP7_75t_R U793 ( .A(In_IFM_5[6]), .B(n745), .Y(n276) );
  NOR2xp33_ASAP7_75t_R U794 ( .A(n739), .B(IFM_Buffer[38]), .Y(n275) );
  NOR2xp33_ASAP7_75t_R U795 ( .A(In_IFM_5[7]), .B(n743), .Y(n278) );
  NOR2xp33_ASAP7_75t_R U796 ( .A(n739), .B(IFM_Buffer[39]), .Y(n277) );
  NOR2xp33_ASAP7_75t_R U797 ( .A(In_IFM_3[6]), .B(n745), .Y(n18) );
  NOR2xp33_ASAP7_75t_R U798 ( .A(n741), .B(IFM_Buffer[54]), .Y(n17) );
  NOR2xp33_ASAP7_75t_R U799 ( .A(In_IFM_3[7]), .B(n743), .Y(n21) );
  NOR2xp33_ASAP7_75t_R U800 ( .A(n740), .B(IFM_Buffer[55]), .Y(n20) );
  NOR2xp33_ASAP7_75t_R U801 ( .A(In_IFM_2[2]), .B(n744), .Y(n27) );
  NOR2xp33_ASAP7_75t_R U802 ( .A(n742), .B(IFM_Buffer[58]), .Y(n26) );
  NOR2xp33_ASAP7_75t_R U803 ( .A(In_IFM_2[6]), .B(n744), .Y(n35) );
  NOR2xp33_ASAP7_75t_R U804 ( .A(n742), .B(IFM_Buffer[62]), .Y(n34) );
  NOR2xp33_ASAP7_75t_R U805 ( .A(In_IFM_2[7]), .B(n744), .Y(n37) );
  NOR2xp33_ASAP7_75t_R U806 ( .A(n741), .B(IFM_Buffer[63]), .Y(n36) );
  NOR2xp33_ASAP7_75t_R U807 ( .A(In_IFM_1[2]), .B(n744), .Y(n43) );
  NOR2xp33_ASAP7_75t_R U808 ( .A(n742), .B(IFM_Buffer[66]), .Y(n42) );
  NOR2xp33_ASAP7_75t_R U809 ( .A(In_IFM_1[6]), .B(n744), .Y(n51) );
  NOR2xp33_ASAP7_75t_R U810 ( .A(n742), .B(IFM_Buffer[70]), .Y(n50) );
  NOR2xp33_ASAP7_75t_R U811 ( .A(In_IFM_1[7]), .B(n745), .Y(n53) );
  NOR2xp33_ASAP7_75t_R U812 ( .A(n742), .B(IFM_Buffer[71]), .Y(n52) );
  NOR2xp33_ASAP7_75t_R U813 ( .A(In_IFM_9[3]), .B(n745), .Y(n206) );
  NOR2xp33_ASAP7_75t_R U814 ( .A(n742), .B(IFM_Buffer[3]), .Y(n205) );
  NOR2xp33_ASAP7_75t_R U815 ( .A(In_IFM_9[4]), .B(n745), .Y(n208) );
  NOR2xp33_ASAP7_75t_R U816 ( .A(n742), .B(IFM_Buffer[4]), .Y(n207) );
  NOR2xp33_ASAP7_75t_R U817 ( .A(In_IFM_9[5]), .B(n745), .Y(n210) );
  NOR2xp33_ASAP7_75t_R U818 ( .A(n742), .B(IFM_Buffer[5]), .Y(n209) );
  NOR2xp33_ASAP7_75t_R U819 ( .A(In_IFM_8[3]), .B(n745), .Y(n222) );
  NOR2xp33_ASAP7_75t_R U820 ( .A(n741), .B(IFM_Buffer[11]), .Y(n221) );
  NOR2xp33_ASAP7_75t_R U821 ( .A(In_IFM_8[4]), .B(n745), .Y(n224) );
  NOR2xp33_ASAP7_75t_R U822 ( .A(n741), .B(IFM_Buffer[12]), .Y(n223) );
  NOR2xp33_ASAP7_75t_R U823 ( .A(In_IFM_8[5]), .B(n745), .Y(n226) );
  NOR2xp33_ASAP7_75t_R U824 ( .A(n741), .B(IFM_Buffer[13]), .Y(n225) );
  NOR2xp33_ASAP7_75t_R U825 ( .A(In_IFM_7[3]), .B(n745), .Y(n238) );
  NOR2xp33_ASAP7_75t_R U826 ( .A(n740), .B(IFM_Buffer[19]), .Y(n237) );
  NOR2xp33_ASAP7_75t_R U827 ( .A(In_IFM_7[4]), .B(n745), .Y(n240) );
  NOR2xp33_ASAP7_75t_R U828 ( .A(n740), .B(IFM_Buffer[20]), .Y(n239) );
  NOR2xp33_ASAP7_75t_R U829 ( .A(In_IFM_7[5]), .B(n745), .Y(n242) );
  NOR2xp33_ASAP7_75t_R U830 ( .A(n740), .B(IFM_Buffer[21]), .Y(n241) );
  NOR2xp33_ASAP7_75t_R U831 ( .A(In_IFM_6[3]), .B(n744), .Y(n254) );
  NOR2xp33_ASAP7_75t_R U832 ( .A(n740), .B(IFM_Buffer[27]), .Y(n253) );
  NOR2xp33_ASAP7_75t_R U833 ( .A(In_IFM_6[4]), .B(n745), .Y(n256) );
  NOR2xp33_ASAP7_75t_R U834 ( .A(n740), .B(IFM_Buffer[28]), .Y(n255) );
  NOR2xp33_ASAP7_75t_R U835 ( .A(In_IFM_6[5]), .B(n743), .Y(n258) );
  NOR2xp33_ASAP7_75t_R U836 ( .A(n740), .B(IFM_Buffer[29]), .Y(n257) );
  NOR2xp33_ASAP7_75t_R U837 ( .A(In_IFM_5[3]), .B(n744), .Y(n270) );
  NOR2xp33_ASAP7_75t_R U838 ( .A(n739), .B(IFM_Buffer[35]), .Y(n269) );
  NOR2xp33_ASAP7_75t_R U839 ( .A(In_IFM_5[4]), .B(n744), .Y(n272) );
  NOR2xp33_ASAP7_75t_R U840 ( .A(n739), .B(IFM_Buffer[36]), .Y(n271) );
  NOR2xp33_ASAP7_75t_R U841 ( .A(In_IFM_5[5]), .B(n743), .Y(n274) );
  NOR2xp33_ASAP7_75t_R U842 ( .A(n739), .B(IFM_Buffer[37]), .Y(n273) );
  NOR2xp33_ASAP7_75t_R U843 ( .A(In_IFM_2[3]), .B(n744), .Y(n29) );
  NOR2xp33_ASAP7_75t_R U844 ( .A(n740), .B(IFM_Buffer[59]), .Y(n28) );
  NOR2xp33_ASAP7_75t_R U845 ( .A(In_IFM_2[4]), .B(n744), .Y(n31) );
  NOR2xp33_ASAP7_75t_R U846 ( .A(n739), .B(IFM_Buffer[60]), .Y(n30) );
  NOR2xp33_ASAP7_75t_R U847 ( .A(In_IFM_2[5]), .B(n744), .Y(n33) );
  NOR2xp33_ASAP7_75t_R U848 ( .A(n742), .B(IFM_Buffer[61]), .Y(n32) );
  NOR2xp33_ASAP7_75t_R U849 ( .A(In_IFM_1[3]), .B(n744), .Y(n45) );
  NOR2xp33_ASAP7_75t_R U850 ( .A(n742), .B(IFM_Buffer[67]), .Y(n44) );
  NOR2xp33_ASAP7_75t_R U851 ( .A(In_IFM_1[4]), .B(n744), .Y(n47) );
  NOR2xp33_ASAP7_75t_R U852 ( .A(n742), .B(IFM_Buffer[68]), .Y(n46) );
  NOR2xp33_ASAP7_75t_R U853 ( .A(In_IFM_1[5]), .B(n744), .Y(n49) );
  NOR2xp33_ASAP7_75t_R U854 ( .A(n742), .B(IFM_Buffer[69]), .Y(n48) );
  NOR2xp33_ASAP7_75t_R U855 ( .A(In_IFM_4[2]), .B(n745), .Y(n284) );
  NOR2xp33_ASAP7_75t_R U856 ( .A(n738), .B(IFM_Buffer[42]), .Y(n283) );
  NOR2xp33_ASAP7_75t_R U857 ( .A(In_IFM_4[6]), .B(n744), .Y(n292) );
  NOR2xp33_ASAP7_75t_R U858 ( .A(n738), .B(IFM_Buffer[46]), .Y(n291) );
  NOR2xp33_ASAP7_75t_R U859 ( .A(In_IFM_4[7]), .B(n743), .Y(n294) );
  NOR2xp33_ASAP7_75t_R U860 ( .A(n738), .B(IFM_Buffer[47]), .Y(n293) );
  NOR2xp33_ASAP7_75t_R U861 ( .A(In_IFM_3[2]), .B(n745), .Y(n300) );
  NOR2xp33_ASAP7_75t_R U862 ( .A(n738), .B(IFM_Buffer[50]), .Y(n299) );
  NOR2xp33_ASAP7_75t_R U863 ( .A(In_IFM_4[3]), .B(n745), .Y(n286) );
  NOR2xp33_ASAP7_75t_R U864 ( .A(n738), .B(IFM_Buffer[43]), .Y(n285) );
  NOR2xp33_ASAP7_75t_R U865 ( .A(In_IFM_4[4]), .B(n744), .Y(n288) );
  NOR2xp33_ASAP7_75t_R U866 ( .A(n738), .B(IFM_Buffer[44]), .Y(n287) );
  NOR2xp33_ASAP7_75t_R U867 ( .A(In_IFM_4[5]), .B(n743), .Y(n290) );
  NOR2xp33_ASAP7_75t_R U868 ( .A(n738), .B(IFM_Buffer[45]), .Y(n289) );
  NOR2xp33_ASAP7_75t_R U869 ( .A(In_IFM_3[3]), .B(n743), .Y(n302) );
  NOR2xp33_ASAP7_75t_R U870 ( .A(n738), .B(IFM_Buffer[51]), .Y(n301) );
  NOR2xp33_ASAP7_75t_R U871 ( .A(In_IFM_3[4]), .B(n744), .Y(n304) );
  NOR2xp33_ASAP7_75t_R U872 ( .A(n738), .B(IFM_Buffer[52]), .Y(n303) );
  NOR2xp33_ASAP7_75t_R U873 ( .A(In_IFM_3[5]), .B(n743), .Y(n306) );
  NOR2xp33_ASAP7_75t_R U874 ( .A(n738), .B(IFM_Buffer[53]), .Y(n305) );
  INVx1_ASAP7_75t_R U875 ( .A(in_valid), .Y(n745) );
  INVx1_ASAP7_75t_R U876 ( .A(weight_valid), .Y(n731) );
  NOR2xp33_ASAP7_75t_R U877 ( .A(weight_valid), .B(Weight_Buffer[0]), .Y(n55)
         );
  NOR2xp33_ASAP7_75t_R U878 ( .A(In_Weight_9[0]), .B(n731), .Y(n54) );
  NOR2xp33_ASAP7_75t_R U879 ( .A(weight_valid), .B(Weight_Buffer[1]), .Y(n58)
         );
  NOR2xp33_ASAP7_75t_R U880 ( .A(In_Weight_9[1]), .B(n731), .Y(n57) );
  NOR2xp33_ASAP7_75t_R U881 ( .A(weight_valid), .B(Weight_Buffer[2]), .Y(n60)
         );
  NOR2xp33_ASAP7_75t_R U882 ( .A(In_Weight_9[2]), .B(n731), .Y(n59) );
  NOR2xp33_ASAP7_75t_R U883 ( .A(weight_valid), .B(Weight_Buffer[3]), .Y(n62)
         );
  NOR2xp33_ASAP7_75t_R U884 ( .A(In_Weight_9[3]), .B(n731), .Y(n61) );
  NOR2xp33_ASAP7_75t_R U885 ( .A(weight_valid), .B(Weight_Buffer[4]), .Y(n64)
         );
  NOR2xp33_ASAP7_75t_R U886 ( .A(In_Weight_9[4]), .B(n731), .Y(n63) );
  NOR2xp33_ASAP7_75t_R U887 ( .A(weight_valid), .B(Weight_Buffer[5]), .Y(n66)
         );
  NOR2xp33_ASAP7_75t_R U888 ( .A(In_Weight_9[5]), .B(n731), .Y(n65) );
  NOR2xp33_ASAP7_75t_R U889 ( .A(weight_valid), .B(Weight_Buffer[6]), .Y(n68)
         );
  NOR2xp33_ASAP7_75t_R U890 ( .A(In_Weight_9[6]), .B(n731), .Y(n67) );
  NOR2xp33_ASAP7_75t_R U891 ( .A(weight_valid), .B(Weight_Buffer[7]), .Y(n70)
         );
  NOR2xp33_ASAP7_75t_R U892 ( .A(In_Weight_9[7]), .B(n731), .Y(n69) );
  NOR2xp33_ASAP7_75t_R U893 ( .A(weight_valid), .B(Weight_Buffer[8]), .Y(n72)
         );
  NOR2xp33_ASAP7_75t_R U894 ( .A(In_Weight_8[0]), .B(n731), .Y(n71) );
  NOR2xp33_ASAP7_75t_R U895 ( .A(weight_valid), .B(Weight_Buffer[9]), .Y(n74)
         );
  NOR2xp33_ASAP7_75t_R U896 ( .A(In_Weight_8[1]), .B(n731), .Y(n73) );
  NOR2xp33_ASAP7_75t_R U897 ( .A(weight_valid), .B(Weight_Buffer[10]), .Y(n76)
         );
  NOR2xp33_ASAP7_75t_R U898 ( .A(In_Weight_8[2]), .B(n731), .Y(n75) );
  NOR2xp33_ASAP7_75t_R U899 ( .A(weight_valid), .B(Weight_Buffer[11]), .Y(n78)
         );
  NOR2xp33_ASAP7_75t_R U900 ( .A(In_Weight_8[3]), .B(n731), .Y(n77) );
  NOR2xp33_ASAP7_75t_R U901 ( .A(weight_valid), .B(Weight_Buffer[12]), .Y(n80)
         );
  NOR2xp33_ASAP7_75t_R U902 ( .A(In_Weight_8[4]), .B(n731), .Y(n79) );
  NOR2xp33_ASAP7_75t_R U903 ( .A(weight_valid), .B(Weight_Buffer[13]), .Y(n82)
         );
  NOR2xp33_ASAP7_75t_R U904 ( .A(In_Weight_8[5]), .B(n731), .Y(n81) );
  NOR2xp33_ASAP7_75t_R U905 ( .A(weight_valid), .B(Weight_Buffer[14]), .Y(n84)
         );
  NOR2xp33_ASAP7_75t_R U906 ( .A(In_Weight_8[6]), .B(n731), .Y(n83) );
  NOR2xp33_ASAP7_75t_R U907 ( .A(weight_valid), .B(Weight_Buffer[15]), .Y(n86)
         );
  NOR2xp33_ASAP7_75t_R U908 ( .A(In_Weight_8[7]), .B(n731), .Y(n85) );
  NOR2xp33_ASAP7_75t_R U909 ( .A(weight_valid), .B(Weight_Buffer[16]), .Y(n88)
         );
  NOR2xp33_ASAP7_75t_R U910 ( .A(In_Weight_7[0]), .B(n731), .Y(n87) );
  NOR2xp33_ASAP7_75t_R U911 ( .A(weight_valid), .B(Weight_Buffer[17]), .Y(n90)
         );
  NOR2xp33_ASAP7_75t_R U912 ( .A(In_Weight_7[1]), .B(n731), .Y(n89) );
  NOR2xp33_ASAP7_75t_R U913 ( .A(weight_valid), .B(Weight_Buffer[18]), .Y(n92)
         );
  NOR2xp33_ASAP7_75t_R U914 ( .A(In_Weight_7[2]), .B(n731), .Y(n91) );
  NOR2xp33_ASAP7_75t_R U915 ( .A(weight_valid), .B(Weight_Buffer[19]), .Y(n94)
         );
  NOR2xp33_ASAP7_75t_R U916 ( .A(In_Weight_7[3]), .B(n731), .Y(n93) );
  NOR2xp33_ASAP7_75t_R U917 ( .A(weight_valid), .B(Weight_Buffer[20]), .Y(n96)
         );
  NOR2xp33_ASAP7_75t_R U918 ( .A(In_Weight_7[4]), .B(n731), .Y(n95) );
  NOR2xp33_ASAP7_75t_R U919 ( .A(weight_valid), .B(Weight_Buffer[21]), .Y(n98)
         );
  NOR2xp33_ASAP7_75t_R U920 ( .A(In_Weight_7[5]), .B(n731), .Y(n97) );
  NOR2xp33_ASAP7_75t_R U921 ( .A(weight_valid), .B(Weight_Buffer[22]), .Y(n100) );
  NOR2xp33_ASAP7_75t_R U922 ( .A(In_Weight_7[6]), .B(n731), .Y(n99) );
  NOR2xp33_ASAP7_75t_R U923 ( .A(weight_valid), .B(Weight_Buffer[23]), .Y(n102) );
  NOR2xp33_ASAP7_75t_R U924 ( .A(In_Weight_7[7]), .B(n731), .Y(n101) );
  NOR2xp33_ASAP7_75t_R U925 ( .A(weight_valid), .B(Weight_Buffer[24]), .Y(n104) );
  NOR2xp33_ASAP7_75t_R U926 ( .A(In_Weight_6[0]), .B(n731), .Y(n103) );
  NOR2xp33_ASAP7_75t_R U927 ( .A(weight_valid), .B(Weight_Buffer[25]), .Y(n106) );
  NOR2xp33_ASAP7_75t_R U928 ( .A(In_Weight_6[1]), .B(n731), .Y(n105) );
  NOR2xp33_ASAP7_75t_R U929 ( .A(weight_valid), .B(Weight_Buffer[26]), .Y(n108) );
  NOR2xp33_ASAP7_75t_R U930 ( .A(In_Weight_6[2]), .B(n731), .Y(n107) );
  NOR2xp33_ASAP7_75t_R U931 ( .A(weight_valid), .B(Weight_Buffer[27]), .Y(n110) );
  NOR2xp33_ASAP7_75t_R U932 ( .A(In_Weight_6[3]), .B(n731), .Y(n109) );
  NOR2xp33_ASAP7_75t_R U933 ( .A(weight_valid), .B(Weight_Buffer[28]), .Y(n112) );
  NOR2xp33_ASAP7_75t_R U934 ( .A(In_Weight_6[4]), .B(n731), .Y(n111) );
  NOR2xp33_ASAP7_75t_R U935 ( .A(weight_valid), .B(Weight_Buffer[29]), .Y(n114) );
  NOR2xp33_ASAP7_75t_R U936 ( .A(In_Weight_6[5]), .B(n731), .Y(n113) );
  NOR2xp33_ASAP7_75t_R U937 ( .A(weight_valid), .B(Weight_Buffer[30]), .Y(n116) );
  NOR2xp33_ASAP7_75t_R U938 ( .A(In_Weight_6[6]), .B(n731), .Y(n115) );
  NOR2xp33_ASAP7_75t_R U939 ( .A(weight_valid), .B(Weight_Buffer[31]), .Y(n118) );
  NOR2xp33_ASAP7_75t_R U940 ( .A(In_Weight_6[7]), .B(n731), .Y(n117) );
  NOR2xp33_ASAP7_75t_R U941 ( .A(weight_valid), .B(Weight_Buffer[32]), .Y(n120) );
  NOR2xp33_ASAP7_75t_R U942 ( .A(In_Weight_5[0]), .B(n731), .Y(n119) );
  NOR2xp33_ASAP7_75t_R U943 ( .A(weight_valid), .B(Weight_Buffer[33]), .Y(n122) );
  NOR2xp33_ASAP7_75t_R U944 ( .A(In_Weight_5[1]), .B(n731), .Y(n121) );
  NOR2xp33_ASAP7_75t_R U945 ( .A(weight_valid), .B(Weight_Buffer[34]), .Y(n124) );
  NOR2xp33_ASAP7_75t_R U946 ( .A(In_Weight_5[2]), .B(n731), .Y(n123) );
  NOR2xp33_ASAP7_75t_R U947 ( .A(weight_valid), .B(Weight_Buffer[35]), .Y(n126) );
  NOR2xp33_ASAP7_75t_R U948 ( .A(In_Weight_5[3]), .B(n731), .Y(n125) );
  NOR2xp33_ASAP7_75t_R U949 ( .A(weight_valid), .B(Weight_Buffer[36]), .Y(n128) );
  NOR2xp33_ASAP7_75t_R U950 ( .A(In_Weight_5[4]), .B(n731), .Y(n127) );
  NOR2xp33_ASAP7_75t_R U951 ( .A(weight_valid), .B(Weight_Buffer[37]), .Y(n130) );
  NOR2xp33_ASAP7_75t_R U952 ( .A(In_Weight_5[5]), .B(n731), .Y(n129) );
  NOR2xp33_ASAP7_75t_R U953 ( .A(weight_valid), .B(Weight_Buffer[38]), .Y(n132) );
  NOR2xp33_ASAP7_75t_R U954 ( .A(In_Weight_5[6]), .B(n731), .Y(n131) );
  NOR2xp33_ASAP7_75t_R U955 ( .A(weight_valid), .B(Weight_Buffer[39]), .Y(n134) );
  NOR2xp33_ASAP7_75t_R U956 ( .A(In_Weight_5[7]), .B(n731), .Y(n133) );
  NOR2xp33_ASAP7_75t_R U957 ( .A(weight_valid), .B(Weight_Buffer[40]), .Y(n136) );
  NOR2xp33_ASAP7_75t_R U958 ( .A(In_Weight_4[0]), .B(n731), .Y(n135) );
  NOR2xp33_ASAP7_75t_R U959 ( .A(weight_valid), .B(Weight_Buffer[41]), .Y(n138) );
  NOR2xp33_ASAP7_75t_R U960 ( .A(In_Weight_4[1]), .B(n731), .Y(n137) );
  NOR2xp33_ASAP7_75t_R U961 ( .A(weight_valid), .B(Weight_Buffer[42]), .Y(n140) );
  NOR2xp33_ASAP7_75t_R U962 ( .A(In_Weight_4[2]), .B(n731), .Y(n139) );
  NOR2xp33_ASAP7_75t_R U963 ( .A(weight_valid), .B(Weight_Buffer[43]), .Y(n142) );
  NOR2xp33_ASAP7_75t_R U964 ( .A(In_Weight_4[3]), .B(n731), .Y(n141) );
  NOR2xp33_ASAP7_75t_R U965 ( .A(weight_valid), .B(Weight_Buffer[44]), .Y(n144) );
  NOR2xp33_ASAP7_75t_R U966 ( .A(In_Weight_4[4]), .B(n731), .Y(n143) );
  NOR2xp33_ASAP7_75t_R U967 ( .A(weight_valid), .B(Weight_Buffer[45]), .Y(n146) );
  NOR2xp33_ASAP7_75t_R U968 ( .A(In_Weight_4[5]), .B(n731), .Y(n145) );
  NOR2xp33_ASAP7_75t_R U969 ( .A(weight_valid), .B(Weight_Buffer[46]), .Y(n148) );
  NOR2xp33_ASAP7_75t_R U970 ( .A(In_Weight_4[6]), .B(n731), .Y(n147) );
  NOR2xp33_ASAP7_75t_R U971 ( .A(weight_valid), .B(Weight_Buffer[47]), .Y(n150) );
  NOR2xp33_ASAP7_75t_R U972 ( .A(In_Weight_4[7]), .B(n731), .Y(n149) );
  NOR2xp33_ASAP7_75t_R U973 ( .A(weight_valid), .B(Weight_Buffer[48]), .Y(n152) );
  NOR2xp33_ASAP7_75t_R U974 ( .A(In_Weight_3[0]), .B(n731), .Y(n151) );
  NOR2xp33_ASAP7_75t_R U975 ( .A(weight_valid), .B(Weight_Buffer[49]), .Y(n154) );
  NOR2xp33_ASAP7_75t_R U976 ( .A(In_Weight_3[1]), .B(n731), .Y(n153) );
  NOR2xp33_ASAP7_75t_R U977 ( .A(weight_valid), .B(Weight_Buffer[50]), .Y(n156) );
  NOR2xp33_ASAP7_75t_R U978 ( .A(In_Weight_3[2]), .B(n731), .Y(n155) );
  NOR2xp33_ASAP7_75t_R U979 ( .A(weight_valid), .B(Weight_Buffer[51]), .Y(n158) );
  NOR2xp33_ASAP7_75t_R U980 ( .A(In_Weight_3[3]), .B(n731), .Y(n157) );
  NOR2xp33_ASAP7_75t_R U981 ( .A(weight_valid), .B(Weight_Buffer[52]), .Y(n160) );
  NOR2xp33_ASAP7_75t_R U982 ( .A(In_Weight_3[4]), .B(n731), .Y(n159) );
  NOR2xp33_ASAP7_75t_R U983 ( .A(weight_valid), .B(Weight_Buffer[53]), .Y(n162) );
  NOR2xp33_ASAP7_75t_R U984 ( .A(In_Weight_3[5]), .B(n731), .Y(n161) );
  NOR2xp33_ASAP7_75t_R U985 ( .A(weight_valid), .B(Weight_Buffer[54]), .Y(n164) );
  NOR2xp33_ASAP7_75t_R U986 ( .A(In_Weight_3[6]), .B(n731), .Y(n163) );
  NOR2xp33_ASAP7_75t_R U987 ( .A(weight_valid), .B(Weight_Buffer[55]), .Y(n166) );
  NOR2xp33_ASAP7_75t_R U988 ( .A(In_Weight_3[7]), .B(n731), .Y(n165) );
  NOR2xp33_ASAP7_75t_R U989 ( .A(weight_valid), .B(Weight_Buffer[56]), .Y(n168) );
  NOR2xp33_ASAP7_75t_R U990 ( .A(In_Weight_2[0]), .B(n731), .Y(n167) );
  NOR2xp33_ASAP7_75t_R U991 ( .A(weight_valid), .B(Weight_Buffer[57]), .Y(n170) );
  NOR2xp33_ASAP7_75t_R U992 ( .A(In_Weight_2[1]), .B(n731), .Y(n169) );
  NOR2xp33_ASAP7_75t_R U993 ( .A(weight_valid), .B(Weight_Buffer[58]), .Y(n172) );
  NOR2xp33_ASAP7_75t_R U994 ( .A(In_Weight_2[2]), .B(n731), .Y(n171) );
  NOR2xp33_ASAP7_75t_R U995 ( .A(weight_valid), .B(Weight_Buffer[59]), .Y(n174) );
  NOR2xp33_ASAP7_75t_R U996 ( .A(In_Weight_2[3]), .B(n731), .Y(n173) );
  NOR2xp33_ASAP7_75t_R U997 ( .A(weight_valid), .B(Weight_Buffer[60]), .Y(n176) );
  NOR2xp33_ASAP7_75t_R U998 ( .A(In_Weight_2[4]), .B(n731), .Y(n175) );
  NOR2xp33_ASAP7_75t_R U999 ( .A(weight_valid), .B(Weight_Buffer[61]), .Y(n178) );
  NOR2xp33_ASAP7_75t_R U1000 ( .A(In_Weight_2[5]), .B(n731), .Y(n177) );
  NOR2xp33_ASAP7_75t_R U1001 ( .A(weight_valid), .B(Weight_Buffer[62]), .Y(
        n180) );
  NOR2xp33_ASAP7_75t_R U1002 ( .A(In_Weight_2[6]), .B(n731), .Y(n179) );
  NOR2xp33_ASAP7_75t_R U1003 ( .A(weight_valid), .B(Weight_Buffer[63]), .Y(
        n182) );
  NOR2xp33_ASAP7_75t_R U1004 ( .A(In_Weight_2[7]), .B(n731), .Y(n181) );
  NOR2xp33_ASAP7_75t_R U1005 ( .A(weight_valid), .B(Weight_Buffer[64]), .Y(
        n184) );
  NOR2xp33_ASAP7_75t_R U1006 ( .A(In_Weight_1[0]), .B(n731), .Y(n183) );
  NOR2xp33_ASAP7_75t_R U1007 ( .A(weight_valid), .B(Weight_Buffer[65]), .Y(
        n186) );
  NOR2xp33_ASAP7_75t_R U1008 ( .A(In_Weight_1[1]), .B(n731), .Y(n185) );
  NOR2xp33_ASAP7_75t_R U1009 ( .A(weight_valid), .B(Weight_Buffer[66]), .Y(
        n188) );
  NOR2xp33_ASAP7_75t_R U1010 ( .A(In_Weight_1[2]), .B(n731), .Y(n187) );
  NOR2xp33_ASAP7_75t_R U1011 ( .A(weight_valid), .B(Weight_Buffer[67]), .Y(
        n190) );
  NOR2xp33_ASAP7_75t_R U1012 ( .A(In_Weight_1[3]), .B(n731), .Y(n189) );
  NOR2xp33_ASAP7_75t_R U1013 ( .A(weight_valid), .B(Weight_Buffer[68]), .Y(
        n192) );
  NOR2xp33_ASAP7_75t_R U1014 ( .A(In_Weight_1[4]), .B(n731), .Y(n191) );
  NOR2xp33_ASAP7_75t_R U1015 ( .A(weight_valid), .B(Weight_Buffer[69]), .Y(
        n194) );
  NOR2xp33_ASAP7_75t_R U1016 ( .A(In_Weight_1[5]), .B(n731), .Y(n193) );
  NOR2xp33_ASAP7_75t_R U1017 ( .A(weight_valid), .B(Weight_Buffer[70]), .Y(
        n196) );
  NOR2xp33_ASAP7_75t_R U1018 ( .A(In_Weight_1[6]), .B(n731), .Y(n195) );
  NOR2xp33_ASAP7_75t_R U1019 ( .A(weight_valid), .B(Weight_Buffer[71]), .Y(
        n198) );
  NOR2xp33_ASAP7_75t_R U1020 ( .A(In_Weight_1[7]), .B(n731), .Y(n197) );
  HB1xp67_ASAP7_75t_R U1021 ( .A(A_syn), .Y(n732) );
  INVx1_ASAP7_75t_R U1022 ( .A(n764), .Y(N131) );
  INVx1_ASAP7_75t_R U1023 ( .A(n766), .Y(N132) );
  INVx1_ASAP7_75t_R U1024 ( .A(n768), .Y(N133) );
  INVx1_ASAP7_75t_R U1025 ( .A(n770), .Y(N134) );
  INVx1_ASAP7_75t_R U1026 ( .A(n772), .Y(N135) );
  INVx1_ASAP7_75t_R U1027 ( .A(n774), .Y(N136) );
  INVx1_ASAP7_75t_R U1028 ( .A(n775), .Y(N137) );
  INVx1_ASAP7_75t_R U1029 ( .A(n746), .Y(N122) );
  INVx1_ASAP7_75t_R U1030 ( .A(n748), .Y(N123) );
  INVx1_ASAP7_75t_R U1031 ( .A(n750), .Y(N124) );
  INVx1_ASAP7_75t_R U1032 ( .A(n752), .Y(N125) );
  INVx1_ASAP7_75t_R U1033 ( .A(n754), .Y(N126) );
  INVx1_ASAP7_75t_R U1034 ( .A(n756), .Y(N127) );
  INVx1_ASAP7_75t_R U1035 ( .A(n758), .Y(N128) );
  INVx1_ASAP7_75t_R U1036 ( .A(n760), .Y(N129) );
  INVx1_ASAP7_75t_R U1037 ( .A(n762), .Y(N130) );
  INVx1_ASAP7_75t_R U1038 ( .A(n747), .Y(n776) );
  INVx1_ASAP7_75t_R U1039 ( .A(n749), .Y(n777) );
  INVx1_ASAP7_75t_R U1040 ( .A(n751), .Y(n778) );
  INVx1_ASAP7_75t_R U1041 ( .A(n753), .Y(n779) );
  INVx1_ASAP7_75t_R U1042 ( .A(n755), .Y(n780) );
  INVx1_ASAP7_75t_R U1043 ( .A(n757), .Y(n781) );
  INVx1_ASAP7_75t_R U1044 ( .A(n759), .Y(n782) );
  INVx1_ASAP7_75t_R U1045 ( .A(n761), .Y(n783) );
  INVx1_ASAP7_75t_R U1046 ( .A(n763), .Y(n784) );
  INVx1_ASAP7_75t_R U1047 ( .A(n765), .Y(n785) );
  INVx1_ASAP7_75t_R U1048 ( .A(n767), .Y(n786) );
  INVx1_ASAP7_75t_R U1049 ( .A(n769), .Y(n787) );
  INVx1_ASAP7_75t_R U1050 ( .A(n771), .Y(n788) );
  INVx1_ASAP7_75t_R U1051 ( .A(n773), .Y(n789) );
  INVx1_ASAP7_75t_R U1052 ( .A(n808), .Y(N89) );
  INVx1_ASAP7_75t_R U1053 ( .A(n810), .Y(N90) );
  INVx1_ASAP7_75t_R U1054 ( .A(n812), .Y(N91) );
  INVx1_ASAP7_75t_R U1055 ( .A(n814), .Y(N92) );
  INVx1_ASAP7_75t_R U1056 ( .A(n816), .Y(N93) );
  INVx1_ASAP7_75t_R U1057 ( .A(n818), .Y(N94) );
  INVx1_ASAP7_75t_R U1058 ( .A(n819), .Y(N95) );
  INVx1_ASAP7_75t_R U1059 ( .A(n790), .Y(N80) );
  INVx1_ASAP7_75t_R U1060 ( .A(n792), .Y(N81) );
  INVx1_ASAP7_75t_R U1061 ( .A(n794), .Y(N82) );
  INVx1_ASAP7_75t_R U1062 ( .A(n796), .Y(N83) );
  INVx1_ASAP7_75t_R U1063 ( .A(n798), .Y(N84) );
  INVx1_ASAP7_75t_R U1064 ( .A(n800), .Y(N85) );
  INVx1_ASAP7_75t_R U1065 ( .A(n802), .Y(N86) );
  INVx1_ASAP7_75t_R U1066 ( .A(n804), .Y(N87) );
  INVx1_ASAP7_75t_R U1067 ( .A(n806), .Y(N88) );
  INVx1_ASAP7_75t_R U1068 ( .A(n791), .Y(n820) );
  INVx1_ASAP7_75t_R U1069 ( .A(n793), .Y(n821) );
  INVx1_ASAP7_75t_R U1070 ( .A(n795), .Y(n822) );
  INVx1_ASAP7_75t_R U1071 ( .A(n797), .Y(n823) );
  INVx1_ASAP7_75t_R U1072 ( .A(n799), .Y(n824) );
  INVx1_ASAP7_75t_R U1073 ( .A(n801), .Y(n825) );
  INVx1_ASAP7_75t_R U1074 ( .A(n803), .Y(n826) );
  INVx1_ASAP7_75t_R U1075 ( .A(n805), .Y(n827) );
  INVx1_ASAP7_75t_R U1076 ( .A(n807), .Y(n828) );
  INVx1_ASAP7_75t_R U1077 ( .A(n809), .Y(n829) );
  INVx1_ASAP7_75t_R U1078 ( .A(n811), .Y(n830) );
  INVx1_ASAP7_75t_R U1079 ( .A(n813), .Y(n831) );
  INVx1_ASAP7_75t_R U1080 ( .A(n815), .Y(n832) );
  INVx1_ASAP7_75t_R U1081 ( .A(n817), .Y(n833) );
  INVx1_ASAP7_75t_R U1082 ( .A(out_sum[19]), .Y(n834) );
  INVx1_ASAP7_75t_R U1083 ( .A(out_sum[18]), .Y(n835) );
  INVx1_ASAP7_75t_R U1084 ( .A(out_sum[17]), .Y(n836) );
  INVx1_ASAP7_75t_R U1085 ( .A(out_sum[16]), .Y(n837) );
  INVx1_ASAP7_75t_R U1086 ( .A(out_sum[15]), .Y(n838) );
  INVx1_ASAP7_75t_R U1087 ( .A(out_sum[14]), .Y(n839) );
  INVx1_ASAP7_75t_R U1088 ( .A(out_sum[13]), .Y(n840) );
  INVx1_ASAP7_75t_R U1089 ( .A(out_sum[12]), .Y(n841) );
  INVx1_ASAP7_75t_R U1090 ( .A(out_sum[11]), .Y(n842) );
  INVx1_ASAP7_75t_R U1091 ( .A(out_sum[10]), .Y(n843) );
  INVx1_ASAP7_75t_R U1092 ( .A(out_sum[9]), .Y(n844) );
  INVx1_ASAP7_75t_R U1093 ( .A(out_sum[8]), .Y(n845) );
  INVx1_ASAP7_75t_R U1094 ( .A(out_sum[7]), .Y(n846) );
  INVx1_ASAP7_75t_R U1095 ( .A(out_sum[6]), .Y(n847) );
  INVx1_ASAP7_75t_R U1096 ( .A(out_sum[5]), .Y(n848) );
  INVx1_ASAP7_75t_R U1097 ( .A(out_sum[4]), .Y(n849) );
  INVx1_ASAP7_75t_R U1098 ( .A(out_sum[3]), .Y(n850) );
  INVx1_ASAP7_75t_R U1099 ( .A(out_sum[2]), .Y(n851) );
  INVx1_ASAP7_75t_R U1100 ( .A(out_sum[1]), .Y(n852) );
  INVx1_ASAP7_75t_R U1101 ( .A(out_sum[0]), .Y(n853) );
  INVx1_ASAP7_75t_R U1102 ( .A(A1[19]), .Y(n855) );
  INVx1_ASAP7_75t_R U1103 ( .A(A1[18]), .Y(n856) );
  INVx1_ASAP7_75t_R U1104 ( .A(A1[17]), .Y(n857) );
  INVx1_ASAP7_75t_R U1105 ( .A(A1[16]), .Y(n858) );
  INVx1_ASAP7_75t_R U1106 ( .A(A1[15]), .Y(n859) );
  INVx1_ASAP7_75t_R U1107 ( .A(A1[14]), .Y(n860) );
  INVx1_ASAP7_75t_R U1108 ( .A(A1[13]), .Y(n861) );
  INVx1_ASAP7_75t_R U1109 ( .A(A1[12]), .Y(n862) );
  INVx1_ASAP7_75t_R U1110 ( .A(A1[11]), .Y(n863) );
  INVx1_ASAP7_75t_R U1111 ( .A(A1[10]), .Y(n864) );
  INVx1_ASAP7_75t_R U1112 ( .A(A1[9]), .Y(n865) );
  INVx1_ASAP7_75t_R U1113 ( .A(A1[8]), .Y(n866) );
  INVx1_ASAP7_75t_R U1114 ( .A(A1[7]), .Y(n867) );
  INVx1_ASAP7_75t_R U1115 ( .A(A1[6]), .Y(n868) );
  INVx1_ASAP7_75t_R U1116 ( .A(A1[5]), .Y(n869) );
  INVx1_ASAP7_75t_R U1117 ( .A(A1[4]), .Y(n870) );
  INVx1_ASAP7_75t_R U1118 ( .A(A1[3]), .Y(n871) );
  INVx1_ASAP7_75t_R U1119 ( .A(A1[2]), .Y(n872) );
  INVx1_ASAP7_75t_R U1120 ( .A(A1[1]), .Y(n873) );
  INVx1_ASAP7_75t_R U1121 ( .A(A1[0]), .Y(n874) );
endmodule


module Convolution_DW01_add_0 ( A, B, CI, SUM, CO );
  input [20:0] A;
  input [20:0] B;
  output [20:0] SUM;
  input CI;
  output CO;
  wire   n1, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55;

  FAx1_ASAP7_75t_R U1_17 ( .A(A[17]), .B(B[17]), .CI(n6), .CON(n22), .SN(n23)
         );
  FAx1_ASAP7_75t_R U1_16 ( .A(A[16]), .B(B[16]), .CI(n7), .CON(n24), .SN(n25)
         );
  FAx1_ASAP7_75t_R U1_15 ( .A(A[15]), .B(B[15]), .CI(n8), .CON(n26), .SN(n27)
         );
  FAx1_ASAP7_75t_R U1_14 ( .A(A[14]), .B(B[14]), .CI(n9), .CON(n28), .SN(n29)
         );
  FAx1_ASAP7_75t_R U1_13 ( .A(A[13]), .B(B[13]), .CI(n10), .CON(n30), .SN(n31)
         );
  FAx1_ASAP7_75t_R U1_12 ( .A(A[12]), .B(B[12]), .CI(n11), .CON(n32), .SN(n33)
         );
  FAx1_ASAP7_75t_R U1_11 ( .A(A[11]), .B(B[11]), .CI(n12), .CON(n34), .SN(n35)
         );
  FAx1_ASAP7_75t_R U1_10 ( .A(A[10]), .B(B[10]), .CI(n13), .CON(n36), .SN(n37)
         );
  FAx1_ASAP7_75t_R U1_9 ( .A(A[9]), .B(B[9]), .CI(n14), .CON(n38), .SN(n39) );
  FAx1_ASAP7_75t_R U1_8 ( .A(A[8]), .B(B[8]), .CI(n15), .CON(n40), .SN(n41) );
  FAx1_ASAP7_75t_R U1_7 ( .A(A[7]), .B(B[7]), .CI(n16), .CON(n42), .SN(n43) );
  FAx1_ASAP7_75t_R U1_6 ( .A(A[6]), .B(B[6]), .CI(n17), .CON(n44), .SN(n45) );
  FAx1_ASAP7_75t_R U1_5 ( .A(A[5]), .B(B[5]), .CI(n18), .CON(n46), .SN(n47) );
  FAx1_ASAP7_75t_R U1_4 ( .A(A[4]), .B(B[4]), .CI(n19), .CON(n48), .SN(n49) );
  FAx1_ASAP7_75t_R U1_3 ( .A(A[3]), .B(B[3]), .CI(n20), .CON(n50), .SN(n51) );
  FAx1_ASAP7_75t_R U1_2 ( .A(A[2]), .B(B[2]), .CI(n21), .CON(n52), .SN(n53) );
  FAx1_ASAP7_75t_R U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CON(n54), .SN(n55) );
  AND2x2_ASAP7_75t_R U1 ( .A(A[0]), .B(B[0]), .Y(n1) );
  XOR2xp5_ASAP7_75t_R U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  XOR2xp5_ASAP7_75t_R U3 ( .A(n5), .B(B[18]), .Y(SUM[18]) );
  AND2x2_ASAP7_75t_R U4 ( .A(B[18]), .B(n5), .Y(SUM[19]) );
  INVx1_ASAP7_75t_R U5 ( .A(n22), .Y(n5) );
  INVx1_ASAP7_75t_R U6 ( .A(n24), .Y(n6) );
  INVx1_ASAP7_75t_R U7 ( .A(n26), .Y(n7) );
  INVx1_ASAP7_75t_R U8 ( .A(n28), .Y(n8) );
  INVx1_ASAP7_75t_R U9 ( .A(n30), .Y(n9) );
  INVx1_ASAP7_75t_R U10 ( .A(n32), .Y(n10) );
  INVx1_ASAP7_75t_R U11 ( .A(n34), .Y(n11) );
  INVx1_ASAP7_75t_R U12 ( .A(n36), .Y(n12) );
  INVx1_ASAP7_75t_R U13 ( .A(n38), .Y(n13) );
  INVx1_ASAP7_75t_R U14 ( .A(n40), .Y(n14) );
  INVx1_ASAP7_75t_R U15 ( .A(n42), .Y(n15) );
  INVx1_ASAP7_75t_R U16 ( .A(n44), .Y(n16) );
  INVx1_ASAP7_75t_R U17 ( .A(n46), .Y(n17) );
  INVx1_ASAP7_75t_R U18 ( .A(n48), .Y(n18) );
  INVx1_ASAP7_75t_R U19 ( .A(n50), .Y(n19) );
  INVx1_ASAP7_75t_R U20 ( .A(n52), .Y(n20) );
  INVx1_ASAP7_75t_R U21 ( .A(n54), .Y(n21) );
  INVx1_ASAP7_75t_R U22 ( .A(n39), .Y(SUM[9]) );
  INVx1_ASAP7_75t_R U23 ( .A(n41), .Y(SUM[8]) );
  INVx1_ASAP7_75t_R U24 ( .A(n43), .Y(SUM[7]) );
  INVx1_ASAP7_75t_R U25 ( .A(n45), .Y(SUM[6]) );
  INVx1_ASAP7_75t_R U26 ( .A(n47), .Y(SUM[5]) );
  INVx1_ASAP7_75t_R U27 ( .A(n49), .Y(SUM[4]) );
  INVx1_ASAP7_75t_R U28 ( .A(n51), .Y(SUM[3]) );
  INVx1_ASAP7_75t_R U29 ( .A(n53), .Y(SUM[2]) );
  INVx1_ASAP7_75t_R U30 ( .A(n55), .Y(SUM[1]) );
  INVx1_ASAP7_75t_R U31 ( .A(n23), .Y(SUM[17]) );
  INVx1_ASAP7_75t_R U32 ( .A(n25), .Y(SUM[16]) );
  INVx1_ASAP7_75t_R U33 ( .A(n27), .Y(SUM[15]) );
  INVx1_ASAP7_75t_R U34 ( .A(n29), .Y(SUM[14]) );
  INVx1_ASAP7_75t_R U35 ( .A(n31), .Y(SUM[13]) );
  INVx1_ASAP7_75t_R U36 ( .A(n33), .Y(SUM[12]) );
  INVx1_ASAP7_75t_R U37 ( .A(n35), .Y(SUM[11]) );
  INVx1_ASAP7_75t_R U38 ( .A(n37), .Y(SUM[10]) );
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
  XOR2xp5_ASAP7_75t_R U1 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  XOR2xp5_ASAP7_75t_R U2 ( .A(n5), .B(B[17]), .Y(SUM[17]) );
  AND2x2_ASAP7_75t_R U3 ( .A(A[0]), .B(B[0]), .Y(n3) );
  AND2x2_ASAP7_75t_R U4 ( .A(B[17]), .B(n5), .Y(SUM[18]) );
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


module Convolution_DW01_add_7 ( A, B, CI, SUM, CO );
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
  FAx1_ASAP7_75t_R U88 ( .A(n87), .B(n98), .CI(n294), .CON(n81), .SN(n82) );
  FAx1_ASAP7_75t_R U90 ( .A(n189), .B(n196), .CI(n292), .CON(n84), .SN(n85) );
  FAx1_ASAP7_75t_R U92 ( .A(n175), .B(n203), .CI(n182), .CON(n86), .SN(n87) );
  FAx1_ASAP7_75t_R U95 ( .A(n106), .B(n97), .CI(n94), .CON(n90), .SN(n91) );
  FAx1_ASAP7_75t_R U96 ( .A(n101), .B(n99), .CI(n297), .CON(n93), .SN(n94) );
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
  FAx1_ASAP7_75t_R U113 ( .A(n296), .B(n136), .CI(n122), .CON(n119), .SN(n120)
         );
  FAx1_ASAP7_75t_R U115 ( .A(n127), .B(n138), .CI(n129), .CON(n121), .SN(n122)
         );
  FAx1_ASAP7_75t_R U116 ( .A(n301), .B(n142), .CI(n131), .CON(n124), .SN(n125)
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
  INVx1_ASAP7_75t_R U233 ( .A(n58), .Y(n286) );
  INVx1_ASAP7_75t_R U234 ( .A(n63), .Y(n287) );
  INVx1_ASAP7_75t_R U235 ( .A(n71), .Y(n288) );
  INVx1_ASAP7_75t_R U236 ( .A(n68), .Y(n289) );
  INVx1_ASAP7_75t_R U237 ( .A(n84), .Y(n290) );
  INVx1_ASAP7_75t_R U238 ( .A(n85), .Y(n291) );
  INVx1_ASAP7_75t_R U239 ( .A(n100), .Y(n292) );
  INVx1_ASAP7_75t_R U240 ( .A(a[7]), .Y(n293) );
  INVx1_ASAP7_75t_R U241 ( .A(n96), .Y(n294) );
  INVx1_ASAP7_75t_R U242 ( .A(n120), .Y(n295) );
  INVx1_ASAP7_75t_R U243 ( .A(n125), .Y(n296) );
  INVx1_ASAP7_75t_R U244 ( .A(n109), .Y(n297) );
  INVx1_ASAP7_75t_R U245 ( .A(a[6]), .Y(n298) );
  INVx1_ASAP7_75t_R U246 ( .A(a[5]), .Y(n299) );
  INVx1_ASAP7_75t_R U247 ( .A(n146), .Y(n300) );
  INVx1_ASAP7_75t_R U248 ( .A(n140), .Y(n301) );
  INVx1_ASAP7_75t_R U249 ( .A(a[4]), .Y(n302) );
  INVx1_ASAP7_75t_R U250 ( .A(n150), .Y(n303) );
  INVx1_ASAP7_75t_R U251 ( .A(a[3]), .Y(n304) );
  INVx1_ASAP7_75t_R U252 ( .A(n160), .Y(n305) );
  INVx1_ASAP7_75t_R U253 ( .A(a[2]), .Y(n306) );
  INVx1_ASAP7_75t_R U254 ( .A(n165), .Y(n307) );
  INVx1_ASAP7_75t_R U255 ( .A(n166), .Y(n308) );
  INVx1_ASAP7_75t_R U256 ( .A(a[1]), .Y(n309) );
  INVx1_ASAP7_75t_R U257 ( .A(a[0]), .Y(n310) );
  INVx1_ASAP7_75t_R U258 ( .A(b[7]), .Y(n311) );
  INVx1_ASAP7_75t_R U259 ( .A(b[6]), .Y(n312) );
  INVx1_ASAP7_75t_R U260 ( .A(b[5]), .Y(n313) );
  INVx1_ASAP7_75t_R U261 ( .A(b[4]), .Y(n314) );
  INVx1_ASAP7_75t_R U262 ( .A(b[3]), .Y(n315) );
  INVx1_ASAP7_75t_R U263 ( .A(b[2]), .Y(n316) );
  INVx1_ASAP7_75t_R U264 ( .A(b[0]), .Y(n317) );
  XOR2xp5_ASAP7_75t_R U265 ( .A(n318), .B(n319), .Y(product[9]) );
  XOR2xp5_ASAP7_75t_R U266 ( .A(n320), .B(n321), .Y(product[8]) );
  XOR2xp5_ASAP7_75t_R U267 ( .A(n322), .B(n323), .Y(product[7]) );
  XOR2xp5_ASAP7_75t_R U268 ( .A(n324), .B(n325), .Y(product[6]) );
  XOR2xp5_ASAP7_75t_R U269 ( .A(n326), .B(n327), .Y(product[5]) );
  XOR2xp5_ASAP7_75t_R U270 ( .A(n328), .B(n329), .Y(product[4]) );
  XOR2xp5_ASAP7_75t_R U271 ( .A(n330), .B(n331), .Y(product[3]) );
  XOR2xp5_ASAP7_75t_R U272 ( .A(n332), .B(n333), .Y(product[2]) );
  XOR2xp5_ASAP7_75t_R U273 ( .A(n334), .B(n335), .Y(product[1]) );
  NAND2xp33_ASAP7_75t_R U274 ( .A(n336), .B(n337), .Y(product[15]) );
  NAND2xp33_ASAP7_75t_R U275 ( .A(n338), .B(n339), .Y(n337) );
  OR2x2_ASAP7_75t_R U276 ( .A(n340), .B(n57), .Y(n336) );
  XOR2xp5_ASAP7_75t_R U277 ( .A(n339), .B(n338), .Y(product[14]) );
  XOR2xp5_ASAP7_75t_R U278 ( .A(n340), .B(n57), .Y(n338) );
  NAND2xp33_ASAP7_75t_R U279 ( .A(b[7]), .B(a[7]), .Y(n340) );
  NAND2xp33_ASAP7_75t_R U280 ( .A(n341), .B(n342), .Y(n339) );
  NAND2xp33_ASAP7_75t_R U281 ( .A(n343), .B(n344), .Y(n342) );
  NAND2xp33_ASAP7_75t_R U282 ( .A(n61), .B(n286), .Y(n341) );
  XOR2xp5_ASAP7_75t_R U283 ( .A(n344), .B(n343), .Y(product[13]) );
  XOR2xp5_ASAP7_75t_R U284 ( .A(n286), .B(n61), .Y(n343) );
  NAND2xp33_ASAP7_75t_R U285 ( .A(n345), .B(n346), .Y(n344) );
  NAND2xp33_ASAP7_75t_R U286 ( .A(n347), .B(n348), .Y(n346) );
  NAND2xp33_ASAP7_75t_R U287 ( .A(n62), .B(n289), .Y(n345) );
  XOR2xp5_ASAP7_75t_R U288 ( .A(n348), .B(n347), .Y(product[12]) );
  XOR2xp5_ASAP7_75t_R U289 ( .A(n62), .B(n289), .Y(n347) );
  NAND2xp33_ASAP7_75t_R U290 ( .A(n349), .B(n350), .Y(n348) );
  NAND2xp33_ASAP7_75t_R U291 ( .A(n351), .B(n352), .Y(n350) );
  OR2x2_ASAP7_75t_R U292 ( .A(n69), .B(n78), .Y(n349) );
  XOR2xp5_ASAP7_75t_R U293 ( .A(n352), .B(n351), .Y(product[11]) );
  XOR2xp5_ASAP7_75t_R U294 ( .A(n69), .B(n78), .Y(n351) );
  NAND2xp33_ASAP7_75t_R U295 ( .A(n353), .B(n354), .Y(n352) );
  NAND2xp33_ASAP7_75t_R U296 ( .A(n355), .B(n356), .Y(n354) );
  OR2x2_ASAP7_75t_R U297 ( .A(n79), .B(n90), .Y(n353) );
  XOR2xp5_ASAP7_75t_R U298 ( .A(n356), .B(n355), .Y(product[10]) );
  XOR2xp5_ASAP7_75t_R U299 ( .A(n79), .B(n90), .Y(n355) );
  NAND2xp33_ASAP7_75t_R U300 ( .A(n357), .B(n358), .Y(n356) );
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
  NOR2xp33_ASAP7_75t_R U322 ( .A(n306), .B(n317), .Y(n373) );
  XOR2xp5_ASAP7_75t_R U323 ( .A(n308), .B(n377), .Y(n331) );
  NAND2xp33_ASAP7_75t_R U324 ( .A(n377), .B(n308), .Y(n369) );
  XOR2xp5_ASAP7_75t_R U325 ( .A(n378), .B(n379), .Y(n377) );
  XOR2xp5_ASAP7_75t_R U326 ( .A(n159), .B(n161), .Y(n329) );
  OR2x2_ASAP7_75t_R U327 ( .A(n159), .B(n161), .Y(n367) );
  XOR2xp5_ASAP7_75t_R U328 ( .A(n147), .B(n303), .Y(n327) );
  NAND2xp33_ASAP7_75t_R U329 ( .A(n147), .B(n303), .Y(n365) );
  XOR2xp5_ASAP7_75t_R U330 ( .A(n134), .B(n137), .Y(n325) );
  NAND2xp33_ASAP7_75t_R U331 ( .A(n134), .B(n137), .Y(n363) );
  XOR2xp5_ASAP7_75t_R U332 ( .A(n295), .B(n133), .Y(n323) );
  NAND2xp33_ASAP7_75t_R U333 ( .A(n133), .B(n295), .Y(n361) );
  XOR2xp5_ASAP7_75t_R U334 ( .A(n105), .B(n119), .Y(n321) );
  OR2x2_ASAP7_75t_R U335 ( .A(n105), .B(n119), .Y(n359) );
  XOR2xp5_ASAP7_75t_R U336 ( .A(n104), .B(n91), .Y(n319) );
  OR2x2_ASAP7_75t_R U337 ( .A(n104), .B(n91), .Y(n357) );
  NOR2xp33_ASAP7_75t_R U338 ( .A(n317), .B(n310), .Y(product[0]) );
  NAND2xp33_ASAP7_75t_R U339 ( .A(n380), .B(n381), .Y(n95) );
  NAND2xp33_ASAP7_75t_R U340 ( .A(b[6]), .B(a[5]), .Y(n70) );
  NOR2xp33_ASAP7_75t_R U341 ( .A(n310), .B(n315), .Y(n231) );
  NOR2xp33_ASAP7_75t_R U342 ( .A(n310), .B(n314), .Y(n230) );
  NOR2xp33_ASAP7_75t_R U343 ( .A(n310), .B(n313), .Y(n229) );
  NOR2xp33_ASAP7_75t_R U344 ( .A(n310), .B(n312), .Y(n228) );
  NOR2xp33_ASAP7_75t_R U345 ( .A(n310), .B(n311), .Y(n227) );
  NOR2xp33_ASAP7_75t_R U346 ( .A(n309), .B(n316), .Y(n224) );
  NOR2xp33_ASAP7_75t_R U347 ( .A(n309), .B(n315), .Y(n223) );
  NOR2xp33_ASAP7_75t_R U348 ( .A(n309), .B(n314), .Y(n222) );
  NOR2xp33_ASAP7_75t_R U349 ( .A(n309), .B(n313), .Y(n221) );
  NOR2xp33_ASAP7_75t_R U350 ( .A(n309), .B(n312), .Y(n220) );
  NOR2xp33_ASAP7_75t_R U351 ( .A(n309), .B(n311), .Y(n219) );
  NOR2xp33_ASAP7_75t_R U352 ( .A(n306), .B(n316), .Y(n216) );
  NOR2xp33_ASAP7_75t_R U353 ( .A(n306), .B(n315), .Y(n215) );
  NOR2xp33_ASAP7_75t_R U354 ( .A(n306), .B(n314), .Y(n214) );
  NOR2xp33_ASAP7_75t_R U355 ( .A(n306), .B(n313), .Y(n213) );
  NOR2xp33_ASAP7_75t_R U356 ( .A(n306), .B(n312), .Y(n212) );
  NOR2xp33_ASAP7_75t_R U357 ( .A(n306), .B(n311), .Y(n211) );
  NOR2xp33_ASAP7_75t_R U358 ( .A(n316), .B(n304), .Y(n208) );
  NOR2xp33_ASAP7_75t_R U359 ( .A(n304), .B(n315), .Y(n207) );
  NOR2xp33_ASAP7_75t_R U360 ( .A(n304), .B(n314), .Y(n206) );
  NOR2xp33_ASAP7_75t_R U361 ( .A(n304), .B(n313), .Y(n205) );
  NOR2xp33_ASAP7_75t_R U362 ( .A(n304), .B(n312), .Y(n204) );
  NOR2xp33_ASAP7_75t_R U363 ( .A(n304), .B(n311), .Y(n203) );
  NOR2xp33_ASAP7_75t_R U364 ( .A(n316), .B(n302), .Y(n200) );
  NOR2xp33_ASAP7_75t_R U365 ( .A(n315), .B(n302), .Y(n199) );
  NOR2xp33_ASAP7_75t_R U366 ( .A(n314), .B(n302), .Y(n198) );
  NOR2xp33_ASAP7_75t_R U367 ( .A(n313), .B(n302), .Y(n197) );
  NOR2xp33_ASAP7_75t_R U368 ( .A(n312), .B(n302), .Y(n196) );
  NOR2xp33_ASAP7_75t_R U369 ( .A(n311), .B(n302), .Y(n195) );
  NOR2xp33_ASAP7_75t_R U370 ( .A(n316), .B(n299), .Y(n192) );
  NOR2xp33_ASAP7_75t_R U371 ( .A(n299), .B(n315), .Y(n191) );
  NOR2xp33_ASAP7_75t_R U372 ( .A(n299), .B(n314), .Y(n190) );
  NOR2xp33_ASAP7_75t_R U373 ( .A(n299), .B(n313), .Y(n189) );
  NOR2xp33_ASAP7_75t_R U374 ( .A(n311), .B(n299), .Y(n187) );
  NOR2xp33_ASAP7_75t_R U375 ( .A(n298), .B(n315), .Y(n183) );
  NOR2xp33_ASAP7_75t_R U376 ( .A(n298), .B(n314), .Y(n182) );
  NOR2xp33_ASAP7_75t_R U377 ( .A(n298), .B(n313), .Y(n181) );
  NOR2xp33_ASAP7_75t_R U378 ( .A(n298), .B(n312), .Y(n180) );
  NOR2xp33_ASAP7_75t_R U379 ( .A(n311), .B(n298), .Y(n179) );
  NOR2xp33_ASAP7_75t_R U380 ( .A(n316), .B(n293), .Y(n176) );
  NOR2xp33_ASAP7_75t_R U381 ( .A(n293), .B(n315), .Y(n175) );
  NOR2xp33_ASAP7_75t_R U382 ( .A(n293), .B(n314), .Y(n174) );
  NOR2xp33_ASAP7_75t_R U383 ( .A(n293), .B(n313), .Y(n173) );
  NOR2xp33_ASAP7_75t_R U384 ( .A(n293), .B(n312), .Y(n172) );
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
  NOR2xp33_ASAP7_75t_R U408 ( .A(n298), .B(n316), .Y(n380) );
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
  FAx1_ASAP7_75t_R U88 ( .A(n87), .B(n98), .CI(n294), .CON(n81), .SN(n82) );
  FAx1_ASAP7_75t_R U90 ( .A(n189), .B(n196), .CI(n292), .CON(n84), .SN(n85) );
  FAx1_ASAP7_75t_R U92 ( .A(n175), .B(n203), .CI(n182), .CON(n86), .SN(n87) );
  FAx1_ASAP7_75t_R U95 ( .A(n106), .B(n97), .CI(n94), .CON(n90), .SN(n91) );
  FAx1_ASAP7_75t_R U96 ( .A(n101), .B(n99), .CI(n297), .CON(n93), .SN(n94) );
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
  FAx1_ASAP7_75t_R U113 ( .A(n296), .B(n136), .CI(n122), .CON(n119), .SN(n120)
         );
  FAx1_ASAP7_75t_R U115 ( .A(n127), .B(n138), .CI(n129), .CON(n121), .SN(n122)
         );
  FAx1_ASAP7_75t_R U116 ( .A(n301), .B(n142), .CI(n131), .CON(n124), .SN(n125)
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
  INVx1_ASAP7_75t_R U233 ( .A(n58), .Y(n286) );
  INVx1_ASAP7_75t_R U234 ( .A(n63), .Y(n287) );
  INVx1_ASAP7_75t_R U235 ( .A(n71), .Y(n288) );
  INVx1_ASAP7_75t_R U236 ( .A(n68), .Y(n289) );
  INVx1_ASAP7_75t_R U237 ( .A(n84), .Y(n290) );
  INVx1_ASAP7_75t_R U238 ( .A(n85), .Y(n291) );
  INVx1_ASAP7_75t_R U239 ( .A(n100), .Y(n292) );
  INVx1_ASAP7_75t_R U240 ( .A(a[7]), .Y(n293) );
  INVx1_ASAP7_75t_R U241 ( .A(n96), .Y(n294) );
  INVx1_ASAP7_75t_R U242 ( .A(n120), .Y(n295) );
  INVx1_ASAP7_75t_R U243 ( .A(n125), .Y(n296) );
  INVx1_ASAP7_75t_R U244 ( .A(n109), .Y(n297) );
  INVx1_ASAP7_75t_R U245 ( .A(a[6]), .Y(n298) );
  INVx1_ASAP7_75t_R U246 ( .A(a[5]), .Y(n299) );
  INVx1_ASAP7_75t_R U247 ( .A(n146), .Y(n300) );
  INVx1_ASAP7_75t_R U248 ( .A(n140), .Y(n301) );
  INVx1_ASAP7_75t_R U249 ( .A(a[4]), .Y(n302) );
  INVx1_ASAP7_75t_R U250 ( .A(n150), .Y(n303) );
  INVx1_ASAP7_75t_R U251 ( .A(a[3]), .Y(n304) );
  INVx1_ASAP7_75t_R U252 ( .A(n160), .Y(n305) );
  INVx1_ASAP7_75t_R U253 ( .A(a[2]), .Y(n306) );
  INVx1_ASAP7_75t_R U254 ( .A(n165), .Y(n307) );
  INVx1_ASAP7_75t_R U255 ( .A(n166), .Y(n308) );
  INVx1_ASAP7_75t_R U256 ( .A(a[1]), .Y(n309) );
  INVx1_ASAP7_75t_R U257 ( .A(a[0]), .Y(n310) );
  INVx1_ASAP7_75t_R U258 ( .A(b[7]), .Y(n311) );
  INVx1_ASAP7_75t_R U259 ( .A(b[6]), .Y(n312) );
  INVx1_ASAP7_75t_R U260 ( .A(b[5]), .Y(n313) );
  INVx1_ASAP7_75t_R U261 ( .A(b[4]), .Y(n314) );
  INVx1_ASAP7_75t_R U262 ( .A(b[3]), .Y(n315) );
  INVx1_ASAP7_75t_R U263 ( .A(b[2]), .Y(n316) );
  INVx1_ASAP7_75t_R U264 ( .A(b[0]), .Y(n317) );
  XOR2xp5_ASAP7_75t_R U265 ( .A(n318), .B(n319), .Y(product[9]) );
  XOR2xp5_ASAP7_75t_R U266 ( .A(n320), .B(n321), .Y(product[8]) );
  XOR2xp5_ASAP7_75t_R U267 ( .A(n322), .B(n323), .Y(product[7]) );
  XOR2xp5_ASAP7_75t_R U268 ( .A(n324), .B(n325), .Y(product[6]) );
  XOR2xp5_ASAP7_75t_R U269 ( .A(n326), .B(n327), .Y(product[5]) );
  XOR2xp5_ASAP7_75t_R U270 ( .A(n328), .B(n329), .Y(product[4]) );
  XOR2xp5_ASAP7_75t_R U271 ( .A(n330), .B(n331), .Y(product[3]) );
  XOR2xp5_ASAP7_75t_R U272 ( .A(n332), .B(n333), .Y(product[2]) );
  XOR2xp5_ASAP7_75t_R U273 ( .A(n334), .B(n335), .Y(product[1]) );
  NAND2xp33_ASAP7_75t_R U274 ( .A(n336), .B(n337), .Y(product[15]) );
  NAND2xp33_ASAP7_75t_R U275 ( .A(n338), .B(n339), .Y(n337) );
  OR2x2_ASAP7_75t_R U276 ( .A(n340), .B(n57), .Y(n336) );
  XOR2xp5_ASAP7_75t_R U277 ( .A(n339), .B(n338), .Y(product[14]) );
  XOR2xp5_ASAP7_75t_R U278 ( .A(n340), .B(n57), .Y(n338) );
  NAND2xp33_ASAP7_75t_R U279 ( .A(b[7]), .B(a[7]), .Y(n340) );
  NAND2xp33_ASAP7_75t_R U280 ( .A(n341), .B(n342), .Y(n339) );
  NAND2xp33_ASAP7_75t_R U281 ( .A(n343), .B(n344), .Y(n342) );
  NAND2xp33_ASAP7_75t_R U282 ( .A(n61), .B(n286), .Y(n341) );
  XOR2xp5_ASAP7_75t_R U283 ( .A(n344), .B(n343), .Y(product[13]) );
  XOR2xp5_ASAP7_75t_R U284 ( .A(n286), .B(n61), .Y(n343) );
  NAND2xp33_ASAP7_75t_R U285 ( .A(n345), .B(n346), .Y(n344) );
  NAND2xp33_ASAP7_75t_R U286 ( .A(n347), .B(n348), .Y(n346) );
  NAND2xp33_ASAP7_75t_R U287 ( .A(n62), .B(n289), .Y(n345) );
  XOR2xp5_ASAP7_75t_R U288 ( .A(n348), .B(n347), .Y(product[12]) );
  XOR2xp5_ASAP7_75t_R U289 ( .A(n62), .B(n289), .Y(n347) );
  NAND2xp33_ASAP7_75t_R U290 ( .A(n349), .B(n350), .Y(n348) );
  NAND2xp33_ASAP7_75t_R U291 ( .A(n351), .B(n352), .Y(n350) );
  OR2x2_ASAP7_75t_R U292 ( .A(n69), .B(n78), .Y(n349) );
  XOR2xp5_ASAP7_75t_R U293 ( .A(n352), .B(n351), .Y(product[11]) );
  XOR2xp5_ASAP7_75t_R U294 ( .A(n69), .B(n78), .Y(n351) );
  NAND2xp33_ASAP7_75t_R U295 ( .A(n353), .B(n354), .Y(n352) );
  NAND2xp33_ASAP7_75t_R U296 ( .A(n355), .B(n356), .Y(n354) );
  OR2x2_ASAP7_75t_R U297 ( .A(n79), .B(n90), .Y(n353) );
  XOR2xp5_ASAP7_75t_R U298 ( .A(n356), .B(n355), .Y(product[10]) );
  XOR2xp5_ASAP7_75t_R U299 ( .A(n79), .B(n90), .Y(n355) );
  NAND2xp33_ASAP7_75t_R U300 ( .A(n357), .B(n358), .Y(n356) );
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
  NOR2xp33_ASAP7_75t_R U322 ( .A(n306), .B(n317), .Y(n373) );
  XOR2xp5_ASAP7_75t_R U323 ( .A(n308), .B(n377), .Y(n331) );
  NAND2xp33_ASAP7_75t_R U324 ( .A(n377), .B(n308), .Y(n369) );
  XOR2xp5_ASAP7_75t_R U325 ( .A(n378), .B(n379), .Y(n377) );
  XOR2xp5_ASAP7_75t_R U326 ( .A(n159), .B(n161), .Y(n329) );
  OR2x2_ASAP7_75t_R U327 ( .A(n159), .B(n161), .Y(n367) );
  XOR2xp5_ASAP7_75t_R U328 ( .A(n147), .B(n303), .Y(n327) );
  NAND2xp33_ASAP7_75t_R U329 ( .A(n147), .B(n303), .Y(n365) );
  XOR2xp5_ASAP7_75t_R U330 ( .A(n134), .B(n137), .Y(n325) );
  NAND2xp33_ASAP7_75t_R U331 ( .A(n134), .B(n137), .Y(n363) );
  XOR2xp5_ASAP7_75t_R U332 ( .A(n295), .B(n133), .Y(n323) );
  NAND2xp33_ASAP7_75t_R U333 ( .A(n133), .B(n295), .Y(n361) );
  XOR2xp5_ASAP7_75t_R U334 ( .A(n105), .B(n119), .Y(n321) );
  OR2x2_ASAP7_75t_R U335 ( .A(n105), .B(n119), .Y(n359) );
  XOR2xp5_ASAP7_75t_R U336 ( .A(n104), .B(n91), .Y(n319) );
  OR2x2_ASAP7_75t_R U337 ( .A(n104), .B(n91), .Y(n357) );
  NOR2xp33_ASAP7_75t_R U338 ( .A(n317), .B(n310), .Y(product[0]) );
  NAND2xp33_ASAP7_75t_R U339 ( .A(n380), .B(n381), .Y(n95) );
  NAND2xp33_ASAP7_75t_R U340 ( .A(b[6]), .B(a[5]), .Y(n70) );
  NOR2xp33_ASAP7_75t_R U341 ( .A(n310), .B(n315), .Y(n231) );
  NOR2xp33_ASAP7_75t_R U342 ( .A(n310), .B(n314), .Y(n230) );
  NOR2xp33_ASAP7_75t_R U343 ( .A(n310), .B(n313), .Y(n229) );
  NOR2xp33_ASAP7_75t_R U344 ( .A(n310), .B(n312), .Y(n228) );
  NOR2xp33_ASAP7_75t_R U345 ( .A(n310), .B(n311), .Y(n227) );
  NOR2xp33_ASAP7_75t_R U346 ( .A(n309), .B(n316), .Y(n224) );
  NOR2xp33_ASAP7_75t_R U347 ( .A(n309), .B(n315), .Y(n223) );
  NOR2xp33_ASAP7_75t_R U348 ( .A(n309), .B(n314), .Y(n222) );
  NOR2xp33_ASAP7_75t_R U349 ( .A(n309), .B(n313), .Y(n221) );
  NOR2xp33_ASAP7_75t_R U350 ( .A(n309), .B(n312), .Y(n220) );
  NOR2xp33_ASAP7_75t_R U351 ( .A(n309), .B(n311), .Y(n219) );
  NOR2xp33_ASAP7_75t_R U352 ( .A(n306), .B(n316), .Y(n216) );
  NOR2xp33_ASAP7_75t_R U353 ( .A(n306), .B(n315), .Y(n215) );
  NOR2xp33_ASAP7_75t_R U354 ( .A(n306), .B(n314), .Y(n214) );
  NOR2xp33_ASAP7_75t_R U355 ( .A(n306), .B(n313), .Y(n213) );
  NOR2xp33_ASAP7_75t_R U356 ( .A(n306), .B(n312), .Y(n212) );
  NOR2xp33_ASAP7_75t_R U357 ( .A(n306), .B(n311), .Y(n211) );
  NOR2xp33_ASAP7_75t_R U358 ( .A(n316), .B(n304), .Y(n208) );
  NOR2xp33_ASAP7_75t_R U359 ( .A(n304), .B(n315), .Y(n207) );
  NOR2xp33_ASAP7_75t_R U360 ( .A(n304), .B(n314), .Y(n206) );
  NOR2xp33_ASAP7_75t_R U361 ( .A(n304), .B(n313), .Y(n205) );
  NOR2xp33_ASAP7_75t_R U362 ( .A(n304), .B(n312), .Y(n204) );
  NOR2xp33_ASAP7_75t_R U363 ( .A(n304), .B(n311), .Y(n203) );
  NOR2xp33_ASAP7_75t_R U364 ( .A(n316), .B(n302), .Y(n200) );
  NOR2xp33_ASAP7_75t_R U365 ( .A(n315), .B(n302), .Y(n199) );
  NOR2xp33_ASAP7_75t_R U366 ( .A(n314), .B(n302), .Y(n198) );
  NOR2xp33_ASAP7_75t_R U367 ( .A(n313), .B(n302), .Y(n197) );
  NOR2xp33_ASAP7_75t_R U368 ( .A(n312), .B(n302), .Y(n196) );
  NOR2xp33_ASAP7_75t_R U369 ( .A(n311), .B(n302), .Y(n195) );
  NOR2xp33_ASAP7_75t_R U370 ( .A(n316), .B(n299), .Y(n192) );
  NOR2xp33_ASAP7_75t_R U371 ( .A(n299), .B(n315), .Y(n191) );
  NOR2xp33_ASAP7_75t_R U372 ( .A(n299), .B(n314), .Y(n190) );
  NOR2xp33_ASAP7_75t_R U373 ( .A(n299), .B(n313), .Y(n189) );
  NOR2xp33_ASAP7_75t_R U374 ( .A(n311), .B(n299), .Y(n187) );
  NOR2xp33_ASAP7_75t_R U375 ( .A(n298), .B(n315), .Y(n183) );
  NOR2xp33_ASAP7_75t_R U376 ( .A(n298), .B(n314), .Y(n182) );
  NOR2xp33_ASAP7_75t_R U377 ( .A(n298), .B(n313), .Y(n181) );
  NOR2xp33_ASAP7_75t_R U378 ( .A(n298), .B(n312), .Y(n180) );
  NOR2xp33_ASAP7_75t_R U379 ( .A(n311), .B(n298), .Y(n179) );
  NOR2xp33_ASAP7_75t_R U380 ( .A(n316), .B(n293), .Y(n176) );
  NOR2xp33_ASAP7_75t_R U381 ( .A(n293), .B(n315), .Y(n175) );
  NOR2xp33_ASAP7_75t_R U382 ( .A(n293), .B(n314), .Y(n174) );
  NOR2xp33_ASAP7_75t_R U383 ( .A(n293), .B(n313), .Y(n173) );
  NOR2xp33_ASAP7_75t_R U384 ( .A(n293), .B(n312), .Y(n172) );
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
  NOR2xp33_ASAP7_75t_R U408 ( .A(n298), .B(n316), .Y(n380) );
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
         n386, n387, n388, n389;

  FAx1_ASAP7_75t_R U71 ( .A(n172), .B(n179), .CI(n287), .CON(n57), .SN(n58) );
  FAx1_ASAP7_75t_R U74 ( .A(n64), .B(n73), .CI(n288), .CON(n61), .SN(n62) );
  FAx1_ASAP7_75t_R U76 ( .A(n173), .B(n187), .CI(n180), .CON(n63), .SN(n64) );
  FAx1_ASAP7_75t_R U79 ( .A(n81), .B(n290), .CI(n72), .CON(n68), .SN(n69) );
  FAx1_ASAP7_75t_R U81 ( .A(n86), .B(n70), .CI(n74), .CON(n71), .SN(n72) );
  FAx1_ASAP7_75t_R U83 ( .A(n174), .B(n195), .CI(n181), .CON(n73), .SN(n74) );
  FAx1_ASAP7_75t_R U86 ( .A(n93), .B(n291), .CI(n82), .CON(n78), .SN(n79) );
  FAx1_ASAP7_75t_R U88 ( .A(n87), .B(n98), .CI(n294), .CON(n81), .SN(n82) );
  FAx1_ASAP7_75t_R U90 ( .A(n189), .B(n196), .CI(n292), .CON(n84), .SN(n85) );
  FAx1_ASAP7_75t_R U92 ( .A(n175), .B(n203), .CI(n182), .CON(n86), .SN(n87) );
  FAx1_ASAP7_75t_R U95 ( .A(n106), .B(n97), .CI(n94), .CON(n90), .SN(n91) );
  FAx1_ASAP7_75t_R U96 ( .A(n101), .B(n99), .CI(n297), .CON(n93), .SN(n94) );
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
  FAx1_ASAP7_75t_R U113 ( .A(n296), .B(n136), .CI(n122), .CON(n119), .SN(n120)
         );
  FAx1_ASAP7_75t_R U115 ( .A(n127), .B(n138), .CI(n129), .CON(n121), .SN(n122)
         );
  FAx1_ASAP7_75t_R U116 ( .A(n301), .B(n142), .CI(n131), .CON(n124), .SN(n125)
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
  INVx1_ASAP7_75t_R U233 ( .A(n58), .Y(n286) );
  INVx1_ASAP7_75t_R U234 ( .A(n63), .Y(n287) );
  INVx1_ASAP7_75t_R U235 ( .A(n71), .Y(n288) );
  INVx1_ASAP7_75t_R U236 ( .A(n68), .Y(n289) );
  INVx1_ASAP7_75t_R U237 ( .A(n84), .Y(n290) );
  INVx1_ASAP7_75t_R U238 ( .A(n85), .Y(n291) );
  INVx1_ASAP7_75t_R U239 ( .A(n100), .Y(n292) );
  INVx1_ASAP7_75t_R U240 ( .A(a[7]), .Y(n293) );
  INVx1_ASAP7_75t_R U241 ( .A(n96), .Y(n294) );
  INVx1_ASAP7_75t_R U242 ( .A(n120), .Y(n295) );
  INVx1_ASAP7_75t_R U243 ( .A(n125), .Y(n296) );
  INVx1_ASAP7_75t_R U244 ( .A(n109), .Y(n297) );
  INVx1_ASAP7_75t_R U245 ( .A(a[6]), .Y(n298) );
  INVx1_ASAP7_75t_R U246 ( .A(a[5]), .Y(n299) );
  INVx1_ASAP7_75t_R U247 ( .A(n146), .Y(n300) );
  INVx1_ASAP7_75t_R U248 ( .A(n140), .Y(n301) );
  INVx1_ASAP7_75t_R U249 ( .A(a[4]), .Y(n302) );
  INVx1_ASAP7_75t_R U250 ( .A(n150), .Y(n303) );
  INVx1_ASAP7_75t_R U251 ( .A(a[3]), .Y(n304) );
  INVx1_ASAP7_75t_R U252 ( .A(n160), .Y(n305) );
  INVx1_ASAP7_75t_R U253 ( .A(a[2]), .Y(n306) );
  INVx1_ASAP7_75t_R U254 ( .A(n165), .Y(n307) );
  INVx1_ASAP7_75t_R U255 ( .A(n166), .Y(n308) );
  INVx1_ASAP7_75t_R U256 ( .A(a[1]), .Y(n309) );
  INVx1_ASAP7_75t_R U257 ( .A(a[0]), .Y(n310) );
  INVx1_ASAP7_75t_R U258 ( .A(b[7]), .Y(n311) );
  INVx1_ASAP7_75t_R U259 ( .A(b[6]), .Y(n312) );
  INVx1_ASAP7_75t_R U260 ( .A(b[5]), .Y(n313) );
  INVx1_ASAP7_75t_R U261 ( .A(b[4]), .Y(n314) );
  INVx1_ASAP7_75t_R U262 ( .A(b[3]), .Y(n315) );
  INVx1_ASAP7_75t_R U263 ( .A(b[2]), .Y(n316) );
  INVx1_ASAP7_75t_R U264 ( .A(b[0]), .Y(n317) );
  XOR2xp5_ASAP7_75t_R U265 ( .A(n318), .B(n319), .Y(product[9]) );
  XOR2xp5_ASAP7_75t_R U266 ( .A(n320), .B(n321), .Y(product[8]) );
  XOR2xp5_ASAP7_75t_R U267 ( .A(n322), .B(n323), .Y(product[7]) );
  XOR2xp5_ASAP7_75t_R U268 ( .A(n324), .B(n325), .Y(product[6]) );
  XOR2xp5_ASAP7_75t_R U269 ( .A(n326), .B(n327), .Y(product[5]) );
  XOR2xp5_ASAP7_75t_R U270 ( .A(n328), .B(n329), .Y(product[4]) );
  XOR2xp5_ASAP7_75t_R U271 ( .A(n330), .B(n331), .Y(product[3]) );
  XOR2xp5_ASAP7_75t_R U272 ( .A(n332), .B(n333), .Y(product[2]) );
  XOR2xp5_ASAP7_75t_R U273 ( .A(n334), .B(n335), .Y(product[1]) );
  NAND2xp33_ASAP7_75t_R U274 ( .A(n336), .B(n337), .Y(product[15]) );
  NAND2xp33_ASAP7_75t_R U275 ( .A(n338), .B(n339), .Y(n337) );
  OR2x2_ASAP7_75t_R U276 ( .A(n340), .B(n57), .Y(n336) );
  XOR2xp5_ASAP7_75t_R U277 ( .A(n339), .B(n338), .Y(product[14]) );
  XOR2xp5_ASAP7_75t_R U278 ( .A(n340), .B(n57), .Y(n338) );
  NAND2xp33_ASAP7_75t_R U279 ( .A(b[7]), .B(a[7]), .Y(n340) );
  NAND2xp33_ASAP7_75t_R U280 ( .A(n341), .B(n342), .Y(n339) );
  NAND2xp33_ASAP7_75t_R U281 ( .A(n343), .B(n344), .Y(n342) );
  NAND2xp33_ASAP7_75t_R U282 ( .A(n61), .B(n286), .Y(n341) );
  XOR2xp5_ASAP7_75t_R U283 ( .A(n344), .B(n343), .Y(product[13]) );
  XOR2xp5_ASAP7_75t_R U284 ( .A(n286), .B(n61), .Y(n343) );
  NAND2xp33_ASAP7_75t_R U285 ( .A(n345), .B(n346), .Y(n344) );
  NAND2xp33_ASAP7_75t_R U286 ( .A(n347), .B(n348), .Y(n346) );
  NAND2xp33_ASAP7_75t_R U287 ( .A(n62), .B(n289), .Y(n345) );
  XOR2xp5_ASAP7_75t_R U288 ( .A(n348), .B(n347), .Y(product[12]) );
  XOR2xp5_ASAP7_75t_R U289 ( .A(n62), .B(n289), .Y(n347) );
  NAND2xp33_ASAP7_75t_R U290 ( .A(n349), .B(n350), .Y(n348) );
  NAND2xp33_ASAP7_75t_R U291 ( .A(n351), .B(n352), .Y(n350) );
  OR2x2_ASAP7_75t_R U292 ( .A(n69), .B(n78), .Y(n349) );
  XOR2xp5_ASAP7_75t_R U293 ( .A(n352), .B(n351), .Y(product[11]) );
  XOR2xp5_ASAP7_75t_R U294 ( .A(n69), .B(n78), .Y(n351) );
  NAND2xp33_ASAP7_75t_R U295 ( .A(n353), .B(n354), .Y(n352) );
  NAND2xp33_ASAP7_75t_R U296 ( .A(n355), .B(n356), .Y(n354) );
  OR2x2_ASAP7_75t_R U297 ( .A(n79), .B(n90), .Y(n353) );
  XOR2xp5_ASAP7_75t_R U298 ( .A(n356), .B(n355), .Y(product[10]) );
  XOR2xp5_ASAP7_75t_R U299 ( .A(n79), .B(n90), .Y(n355) );
  NAND2xp33_ASAP7_75t_R U300 ( .A(n357), .B(n358), .Y(n356) );
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
  NOR2xp33_ASAP7_75t_R U322 ( .A(n306), .B(n317), .Y(n373) );
  XOR2xp5_ASAP7_75t_R U323 ( .A(n308), .B(n377), .Y(n331) );
  NAND2xp33_ASAP7_75t_R U324 ( .A(n377), .B(n308), .Y(n369) );
  XOR2xp5_ASAP7_75t_R U325 ( .A(n378), .B(n379), .Y(n377) );
  XOR2xp5_ASAP7_75t_R U326 ( .A(n159), .B(n161), .Y(n329) );
  OR2x2_ASAP7_75t_R U327 ( .A(n159), .B(n161), .Y(n367) );
  XOR2xp5_ASAP7_75t_R U328 ( .A(n147), .B(n303), .Y(n327) );
  NAND2xp33_ASAP7_75t_R U329 ( .A(n147), .B(n303), .Y(n365) );
  XOR2xp5_ASAP7_75t_R U330 ( .A(n134), .B(n137), .Y(n325) );
  NAND2xp33_ASAP7_75t_R U331 ( .A(n134), .B(n137), .Y(n363) );
  XOR2xp5_ASAP7_75t_R U332 ( .A(n295), .B(n133), .Y(n323) );
  NAND2xp33_ASAP7_75t_R U333 ( .A(n133), .B(n295), .Y(n361) );
  XOR2xp5_ASAP7_75t_R U334 ( .A(n105), .B(n119), .Y(n321) );
  OR2x2_ASAP7_75t_R U335 ( .A(n105), .B(n119), .Y(n359) );
  XOR2xp5_ASAP7_75t_R U336 ( .A(n104), .B(n91), .Y(n319) );
  OR2x2_ASAP7_75t_R U337 ( .A(n104), .B(n91), .Y(n357) );
  NOR2xp33_ASAP7_75t_R U338 ( .A(n317), .B(n310), .Y(product[0]) );
  NAND2xp33_ASAP7_75t_R U339 ( .A(n380), .B(n381), .Y(n95) );
  NAND2xp33_ASAP7_75t_R U340 ( .A(b[6]), .B(a[5]), .Y(n70) );
  NOR2xp33_ASAP7_75t_R U341 ( .A(n310), .B(n315), .Y(n231) );
  NOR2xp33_ASAP7_75t_R U342 ( .A(n310), .B(n314), .Y(n230) );
  NOR2xp33_ASAP7_75t_R U343 ( .A(n310), .B(n313), .Y(n229) );
  NOR2xp33_ASAP7_75t_R U344 ( .A(n310), .B(n312), .Y(n228) );
  NOR2xp33_ASAP7_75t_R U345 ( .A(n310), .B(n311), .Y(n227) );
  NOR2xp33_ASAP7_75t_R U346 ( .A(n309), .B(n316), .Y(n224) );
  NOR2xp33_ASAP7_75t_R U347 ( .A(n309), .B(n315), .Y(n223) );
  NOR2xp33_ASAP7_75t_R U348 ( .A(n309), .B(n314), .Y(n222) );
  NOR2xp33_ASAP7_75t_R U349 ( .A(n309), .B(n313), .Y(n221) );
  NOR2xp33_ASAP7_75t_R U350 ( .A(n309), .B(n312), .Y(n220) );
  NOR2xp33_ASAP7_75t_R U351 ( .A(n309), .B(n311), .Y(n219) );
  NOR2xp33_ASAP7_75t_R U352 ( .A(n306), .B(n316), .Y(n216) );
  NOR2xp33_ASAP7_75t_R U353 ( .A(n306), .B(n315), .Y(n215) );
  NOR2xp33_ASAP7_75t_R U354 ( .A(n306), .B(n314), .Y(n214) );
  NOR2xp33_ASAP7_75t_R U355 ( .A(n306), .B(n313), .Y(n213) );
  NOR2xp33_ASAP7_75t_R U356 ( .A(n306), .B(n312), .Y(n212) );
  NOR2xp33_ASAP7_75t_R U357 ( .A(n306), .B(n311), .Y(n211) );
  NOR2xp33_ASAP7_75t_R U358 ( .A(n316), .B(n304), .Y(n208) );
  NOR2xp33_ASAP7_75t_R U359 ( .A(n304), .B(n315), .Y(n207) );
  NOR2xp33_ASAP7_75t_R U360 ( .A(n304), .B(n314), .Y(n206) );
  NOR2xp33_ASAP7_75t_R U361 ( .A(n304), .B(n313), .Y(n205) );
  NOR2xp33_ASAP7_75t_R U362 ( .A(n304), .B(n312), .Y(n204) );
  NOR2xp33_ASAP7_75t_R U363 ( .A(n304), .B(n311), .Y(n203) );
  NOR2xp33_ASAP7_75t_R U364 ( .A(n316), .B(n302), .Y(n200) );
  NOR2xp33_ASAP7_75t_R U365 ( .A(n315), .B(n302), .Y(n199) );
  NOR2xp33_ASAP7_75t_R U366 ( .A(n314), .B(n302), .Y(n198) );
  NOR2xp33_ASAP7_75t_R U367 ( .A(n313), .B(n302), .Y(n197) );
  NOR2xp33_ASAP7_75t_R U368 ( .A(n312), .B(n302), .Y(n196) );
  NOR2xp33_ASAP7_75t_R U369 ( .A(n311), .B(n302), .Y(n195) );
  NOR2xp33_ASAP7_75t_R U370 ( .A(n316), .B(n299), .Y(n192) );
  NOR2xp33_ASAP7_75t_R U371 ( .A(n299), .B(n315), .Y(n191) );
  NOR2xp33_ASAP7_75t_R U372 ( .A(n299), .B(n314), .Y(n190) );
  NOR2xp33_ASAP7_75t_R U373 ( .A(n299), .B(n313), .Y(n189) );
  NOR2xp33_ASAP7_75t_R U374 ( .A(n311), .B(n299), .Y(n187) );
  NOR2xp33_ASAP7_75t_R U375 ( .A(n298), .B(n315), .Y(n183) );
  NOR2xp33_ASAP7_75t_R U376 ( .A(n298), .B(n314), .Y(n182) );
  NOR2xp33_ASAP7_75t_R U377 ( .A(n298), .B(n313), .Y(n181) );
  NOR2xp33_ASAP7_75t_R U378 ( .A(n298), .B(n312), .Y(n180) );
  NOR2xp33_ASAP7_75t_R U379 ( .A(n311), .B(n298), .Y(n179) );
  NOR2xp33_ASAP7_75t_R U380 ( .A(n316), .B(n293), .Y(n176) );
  NOR2xp33_ASAP7_75t_R U381 ( .A(n293), .B(n315), .Y(n175) );
  NOR2xp33_ASAP7_75t_R U382 ( .A(n293), .B(n314), .Y(n174) );
  NOR2xp33_ASAP7_75t_R U383 ( .A(n293), .B(n313), .Y(n173) );
  NOR2xp33_ASAP7_75t_R U384 ( .A(n293), .B(n312), .Y(n172) );
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
  NOR2xp33_ASAP7_75t_R U408 ( .A(n298), .B(n316), .Y(n380) );
  AND2x2_ASAP7_75t_R U409 ( .A(a[7]), .B(b[1]), .Y(n381) );
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
  FAx1_ASAP7_75t_R U88 ( .A(n87), .B(n98), .CI(n294), .CON(n81), .SN(n82) );
  FAx1_ASAP7_75t_R U90 ( .A(n189), .B(n196), .CI(n292), .CON(n84), .SN(n85) );
  FAx1_ASAP7_75t_R U92 ( .A(n175), .B(n203), .CI(n182), .CON(n86), .SN(n87) );
  FAx1_ASAP7_75t_R U95 ( .A(n106), .B(n97), .CI(n94), .CON(n90), .SN(n91) );
  FAx1_ASAP7_75t_R U96 ( .A(n101), .B(n99), .CI(n297), .CON(n93), .SN(n94) );
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
  FAx1_ASAP7_75t_R U113 ( .A(n296), .B(n136), .CI(n122), .CON(n119), .SN(n120)
         );
  FAx1_ASAP7_75t_R U115 ( .A(n127), .B(n138), .CI(n129), .CON(n121), .SN(n122)
         );
  FAx1_ASAP7_75t_R U116 ( .A(n301), .B(n142), .CI(n131), .CON(n124), .SN(n125)
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
  INVx1_ASAP7_75t_R U233 ( .A(n58), .Y(n286) );
  INVx1_ASAP7_75t_R U234 ( .A(n63), .Y(n287) );
  INVx1_ASAP7_75t_R U235 ( .A(n71), .Y(n288) );
  INVx1_ASAP7_75t_R U236 ( .A(n68), .Y(n289) );
  INVx1_ASAP7_75t_R U237 ( .A(n84), .Y(n290) );
  INVx1_ASAP7_75t_R U238 ( .A(n85), .Y(n291) );
  INVx1_ASAP7_75t_R U239 ( .A(n100), .Y(n292) );
  INVx1_ASAP7_75t_R U240 ( .A(a[7]), .Y(n293) );
  INVx1_ASAP7_75t_R U241 ( .A(n96), .Y(n294) );
  INVx1_ASAP7_75t_R U242 ( .A(n120), .Y(n295) );
  INVx1_ASAP7_75t_R U243 ( .A(n125), .Y(n296) );
  INVx1_ASAP7_75t_R U244 ( .A(n109), .Y(n297) );
  INVx1_ASAP7_75t_R U245 ( .A(a[6]), .Y(n298) );
  INVx1_ASAP7_75t_R U246 ( .A(a[5]), .Y(n299) );
  INVx1_ASAP7_75t_R U247 ( .A(n146), .Y(n300) );
  INVx1_ASAP7_75t_R U248 ( .A(n140), .Y(n301) );
  INVx1_ASAP7_75t_R U249 ( .A(a[4]), .Y(n302) );
  INVx1_ASAP7_75t_R U250 ( .A(n150), .Y(n303) );
  INVx1_ASAP7_75t_R U251 ( .A(a[3]), .Y(n304) );
  INVx1_ASAP7_75t_R U252 ( .A(n160), .Y(n305) );
  INVx1_ASAP7_75t_R U253 ( .A(a[2]), .Y(n306) );
  INVx1_ASAP7_75t_R U254 ( .A(n165), .Y(n307) );
  INVx1_ASAP7_75t_R U255 ( .A(n166), .Y(n308) );
  INVx1_ASAP7_75t_R U256 ( .A(a[1]), .Y(n309) );
  INVx1_ASAP7_75t_R U257 ( .A(a[0]), .Y(n310) );
  INVx1_ASAP7_75t_R U258 ( .A(b[7]), .Y(n311) );
  INVx1_ASAP7_75t_R U259 ( .A(b[6]), .Y(n312) );
  INVx1_ASAP7_75t_R U260 ( .A(b[5]), .Y(n313) );
  INVx1_ASAP7_75t_R U261 ( .A(b[4]), .Y(n314) );
  INVx1_ASAP7_75t_R U262 ( .A(b[3]), .Y(n315) );
  INVx1_ASAP7_75t_R U263 ( .A(b[2]), .Y(n316) );
  INVx1_ASAP7_75t_R U264 ( .A(b[0]), .Y(n317) );
  XOR2xp5_ASAP7_75t_R U265 ( .A(n318), .B(n319), .Y(product[9]) );
  XOR2xp5_ASAP7_75t_R U266 ( .A(n320), .B(n321), .Y(product[8]) );
  XOR2xp5_ASAP7_75t_R U267 ( .A(n322), .B(n323), .Y(product[7]) );
  XOR2xp5_ASAP7_75t_R U268 ( .A(n324), .B(n325), .Y(product[6]) );
  XOR2xp5_ASAP7_75t_R U269 ( .A(n326), .B(n327), .Y(product[5]) );
  XOR2xp5_ASAP7_75t_R U270 ( .A(n328), .B(n329), .Y(product[4]) );
  XOR2xp5_ASAP7_75t_R U271 ( .A(n330), .B(n331), .Y(product[3]) );
  XOR2xp5_ASAP7_75t_R U272 ( .A(n332), .B(n333), .Y(product[2]) );
  XOR2xp5_ASAP7_75t_R U273 ( .A(n334), .B(n335), .Y(product[1]) );
  NAND2xp33_ASAP7_75t_R U274 ( .A(n336), .B(n337), .Y(product[15]) );
  NAND2xp33_ASAP7_75t_R U275 ( .A(n338), .B(n339), .Y(n337) );
  OR2x2_ASAP7_75t_R U276 ( .A(n340), .B(n57), .Y(n336) );
  XOR2xp5_ASAP7_75t_R U277 ( .A(n339), .B(n338), .Y(product[14]) );
  XOR2xp5_ASAP7_75t_R U278 ( .A(n340), .B(n57), .Y(n338) );
  NAND2xp33_ASAP7_75t_R U279 ( .A(b[7]), .B(a[7]), .Y(n340) );
  NAND2xp33_ASAP7_75t_R U280 ( .A(n341), .B(n342), .Y(n339) );
  NAND2xp33_ASAP7_75t_R U281 ( .A(n343), .B(n344), .Y(n342) );
  NAND2xp33_ASAP7_75t_R U282 ( .A(n61), .B(n286), .Y(n341) );
  XOR2xp5_ASAP7_75t_R U283 ( .A(n344), .B(n343), .Y(product[13]) );
  XOR2xp5_ASAP7_75t_R U284 ( .A(n286), .B(n61), .Y(n343) );
  NAND2xp33_ASAP7_75t_R U285 ( .A(n345), .B(n346), .Y(n344) );
  NAND2xp33_ASAP7_75t_R U286 ( .A(n347), .B(n348), .Y(n346) );
  NAND2xp33_ASAP7_75t_R U287 ( .A(n62), .B(n289), .Y(n345) );
  XOR2xp5_ASAP7_75t_R U288 ( .A(n348), .B(n347), .Y(product[12]) );
  XOR2xp5_ASAP7_75t_R U289 ( .A(n62), .B(n289), .Y(n347) );
  NAND2xp33_ASAP7_75t_R U290 ( .A(n349), .B(n350), .Y(n348) );
  NAND2xp33_ASAP7_75t_R U291 ( .A(n351), .B(n352), .Y(n350) );
  OR2x2_ASAP7_75t_R U292 ( .A(n69), .B(n78), .Y(n349) );
  XOR2xp5_ASAP7_75t_R U293 ( .A(n352), .B(n351), .Y(product[11]) );
  XOR2xp5_ASAP7_75t_R U294 ( .A(n69), .B(n78), .Y(n351) );
  NAND2xp33_ASAP7_75t_R U295 ( .A(n353), .B(n354), .Y(n352) );
  NAND2xp33_ASAP7_75t_R U296 ( .A(n355), .B(n356), .Y(n354) );
  OR2x2_ASAP7_75t_R U297 ( .A(n79), .B(n90), .Y(n353) );
  XOR2xp5_ASAP7_75t_R U298 ( .A(n356), .B(n355), .Y(product[10]) );
  XOR2xp5_ASAP7_75t_R U299 ( .A(n79), .B(n90), .Y(n355) );
  NAND2xp33_ASAP7_75t_R U300 ( .A(n357), .B(n358), .Y(n356) );
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
  NOR2xp33_ASAP7_75t_R U322 ( .A(n306), .B(n317), .Y(n373) );
  XOR2xp5_ASAP7_75t_R U323 ( .A(n308), .B(n377), .Y(n331) );
  NAND2xp33_ASAP7_75t_R U324 ( .A(n377), .B(n308), .Y(n369) );
  XOR2xp5_ASAP7_75t_R U325 ( .A(n378), .B(n379), .Y(n377) );
  XOR2xp5_ASAP7_75t_R U326 ( .A(n159), .B(n161), .Y(n329) );
  OR2x2_ASAP7_75t_R U327 ( .A(n159), .B(n161), .Y(n367) );
  XOR2xp5_ASAP7_75t_R U328 ( .A(n147), .B(n303), .Y(n327) );
  NAND2xp33_ASAP7_75t_R U329 ( .A(n147), .B(n303), .Y(n365) );
  XOR2xp5_ASAP7_75t_R U330 ( .A(n134), .B(n137), .Y(n325) );
  NAND2xp33_ASAP7_75t_R U331 ( .A(n134), .B(n137), .Y(n363) );
  XOR2xp5_ASAP7_75t_R U332 ( .A(n295), .B(n133), .Y(n323) );
  NAND2xp33_ASAP7_75t_R U333 ( .A(n133), .B(n295), .Y(n361) );
  XOR2xp5_ASAP7_75t_R U334 ( .A(n105), .B(n119), .Y(n321) );
  OR2x2_ASAP7_75t_R U335 ( .A(n105), .B(n119), .Y(n359) );
  XOR2xp5_ASAP7_75t_R U336 ( .A(n104), .B(n91), .Y(n319) );
  OR2x2_ASAP7_75t_R U337 ( .A(n104), .B(n91), .Y(n357) );
  NOR2xp33_ASAP7_75t_R U338 ( .A(n317), .B(n310), .Y(product[0]) );
  NAND2xp33_ASAP7_75t_R U339 ( .A(n380), .B(n381), .Y(n95) );
  NAND2xp33_ASAP7_75t_R U340 ( .A(b[6]), .B(a[5]), .Y(n70) );
  NOR2xp33_ASAP7_75t_R U341 ( .A(n310), .B(n315), .Y(n231) );
  NOR2xp33_ASAP7_75t_R U342 ( .A(n310), .B(n314), .Y(n230) );
  NOR2xp33_ASAP7_75t_R U343 ( .A(n310), .B(n313), .Y(n229) );
  NOR2xp33_ASAP7_75t_R U344 ( .A(n310), .B(n312), .Y(n228) );
  NOR2xp33_ASAP7_75t_R U345 ( .A(n310), .B(n311), .Y(n227) );
  NOR2xp33_ASAP7_75t_R U346 ( .A(n309), .B(n316), .Y(n224) );
  NOR2xp33_ASAP7_75t_R U347 ( .A(n309), .B(n315), .Y(n223) );
  NOR2xp33_ASAP7_75t_R U348 ( .A(n309), .B(n314), .Y(n222) );
  NOR2xp33_ASAP7_75t_R U349 ( .A(n309), .B(n313), .Y(n221) );
  NOR2xp33_ASAP7_75t_R U350 ( .A(n309), .B(n312), .Y(n220) );
  NOR2xp33_ASAP7_75t_R U351 ( .A(n309), .B(n311), .Y(n219) );
  NOR2xp33_ASAP7_75t_R U352 ( .A(n306), .B(n316), .Y(n216) );
  NOR2xp33_ASAP7_75t_R U353 ( .A(n306), .B(n315), .Y(n215) );
  NOR2xp33_ASAP7_75t_R U354 ( .A(n306), .B(n314), .Y(n214) );
  NOR2xp33_ASAP7_75t_R U355 ( .A(n306), .B(n313), .Y(n213) );
  NOR2xp33_ASAP7_75t_R U356 ( .A(n306), .B(n312), .Y(n212) );
  NOR2xp33_ASAP7_75t_R U357 ( .A(n306), .B(n311), .Y(n211) );
  NOR2xp33_ASAP7_75t_R U358 ( .A(n316), .B(n304), .Y(n208) );
  NOR2xp33_ASAP7_75t_R U359 ( .A(n304), .B(n315), .Y(n207) );
  NOR2xp33_ASAP7_75t_R U360 ( .A(n304), .B(n314), .Y(n206) );
  NOR2xp33_ASAP7_75t_R U361 ( .A(n304), .B(n313), .Y(n205) );
  NOR2xp33_ASAP7_75t_R U362 ( .A(n304), .B(n312), .Y(n204) );
  NOR2xp33_ASAP7_75t_R U363 ( .A(n304), .B(n311), .Y(n203) );
  NOR2xp33_ASAP7_75t_R U364 ( .A(n316), .B(n302), .Y(n200) );
  NOR2xp33_ASAP7_75t_R U365 ( .A(n315), .B(n302), .Y(n199) );
  NOR2xp33_ASAP7_75t_R U366 ( .A(n314), .B(n302), .Y(n198) );
  NOR2xp33_ASAP7_75t_R U367 ( .A(n313), .B(n302), .Y(n197) );
  NOR2xp33_ASAP7_75t_R U368 ( .A(n312), .B(n302), .Y(n196) );
  NOR2xp33_ASAP7_75t_R U369 ( .A(n311), .B(n302), .Y(n195) );
  NOR2xp33_ASAP7_75t_R U370 ( .A(n316), .B(n299), .Y(n192) );
  NOR2xp33_ASAP7_75t_R U371 ( .A(n299), .B(n315), .Y(n191) );
  NOR2xp33_ASAP7_75t_R U372 ( .A(n299), .B(n314), .Y(n190) );
  NOR2xp33_ASAP7_75t_R U373 ( .A(n299), .B(n313), .Y(n189) );
  NOR2xp33_ASAP7_75t_R U374 ( .A(n311), .B(n299), .Y(n187) );
  NOR2xp33_ASAP7_75t_R U375 ( .A(n298), .B(n315), .Y(n183) );
  NOR2xp33_ASAP7_75t_R U376 ( .A(n298), .B(n314), .Y(n182) );
  NOR2xp33_ASAP7_75t_R U377 ( .A(n298), .B(n313), .Y(n181) );
  NOR2xp33_ASAP7_75t_R U378 ( .A(n298), .B(n312), .Y(n180) );
  NOR2xp33_ASAP7_75t_R U379 ( .A(n311), .B(n298), .Y(n179) );
  NOR2xp33_ASAP7_75t_R U380 ( .A(n316), .B(n293), .Y(n176) );
  NOR2xp33_ASAP7_75t_R U381 ( .A(n293), .B(n315), .Y(n175) );
  NOR2xp33_ASAP7_75t_R U382 ( .A(n293), .B(n314), .Y(n174) );
  NOR2xp33_ASAP7_75t_R U383 ( .A(n293), .B(n313), .Y(n173) );
  NOR2xp33_ASAP7_75t_R U384 ( .A(n293), .B(n312), .Y(n172) );
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
  NOR2xp33_ASAP7_75t_R U408 ( .A(n298), .B(n316), .Y(n380) );
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
  FAx1_ASAP7_75t_R U88 ( .A(n87), .B(n98), .CI(n294), .CON(n81), .SN(n82) );
  FAx1_ASAP7_75t_R U90 ( .A(n189), .B(n196), .CI(n292), .CON(n84), .SN(n85) );
  FAx1_ASAP7_75t_R U92 ( .A(n175), .B(n203), .CI(n182), .CON(n86), .SN(n87) );
  FAx1_ASAP7_75t_R U95 ( .A(n106), .B(n97), .CI(n94), .CON(n90), .SN(n91) );
  FAx1_ASAP7_75t_R U96 ( .A(n101), .B(n99), .CI(n297), .CON(n93), .SN(n94) );
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
  FAx1_ASAP7_75t_R U113 ( .A(n296), .B(n136), .CI(n122), .CON(n119), .SN(n120)
         );
  FAx1_ASAP7_75t_R U115 ( .A(n127), .B(n138), .CI(n129), .CON(n121), .SN(n122)
         );
  FAx1_ASAP7_75t_R U116 ( .A(n301), .B(n142), .CI(n131), .CON(n124), .SN(n125)
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
  INVx1_ASAP7_75t_R U233 ( .A(n58), .Y(n286) );
  INVx1_ASAP7_75t_R U234 ( .A(n63), .Y(n287) );
  INVx1_ASAP7_75t_R U235 ( .A(n71), .Y(n288) );
  INVx1_ASAP7_75t_R U236 ( .A(n68), .Y(n289) );
  INVx1_ASAP7_75t_R U237 ( .A(n84), .Y(n290) );
  INVx1_ASAP7_75t_R U238 ( .A(n85), .Y(n291) );
  INVx1_ASAP7_75t_R U239 ( .A(n100), .Y(n292) );
  INVx1_ASAP7_75t_R U240 ( .A(a[7]), .Y(n293) );
  INVx1_ASAP7_75t_R U241 ( .A(n96), .Y(n294) );
  INVx1_ASAP7_75t_R U242 ( .A(n120), .Y(n295) );
  INVx1_ASAP7_75t_R U243 ( .A(n125), .Y(n296) );
  INVx1_ASAP7_75t_R U244 ( .A(n109), .Y(n297) );
  INVx1_ASAP7_75t_R U245 ( .A(a[6]), .Y(n298) );
  INVx1_ASAP7_75t_R U246 ( .A(a[5]), .Y(n299) );
  INVx1_ASAP7_75t_R U247 ( .A(n146), .Y(n300) );
  INVx1_ASAP7_75t_R U248 ( .A(n140), .Y(n301) );
  INVx1_ASAP7_75t_R U249 ( .A(a[4]), .Y(n302) );
  INVx1_ASAP7_75t_R U250 ( .A(n150), .Y(n303) );
  INVx1_ASAP7_75t_R U251 ( .A(a[3]), .Y(n304) );
  INVx1_ASAP7_75t_R U252 ( .A(n160), .Y(n305) );
  INVx1_ASAP7_75t_R U253 ( .A(a[2]), .Y(n306) );
  INVx1_ASAP7_75t_R U254 ( .A(n165), .Y(n307) );
  INVx1_ASAP7_75t_R U255 ( .A(n166), .Y(n308) );
  INVx1_ASAP7_75t_R U256 ( .A(a[1]), .Y(n309) );
  INVx1_ASAP7_75t_R U257 ( .A(a[0]), .Y(n310) );
  INVx1_ASAP7_75t_R U258 ( .A(b[7]), .Y(n311) );
  INVx1_ASAP7_75t_R U259 ( .A(b[6]), .Y(n312) );
  INVx1_ASAP7_75t_R U260 ( .A(b[5]), .Y(n313) );
  INVx1_ASAP7_75t_R U261 ( .A(b[4]), .Y(n314) );
  INVx1_ASAP7_75t_R U262 ( .A(b[3]), .Y(n315) );
  INVx1_ASAP7_75t_R U263 ( .A(b[2]), .Y(n316) );
  INVx1_ASAP7_75t_R U264 ( .A(b[0]), .Y(n317) );
  XOR2xp5_ASAP7_75t_R U265 ( .A(n318), .B(n319), .Y(product[9]) );
  XOR2xp5_ASAP7_75t_R U266 ( .A(n320), .B(n321), .Y(product[8]) );
  XOR2xp5_ASAP7_75t_R U267 ( .A(n322), .B(n323), .Y(product[7]) );
  XOR2xp5_ASAP7_75t_R U268 ( .A(n324), .B(n325), .Y(product[6]) );
  XOR2xp5_ASAP7_75t_R U269 ( .A(n326), .B(n327), .Y(product[5]) );
  XOR2xp5_ASAP7_75t_R U270 ( .A(n328), .B(n329), .Y(product[4]) );
  XOR2xp5_ASAP7_75t_R U271 ( .A(n330), .B(n331), .Y(product[3]) );
  XOR2xp5_ASAP7_75t_R U272 ( .A(n332), .B(n333), .Y(product[2]) );
  XOR2xp5_ASAP7_75t_R U273 ( .A(n334), .B(n335), .Y(product[1]) );
  NAND2xp33_ASAP7_75t_R U274 ( .A(n336), .B(n337), .Y(product[15]) );
  NAND2xp33_ASAP7_75t_R U275 ( .A(n338), .B(n339), .Y(n337) );
  OR2x2_ASAP7_75t_R U276 ( .A(n340), .B(n57), .Y(n336) );
  XOR2xp5_ASAP7_75t_R U277 ( .A(n339), .B(n338), .Y(product[14]) );
  XOR2xp5_ASAP7_75t_R U278 ( .A(n340), .B(n57), .Y(n338) );
  NAND2xp33_ASAP7_75t_R U279 ( .A(b[7]), .B(a[7]), .Y(n340) );
  NAND2xp33_ASAP7_75t_R U280 ( .A(n341), .B(n342), .Y(n339) );
  NAND2xp33_ASAP7_75t_R U281 ( .A(n343), .B(n344), .Y(n342) );
  NAND2xp33_ASAP7_75t_R U282 ( .A(n61), .B(n286), .Y(n341) );
  XOR2xp5_ASAP7_75t_R U283 ( .A(n344), .B(n343), .Y(product[13]) );
  XOR2xp5_ASAP7_75t_R U284 ( .A(n286), .B(n61), .Y(n343) );
  NAND2xp33_ASAP7_75t_R U285 ( .A(n345), .B(n346), .Y(n344) );
  NAND2xp33_ASAP7_75t_R U286 ( .A(n347), .B(n348), .Y(n346) );
  NAND2xp33_ASAP7_75t_R U287 ( .A(n62), .B(n289), .Y(n345) );
  XOR2xp5_ASAP7_75t_R U288 ( .A(n348), .B(n347), .Y(product[12]) );
  XOR2xp5_ASAP7_75t_R U289 ( .A(n62), .B(n289), .Y(n347) );
  NAND2xp33_ASAP7_75t_R U290 ( .A(n349), .B(n350), .Y(n348) );
  NAND2xp33_ASAP7_75t_R U291 ( .A(n351), .B(n352), .Y(n350) );
  OR2x2_ASAP7_75t_R U292 ( .A(n69), .B(n78), .Y(n349) );
  XOR2xp5_ASAP7_75t_R U293 ( .A(n352), .B(n351), .Y(product[11]) );
  XOR2xp5_ASAP7_75t_R U294 ( .A(n69), .B(n78), .Y(n351) );
  NAND2xp33_ASAP7_75t_R U295 ( .A(n353), .B(n354), .Y(n352) );
  NAND2xp33_ASAP7_75t_R U296 ( .A(n355), .B(n356), .Y(n354) );
  OR2x2_ASAP7_75t_R U297 ( .A(n79), .B(n90), .Y(n353) );
  XOR2xp5_ASAP7_75t_R U298 ( .A(n356), .B(n355), .Y(product[10]) );
  XOR2xp5_ASAP7_75t_R U299 ( .A(n79), .B(n90), .Y(n355) );
  NAND2xp33_ASAP7_75t_R U300 ( .A(n357), .B(n358), .Y(n356) );
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
  NOR2xp33_ASAP7_75t_R U322 ( .A(n306), .B(n317), .Y(n373) );
  XOR2xp5_ASAP7_75t_R U323 ( .A(n308), .B(n377), .Y(n331) );
  NAND2xp33_ASAP7_75t_R U324 ( .A(n377), .B(n308), .Y(n369) );
  XOR2xp5_ASAP7_75t_R U325 ( .A(n378), .B(n379), .Y(n377) );
  XOR2xp5_ASAP7_75t_R U326 ( .A(n159), .B(n161), .Y(n329) );
  OR2x2_ASAP7_75t_R U327 ( .A(n159), .B(n161), .Y(n367) );
  XOR2xp5_ASAP7_75t_R U328 ( .A(n147), .B(n303), .Y(n327) );
  NAND2xp33_ASAP7_75t_R U329 ( .A(n147), .B(n303), .Y(n365) );
  XOR2xp5_ASAP7_75t_R U330 ( .A(n134), .B(n137), .Y(n325) );
  NAND2xp33_ASAP7_75t_R U331 ( .A(n134), .B(n137), .Y(n363) );
  XOR2xp5_ASAP7_75t_R U332 ( .A(n295), .B(n133), .Y(n323) );
  NAND2xp33_ASAP7_75t_R U333 ( .A(n133), .B(n295), .Y(n361) );
  XOR2xp5_ASAP7_75t_R U334 ( .A(n105), .B(n119), .Y(n321) );
  OR2x2_ASAP7_75t_R U335 ( .A(n105), .B(n119), .Y(n359) );
  XOR2xp5_ASAP7_75t_R U336 ( .A(n104), .B(n91), .Y(n319) );
  OR2x2_ASAP7_75t_R U337 ( .A(n104), .B(n91), .Y(n357) );
  NOR2xp33_ASAP7_75t_R U338 ( .A(n317), .B(n310), .Y(product[0]) );
  NAND2xp33_ASAP7_75t_R U339 ( .A(n380), .B(n381), .Y(n95) );
  NAND2xp33_ASAP7_75t_R U340 ( .A(b[6]), .B(a[5]), .Y(n70) );
  NOR2xp33_ASAP7_75t_R U341 ( .A(n310), .B(n315), .Y(n231) );
  NOR2xp33_ASAP7_75t_R U342 ( .A(n310), .B(n314), .Y(n230) );
  NOR2xp33_ASAP7_75t_R U343 ( .A(n310), .B(n313), .Y(n229) );
  NOR2xp33_ASAP7_75t_R U344 ( .A(n310), .B(n312), .Y(n228) );
  NOR2xp33_ASAP7_75t_R U345 ( .A(n310), .B(n311), .Y(n227) );
  NOR2xp33_ASAP7_75t_R U346 ( .A(n309), .B(n316), .Y(n224) );
  NOR2xp33_ASAP7_75t_R U347 ( .A(n309), .B(n315), .Y(n223) );
  NOR2xp33_ASAP7_75t_R U348 ( .A(n309), .B(n314), .Y(n222) );
  NOR2xp33_ASAP7_75t_R U349 ( .A(n309), .B(n313), .Y(n221) );
  NOR2xp33_ASAP7_75t_R U350 ( .A(n309), .B(n312), .Y(n220) );
  NOR2xp33_ASAP7_75t_R U351 ( .A(n309), .B(n311), .Y(n219) );
  NOR2xp33_ASAP7_75t_R U352 ( .A(n306), .B(n316), .Y(n216) );
  NOR2xp33_ASAP7_75t_R U353 ( .A(n306), .B(n315), .Y(n215) );
  NOR2xp33_ASAP7_75t_R U354 ( .A(n306), .B(n314), .Y(n214) );
  NOR2xp33_ASAP7_75t_R U355 ( .A(n306), .B(n313), .Y(n213) );
  NOR2xp33_ASAP7_75t_R U356 ( .A(n306), .B(n312), .Y(n212) );
  NOR2xp33_ASAP7_75t_R U357 ( .A(n306), .B(n311), .Y(n211) );
  NOR2xp33_ASAP7_75t_R U358 ( .A(n316), .B(n304), .Y(n208) );
  NOR2xp33_ASAP7_75t_R U359 ( .A(n304), .B(n315), .Y(n207) );
  NOR2xp33_ASAP7_75t_R U360 ( .A(n304), .B(n314), .Y(n206) );
  NOR2xp33_ASAP7_75t_R U361 ( .A(n304), .B(n313), .Y(n205) );
  NOR2xp33_ASAP7_75t_R U362 ( .A(n304), .B(n312), .Y(n204) );
  NOR2xp33_ASAP7_75t_R U363 ( .A(n304), .B(n311), .Y(n203) );
  NOR2xp33_ASAP7_75t_R U364 ( .A(n316), .B(n302), .Y(n200) );
  NOR2xp33_ASAP7_75t_R U365 ( .A(n315), .B(n302), .Y(n199) );
  NOR2xp33_ASAP7_75t_R U366 ( .A(n314), .B(n302), .Y(n198) );
  NOR2xp33_ASAP7_75t_R U367 ( .A(n313), .B(n302), .Y(n197) );
  NOR2xp33_ASAP7_75t_R U368 ( .A(n312), .B(n302), .Y(n196) );
  NOR2xp33_ASAP7_75t_R U369 ( .A(n311), .B(n302), .Y(n195) );
  NOR2xp33_ASAP7_75t_R U370 ( .A(n316), .B(n299), .Y(n192) );
  NOR2xp33_ASAP7_75t_R U371 ( .A(n299), .B(n315), .Y(n191) );
  NOR2xp33_ASAP7_75t_R U372 ( .A(n299), .B(n314), .Y(n190) );
  NOR2xp33_ASAP7_75t_R U373 ( .A(n299), .B(n313), .Y(n189) );
  NOR2xp33_ASAP7_75t_R U374 ( .A(n311), .B(n299), .Y(n187) );
  NOR2xp33_ASAP7_75t_R U375 ( .A(n298), .B(n315), .Y(n183) );
  NOR2xp33_ASAP7_75t_R U376 ( .A(n298), .B(n314), .Y(n182) );
  NOR2xp33_ASAP7_75t_R U377 ( .A(n298), .B(n313), .Y(n181) );
  NOR2xp33_ASAP7_75t_R U378 ( .A(n298), .B(n312), .Y(n180) );
  NOR2xp33_ASAP7_75t_R U379 ( .A(n311), .B(n298), .Y(n179) );
  NOR2xp33_ASAP7_75t_R U380 ( .A(n316), .B(n293), .Y(n176) );
  NOR2xp33_ASAP7_75t_R U381 ( .A(n293), .B(n315), .Y(n175) );
  NOR2xp33_ASAP7_75t_R U382 ( .A(n293), .B(n314), .Y(n174) );
  NOR2xp33_ASAP7_75t_R U383 ( .A(n293), .B(n313), .Y(n173) );
  NOR2xp33_ASAP7_75t_R U384 ( .A(n293), .B(n312), .Y(n172) );
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
  NOR2xp33_ASAP7_75t_R U408 ( .A(n298), .B(n316), .Y(n380) );
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
  FAx1_ASAP7_75t_R U88 ( .A(n87), .B(n98), .CI(n294), .CON(n81), .SN(n82) );
  FAx1_ASAP7_75t_R U90 ( .A(n189), .B(n196), .CI(n292), .CON(n84), .SN(n85) );
  FAx1_ASAP7_75t_R U92 ( .A(n175), .B(n203), .CI(n182), .CON(n86), .SN(n87) );
  FAx1_ASAP7_75t_R U95 ( .A(n106), .B(n97), .CI(n94), .CON(n90), .SN(n91) );
  FAx1_ASAP7_75t_R U96 ( .A(n101), .B(n99), .CI(n297), .CON(n93), .SN(n94) );
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
  FAx1_ASAP7_75t_R U113 ( .A(n296), .B(n136), .CI(n122), .CON(n119), .SN(n120)
         );
  FAx1_ASAP7_75t_R U115 ( .A(n127), .B(n138), .CI(n129), .CON(n121), .SN(n122)
         );
  FAx1_ASAP7_75t_R U116 ( .A(n301), .B(n142), .CI(n131), .CON(n124), .SN(n125)
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
  INVx1_ASAP7_75t_R U233 ( .A(n58), .Y(n286) );
  INVx1_ASAP7_75t_R U234 ( .A(n63), .Y(n287) );
  INVx1_ASAP7_75t_R U235 ( .A(n71), .Y(n288) );
  INVx1_ASAP7_75t_R U236 ( .A(n68), .Y(n289) );
  INVx1_ASAP7_75t_R U237 ( .A(n84), .Y(n290) );
  INVx1_ASAP7_75t_R U238 ( .A(n85), .Y(n291) );
  INVx1_ASAP7_75t_R U239 ( .A(n100), .Y(n292) );
  INVx1_ASAP7_75t_R U240 ( .A(a[7]), .Y(n293) );
  INVx1_ASAP7_75t_R U241 ( .A(n96), .Y(n294) );
  INVx1_ASAP7_75t_R U242 ( .A(n120), .Y(n295) );
  INVx1_ASAP7_75t_R U243 ( .A(n125), .Y(n296) );
  INVx1_ASAP7_75t_R U244 ( .A(n109), .Y(n297) );
  INVx1_ASAP7_75t_R U245 ( .A(a[6]), .Y(n298) );
  INVx1_ASAP7_75t_R U246 ( .A(a[5]), .Y(n299) );
  INVx1_ASAP7_75t_R U247 ( .A(n146), .Y(n300) );
  INVx1_ASAP7_75t_R U248 ( .A(n140), .Y(n301) );
  INVx1_ASAP7_75t_R U249 ( .A(a[4]), .Y(n302) );
  INVx1_ASAP7_75t_R U250 ( .A(n150), .Y(n303) );
  INVx1_ASAP7_75t_R U251 ( .A(a[3]), .Y(n304) );
  INVx1_ASAP7_75t_R U252 ( .A(n160), .Y(n305) );
  INVx1_ASAP7_75t_R U253 ( .A(a[2]), .Y(n306) );
  INVx1_ASAP7_75t_R U254 ( .A(n165), .Y(n307) );
  INVx1_ASAP7_75t_R U255 ( .A(n166), .Y(n308) );
  INVx1_ASAP7_75t_R U256 ( .A(a[1]), .Y(n309) );
  INVx1_ASAP7_75t_R U257 ( .A(a[0]), .Y(n310) );
  INVx1_ASAP7_75t_R U258 ( .A(b[7]), .Y(n311) );
  INVx1_ASAP7_75t_R U259 ( .A(b[6]), .Y(n312) );
  INVx1_ASAP7_75t_R U260 ( .A(b[5]), .Y(n313) );
  INVx1_ASAP7_75t_R U261 ( .A(b[4]), .Y(n314) );
  INVx1_ASAP7_75t_R U262 ( .A(b[3]), .Y(n315) );
  INVx1_ASAP7_75t_R U263 ( .A(b[2]), .Y(n316) );
  INVx1_ASAP7_75t_R U264 ( .A(b[0]), .Y(n317) );
  XOR2xp5_ASAP7_75t_R U265 ( .A(n318), .B(n319), .Y(product[9]) );
  XOR2xp5_ASAP7_75t_R U266 ( .A(n320), .B(n321), .Y(product[8]) );
  XOR2xp5_ASAP7_75t_R U267 ( .A(n322), .B(n323), .Y(product[7]) );
  XOR2xp5_ASAP7_75t_R U268 ( .A(n324), .B(n325), .Y(product[6]) );
  XOR2xp5_ASAP7_75t_R U269 ( .A(n326), .B(n327), .Y(product[5]) );
  XOR2xp5_ASAP7_75t_R U270 ( .A(n328), .B(n329), .Y(product[4]) );
  XOR2xp5_ASAP7_75t_R U271 ( .A(n330), .B(n331), .Y(product[3]) );
  XOR2xp5_ASAP7_75t_R U272 ( .A(n332), .B(n333), .Y(product[2]) );
  XOR2xp5_ASAP7_75t_R U273 ( .A(n334), .B(n335), .Y(product[1]) );
  NAND2xp33_ASAP7_75t_R U274 ( .A(n336), .B(n337), .Y(product[15]) );
  NAND2xp33_ASAP7_75t_R U275 ( .A(n338), .B(n339), .Y(n337) );
  OR2x2_ASAP7_75t_R U276 ( .A(n340), .B(n57), .Y(n336) );
  XOR2xp5_ASAP7_75t_R U277 ( .A(n339), .B(n338), .Y(product[14]) );
  XOR2xp5_ASAP7_75t_R U278 ( .A(n340), .B(n57), .Y(n338) );
  NAND2xp33_ASAP7_75t_R U279 ( .A(b[7]), .B(a[7]), .Y(n340) );
  NAND2xp33_ASAP7_75t_R U280 ( .A(n341), .B(n342), .Y(n339) );
  NAND2xp33_ASAP7_75t_R U281 ( .A(n343), .B(n344), .Y(n342) );
  NAND2xp33_ASAP7_75t_R U282 ( .A(n61), .B(n286), .Y(n341) );
  XOR2xp5_ASAP7_75t_R U283 ( .A(n344), .B(n343), .Y(product[13]) );
  XOR2xp5_ASAP7_75t_R U284 ( .A(n286), .B(n61), .Y(n343) );
  NAND2xp33_ASAP7_75t_R U285 ( .A(n345), .B(n346), .Y(n344) );
  NAND2xp33_ASAP7_75t_R U286 ( .A(n347), .B(n348), .Y(n346) );
  NAND2xp33_ASAP7_75t_R U287 ( .A(n62), .B(n289), .Y(n345) );
  XOR2xp5_ASAP7_75t_R U288 ( .A(n348), .B(n347), .Y(product[12]) );
  XOR2xp5_ASAP7_75t_R U289 ( .A(n62), .B(n289), .Y(n347) );
  NAND2xp33_ASAP7_75t_R U290 ( .A(n349), .B(n350), .Y(n348) );
  NAND2xp33_ASAP7_75t_R U291 ( .A(n351), .B(n352), .Y(n350) );
  OR2x2_ASAP7_75t_R U292 ( .A(n69), .B(n78), .Y(n349) );
  XOR2xp5_ASAP7_75t_R U293 ( .A(n352), .B(n351), .Y(product[11]) );
  XOR2xp5_ASAP7_75t_R U294 ( .A(n69), .B(n78), .Y(n351) );
  NAND2xp33_ASAP7_75t_R U295 ( .A(n353), .B(n354), .Y(n352) );
  NAND2xp33_ASAP7_75t_R U296 ( .A(n355), .B(n356), .Y(n354) );
  OR2x2_ASAP7_75t_R U297 ( .A(n79), .B(n90), .Y(n353) );
  XOR2xp5_ASAP7_75t_R U298 ( .A(n356), .B(n355), .Y(product[10]) );
  XOR2xp5_ASAP7_75t_R U299 ( .A(n79), .B(n90), .Y(n355) );
  NAND2xp33_ASAP7_75t_R U300 ( .A(n357), .B(n358), .Y(n356) );
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
  NOR2xp33_ASAP7_75t_R U322 ( .A(n306), .B(n317), .Y(n373) );
  XOR2xp5_ASAP7_75t_R U323 ( .A(n308), .B(n377), .Y(n331) );
  NAND2xp33_ASAP7_75t_R U324 ( .A(n377), .B(n308), .Y(n369) );
  XOR2xp5_ASAP7_75t_R U325 ( .A(n378), .B(n379), .Y(n377) );
  XOR2xp5_ASAP7_75t_R U326 ( .A(n159), .B(n161), .Y(n329) );
  OR2x2_ASAP7_75t_R U327 ( .A(n159), .B(n161), .Y(n367) );
  XOR2xp5_ASAP7_75t_R U328 ( .A(n147), .B(n303), .Y(n327) );
  NAND2xp33_ASAP7_75t_R U329 ( .A(n147), .B(n303), .Y(n365) );
  XOR2xp5_ASAP7_75t_R U330 ( .A(n134), .B(n137), .Y(n325) );
  NAND2xp33_ASAP7_75t_R U331 ( .A(n134), .B(n137), .Y(n363) );
  XOR2xp5_ASAP7_75t_R U332 ( .A(n295), .B(n133), .Y(n323) );
  NAND2xp33_ASAP7_75t_R U333 ( .A(n133), .B(n295), .Y(n361) );
  XOR2xp5_ASAP7_75t_R U334 ( .A(n105), .B(n119), .Y(n321) );
  OR2x2_ASAP7_75t_R U335 ( .A(n105), .B(n119), .Y(n359) );
  XOR2xp5_ASAP7_75t_R U336 ( .A(n104), .B(n91), .Y(n319) );
  OR2x2_ASAP7_75t_R U337 ( .A(n104), .B(n91), .Y(n357) );
  NOR2xp33_ASAP7_75t_R U338 ( .A(n317), .B(n310), .Y(product[0]) );
  NAND2xp33_ASAP7_75t_R U339 ( .A(n380), .B(n381), .Y(n95) );
  NAND2xp33_ASAP7_75t_R U340 ( .A(b[6]), .B(a[5]), .Y(n70) );
  NOR2xp33_ASAP7_75t_R U341 ( .A(n310), .B(n315), .Y(n231) );
  NOR2xp33_ASAP7_75t_R U342 ( .A(n310), .B(n314), .Y(n230) );
  NOR2xp33_ASAP7_75t_R U343 ( .A(n310), .B(n313), .Y(n229) );
  NOR2xp33_ASAP7_75t_R U344 ( .A(n310), .B(n312), .Y(n228) );
  NOR2xp33_ASAP7_75t_R U345 ( .A(n310), .B(n311), .Y(n227) );
  NOR2xp33_ASAP7_75t_R U346 ( .A(n309), .B(n316), .Y(n224) );
  NOR2xp33_ASAP7_75t_R U347 ( .A(n309), .B(n315), .Y(n223) );
  NOR2xp33_ASAP7_75t_R U348 ( .A(n309), .B(n314), .Y(n222) );
  NOR2xp33_ASAP7_75t_R U349 ( .A(n309), .B(n313), .Y(n221) );
  NOR2xp33_ASAP7_75t_R U350 ( .A(n309), .B(n312), .Y(n220) );
  NOR2xp33_ASAP7_75t_R U351 ( .A(n309), .B(n311), .Y(n219) );
  NOR2xp33_ASAP7_75t_R U352 ( .A(n306), .B(n316), .Y(n216) );
  NOR2xp33_ASAP7_75t_R U353 ( .A(n306), .B(n315), .Y(n215) );
  NOR2xp33_ASAP7_75t_R U354 ( .A(n306), .B(n314), .Y(n214) );
  NOR2xp33_ASAP7_75t_R U355 ( .A(n306), .B(n313), .Y(n213) );
  NOR2xp33_ASAP7_75t_R U356 ( .A(n306), .B(n312), .Y(n212) );
  NOR2xp33_ASAP7_75t_R U357 ( .A(n306), .B(n311), .Y(n211) );
  NOR2xp33_ASAP7_75t_R U358 ( .A(n316), .B(n304), .Y(n208) );
  NOR2xp33_ASAP7_75t_R U359 ( .A(n304), .B(n315), .Y(n207) );
  NOR2xp33_ASAP7_75t_R U360 ( .A(n304), .B(n314), .Y(n206) );
  NOR2xp33_ASAP7_75t_R U361 ( .A(n304), .B(n313), .Y(n205) );
  NOR2xp33_ASAP7_75t_R U362 ( .A(n304), .B(n312), .Y(n204) );
  NOR2xp33_ASAP7_75t_R U363 ( .A(n304), .B(n311), .Y(n203) );
  NOR2xp33_ASAP7_75t_R U364 ( .A(n316), .B(n302), .Y(n200) );
  NOR2xp33_ASAP7_75t_R U365 ( .A(n315), .B(n302), .Y(n199) );
  NOR2xp33_ASAP7_75t_R U366 ( .A(n314), .B(n302), .Y(n198) );
  NOR2xp33_ASAP7_75t_R U367 ( .A(n313), .B(n302), .Y(n197) );
  NOR2xp33_ASAP7_75t_R U368 ( .A(n312), .B(n302), .Y(n196) );
  NOR2xp33_ASAP7_75t_R U369 ( .A(n311), .B(n302), .Y(n195) );
  NOR2xp33_ASAP7_75t_R U370 ( .A(n316), .B(n299), .Y(n192) );
  NOR2xp33_ASAP7_75t_R U371 ( .A(n299), .B(n315), .Y(n191) );
  NOR2xp33_ASAP7_75t_R U372 ( .A(n299), .B(n314), .Y(n190) );
  NOR2xp33_ASAP7_75t_R U373 ( .A(n299), .B(n313), .Y(n189) );
  NOR2xp33_ASAP7_75t_R U374 ( .A(n311), .B(n299), .Y(n187) );
  NOR2xp33_ASAP7_75t_R U375 ( .A(n298), .B(n315), .Y(n183) );
  NOR2xp33_ASAP7_75t_R U376 ( .A(n298), .B(n314), .Y(n182) );
  NOR2xp33_ASAP7_75t_R U377 ( .A(n298), .B(n313), .Y(n181) );
  NOR2xp33_ASAP7_75t_R U378 ( .A(n298), .B(n312), .Y(n180) );
  NOR2xp33_ASAP7_75t_R U379 ( .A(n311), .B(n298), .Y(n179) );
  NOR2xp33_ASAP7_75t_R U380 ( .A(n316), .B(n293), .Y(n176) );
  NOR2xp33_ASAP7_75t_R U381 ( .A(n293), .B(n315), .Y(n175) );
  NOR2xp33_ASAP7_75t_R U382 ( .A(n293), .B(n314), .Y(n174) );
  NOR2xp33_ASAP7_75t_R U383 ( .A(n293), .B(n313), .Y(n173) );
  NOR2xp33_ASAP7_75t_R U384 ( .A(n293), .B(n312), .Y(n172) );
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
  NOR2xp33_ASAP7_75t_R U408 ( .A(n298), .B(n316), .Y(n380) );
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
         n386, n387, n388, n389;

  FAx1_ASAP7_75t_R U71 ( .A(n172), .B(n179), .CI(n287), .CON(n57), .SN(n58) );
  FAx1_ASAP7_75t_R U74 ( .A(n64), .B(n73), .CI(n288), .CON(n61), .SN(n62) );
  FAx1_ASAP7_75t_R U76 ( .A(n173), .B(n187), .CI(n180), .CON(n63), .SN(n64) );
  FAx1_ASAP7_75t_R U79 ( .A(n81), .B(n290), .CI(n72), .CON(n68), .SN(n69) );
  FAx1_ASAP7_75t_R U81 ( .A(n86), .B(n70), .CI(n74), .CON(n71), .SN(n72) );
  FAx1_ASAP7_75t_R U83 ( .A(n174), .B(n195), .CI(n181), .CON(n73), .SN(n74) );
  FAx1_ASAP7_75t_R U86 ( .A(n93), .B(n291), .CI(n82), .CON(n78), .SN(n79) );
  FAx1_ASAP7_75t_R U88 ( .A(n87), .B(n98), .CI(n294), .CON(n81), .SN(n82) );
  FAx1_ASAP7_75t_R U90 ( .A(n189), .B(n196), .CI(n292), .CON(n84), .SN(n85) );
  FAx1_ASAP7_75t_R U92 ( .A(n175), .B(n203), .CI(n182), .CON(n86), .SN(n87) );
  FAx1_ASAP7_75t_R U95 ( .A(n106), .B(n97), .CI(n94), .CON(n90), .SN(n91) );
  FAx1_ASAP7_75t_R U96 ( .A(n101), .B(n99), .CI(n297), .CON(n93), .SN(n94) );
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
  FAx1_ASAP7_75t_R U113 ( .A(n296), .B(n136), .CI(n122), .CON(n119), .SN(n120)
         );
  FAx1_ASAP7_75t_R U115 ( .A(n127), .B(n138), .CI(n129), .CON(n121), .SN(n122)
         );
  FAx1_ASAP7_75t_R U116 ( .A(n301), .B(n142), .CI(n131), .CON(n124), .SN(n125)
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
  INVx1_ASAP7_75t_R U233 ( .A(n58), .Y(n286) );
  INVx1_ASAP7_75t_R U234 ( .A(n63), .Y(n287) );
  INVx1_ASAP7_75t_R U235 ( .A(n71), .Y(n288) );
  INVx1_ASAP7_75t_R U236 ( .A(n68), .Y(n289) );
  INVx1_ASAP7_75t_R U237 ( .A(n84), .Y(n290) );
  INVx1_ASAP7_75t_R U238 ( .A(n85), .Y(n291) );
  INVx1_ASAP7_75t_R U239 ( .A(n100), .Y(n292) );
  INVx1_ASAP7_75t_R U240 ( .A(a[7]), .Y(n293) );
  INVx1_ASAP7_75t_R U241 ( .A(n96), .Y(n294) );
  INVx1_ASAP7_75t_R U242 ( .A(n120), .Y(n295) );
  INVx1_ASAP7_75t_R U243 ( .A(n125), .Y(n296) );
  INVx1_ASAP7_75t_R U244 ( .A(n109), .Y(n297) );
  INVx1_ASAP7_75t_R U245 ( .A(a[6]), .Y(n298) );
  INVx1_ASAP7_75t_R U246 ( .A(a[5]), .Y(n299) );
  INVx1_ASAP7_75t_R U247 ( .A(n146), .Y(n300) );
  INVx1_ASAP7_75t_R U248 ( .A(n140), .Y(n301) );
  INVx1_ASAP7_75t_R U249 ( .A(a[4]), .Y(n302) );
  INVx1_ASAP7_75t_R U250 ( .A(n150), .Y(n303) );
  INVx1_ASAP7_75t_R U251 ( .A(a[3]), .Y(n304) );
  INVx1_ASAP7_75t_R U252 ( .A(n160), .Y(n305) );
  INVx1_ASAP7_75t_R U253 ( .A(a[2]), .Y(n306) );
  INVx1_ASAP7_75t_R U254 ( .A(n165), .Y(n307) );
  INVx1_ASAP7_75t_R U255 ( .A(n166), .Y(n308) );
  INVx1_ASAP7_75t_R U256 ( .A(a[1]), .Y(n309) );
  INVx1_ASAP7_75t_R U257 ( .A(a[0]), .Y(n310) );
  INVx1_ASAP7_75t_R U258 ( .A(b[7]), .Y(n311) );
  INVx1_ASAP7_75t_R U259 ( .A(b[6]), .Y(n312) );
  INVx1_ASAP7_75t_R U260 ( .A(b[5]), .Y(n313) );
  INVx1_ASAP7_75t_R U261 ( .A(b[4]), .Y(n314) );
  INVx1_ASAP7_75t_R U262 ( .A(b[3]), .Y(n315) );
  INVx1_ASAP7_75t_R U263 ( .A(b[2]), .Y(n316) );
  INVx1_ASAP7_75t_R U264 ( .A(b[0]), .Y(n317) );
  XOR2xp5_ASAP7_75t_R U265 ( .A(n318), .B(n319), .Y(product[9]) );
  XOR2xp5_ASAP7_75t_R U266 ( .A(n320), .B(n321), .Y(product[8]) );
  XOR2xp5_ASAP7_75t_R U267 ( .A(n322), .B(n323), .Y(product[7]) );
  XOR2xp5_ASAP7_75t_R U268 ( .A(n324), .B(n325), .Y(product[6]) );
  XOR2xp5_ASAP7_75t_R U269 ( .A(n326), .B(n327), .Y(product[5]) );
  XOR2xp5_ASAP7_75t_R U270 ( .A(n328), .B(n329), .Y(product[4]) );
  XOR2xp5_ASAP7_75t_R U271 ( .A(n330), .B(n331), .Y(product[3]) );
  XOR2xp5_ASAP7_75t_R U272 ( .A(n332), .B(n333), .Y(product[2]) );
  XOR2xp5_ASAP7_75t_R U273 ( .A(n334), .B(n335), .Y(product[1]) );
  NAND2xp33_ASAP7_75t_R U274 ( .A(n336), .B(n337), .Y(product[15]) );
  NAND2xp33_ASAP7_75t_R U275 ( .A(n338), .B(n339), .Y(n337) );
  OR2x2_ASAP7_75t_R U276 ( .A(n340), .B(n57), .Y(n336) );
  XOR2xp5_ASAP7_75t_R U277 ( .A(n339), .B(n338), .Y(product[14]) );
  XOR2xp5_ASAP7_75t_R U278 ( .A(n340), .B(n57), .Y(n338) );
  NAND2xp33_ASAP7_75t_R U279 ( .A(b[7]), .B(a[7]), .Y(n340) );
  NAND2xp33_ASAP7_75t_R U280 ( .A(n341), .B(n342), .Y(n339) );
  NAND2xp33_ASAP7_75t_R U281 ( .A(n343), .B(n344), .Y(n342) );
  NAND2xp33_ASAP7_75t_R U282 ( .A(n61), .B(n286), .Y(n341) );
  XOR2xp5_ASAP7_75t_R U283 ( .A(n344), .B(n343), .Y(product[13]) );
  XOR2xp5_ASAP7_75t_R U284 ( .A(n286), .B(n61), .Y(n343) );
  NAND2xp33_ASAP7_75t_R U285 ( .A(n345), .B(n346), .Y(n344) );
  NAND2xp33_ASAP7_75t_R U286 ( .A(n347), .B(n348), .Y(n346) );
  NAND2xp33_ASAP7_75t_R U287 ( .A(n62), .B(n289), .Y(n345) );
  XOR2xp5_ASAP7_75t_R U288 ( .A(n348), .B(n347), .Y(product[12]) );
  XOR2xp5_ASAP7_75t_R U289 ( .A(n62), .B(n289), .Y(n347) );
  NAND2xp33_ASAP7_75t_R U290 ( .A(n349), .B(n350), .Y(n348) );
  NAND2xp33_ASAP7_75t_R U291 ( .A(n351), .B(n352), .Y(n350) );
  OR2x2_ASAP7_75t_R U292 ( .A(n69), .B(n78), .Y(n349) );
  XOR2xp5_ASAP7_75t_R U293 ( .A(n352), .B(n351), .Y(product[11]) );
  XOR2xp5_ASAP7_75t_R U294 ( .A(n69), .B(n78), .Y(n351) );
  NAND2xp33_ASAP7_75t_R U295 ( .A(n353), .B(n354), .Y(n352) );
  NAND2xp33_ASAP7_75t_R U296 ( .A(n355), .B(n356), .Y(n354) );
  OR2x2_ASAP7_75t_R U297 ( .A(n79), .B(n90), .Y(n353) );
  XOR2xp5_ASAP7_75t_R U298 ( .A(n356), .B(n355), .Y(product[10]) );
  XOR2xp5_ASAP7_75t_R U299 ( .A(n79), .B(n90), .Y(n355) );
  NAND2xp33_ASAP7_75t_R U300 ( .A(n357), .B(n358), .Y(n356) );
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
  NOR2xp33_ASAP7_75t_R U322 ( .A(n306), .B(n317), .Y(n373) );
  XOR2xp5_ASAP7_75t_R U323 ( .A(n308), .B(n377), .Y(n331) );
  NAND2xp33_ASAP7_75t_R U324 ( .A(n377), .B(n308), .Y(n369) );
  XOR2xp5_ASAP7_75t_R U325 ( .A(n378), .B(n379), .Y(n377) );
  XOR2xp5_ASAP7_75t_R U326 ( .A(n159), .B(n161), .Y(n329) );
  OR2x2_ASAP7_75t_R U327 ( .A(n159), .B(n161), .Y(n367) );
  XOR2xp5_ASAP7_75t_R U328 ( .A(n147), .B(n303), .Y(n327) );
  NAND2xp33_ASAP7_75t_R U329 ( .A(n147), .B(n303), .Y(n365) );
  XOR2xp5_ASAP7_75t_R U330 ( .A(n134), .B(n137), .Y(n325) );
  NAND2xp33_ASAP7_75t_R U331 ( .A(n134), .B(n137), .Y(n363) );
  XOR2xp5_ASAP7_75t_R U332 ( .A(n295), .B(n133), .Y(n323) );
  NAND2xp33_ASAP7_75t_R U333 ( .A(n133), .B(n295), .Y(n361) );
  XOR2xp5_ASAP7_75t_R U334 ( .A(n105), .B(n119), .Y(n321) );
  OR2x2_ASAP7_75t_R U335 ( .A(n105), .B(n119), .Y(n359) );
  XOR2xp5_ASAP7_75t_R U336 ( .A(n104), .B(n91), .Y(n319) );
  OR2x2_ASAP7_75t_R U337 ( .A(n104), .B(n91), .Y(n357) );
  NOR2xp33_ASAP7_75t_R U338 ( .A(n317), .B(n310), .Y(product[0]) );
  NAND2xp33_ASAP7_75t_R U339 ( .A(n380), .B(n381), .Y(n95) );
  NAND2xp33_ASAP7_75t_R U340 ( .A(b[6]), .B(a[5]), .Y(n70) );
  NOR2xp33_ASAP7_75t_R U341 ( .A(n310), .B(n315), .Y(n231) );
  NOR2xp33_ASAP7_75t_R U342 ( .A(n310), .B(n314), .Y(n230) );
  NOR2xp33_ASAP7_75t_R U343 ( .A(n310), .B(n313), .Y(n229) );
  NOR2xp33_ASAP7_75t_R U344 ( .A(n310), .B(n312), .Y(n228) );
  NOR2xp33_ASAP7_75t_R U345 ( .A(n310), .B(n311), .Y(n227) );
  NOR2xp33_ASAP7_75t_R U346 ( .A(n309), .B(n316), .Y(n224) );
  NOR2xp33_ASAP7_75t_R U347 ( .A(n309), .B(n315), .Y(n223) );
  NOR2xp33_ASAP7_75t_R U348 ( .A(n309), .B(n314), .Y(n222) );
  NOR2xp33_ASAP7_75t_R U349 ( .A(n309), .B(n313), .Y(n221) );
  NOR2xp33_ASAP7_75t_R U350 ( .A(n309), .B(n312), .Y(n220) );
  NOR2xp33_ASAP7_75t_R U351 ( .A(n309), .B(n311), .Y(n219) );
  NOR2xp33_ASAP7_75t_R U352 ( .A(n306), .B(n316), .Y(n216) );
  NOR2xp33_ASAP7_75t_R U353 ( .A(n306), .B(n315), .Y(n215) );
  NOR2xp33_ASAP7_75t_R U354 ( .A(n306), .B(n314), .Y(n214) );
  NOR2xp33_ASAP7_75t_R U355 ( .A(n306), .B(n313), .Y(n213) );
  NOR2xp33_ASAP7_75t_R U356 ( .A(n306), .B(n312), .Y(n212) );
  NOR2xp33_ASAP7_75t_R U357 ( .A(n306), .B(n311), .Y(n211) );
  NOR2xp33_ASAP7_75t_R U358 ( .A(n316), .B(n304), .Y(n208) );
  NOR2xp33_ASAP7_75t_R U359 ( .A(n304), .B(n315), .Y(n207) );
  NOR2xp33_ASAP7_75t_R U360 ( .A(n304), .B(n314), .Y(n206) );
  NOR2xp33_ASAP7_75t_R U361 ( .A(n304), .B(n313), .Y(n205) );
  NOR2xp33_ASAP7_75t_R U362 ( .A(n304), .B(n312), .Y(n204) );
  NOR2xp33_ASAP7_75t_R U363 ( .A(n304), .B(n311), .Y(n203) );
  NOR2xp33_ASAP7_75t_R U364 ( .A(n316), .B(n302), .Y(n200) );
  NOR2xp33_ASAP7_75t_R U365 ( .A(n315), .B(n302), .Y(n199) );
  NOR2xp33_ASAP7_75t_R U366 ( .A(n314), .B(n302), .Y(n198) );
  NOR2xp33_ASAP7_75t_R U367 ( .A(n313), .B(n302), .Y(n197) );
  NOR2xp33_ASAP7_75t_R U368 ( .A(n312), .B(n302), .Y(n196) );
  NOR2xp33_ASAP7_75t_R U369 ( .A(n311), .B(n302), .Y(n195) );
  NOR2xp33_ASAP7_75t_R U370 ( .A(n316), .B(n299), .Y(n192) );
  NOR2xp33_ASAP7_75t_R U371 ( .A(n299), .B(n315), .Y(n191) );
  NOR2xp33_ASAP7_75t_R U372 ( .A(n299), .B(n314), .Y(n190) );
  NOR2xp33_ASAP7_75t_R U373 ( .A(n299), .B(n313), .Y(n189) );
  NOR2xp33_ASAP7_75t_R U374 ( .A(n311), .B(n299), .Y(n187) );
  NOR2xp33_ASAP7_75t_R U375 ( .A(n298), .B(n315), .Y(n183) );
  NOR2xp33_ASAP7_75t_R U376 ( .A(n298), .B(n314), .Y(n182) );
  NOR2xp33_ASAP7_75t_R U377 ( .A(n298), .B(n313), .Y(n181) );
  NOR2xp33_ASAP7_75t_R U378 ( .A(n298), .B(n312), .Y(n180) );
  NOR2xp33_ASAP7_75t_R U379 ( .A(n311), .B(n298), .Y(n179) );
  NOR2xp33_ASAP7_75t_R U380 ( .A(n316), .B(n293), .Y(n176) );
  NOR2xp33_ASAP7_75t_R U381 ( .A(n293), .B(n315), .Y(n175) );
  NOR2xp33_ASAP7_75t_R U382 ( .A(n293), .B(n314), .Y(n174) );
  NOR2xp33_ASAP7_75t_R U383 ( .A(n293), .B(n313), .Y(n173) );
  NOR2xp33_ASAP7_75t_R U384 ( .A(n293), .B(n312), .Y(n172) );
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
  NOR2xp33_ASAP7_75t_R U408 ( .A(n298), .B(n316), .Y(n380) );
  AND2x2_ASAP7_75t_R U409 ( .A(a[7]), .B(b[1]), .Y(n381) );
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
  FAx1_ASAP7_75t_R U88 ( .A(n87), .B(n98), .CI(n294), .CON(n81), .SN(n82) );
  FAx1_ASAP7_75t_R U90 ( .A(n189), .B(n196), .CI(n292), .CON(n84), .SN(n85) );
  FAx1_ASAP7_75t_R U92 ( .A(n175), .B(n203), .CI(n182), .CON(n86), .SN(n87) );
  FAx1_ASAP7_75t_R U95 ( .A(n106), .B(n97), .CI(n94), .CON(n90), .SN(n91) );
  FAx1_ASAP7_75t_R U96 ( .A(n101), .B(n99), .CI(n297), .CON(n93), .SN(n94) );
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
  FAx1_ASAP7_75t_R U113 ( .A(n296), .B(n136), .CI(n122), .CON(n119), .SN(n120)
         );
  FAx1_ASAP7_75t_R U115 ( .A(n127), .B(n138), .CI(n129), .CON(n121), .SN(n122)
         );
  FAx1_ASAP7_75t_R U116 ( .A(n301), .B(n142), .CI(n131), .CON(n124), .SN(n125)
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
  INVx1_ASAP7_75t_R U233 ( .A(n58), .Y(n286) );
  INVx1_ASAP7_75t_R U234 ( .A(n63), .Y(n287) );
  INVx1_ASAP7_75t_R U235 ( .A(n71), .Y(n288) );
  INVx1_ASAP7_75t_R U236 ( .A(n68), .Y(n289) );
  INVx1_ASAP7_75t_R U237 ( .A(n84), .Y(n290) );
  INVx1_ASAP7_75t_R U238 ( .A(n85), .Y(n291) );
  INVx1_ASAP7_75t_R U239 ( .A(n100), .Y(n292) );
  INVx1_ASAP7_75t_R U240 ( .A(a[7]), .Y(n293) );
  INVx1_ASAP7_75t_R U241 ( .A(n96), .Y(n294) );
  INVx1_ASAP7_75t_R U242 ( .A(n120), .Y(n295) );
  INVx1_ASAP7_75t_R U243 ( .A(n125), .Y(n296) );
  INVx1_ASAP7_75t_R U244 ( .A(n109), .Y(n297) );
  INVx1_ASAP7_75t_R U245 ( .A(a[6]), .Y(n298) );
  INVx1_ASAP7_75t_R U246 ( .A(a[5]), .Y(n299) );
  INVx1_ASAP7_75t_R U247 ( .A(n146), .Y(n300) );
  INVx1_ASAP7_75t_R U248 ( .A(n140), .Y(n301) );
  INVx1_ASAP7_75t_R U249 ( .A(a[4]), .Y(n302) );
  INVx1_ASAP7_75t_R U250 ( .A(n150), .Y(n303) );
  INVx1_ASAP7_75t_R U251 ( .A(a[3]), .Y(n304) );
  INVx1_ASAP7_75t_R U252 ( .A(n160), .Y(n305) );
  INVx1_ASAP7_75t_R U253 ( .A(a[2]), .Y(n306) );
  INVx1_ASAP7_75t_R U254 ( .A(n165), .Y(n307) );
  INVx1_ASAP7_75t_R U255 ( .A(n166), .Y(n308) );
  INVx1_ASAP7_75t_R U256 ( .A(a[1]), .Y(n309) );
  INVx1_ASAP7_75t_R U257 ( .A(a[0]), .Y(n310) );
  INVx1_ASAP7_75t_R U258 ( .A(b[7]), .Y(n311) );
  INVx1_ASAP7_75t_R U259 ( .A(b[6]), .Y(n312) );
  INVx1_ASAP7_75t_R U260 ( .A(b[5]), .Y(n313) );
  INVx1_ASAP7_75t_R U261 ( .A(b[4]), .Y(n314) );
  INVx1_ASAP7_75t_R U262 ( .A(b[3]), .Y(n315) );
  INVx1_ASAP7_75t_R U263 ( .A(b[2]), .Y(n316) );
  INVx1_ASAP7_75t_R U264 ( .A(b[0]), .Y(n317) );
  XOR2xp5_ASAP7_75t_R U265 ( .A(n318), .B(n319), .Y(product[9]) );
  XOR2xp5_ASAP7_75t_R U266 ( .A(n320), .B(n321), .Y(product[8]) );
  XOR2xp5_ASAP7_75t_R U267 ( .A(n322), .B(n323), .Y(product[7]) );
  XOR2xp5_ASAP7_75t_R U268 ( .A(n324), .B(n325), .Y(product[6]) );
  XOR2xp5_ASAP7_75t_R U269 ( .A(n326), .B(n327), .Y(product[5]) );
  XOR2xp5_ASAP7_75t_R U270 ( .A(n328), .B(n329), .Y(product[4]) );
  XOR2xp5_ASAP7_75t_R U271 ( .A(n330), .B(n331), .Y(product[3]) );
  XOR2xp5_ASAP7_75t_R U272 ( .A(n332), .B(n333), .Y(product[2]) );
  XOR2xp5_ASAP7_75t_R U273 ( .A(n334), .B(n335), .Y(product[1]) );
  NAND2xp33_ASAP7_75t_R U274 ( .A(n336), .B(n337), .Y(product[15]) );
  NAND2xp33_ASAP7_75t_R U275 ( .A(n338), .B(n339), .Y(n337) );
  OR2x2_ASAP7_75t_R U276 ( .A(n340), .B(n57), .Y(n336) );
  XOR2xp5_ASAP7_75t_R U277 ( .A(n339), .B(n338), .Y(product[14]) );
  XOR2xp5_ASAP7_75t_R U278 ( .A(n340), .B(n57), .Y(n338) );
  NAND2xp33_ASAP7_75t_R U279 ( .A(b[7]), .B(a[7]), .Y(n340) );
  NAND2xp33_ASAP7_75t_R U280 ( .A(n341), .B(n342), .Y(n339) );
  NAND2xp33_ASAP7_75t_R U281 ( .A(n343), .B(n344), .Y(n342) );
  NAND2xp33_ASAP7_75t_R U282 ( .A(n61), .B(n286), .Y(n341) );
  XOR2xp5_ASAP7_75t_R U283 ( .A(n344), .B(n343), .Y(product[13]) );
  XOR2xp5_ASAP7_75t_R U284 ( .A(n286), .B(n61), .Y(n343) );
  NAND2xp33_ASAP7_75t_R U285 ( .A(n345), .B(n346), .Y(n344) );
  NAND2xp33_ASAP7_75t_R U286 ( .A(n347), .B(n348), .Y(n346) );
  NAND2xp33_ASAP7_75t_R U287 ( .A(n62), .B(n289), .Y(n345) );
  XOR2xp5_ASAP7_75t_R U288 ( .A(n348), .B(n347), .Y(product[12]) );
  XOR2xp5_ASAP7_75t_R U289 ( .A(n62), .B(n289), .Y(n347) );
  NAND2xp33_ASAP7_75t_R U290 ( .A(n349), .B(n350), .Y(n348) );
  NAND2xp33_ASAP7_75t_R U291 ( .A(n351), .B(n352), .Y(n350) );
  OR2x2_ASAP7_75t_R U292 ( .A(n69), .B(n78), .Y(n349) );
  XOR2xp5_ASAP7_75t_R U293 ( .A(n352), .B(n351), .Y(product[11]) );
  XOR2xp5_ASAP7_75t_R U294 ( .A(n69), .B(n78), .Y(n351) );
  NAND2xp33_ASAP7_75t_R U295 ( .A(n353), .B(n354), .Y(n352) );
  NAND2xp33_ASAP7_75t_R U296 ( .A(n355), .B(n356), .Y(n354) );
  OR2x2_ASAP7_75t_R U297 ( .A(n79), .B(n90), .Y(n353) );
  XOR2xp5_ASAP7_75t_R U298 ( .A(n356), .B(n355), .Y(product[10]) );
  XOR2xp5_ASAP7_75t_R U299 ( .A(n79), .B(n90), .Y(n355) );
  NAND2xp33_ASAP7_75t_R U300 ( .A(n357), .B(n358), .Y(n356) );
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
  NOR2xp33_ASAP7_75t_R U322 ( .A(n306), .B(n317), .Y(n373) );
  XOR2xp5_ASAP7_75t_R U323 ( .A(n308), .B(n377), .Y(n331) );
  NAND2xp33_ASAP7_75t_R U324 ( .A(n377), .B(n308), .Y(n369) );
  XOR2xp5_ASAP7_75t_R U325 ( .A(n378), .B(n379), .Y(n377) );
  XOR2xp5_ASAP7_75t_R U326 ( .A(n159), .B(n161), .Y(n329) );
  OR2x2_ASAP7_75t_R U327 ( .A(n159), .B(n161), .Y(n367) );
  XOR2xp5_ASAP7_75t_R U328 ( .A(n147), .B(n303), .Y(n327) );
  NAND2xp33_ASAP7_75t_R U329 ( .A(n147), .B(n303), .Y(n365) );
  XOR2xp5_ASAP7_75t_R U330 ( .A(n134), .B(n137), .Y(n325) );
  NAND2xp33_ASAP7_75t_R U331 ( .A(n134), .B(n137), .Y(n363) );
  XOR2xp5_ASAP7_75t_R U332 ( .A(n295), .B(n133), .Y(n323) );
  NAND2xp33_ASAP7_75t_R U333 ( .A(n133), .B(n295), .Y(n361) );
  XOR2xp5_ASAP7_75t_R U334 ( .A(n105), .B(n119), .Y(n321) );
  OR2x2_ASAP7_75t_R U335 ( .A(n105), .B(n119), .Y(n359) );
  XOR2xp5_ASAP7_75t_R U336 ( .A(n104), .B(n91), .Y(n319) );
  OR2x2_ASAP7_75t_R U337 ( .A(n104), .B(n91), .Y(n357) );
  NOR2xp33_ASAP7_75t_R U338 ( .A(n317), .B(n310), .Y(product[0]) );
  NAND2xp33_ASAP7_75t_R U339 ( .A(n380), .B(n381), .Y(n95) );
  NAND2xp33_ASAP7_75t_R U340 ( .A(b[6]), .B(a[5]), .Y(n70) );
  NOR2xp33_ASAP7_75t_R U341 ( .A(n310), .B(n315), .Y(n231) );
  NOR2xp33_ASAP7_75t_R U342 ( .A(n310), .B(n314), .Y(n230) );
  NOR2xp33_ASAP7_75t_R U343 ( .A(n310), .B(n313), .Y(n229) );
  NOR2xp33_ASAP7_75t_R U344 ( .A(n310), .B(n312), .Y(n228) );
  NOR2xp33_ASAP7_75t_R U345 ( .A(n310), .B(n311), .Y(n227) );
  NOR2xp33_ASAP7_75t_R U346 ( .A(n309), .B(n316), .Y(n224) );
  NOR2xp33_ASAP7_75t_R U347 ( .A(n309), .B(n315), .Y(n223) );
  NOR2xp33_ASAP7_75t_R U348 ( .A(n309), .B(n314), .Y(n222) );
  NOR2xp33_ASAP7_75t_R U349 ( .A(n309), .B(n313), .Y(n221) );
  NOR2xp33_ASAP7_75t_R U350 ( .A(n309), .B(n312), .Y(n220) );
  NOR2xp33_ASAP7_75t_R U351 ( .A(n309), .B(n311), .Y(n219) );
  NOR2xp33_ASAP7_75t_R U352 ( .A(n306), .B(n316), .Y(n216) );
  NOR2xp33_ASAP7_75t_R U353 ( .A(n306), .B(n315), .Y(n215) );
  NOR2xp33_ASAP7_75t_R U354 ( .A(n306), .B(n314), .Y(n214) );
  NOR2xp33_ASAP7_75t_R U355 ( .A(n306), .B(n313), .Y(n213) );
  NOR2xp33_ASAP7_75t_R U356 ( .A(n306), .B(n312), .Y(n212) );
  NOR2xp33_ASAP7_75t_R U357 ( .A(n306), .B(n311), .Y(n211) );
  NOR2xp33_ASAP7_75t_R U358 ( .A(n316), .B(n304), .Y(n208) );
  NOR2xp33_ASAP7_75t_R U359 ( .A(n304), .B(n315), .Y(n207) );
  NOR2xp33_ASAP7_75t_R U360 ( .A(n304), .B(n314), .Y(n206) );
  NOR2xp33_ASAP7_75t_R U361 ( .A(n304), .B(n313), .Y(n205) );
  NOR2xp33_ASAP7_75t_R U362 ( .A(n304), .B(n312), .Y(n204) );
  NOR2xp33_ASAP7_75t_R U363 ( .A(n304), .B(n311), .Y(n203) );
  NOR2xp33_ASAP7_75t_R U364 ( .A(n316), .B(n302), .Y(n200) );
  NOR2xp33_ASAP7_75t_R U365 ( .A(n315), .B(n302), .Y(n199) );
  NOR2xp33_ASAP7_75t_R U366 ( .A(n314), .B(n302), .Y(n198) );
  NOR2xp33_ASAP7_75t_R U367 ( .A(n313), .B(n302), .Y(n197) );
  NOR2xp33_ASAP7_75t_R U368 ( .A(n312), .B(n302), .Y(n196) );
  NOR2xp33_ASAP7_75t_R U369 ( .A(n311), .B(n302), .Y(n195) );
  NOR2xp33_ASAP7_75t_R U370 ( .A(n316), .B(n299), .Y(n192) );
  NOR2xp33_ASAP7_75t_R U371 ( .A(n299), .B(n315), .Y(n191) );
  NOR2xp33_ASAP7_75t_R U372 ( .A(n299), .B(n314), .Y(n190) );
  NOR2xp33_ASAP7_75t_R U373 ( .A(n299), .B(n313), .Y(n189) );
  NOR2xp33_ASAP7_75t_R U374 ( .A(n311), .B(n299), .Y(n187) );
  NOR2xp33_ASAP7_75t_R U375 ( .A(n298), .B(n315), .Y(n183) );
  NOR2xp33_ASAP7_75t_R U376 ( .A(n298), .B(n314), .Y(n182) );
  NOR2xp33_ASAP7_75t_R U377 ( .A(n298), .B(n313), .Y(n181) );
  NOR2xp33_ASAP7_75t_R U378 ( .A(n298), .B(n312), .Y(n180) );
  NOR2xp33_ASAP7_75t_R U379 ( .A(n311), .B(n298), .Y(n179) );
  NOR2xp33_ASAP7_75t_R U380 ( .A(n316), .B(n293), .Y(n176) );
  NOR2xp33_ASAP7_75t_R U381 ( .A(n293), .B(n315), .Y(n175) );
  NOR2xp33_ASAP7_75t_R U382 ( .A(n293), .B(n314), .Y(n174) );
  NOR2xp33_ASAP7_75t_R U383 ( .A(n293), .B(n313), .Y(n173) );
  NOR2xp33_ASAP7_75t_R U384 ( .A(n293), .B(n312), .Y(n172) );
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
  NOR2xp33_ASAP7_75t_R U408 ( .A(n298), .B(n316), .Y(n380) );
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
  FAx1_ASAP7_75t_R U88 ( .A(n87), .B(n98), .CI(n294), .CON(n81), .SN(n82) );
  FAx1_ASAP7_75t_R U90 ( .A(n189), .B(n196), .CI(n292), .CON(n84), .SN(n85) );
  FAx1_ASAP7_75t_R U92 ( .A(n175), .B(n203), .CI(n182), .CON(n86), .SN(n87) );
  FAx1_ASAP7_75t_R U95 ( .A(n106), .B(n97), .CI(n94), .CON(n90), .SN(n91) );
  FAx1_ASAP7_75t_R U96 ( .A(n101), .B(n99), .CI(n297), .CON(n93), .SN(n94) );
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
  FAx1_ASAP7_75t_R U113 ( .A(n296), .B(n136), .CI(n122), .CON(n119), .SN(n120)
         );
  FAx1_ASAP7_75t_R U115 ( .A(n127), .B(n138), .CI(n129), .CON(n121), .SN(n122)
         );
  FAx1_ASAP7_75t_R U116 ( .A(n301), .B(n142), .CI(n131), .CON(n124), .SN(n125)
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
  INVx1_ASAP7_75t_R U233 ( .A(n58), .Y(n286) );
  INVx1_ASAP7_75t_R U234 ( .A(n63), .Y(n287) );
  INVx1_ASAP7_75t_R U235 ( .A(n71), .Y(n288) );
  INVx1_ASAP7_75t_R U236 ( .A(n68), .Y(n289) );
  INVx1_ASAP7_75t_R U237 ( .A(n84), .Y(n290) );
  INVx1_ASAP7_75t_R U238 ( .A(n85), .Y(n291) );
  INVx1_ASAP7_75t_R U239 ( .A(n100), .Y(n292) );
  INVx1_ASAP7_75t_R U240 ( .A(a[7]), .Y(n293) );
  INVx1_ASAP7_75t_R U241 ( .A(n96), .Y(n294) );
  INVx1_ASAP7_75t_R U242 ( .A(n120), .Y(n295) );
  INVx1_ASAP7_75t_R U243 ( .A(n125), .Y(n296) );
  INVx1_ASAP7_75t_R U244 ( .A(n109), .Y(n297) );
  INVx1_ASAP7_75t_R U245 ( .A(a[6]), .Y(n298) );
  INVx1_ASAP7_75t_R U246 ( .A(a[5]), .Y(n299) );
  INVx1_ASAP7_75t_R U247 ( .A(n146), .Y(n300) );
  INVx1_ASAP7_75t_R U248 ( .A(n140), .Y(n301) );
  INVx1_ASAP7_75t_R U249 ( .A(a[4]), .Y(n302) );
  INVx1_ASAP7_75t_R U250 ( .A(n150), .Y(n303) );
  INVx1_ASAP7_75t_R U251 ( .A(a[3]), .Y(n304) );
  INVx1_ASAP7_75t_R U252 ( .A(n160), .Y(n305) );
  INVx1_ASAP7_75t_R U253 ( .A(a[2]), .Y(n306) );
  INVx1_ASAP7_75t_R U254 ( .A(n165), .Y(n307) );
  INVx1_ASAP7_75t_R U255 ( .A(n166), .Y(n308) );
  INVx1_ASAP7_75t_R U256 ( .A(a[1]), .Y(n309) );
  INVx1_ASAP7_75t_R U257 ( .A(a[0]), .Y(n310) );
  INVx1_ASAP7_75t_R U258 ( .A(b[7]), .Y(n311) );
  INVx1_ASAP7_75t_R U259 ( .A(b[6]), .Y(n312) );
  INVx1_ASAP7_75t_R U260 ( .A(b[5]), .Y(n313) );
  INVx1_ASAP7_75t_R U261 ( .A(b[4]), .Y(n314) );
  INVx1_ASAP7_75t_R U262 ( .A(b[3]), .Y(n315) );
  INVx1_ASAP7_75t_R U263 ( .A(b[2]), .Y(n316) );
  INVx1_ASAP7_75t_R U264 ( .A(b[0]), .Y(n317) );
  XOR2xp5_ASAP7_75t_R U265 ( .A(n318), .B(n319), .Y(product[9]) );
  XOR2xp5_ASAP7_75t_R U266 ( .A(n320), .B(n321), .Y(product[8]) );
  XOR2xp5_ASAP7_75t_R U267 ( .A(n322), .B(n323), .Y(product[7]) );
  XOR2xp5_ASAP7_75t_R U268 ( .A(n324), .B(n325), .Y(product[6]) );
  XOR2xp5_ASAP7_75t_R U269 ( .A(n326), .B(n327), .Y(product[5]) );
  XOR2xp5_ASAP7_75t_R U270 ( .A(n328), .B(n329), .Y(product[4]) );
  XOR2xp5_ASAP7_75t_R U271 ( .A(n330), .B(n331), .Y(product[3]) );
  XOR2xp5_ASAP7_75t_R U272 ( .A(n332), .B(n333), .Y(product[2]) );
  XOR2xp5_ASAP7_75t_R U273 ( .A(n334), .B(n335), .Y(product[1]) );
  NAND2xp33_ASAP7_75t_R U274 ( .A(n336), .B(n337), .Y(product[15]) );
  NAND2xp33_ASAP7_75t_R U275 ( .A(n338), .B(n339), .Y(n337) );
  OR2x2_ASAP7_75t_R U276 ( .A(n340), .B(n57), .Y(n336) );
  XOR2xp5_ASAP7_75t_R U277 ( .A(n339), .B(n338), .Y(product[14]) );
  XOR2xp5_ASAP7_75t_R U278 ( .A(n340), .B(n57), .Y(n338) );
  NAND2xp33_ASAP7_75t_R U279 ( .A(b[7]), .B(a[7]), .Y(n340) );
  NAND2xp33_ASAP7_75t_R U280 ( .A(n341), .B(n342), .Y(n339) );
  NAND2xp33_ASAP7_75t_R U281 ( .A(n343), .B(n344), .Y(n342) );
  NAND2xp33_ASAP7_75t_R U282 ( .A(n61), .B(n286), .Y(n341) );
  XOR2xp5_ASAP7_75t_R U283 ( .A(n344), .B(n343), .Y(product[13]) );
  XOR2xp5_ASAP7_75t_R U284 ( .A(n286), .B(n61), .Y(n343) );
  NAND2xp33_ASAP7_75t_R U285 ( .A(n345), .B(n346), .Y(n344) );
  NAND2xp33_ASAP7_75t_R U286 ( .A(n347), .B(n348), .Y(n346) );
  NAND2xp33_ASAP7_75t_R U287 ( .A(n62), .B(n289), .Y(n345) );
  XOR2xp5_ASAP7_75t_R U288 ( .A(n348), .B(n347), .Y(product[12]) );
  XOR2xp5_ASAP7_75t_R U289 ( .A(n62), .B(n289), .Y(n347) );
  NAND2xp33_ASAP7_75t_R U290 ( .A(n349), .B(n350), .Y(n348) );
  NAND2xp33_ASAP7_75t_R U291 ( .A(n351), .B(n352), .Y(n350) );
  OR2x2_ASAP7_75t_R U292 ( .A(n69), .B(n78), .Y(n349) );
  XOR2xp5_ASAP7_75t_R U293 ( .A(n352), .B(n351), .Y(product[11]) );
  XOR2xp5_ASAP7_75t_R U294 ( .A(n69), .B(n78), .Y(n351) );
  NAND2xp33_ASAP7_75t_R U295 ( .A(n353), .B(n354), .Y(n352) );
  NAND2xp33_ASAP7_75t_R U296 ( .A(n355), .B(n356), .Y(n354) );
  OR2x2_ASAP7_75t_R U297 ( .A(n79), .B(n90), .Y(n353) );
  XOR2xp5_ASAP7_75t_R U298 ( .A(n356), .B(n355), .Y(product[10]) );
  XOR2xp5_ASAP7_75t_R U299 ( .A(n79), .B(n90), .Y(n355) );
  NAND2xp33_ASAP7_75t_R U300 ( .A(n357), .B(n358), .Y(n356) );
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
  NOR2xp33_ASAP7_75t_R U322 ( .A(n306), .B(n317), .Y(n373) );
  XOR2xp5_ASAP7_75t_R U323 ( .A(n308), .B(n377), .Y(n331) );
  NAND2xp33_ASAP7_75t_R U324 ( .A(n377), .B(n308), .Y(n369) );
  XOR2xp5_ASAP7_75t_R U325 ( .A(n378), .B(n379), .Y(n377) );
  XOR2xp5_ASAP7_75t_R U326 ( .A(n159), .B(n161), .Y(n329) );
  OR2x2_ASAP7_75t_R U327 ( .A(n159), .B(n161), .Y(n367) );
  XOR2xp5_ASAP7_75t_R U328 ( .A(n147), .B(n303), .Y(n327) );
  NAND2xp33_ASAP7_75t_R U329 ( .A(n147), .B(n303), .Y(n365) );
  XOR2xp5_ASAP7_75t_R U330 ( .A(n134), .B(n137), .Y(n325) );
  NAND2xp33_ASAP7_75t_R U331 ( .A(n134), .B(n137), .Y(n363) );
  XOR2xp5_ASAP7_75t_R U332 ( .A(n295), .B(n133), .Y(n323) );
  NAND2xp33_ASAP7_75t_R U333 ( .A(n133), .B(n295), .Y(n361) );
  XOR2xp5_ASAP7_75t_R U334 ( .A(n105), .B(n119), .Y(n321) );
  OR2x2_ASAP7_75t_R U335 ( .A(n105), .B(n119), .Y(n359) );
  XOR2xp5_ASAP7_75t_R U336 ( .A(n104), .B(n91), .Y(n319) );
  OR2x2_ASAP7_75t_R U337 ( .A(n104), .B(n91), .Y(n357) );
  NOR2xp33_ASAP7_75t_R U338 ( .A(n317), .B(n310), .Y(product[0]) );
  NAND2xp33_ASAP7_75t_R U339 ( .A(n380), .B(n381), .Y(n95) );
  NAND2xp33_ASAP7_75t_R U340 ( .A(b[6]), .B(a[5]), .Y(n70) );
  NOR2xp33_ASAP7_75t_R U341 ( .A(n310), .B(n315), .Y(n231) );
  NOR2xp33_ASAP7_75t_R U342 ( .A(n310), .B(n314), .Y(n230) );
  NOR2xp33_ASAP7_75t_R U343 ( .A(n310), .B(n313), .Y(n229) );
  NOR2xp33_ASAP7_75t_R U344 ( .A(n310), .B(n312), .Y(n228) );
  NOR2xp33_ASAP7_75t_R U345 ( .A(n310), .B(n311), .Y(n227) );
  NOR2xp33_ASAP7_75t_R U346 ( .A(n309), .B(n316), .Y(n224) );
  NOR2xp33_ASAP7_75t_R U347 ( .A(n309), .B(n315), .Y(n223) );
  NOR2xp33_ASAP7_75t_R U348 ( .A(n309), .B(n314), .Y(n222) );
  NOR2xp33_ASAP7_75t_R U349 ( .A(n309), .B(n313), .Y(n221) );
  NOR2xp33_ASAP7_75t_R U350 ( .A(n309), .B(n312), .Y(n220) );
  NOR2xp33_ASAP7_75t_R U351 ( .A(n309), .B(n311), .Y(n219) );
  NOR2xp33_ASAP7_75t_R U352 ( .A(n306), .B(n316), .Y(n216) );
  NOR2xp33_ASAP7_75t_R U353 ( .A(n306), .B(n315), .Y(n215) );
  NOR2xp33_ASAP7_75t_R U354 ( .A(n306), .B(n314), .Y(n214) );
  NOR2xp33_ASAP7_75t_R U355 ( .A(n306), .B(n313), .Y(n213) );
  NOR2xp33_ASAP7_75t_R U356 ( .A(n306), .B(n312), .Y(n212) );
  NOR2xp33_ASAP7_75t_R U357 ( .A(n306), .B(n311), .Y(n211) );
  NOR2xp33_ASAP7_75t_R U358 ( .A(n316), .B(n304), .Y(n208) );
  NOR2xp33_ASAP7_75t_R U359 ( .A(n304), .B(n315), .Y(n207) );
  NOR2xp33_ASAP7_75t_R U360 ( .A(n304), .B(n314), .Y(n206) );
  NOR2xp33_ASAP7_75t_R U361 ( .A(n304), .B(n313), .Y(n205) );
  NOR2xp33_ASAP7_75t_R U362 ( .A(n304), .B(n312), .Y(n204) );
  NOR2xp33_ASAP7_75t_R U363 ( .A(n304), .B(n311), .Y(n203) );
  NOR2xp33_ASAP7_75t_R U364 ( .A(n316), .B(n302), .Y(n200) );
  NOR2xp33_ASAP7_75t_R U365 ( .A(n315), .B(n302), .Y(n199) );
  NOR2xp33_ASAP7_75t_R U366 ( .A(n314), .B(n302), .Y(n198) );
  NOR2xp33_ASAP7_75t_R U367 ( .A(n313), .B(n302), .Y(n197) );
  NOR2xp33_ASAP7_75t_R U368 ( .A(n312), .B(n302), .Y(n196) );
  NOR2xp33_ASAP7_75t_R U369 ( .A(n311), .B(n302), .Y(n195) );
  NOR2xp33_ASAP7_75t_R U370 ( .A(n316), .B(n299), .Y(n192) );
  NOR2xp33_ASAP7_75t_R U371 ( .A(n299), .B(n315), .Y(n191) );
  NOR2xp33_ASAP7_75t_R U372 ( .A(n299), .B(n314), .Y(n190) );
  NOR2xp33_ASAP7_75t_R U373 ( .A(n299), .B(n313), .Y(n189) );
  NOR2xp33_ASAP7_75t_R U374 ( .A(n311), .B(n299), .Y(n187) );
  NOR2xp33_ASAP7_75t_R U375 ( .A(n298), .B(n315), .Y(n183) );
  NOR2xp33_ASAP7_75t_R U376 ( .A(n298), .B(n314), .Y(n182) );
  NOR2xp33_ASAP7_75t_R U377 ( .A(n298), .B(n313), .Y(n181) );
  NOR2xp33_ASAP7_75t_R U378 ( .A(n298), .B(n312), .Y(n180) );
  NOR2xp33_ASAP7_75t_R U379 ( .A(n311), .B(n298), .Y(n179) );
  NOR2xp33_ASAP7_75t_R U380 ( .A(n316), .B(n293), .Y(n176) );
  NOR2xp33_ASAP7_75t_R U381 ( .A(n293), .B(n315), .Y(n175) );
  NOR2xp33_ASAP7_75t_R U382 ( .A(n293), .B(n314), .Y(n174) );
  NOR2xp33_ASAP7_75t_R U383 ( .A(n293), .B(n313), .Y(n173) );
  NOR2xp33_ASAP7_75t_R U384 ( .A(n293), .B(n312), .Y(n172) );
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
  NOR2xp33_ASAP7_75t_R U408 ( .A(n298), .B(n316), .Y(n380) );
  AND2x2_ASAP7_75t_R U409 ( .A(a[7]), .B(b[1]), .Y(n381) );
endmodule


module syn_XOR ( IN, OUT, TX_CLK, RX_CLK, RST_N );
  input IN, TX_CLK, RX_CLK, RST_N;
  output OUT;
  wire   P, Y, Q, n1, n4, n3, n5;

  synchronizer x1 ( .D(P), .Q(Y), .clk(RX_CLK), .rst_n(RST_N) );
  ASYNC_DFFHx1_ASAP7_75t_R P_reg ( .D(n3), .CLK(TX_CLK), .RESET(n5), .SET(n4), 
        .QN(P) );
  ASYNC_DFFHx1_ASAP7_75t_R Q_reg ( .D(n1), .CLK(RX_CLK), .RESET(n5), .SET(n4), 
        .QN(Q) );
  TIELOx1_ASAP7_75t_R U10 ( .L(n4) );
  INVx1_ASAP7_75t_R U11 ( .A(RST_N), .Y(n5) );
  XNOR2xp5_ASAP7_75t_R U12 ( .A(P), .B(IN), .Y(n3) );
  INVx1_ASAP7_75t_R U13 ( .A(Y), .Y(n1) );
  XOR2xp5_ASAP7_75t_R U14 ( .A(Y), .B(Q), .Y(OUT) );
endmodule


module synchronizer ( D, Q, clk, rst_n );
  input D, clk, rst_n;
  output Q;
  wire   A1, n1, n4, n3, n5;

  ASYNC_DFFHx1_ASAP7_75t_R A1_reg ( .D(n3), .CLK(clk), .RESET(n5), .SET(n4), 
        .QN(A1) );
  ASYNC_DFFHx1_ASAP7_75t_R A2_reg ( .D(n1), .CLK(clk), .RESET(n5), .SET(n4), 
        .QN(Q) );
  TIELOx1_ASAP7_75t_R U8 ( .L(n4) );
  INVx1_ASAP7_75t_R U9 ( .A(rst_n), .Y(n5) );
  INVx1_ASAP7_75t_R U10 ( .A(D), .Y(n3) );
  INVx1_ASAP7_75t_R U11 ( .A(A1), .Y(n1) );
endmodule

