wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/RAID2/COURSE/dic/dic145/ex_6/01_RTL/Convolution.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_Convolution"
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/u_Convolution/Out_OFM\[20:0\]} \
{/TESTBED/u_Convolution/clk1} \
{/TESTBED/u_Convolution/clk2} \
{/TESTBED/u_Convolution/in_valid} \
{/TESTBED/u_Convolution/in_valid_reg_1} \
{/TESTBED/u_Convolution/out_sum\[20:0\]} \
{/TESTBED/u_Convolution/out_valid} \
{/TESTBED/u_Convolution/r_out_sum\[20:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/u_Convolution/Out_OFM\[20:0\]} \
{/TESTBED/u_Convolution/clk1} \
{/TESTBED/u_Convolution/clk2} \
{/TESTBED/u_Convolution/in_valid} \
{/TESTBED/u_Convolution/in_valid_reg_1} \
{/TESTBED/u_Convolution/out_sum\[20:0\]} \
{/TESTBED/u_Convolution/out_valid} \
{/TESTBED/u_Convolution/r_out_sum\[20:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvGetSignalClose -win $_nWave1
wvZoom -win $_nWave1 0.000000 1936083.086053
wvZoom -win $_nWave1 741111.923148 988149.230864
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 )} 
wvSetRadix -win $_nWave1 -format UDec
wvZoomOut -win $_nWave1
wvSelectGroup -win $_nWave1 {G2}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_Convolution"
wvGetSignalSetScope -win $_nWave1 "/syn_XOR"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_Convolution/D2_1"
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/u_Convolution/Out_OFM\[20:0\]} \
{/TESTBED/u_Convolution/clk1} \
{/TESTBED/u_Convolution/clk2} \
{/TESTBED/u_Convolution/in_valid} \
{/TESTBED/u_Convolution/in_valid_reg_1} \
{/TESTBED/u_Convolution/out_sum\[20:0\]} \
{/TESTBED/u_Convolution/out_valid} \
{/TESTBED/u_Convolution/r_out_sum\[20:0\]} \
{/TESTBED/u_Convolution/D2_1/D} \
{/TESTBED/u_Convolution/D2_1/Q} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 9 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/u_Convolution/Out_OFM\[20:0\]} \
{/TESTBED/u_Convolution/clk1} \
{/TESTBED/u_Convolution/clk2} \
{/TESTBED/u_Convolution/in_valid} \
{/TESTBED/u_Convolution/in_valid_reg_1} \
{/TESTBED/u_Convolution/out_sum\[20:0\]} \
{/TESTBED/u_Convolution/out_valid} \
{/TESTBED/u_Convolution/r_out_sum\[20:0\]} \
{/TESTBED/u_Convolution/D2_1/D} \
{/TESTBED/u_Convolution/D2_1/Q} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 9 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvGetSignalClose -win $_nWave1
wvZoomOut -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoom -win $_nWave1 499572.478363 616860.220899
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 8 9 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 9 10 )} 
wvSetRadix -win $_nWave1 -format UDec
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 462158.732599 533157.840840
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_Convolution"
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/u_Convolution/Out_OFM\[20:0\]} \
{/TESTBED/u_Convolution/clk1} \
{/TESTBED/u_Convolution/clk2} \
{/TESTBED/u_Convolution/in_valid} \
{/TESTBED/u_Convolution/in_valid_reg_1} \
{/TESTBED/u_Convolution/out_sum\[20:0\]} \
{/TESTBED/u_Convolution/out_valid} \
{/TESTBED/u_Convolution/r_out_sum\[20:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/TESTBED/u_Convolution/out\[1:9\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/u_Convolution/Out_OFM\[20:0\]} \
{/TESTBED/u_Convolution/clk1} \
{/TESTBED/u_Convolution/clk2} \
{/TESTBED/u_Convolution/in_valid} \
{/TESTBED/u_Convolution/in_valid_reg_1} \
{/TESTBED/u_Convolution/out_sum\[20:0\]} \
{/TESTBED/u_Convolution/out_valid} \
{/TESTBED/u_Convolution/r_out_sum\[20:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/TESTBED/u_Convolution/out\[1:9\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 1)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvExpandBus -win $_nWave1 {("G2" 1)}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSelectSignal -win $_nWave1 {( "G2" 1 2 3 4 5 6 7 8 9 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 2 3 4 5 6 7 8 9 )} 
wvSetRadix -win $_nWave1 -format UDec
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_Convolution"
wvGetSignalSetScope -win $_nWave1 "/syn_XOR"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_Convolution"
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 566307.427160 675860.947295
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 544754.316225 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 554506.855109 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 522973.646050 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 533376.354193 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 522323.476791 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 534026.523452 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 544429.231596 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 534026.523452 -snap {("G1" 3)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 495341.452544 586365.148799
wvZoomOut -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_Convolution"
wvSetPosition -win $_nWave1 {("G2" 11)}
wvSetPosition -win $_nWave1 {("G2" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/u_Convolution/Out_OFM\[20:0\]} \
{/TESTBED/u_Convolution/clk1} \
{/TESTBED/u_Convolution/clk2} \
{/TESTBED/u_Convolution/in_valid} \
{/TESTBED/u_Convolution/in_valid_reg_1} \
{/TESTBED/u_Convolution/out_sum\[20:0\]} \
{/TESTBED/u_Convolution/out_valid} \
{/TESTBED/u_Convolution/r_out_sum\[20:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/TESTBED/u_Convolution/out\[1\]\[16:0\]} \
{/TESTBED/u_Convolution/out\[2\]\[16:0\]} \
{/TESTBED/u_Convolution/out\[3\]\[16:0\]} \
{/TESTBED/u_Convolution/out\[4\]\[16:0\]} \
{/TESTBED/u_Convolution/out\[5\]\[16:0\]} \
{/TESTBED/u_Convolution/out\[6\]\[16:0\]} \
{/TESTBED/u_Convolution/out\[7\]\[16:0\]} \
{/TESTBED/u_Convolution/out\[8\]\[16:0\]} \
{/TESTBED/u_Convolution/out\[9\]\[16:0\]} \
{/TESTBED/u_Convolution/A_syn} \
{/TESTBED/u_Convolution/B_syn} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 10 11 )} 
wvSetPosition -win $_nWave1 {("G2" 11)}
wvSetPosition -win $_nWave1 {("G2" 11)}
wvSetPosition -win $_nWave1 {("G2" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/u_Convolution/Out_OFM\[20:0\]} \
{/TESTBED/u_Convolution/clk1} \
{/TESTBED/u_Convolution/clk2} \
{/TESTBED/u_Convolution/in_valid} \
{/TESTBED/u_Convolution/in_valid_reg_1} \
{/TESTBED/u_Convolution/out_sum\[20:0\]} \
{/TESTBED/u_Convolution/out_valid} \
{/TESTBED/u_Convolution/r_out_sum\[20:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/TESTBED/u_Convolution/out\[1\]\[16:0\]} \
{/TESTBED/u_Convolution/out\[2\]\[16:0\]} \
{/TESTBED/u_Convolution/out\[3\]\[16:0\]} \
{/TESTBED/u_Convolution/out\[4\]\[16:0\]} \
{/TESTBED/u_Convolution/out\[5\]\[16:0\]} \
{/TESTBED/u_Convolution/out\[6\]\[16:0\]} \
{/TESTBED/u_Convolution/out\[7\]\[16:0\]} \
{/TESTBED/u_Convolution/out\[8\]\[16:0\]} \
{/TESTBED/u_Convolution/out\[9\]\[16:0\]} \
{/TESTBED/u_Convolution/A_syn} \
{/TESTBED/u_Convolution/B_syn} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 10 11 )} 
wvSetPosition -win $_nWave1 {("G2" 11)}
wvGetSignalClose -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 544850.780507 -snap {("G2" 10)}
wvSetCursor -win $_nWave1 521622.181462 -snap {("G2" 10)}
wvSetCursor -win $_nWave1 531345.781062 -snap {("G2" 10)}
wvSetCursor -win $_nWave1 543770.380551 -snap {("G2" 10)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_Convolution"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_Convolution"
wvSetPosition -win $_nWave1 {("G2" 12)}
wvSetPosition -win $_nWave1 {("G2" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/u_Convolution/Out_OFM\[20:0\]} \
{/TESTBED/u_Convolution/clk1} \
{/TESTBED/u_Convolution/clk2} \
{/TESTBED/u_Convolution/in_valid} \
{/TESTBED/u_Convolution/in_valid_reg_1} \
{/TESTBED/u_Convolution/out_sum\[20:0\]} \
{/TESTBED/u_Convolution/out_valid} \
{/TESTBED/u_Convolution/r_out_sum\[20:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/TESTBED/u_Convolution/out\[1\]\[16:0\]} \
{/TESTBED/u_Convolution/out\[2\]\[16:0\]} \
{/TESTBED/u_Convolution/out\[3\]\[16:0\]} \
{/TESTBED/u_Convolution/out\[4\]\[16:0\]} \
{/TESTBED/u_Convolution/out\[5\]\[16:0\]} \
{/TESTBED/u_Convolution/out\[6\]\[16:0\]} \
{/TESTBED/u_Convolution/out\[7\]\[16:0\]} \
{/TESTBED/u_Convolution/out\[8\]\[16:0\]} \
{/TESTBED/u_Convolution/out\[9\]\[16:0\]} \
{/TESTBED/u_Convolution/A_syn} \
{/TESTBED/u_Convolution/B_syn} \
{/TESTBED/u_Convolution/cnt_out\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSetPosition -win $_nWave1 {("G2" 12)}
wvSetPosition -win $_nWave1 {("G2" 12)}
wvSetPosition -win $_nWave1 {("G2" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/u_Convolution/Out_OFM\[20:0\]} \
{/TESTBED/u_Convolution/clk1} \
{/TESTBED/u_Convolution/clk2} \
{/TESTBED/u_Convolution/in_valid} \
{/TESTBED/u_Convolution/in_valid_reg_1} \
{/TESTBED/u_Convolution/out_sum\[20:0\]} \
{/TESTBED/u_Convolution/out_valid} \
{/TESTBED/u_Convolution/r_out_sum\[20:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/TESTBED/u_Convolution/out\[1\]\[16:0\]} \
{/TESTBED/u_Convolution/out\[2\]\[16:0\]} \
{/TESTBED/u_Convolution/out\[3\]\[16:0\]} \
{/TESTBED/u_Convolution/out\[4\]\[16:0\]} \
{/TESTBED/u_Convolution/out\[5\]\[16:0\]} \
{/TESTBED/u_Convolution/out\[6\]\[16:0\]} \
{/TESTBED/u_Convolution/out\[7\]\[16:0\]} \
{/TESTBED/u_Convolution/out\[8\]\[16:0\]} \
{/TESTBED/u_Convolution/out\[9\]\[16:0\]} \
{/TESTBED/u_Convolution/A_syn} \
{/TESTBED/u_Convolution/B_syn} \
{/TESTBED/u_Convolution/cnt_out\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSetPosition -win $_nWave1 {("G2" 12)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 587526.578751 -snap {("G2" 12)}
wvSetCursor -win $_nWave1 576722.579195 -snap {("G2" 12)}
wvSetCursor -win $_nWave1 566998.979595 -snap {("G2" 12)}
wvSetCursor -win $_nWave1 576182.379217 -snap {("G2" 12)}
wvSetCursor -win $_nWave1 599951.178240 -snap {("G2" 12)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 11)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
