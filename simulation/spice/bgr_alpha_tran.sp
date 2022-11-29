transient analysis - bgr circuit 

.lib /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.313/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include device_extracted.sp

************ BGR Circuit **************************************************************************************************
Xsky130_asc_res_xhigh_po_2p85_1_7 sky130_asc_res_xhigh_po_2p85_1_7/Rin sky130_asc_res_xhigh_po_2p85_1_6/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_8 bgr sky130_asc_res_xhigh_po_2p85_1_7/Rin VDD VSS
+ sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_9 sky130_asc_res_xhigh_po_2p85_1_9/Rin sky130_asc_res_xhigh_po_2p85_2_0/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_pfet_01v8_lvt_60_0 sky130_asc_cap_mim_m3_1_4/Cout VDD bgr VSS VDD sky130_asc_pfet_01v8_lvt_60
Xsky130_asc_pfet_01v8_lvt_60_1 sky130_asc_cap_mim_m3_1_4/Cout VDD sky130_asc_nfet_01v8_lvt_9_2/GATE
+ VSS VDD sky130_asc_pfet_01v8_lvt_60
Xsky130_asc_pfet_01v8_lvt_60_2 G_new VDD sky130_asc_cap_mim_m3_1_9/Cin
+ VSS VDD sky130_asc_pfet_01v8_lvt_60
Xsky130_asc_res_xhigh_po_2p85_1_30 sky130_asc_cap_mim_m3_1_9/Cin sky130_asc_res_xhigh_po_2p85_1_29/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_20 sky130_asc_nfet_01v8_lvt_9_2/GATE sky130_asc_res_xhigh_po_2p85_1_19/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_pnp_05v5_W3p40L3p40_7_0 sky130_asc_res_xhigh_po_2p85_1_19/Rout VSS VSS
+ VDD VSS sky130_asc_pnp_05v5_W3p40L3p40_7
Xsky130_asc_res_xhigh_po_2p85_1_10 sky130_asc_res_xhigh_po_2p85_1_10/Rin sky130_asc_res_xhigh_po_2p85_1_9/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_21 sky130_asc_res_xhigh_po_2p85_1_21/Rin sky130_asc_res_xhigh_po_2p85_2_1/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_2_0 sky130_asc_res_xhigh_po_2p85_2_0/Rin VSS VDD VSS
+ sky130_asc_res_xhigh_po_2p85_2
Xsky130_asc_res_xhigh_po_2p85_1_22 sky130_asc_res_xhigh_po_2p85_1_22/Rin sky130_asc_res_xhigh_po_2p85_1_21/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_11 sky130_asc_res_xhigh_po_2p85_1_11/Rin sky130_asc_res_xhigh_po_2p85_1_10/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_2_1 sky130_asc_res_xhigh_po_2p85_2_1/Rin VSS VDD VSS
+ sky130_asc_res_xhigh_po_2p85_2
Xsky130_asc_res_xhigh_po_2p85_1_12 sky130_asc_res_xhigh_po_2p85_1_12/Rin sky130_asc_res_xhigh_po_2p85_1_11/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_23 sky130_asc_res_xhigh_po_2p85_1_23/Rin sky130_asc_res_xhigh_po_2p85_1_22/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_13 sky130_asc_res_xhigh_po_2p85_1_13/Rin sky130_asc_res_xhigh_po_2p85_1_12/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_24 sky130_asc_res_xhigh_po_2p85_1_24/Rin sky130_asc_res_xhigh_po_2p85_1_23/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_pfet_01v8_lvt_12_0 VDD VDD sky130_asc_cap_mim_m3_1_9/Cin VSS VDD sky130_asc_pfet_01v8_lvt_12
Xsky130_asc_res_xhigh_po_2p85_1_14 sky130_asc_res_xhigh_po_2p85_1_14/Rin sky130_asc_res_xhigh_po_2p85_1_13/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_25 sky130_asc_res_xhigh_po_2p85_1_25/Rin sky130_asc_res_xhigh_po_2p85_1_24/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_pfet_01v8_lvt_12_1 sky130_asc_cap_mim_m3_1_4/Cout VDD sky130_asc_nfet_01v8_lvt_1_1/GATE
+ VSS VDD sky130_asc_pfet_01v8_lvt_12
Xsky130_asc_res_xhigh_po_2p85_1_15 sky130_asc_res_xhigh_po_2p85_1_15/Rin sky130_asc_res_xhigh_po_2p85_1_14/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_26 sky130_asc_res_xhigh_po_2p85_1_26/Rin sky130_asc_res_xhigh_po_2p85_1_25/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_16 sky130_asc_res_xhigh_po_2p85_1_16/Rin sky130_asc_res_xhigh_po_2p85_1_15/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_27 sky130_asc_res_xhigh_po_2p85_1_27/Rin sky130_asc_res_xhigh_po_2p85_1_26/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_17 sky130_asc_res_xhigh_po_2p85_1_17/Rin sky130_asc_res_xhigh_po_2p85_1_16/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_28 sky130_asc_res_xhigh_po_2p85_1_28/Rin sky130_asc_res_xhigh_po_2p85_1_27/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_nfet_01v8_lvt_9_0 porst VSS sky130_asc_cap_mim_m3_1_4/Cout VDD VSS sky130_asc_nfet_01v8_lvt_9
Xsky130_asc_res_xhigh_po_2p85_1_18 sky130_asc_nfet_01v8_lvt_9_2/GATE sky130_asc_res_xhigh_po_2p85_1_17/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_29 sky130_asc_res_xhigh_po_2p85_1_29/Rin sky130_asc_res_xhigh_po_2p85_1_28/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_pfet_01v8_lvt_6_0 sky130_asc_pfet_01v8_lvt_6_1/GATE VDD sky130_asc_cap_mim_m3_1_4/Cout
+ VSS VDD sky130_asc_pfet_01v8_lvt_6
Xsky130_asc_nfet_01v8_lvt_9_1 sky130_asc_cap_mim_m3_1_9/Cin sky130_asc_nfet_01v8_lvt_1_1/DRAIN
+ sky130_asc_cap_mim_m3_1_4/Cout VDD VSS sky130_asc_nfet_01v8_lvt_9
Xsky130_asc_pfet_01v8_lvt_6_1 sky130_asc_pfet_01v8_lvt_6_1/GATE VDD sky130_asc_pfet_01v8_lvt_6_1/GATE
+ VSS VDD sky130_asc_pfet_01v8_lvt_6
Xsky130_asc_res_xhigh_po_2p85_1_19 sky130_asc_res_xhigh_po_2p85_1_19/Rin sky130_asc_res_xhigh_po_2p85_1_19/Rout
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_pnp_05v5_W3p40L3p40_1_0 sky130_asc_cap_mim_m3_1_9/Cin VSS VSS VDD VSS
+ sky130_asc_pnp_05v5_W3p40L3p40_1
Xsky130_asc_nfet_01v8_lvt_9_2 sky130_asc_nfet_01v8_lvt_9_2/GATE sky130_asc_nfet_01v8_lvt_1_1/DRAIN
+ sky130_asc_pfet_01v8_lvt_6_1/GATE VDD VSS sky130_asc_nfet_01v8_lvt_9
Xsky130_asc_cap_mim_m3_1_0 VDD sky130_asc_cap_mim_m3_1_4/Cout VDD VSS sky130_asc_cap_mim_m3_1
Xsky130_asc_cap_mim_m3_1_1 VDD sky130_asc_cap_mim_m3_1_4/Cout VDD VSS sky130_asc_cap_mim_m3_1
Xsky130_asc_pnp_05v5_W3p40L3p40_8_0 sky130_asc_res_xhigh_po_2p85_1_19/Rout VSS VSS
+ VDD VSS sky130_asc_pnp_05v5_W3p40L3p40_8
Xsky130_asc_cap_mim_m3_1_2 VDD sky130_asc_cap_mim_m3_1_4/Cout VDD VSS sky130_asc_cap_mim_m3_1
Xsky130_asc_pnp_05v5_W3p40L3p40_8_1 sky130_asc_res_xhigh_po_2p85_1_19/Rout VSS VSS
+ VDD VSS sky130_asc_pnp_05v5_W3p40L3p40_8
Xsky130_asc_cap_mim_m3_1_3 VDD sky130_asc_cap_mim_m3_1_4/Cout VDD VSS sky130_asc_cap_mim_m3_1
Xsky130_asc_pnp_05v5_W3p40L3p40_8_2 sky130_asc_res_xhigh_po_2p85_1_19/Rout VSS VSS
+ VDD VSS sky130_asc_pnp_05v5_W3p40L3p40_8
Xsky130_asc_cap_mim_m3_1_4 VDD sky130_asc_cap_mim_m3_1_4/Cout VDD VSS sky130_asc_cap_mim_m3_1
Xsky130_asc_pnp_05v5_W3p40L3p40_8_3 sky130_asc_res_xhigh_po_2p85_1_19/Rout VSS VSS
+ VDD VSS sky130_asc_pnp_05v5_W3p40L3p40_8
Xsky130_asc_cap_mim_m3_1_5 sky130_asc_cap_mim_m3_1_9/Cin VSS VDD VSS sky130_asc_cap_mim_m3_1
Xsky130_asc_res_xhigh_po_2p85_1_0 sky130_asc_res_xhigh_po_2p85_1_0/Rin VSS VDD VSS
+ sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_cap_mim_m3_1_6 sky130_asc_cap_mim_m3_1_9/Cin VSS VDD VSS sky130_asc_cap_mim_m3_1
Xsky130_asc_nfet_01v8_lvt_1_0 sky130_asc_nfet_01v8_lvt_1_1/GATE VSS sky130_asc_nfet_01v8_lvt_1_1/GATE
+ VDD VSS sky130_asc_nfet_01v8_lvt_1
Xsky130_asc_res_xhigh_po_2p85_1_1 sky130_asc_res_xhigh_po_2p85_1_1/Rin sky130_asc_res_xhigh_po_2p85_1_0/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_cap_mim_m3_1_7 sky130_asc_cap_mim_m3_1_9/Cin VSS VDD VSS sky130_asc_cap_mim_m3_1
Xsky130_asc_nfet_01v8_lvt_1_1 sky130_asc_nfet_01v8_lvt_1_1/GATE VSS sky130_asc_nfet_01v8_lvt_1_1/DRAIN
+ VDD VSS sky130_asc_nfet_01v8_lvt_1
Xsky130_asc_res_xhigh_po_2p85_1_2 sky130_asc_res_xhigh_po_2p85_1_2/Rin sky130_asc_res_xhigh_po_2p85_1_1/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_cap_mim_m3_1_8 sky130_asc_cap_mim_m3_1_9/Cin VSS VDD VSS sky130_asc_cap_mim_m3_1
Xsky130_asc_res_xhigh_po_2p85_1_3 sky130_asc_res_xhigh_po_2p85_1_3/Rin sky130_asc_res_xhigh_po_2p85_1_2/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_cap_mim_m3_1_9 sky130_asc_cap_mim_m3_1_9/Cin VSS VDD VSS sky130_asc_cap_mim_m3_1
Xsky130_asc_res_xhigh_po_2p85_1_4 sky130_asc_res_xhigh_po_2p85_1_4/Rin sky130_asc_res_xhigh_po_2p85_1_3/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_5 sky130_asc_res_xhigh_po_2p85_1_5/Rin sky130_asc_res_xhigh_po_2p85_1_4/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_6 sky130_asc_res_xhigh_po_2p85_1_6/Rin sky130_asc_res_xhigh_po_2p85_1_5/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1
**************************************************************************************************************************

*SIN(0 0.01 100MEG 0 0 0)
v1 VDD 0 1.8
v2 VSS 0 0
v3 porst 0 pulse(0V 1.8V 0us 0us 0us 5us)

vtest  sky130_asc_cap_mim_m3_1_4/Cout  G_new DC 1e-5
.tran 10ns 30us 0us uic
.print tran v(bgr)

* .control 
*     .option temp =27
*     tran 10ns 30us 0us uic
*     run
*     write ../raw-result/bgr_tran_all.raw all
* .endc
* .print tran v(bgr)
* .print tran v(sky130_asc_cap_mim_m3_1_9/Cin)
* .print tran v(G_new)
* .print tran vtest
* .options ITL1=400 ITL4=500 SRCSTEPS=100 RELTOL=0.01 METHOD=GEAR
* .ac dec 10 0.0001 1000 
* .nodeset v(bgr)=9.648903e-01
* .op
* .print ac vm(bgr)
.END
