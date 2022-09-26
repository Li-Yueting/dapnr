* NGSPICE file created from bgr_top.ext - technology: sky130A

.subckt sky130_asc_res_xhigh_po_2p85_1 Rin Rout VPWR VGND a_2148_115#
X0 Rin a_2148_115# VGND sky130_fd_pr__res_xhigh_po w=2.85e+06u l=7.88e+06u
X1 Rout a_2148_115# VGND sky130_fd_pr__res_xhigh_po w=2.85e+06u l=7.88e+06u
C0 VPWR Rout 0.03fF
C1 a_2148_115# Rout 0.01fF
C2 Rin Rout 0.22fF
C3 a_2148_115# VPWR 0.38fF
C4 Rin VPWR 0.32fF
C5 a_2148_115# Rin 0.02fF
C6 VPWR VGND 1.84fF
C7 Rout VGND 1.42fF
C8 Rin VGND 0.89fF
C9 a_2148_115# VGND 2.65fF
.ends

.subckt sky130_asc_pfet_01v8_lvt_60 GATE SOURCE DRAIN VGND VPWR VSUBS
X0 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=5.6115e+13p pd=4.044e+08u as=5.79855e+13p ps=4.1788e+08u w=6.45e+06u l=2e+06u
X1 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X2 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X3 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X4 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X5 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X6 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X7 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X8 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X9 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X10 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X11 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X12 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X13 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X14 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X15 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X16 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X17 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X18 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X19 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X20 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X21 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X22 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X23 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X24 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X25 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X26 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X27 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X28 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X29 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X30 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X31 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X32 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X33 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X34 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X35 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X36 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X37 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X38 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X39 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X40 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X41 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X42 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X43 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X44 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X45 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X46 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X47 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X48 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X49 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X50 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X51 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X52 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X53 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X54 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X55 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X56 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X57 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X58 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X59 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
C0 VGND VPWR 0.27fF
C1 SOURCE VPWR 12.25fF
C2 GATE DRAIN 37.97fF
C3 VGND SOURCE 0.44fF
C4 GATE VPWR 18.05fF
C5 VPWR DRAIN 2.15fF
C6 GATE VGND 12.95fF
C7 VGND DRAIN 0.62fF
C8 GATE SOURCE 19.68fF
C9 SOURCE DRAIN 18.29fF
C10 VGND VSUBS 13.68fF
C11 SOURCE VSUBS -0.31fF
C12 DRAIN VSUBS 1.67fF
C13 GATE VSUBS 24.58fF
C14 VPWR VSUBS 147.85fF
.ends

.subckt sky130_asc_pnp_05v5_W3p40L3p40_7 sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_5/Emitter
+ sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_5/Collector sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_5/Base
+ sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_4/Emitter sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_4/Collector
+ sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_4/Base sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_3/Emitter
+ sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_3/Collector sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_3/Base
+ sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_2/Emitter sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_2/Collector
+ sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_2/Base sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_1/Emitter
+ sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_1/Collector sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_1/Base
+ sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_0/Emitter sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_0/Collector
+ sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_0/Base xm1/Emitter xm1/Collector xm1/Base Emitter
+ Base Collector VPWR VGND
X0 Collector Base Emitter sky130_fd_pr__pnp_05v5_W3p40L3p40
X1 Collector Base Emitter sky130_fd_pr__pnp_05v5_W3p40L3p40
X2 Collector Base Emitter sky130_fd_pr__pnp_05v5_W3p40L3p40
X3 Collector Base Emitter sky130_fd_pr__pnp_05v5_W3p40L3p40
X4 Collector Base Emitter sky130_fd_pr__pnp_05v5_W3p40L3p40
X5 Collector Base Emitter sky130_fd_pr__pnp_05v5_W3p40L3p40
X6 Collector Base Emitter sky130_fd_pr__pnp_05v5_W3p40L3p40
C0 Base VPWR 0.26fF
C1 VGND Emitter 2.20fF
C2 Base VGND 0.68fF
C3 Base Emitter 19.91fF
C4 VPWR Emitter 0.53fF
C5 VGND Collector 7.54fF
C6 VPWR Collector 8.99fF
C7 Emitter Collector 2.56fF
C8 Base Collector 20.68fF
.ends

.subckt sky130_asc_res_xhigh_po_2p85_2 Rin Rout VPWR a_2723_115# VGND
X0 Rout a_2723_115# VGND sky130_fd_pr__res_xhigh_po w=2.85e+06u l=1.075e+07u
X1 Rin a_2723_115# VGND sky130_fd_pr__res_xhigh_po w=2.85e+06u l=1.075e+07u
C0 Rin Rout 0.22fF
C1 VPWR Rin 0.32fF
C2 VPWR a_2723_115# 0.38fF
C3 VPWR Rout 0.03fF
C4 VPWR VGND 2.29fF
C5 Rout VGND 1.43fF
C6 Rin VGND 0.89fF
C7 a_2723_115# VGND 2.67fF
.ends

.subckt sky130_asc_pfet_01v8_lvt_12 GATE SOURCE DRAIN VGND VPWR VSUBS
X0 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=1.1223e+13p pd=8.088e+07u as=1.30935e+13p ps=9.436e+07u w=6.45e+06u l=2e+06u
X1 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X2 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X3 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X4 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X5 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X6 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X7 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X8 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X9 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X10 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X11 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
C0 SOURCE GATE 3.72fF
C1 DRAIN VGND 0.14fF
C2 DRAIN VPWR 0.68fF
C3 VGND VPWR 0.06fF
C4 DRAIN SOURCE 3.66fF
C5 SOURCE VGND 0.09fF
C6 SOURCE VPWR 2.53fF
C7 DRAIN GATE 7.57fF
C8 VGND GATE 2.63fF
C9 VPWR GATE 3.74fF
C10 VGND VSUBS 2.89fF
C11 SOURCE VSUBS -0.02fF
C12 DRAIN VSUBS 1.10fF
C13 GATE VSUBS 5.10fF
C14 VPWR VSUBS 30.62fF
.ends

.subckt sky130_asc_nfet_01v8_lvt_9 GATE SOURCE DRAIN VPWR VGND
X0 SOURCE GATE DRAIN VGND sky130_fd_pr__nfet_01v8_lvt ad=5.8e+12p pd=4.29e+07u as=5.8e+12p ps=4.29e+07u w=4e+06u l=2e+06u
X1 DRAIN GATE SOURCE VGND sky130_fd_pr__nfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=4e+06u l=2e+06u
X2 SOURCE GATE DRAIN VGND sky130_fd_pr__nfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=4e+06u l=2e+06u
X3 DRAIN GATE SOURCE VGND sky130_fd_pr__nfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=4e+06u l=2e+06u
X4 SOURCE GATE DRAIN VGND sky130_fd_pr__nfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=4e+06u l=2e+06u
X5 DRAIN GATE SOURCE VGND sky130_fd_pr__nfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=4e+06u l=2e+06u
X6 SOURCE GATE DRAIN VGND sky130_fd_pr__nfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=4e+06u l=2e+06u
X7 SOURCE GATE DRAIN VGND sky130_fd_pr__nfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=4e+06u l=2e+06u
X8 DRAIN GATE SOURCE VGND sky130_fd_pr__nfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=4e+06u l=2e+06u
C0 SOURCE VPWR 1.27fF
C1 VPWR GATE 0.33fF
C2 SOURCE DRAIN 1.74fF
C3 DRAIN GATE 3.20fF
C4 DRAIN VPWR 0.09fF
C5 SOURCE GATE 1.81fF
C6 VPWR VGND 2.36fF
C7 SOURCE VGND 1.57fF
C8 DRAIN VGND 1.37fF
C9 GATE VGND 8.34fF
.ends

.subckt sky130_asc_pfet_01v8_lvt_6 GATE SOURCE DRAIN VGND VPWR VSUBS
X0 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=5.6115e+12p pd=4.044e+07u as=7.482e+12p ps=5.392e+07u w=6.45e+06u l=2e+06u
X1 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X2 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X3 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X4 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X5 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
C0 VGND GATE 1.34fF
C1 DRAIN SOURCE 1.83fF
C2 VGND VPWR 0.04fF
C3 DRAIN GATE 3.77fF
C4 GATE SOURCE 1.72fF
C5 DRAIN VPWR 0.50fF
C6 VPWR SOURCE 1.34fF
C7 DRAIN VGND 0.08fF
C8 VGND SOURCE 0.04fF
C9 GATE VPWR 1.95fF
C10 VGND VSUBS 1.54fF
C11 SOURCE VSUBS 0.02fF
C12 DRAIN VSUBS 1.03fF
C13 GATE VSUBS 2.67fF
C14 VPWR VSUBS 15.96fF
.ends

.subckt sky130_asc_pnp_05v5_W3p40L3p40_1 xm1/Emitter xm1/Collector xm1/Base Emitter
+ Base Collector VPWR VGND
X0 Collector Base Emitter sky130_fd_pr__pnp_05v5_W3p40L3p40
C0 VGND Base 0.05fF
C1 VPWR Emitter 0.17fF
C2 Base Emitter 1.75fF
C3 Base VPWR 0.05fF
C4 VGND Emitter 0.17fF
C5 VGND Collector 1.07fF
C6 VPWR Collector 1.07fF
C7 Emitter Collector -0.06fF
C8 Base Collector 1.87fF
.ends

.subckt sky130_asc_cap_mim_m3_1 Cin Cout VPWR VGND VSUBS
X0 Cout Cin sky130_fd_pr__cap_mim_m3_1 l=2e+06u w=2e+06u
X1 Cout Cin sky130_fd_pr__cap_mim_m3_1 l=2e+06u w=2e+06u
X2 Cout Cin sky130_fd_pr__cap_mim_m3_1 l=2e+06u w=2e+06u
X3 Cout Cin sky130_fd_pr__cap_mim_m3_1 l=2e+06u w=2e+06u
X4 Cout Cin sky130_fd_pr__cap_mim_m3_1 l=2e+06u w=2e+06u
X5 Cout Cin sky130_fd_pr__cap_mim_m3_1 l=2e+06u w=2e+06u
X6 Cout Cin sky130_fd_pr__cap_mim_m3_1 l=2e+06u w=2e+06u
X7 Cout Cin sky130_fd_pr__cap_mim_m3_1 l=2e+06u w=2e+06u
X8 Cout Cin sky130_fd_pr__cap_mim_m3_1 l=2e+06u w=2e+06u
X9 Cout Cin sky130_fd_pr__cap_mim_m3_1 l=2e+06u w=2e+06u
X10 Cout Cin sky130_fd_pr__cap_mim_m3_1 l=2e+06u w=2e+06u
X11 Cout Cin sky130_fd_pr__cap_mim_m3_1 l=2e+06u w=2e+06u
X12 Cout Cin sky130_fd_pr__cap_mim_m3_1 l=2e+06u w=2e+06u
X13 Cout Cin sky130_fd_pr__cap_mim_m3_1 l=2e+06u w=2e+06u
X14 Cout Cin sky130_fd_pr__cap_mim_m3_1 l=2e+06u w=2e+06u
X15 Cout Cin sky130_fd_pr__cap_mim_m3_1 l=2e+06u w=2e+06u
X16 Cout Cin sky130_fd_pr__cap_mim_m3_1 l=2e+06u w=2e+06u
X17 Cout Cin sky130_fd_pr__cap_mim_m3_1 l=2e+06u w=2e+06u
X18 Cout Cin sky130_fd_pr__cap_mim_m3_1 l=2e+06u w=2e+06u
X19 Cout Cin sky130_fd_pr__cap_mim_m3_1 l=2e+06u w=2e+06u
C0 VGND Cout 0.68fF
C1 Cout VPWR 0.36fF
C2 VGND Cin 1.17fF
C3 Cin VPWR 1.68fF
C4 Cout Cin 17.04fF
C5 Cout VSUBS 2.42fF
C6 Cin VSUBS 5.27fF
C7 VGND VSUBS 6.57fF
C8 VPWR VSUBS 6.57fF
.ends

.subckt sky130_asc_pnp_05v5_W3p40L3p40_8 sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Emitter
+ sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Collector sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Base
+ sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_5/Emitter sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_5/Collector
+ sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_5/Base sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_4/Emitter
+ sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_4/Collector sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_4/Base
+ sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_3/Emitter sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_3/Collector
+ sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_3/Base sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_2/Emitter
+ sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_2/Collector sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_2/Base
+ sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_1/Emitter sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_1/Collector
+ sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_1/Base sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_0/Emitter
+ sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_0/Collector sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_0/Base
+ xm1/Emitter xm1/Collector xm1/Base Emitter Base Collector VPWR VGND
X0 Collector Base Emitter sky130_fd_pr__pnp_05v5_W3p40L3p40
X1 Collector Base Emitter sky130_fd_pr__pnp_05v5_W3p40L3p40
X2 Collector Base Emitter sky130_fd_pr__pnp_05v5_W3p40L3p40
X3 Collector Base Emitter sky130_fd_pr__pnp_05v5_W3p40L3p40
X4 Collector Base Emitter sky130_fd_pr__pnp_05v5_W3p40L3p40
X5 Collector Base Emitter sky130_fd_pr__pnp_05v5_W3p40L3p40
X6 Collector Base Emitter sky130_fd_pr__pnp_05v5_W3p40L3p40
X7 Collector Base Emitter sky130_fd_pr__pnp_05v5_W3p40L3p40
C0 Emitter VGND 2.53fF
C1 Base VPWR 0.29fF
C2 Base Emitter 22.84fF
C3 Emitter VPWR 0.61fF
C4 Base VGND 0.77fF
C5 VGND Collector 8.60fF
C6 VPWR Collector 10.27fF
C7 Emitter Collector 2.98fF
C8 Base Collector 23.69fF
.ends

.subckt sky130_asc_nfet_01v8_lvt_1 GATE SOURCE DRAIN VPWR VGND
X0 SOURCE GATE DRAIN VGND sky130_fd_pr__nfet_01v8_lvt ad=1.16e+12p pd=8.58e+06u as=1.16e+12p ps=8.58e+06u w=4e+06u l=2e+06u
C0 GATE VPWR 0.04fF
C1 DRAIN VPWR 0.01fF
C2 SOURCE VPWR 0.16fF
C3 DRAIN GATE 0.24fF
C4 GATE SOURCE 0.14fF
C5 DRAIN SOURCE 0.20fF
C6 VPWR VGND 0.41fF
C7 SOURCE VGND 0.63fF
C8 DRAIN VGND 0.60fF
C9 GATE VGND 1.30fF
.ends

.subckt bgr_top porst vbg VSS VDD
Xsky130_asc_res_xhigh_po_2p85_1_7 sky130_asc_res_xhigh_po_2p85_1_7/Rin sky130_asc_res_xhigh_po_2p85_1_6/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_7/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_8 vbg sky130_asc_res_xhigh_po_2p85_1_7/Rin VDD VSS
+ sky130_asc_res_xhigh_po_2p85_1_8/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_9 sky130_asc_res_xhigh_po_2p85_1_9/Rin sky130_asc_res_xhigh_po_2p85_2_0/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_9/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_pfet_01v8_lvt_60_0 sky130_asc_cap_mim_m3_1_4/Cout VDD vbg VSS VDD VSS
+ sky130_asc_pfet_01v8_lvt_60
Xsky130_asc_pfet_01v8_lvt_60_1 sky130_asc_cap_mim_m3_1_4/Cout VDD sky130_asc_nfet_01v8_lvt_9_2/GATE
+ VSS VDD VSS sky130_asc_pfet_01v8_lvt_60
Xsky130_asc_pfet_01v8_lvt_60_2 sky130_asc_cap_mim_m3_1_4/Cout VDD sky130_asc_cap_mim_m3_1_9/Cin
+ VSS VDD VSS sky130_asc_pfet_01v8_lvt_60
Xsky130_asc_res_xhigh_po_2p85_1_30 sky130_asc_cap_mim_m3_1_9/Cin sky130_asc_res_xhigh_po_2p85_1_29/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_30/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_20 sky130_asc_nfet_01v8_lvt_9_2/GATE sky130_asc_res_xhigh_po_2p85_1_19/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_20/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_pnp_05v5_W3p40L3p40_7_0 sky130_asc_pnp_05v5_W3p40L3p40_7_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_5/Emitter
+ sky130_asc_pnp_05v5_W3p40L3p40_7_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_5/Collector
+ sky130_asc_pnp_05v5_W3p40L3p40_7_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_5/Base sky130_asc_pnp_05v5_W3p40L3p40_7_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_4/Emitter
+ sky130_asc_pnp_05v5_W3p40L3p40_7_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_4/Collector
+ sky130_asc_pnp_05v5_W3p40L3p40_7_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_4/Base sky130_asc_pnp_05v5_W3p40L3p40_7_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_3/Emitter
+ sky130_asc_pnp_05v5_W3p40L3p40_7_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_3/Collector
+ sky130_asc_pnp_05v5_W3p40L3p40_7_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_3/Base sky130_asc_res_xhigh_po_2p85_1_19/Rout
+ sky130_asc_pnp_05v5_W3p40L3p40_7_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_2/Collector
+ sky130_asc_pnp_05v5_W3p40L3p40_7_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_2/Base sky130_asc_res_xhigh_po_2p85_1_19/Rout
+ VSS VSS sky130_asc_res_xhigh_po_2p85_1_19/Rout VSS VSS sky130_asc_res_xhigh_po_2p85_1_19/Rout
+ VSS VSS sky130_asc_res_xhigh_po_2p85_1_19/Rout sky130_asc_pnp_05v5_W3p40L3p40_7_0/Base
+ VSS VDD VSS sky130_asc_pnp_05v5_W3p40L3p40_7
Xsky130_asc_res_xhigh_po_2p85_1_10 sky130_asc_res_xhigh_po_2p85_1_10/Rin sky130_asc_res_xhigh_po_2p85_1_9/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_10/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_21 sky130_asc_res_xhigh_po_2p85_1_21/Rin sky130_asc_res_xhigh_po_2p85_2_1/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_21/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_2_0 sky130_asc_res_xhigh_po_2p85_2_0/Rin VSS VDD sky130_asc_res_xhigh_po_2p85_2_0/a_2723_115#
+ VSS sky130_asc_res_xhigh_po_2p85_2
Xsky130_asc_res_xhigh_po_2p85_1_22 sky130_asc_res_xhigh_po_2p85_1_22/Rin sky130_asc_res_xhigh_po_2p85_1_21/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_22/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_11 sky130_asc_res_xhigh_po_2p85_1_11/Rin sky130_asc_res_xhigh_po_2p85_1_10/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_11/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_2_1 sky130_asc_res_xhigh_po_2p85_2_1/Rin VSS VDD sky130_asc_res_xhigh_po_2p85_2_1/a_2723_115#
+ VSS sky130_asc_res_xhigh_po_2p85_2
Xsky130_asc_res_xhigh_po_2p85_1_12 sky130_asc_res_xhigh_po_2p85_1_12/Rin sky130_asc_res_xhigh_po_2p85_1_11/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_12/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_23 sky130_asc_res_xhigh_po_2p85_1_23/Rin sky130_asc_res_xhigh_po_2p85_1_22/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_23/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_13 sky130_asc_res_xhigh_po_2p85_1_13/Rin sky130_asc_res_xhigh_po_2p85_1_12/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_13/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_24 sky130_asc_res_xhigh_po_2p85_1_24/Rin sky130_asc_res_xhigh_po_2p85_1_23/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_24/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_pfet_01v8_lvt_12_0 VDD VDD sky130_asc_cap_mim_m3_1_9/Cin VSS VDD VSS sky130_asc_pfet_01v8_lvt_12
Xsky130_asc_res_xhigh_po_2p85_1_14 sky130_asc_res_xhigh_po_2p85_1_14/Rin sky130_asc_res_xhigh_po_2p85_1_13/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_14/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_25 sky130_asc_res_xhigh_po_2p85_1_25/Rin sky130_asc_res_xhigh_po_2p85_1_24/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_25/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_pfet_01v8_lvt_12_1 sky130_asc_cap_mim_m3_1_4/Cout VDD sky130_asc_nfet_01v8_lvt_1_1/GATE
+ VSS VDD VSS sky130_asc_pfet_01v8_lvt_12
Xsky130_asc_res_xhigh_po_2p85_1_15 sky130_asc_res_xhigh_po_2p85_1_15/Rin sky130_asc_res_xhigh_po_2p85_1_14/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_15/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_26 sky130_asc_res_xhigh_po_2p85_1_26/Rin sky130_asc_res_xhigh_po_2p85_1_25/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_26/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_16 sky130_asc_res_xhigh_po_2p85_1_16/Rin sky130_asc_res_xhigh_po_2p85_1_15/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_16/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_27 sky130_asc_res_xhigh_po_2p85_1_27/Rin sky130_asc_res_xhigh_po_2p85_1_26/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_27/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_17 sky130_asc_res_xhigh_po_2p85_1_17/Rin sky130_asc_res_xhigh_po_2p85_1_16/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_17/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_28 sky130_asc_res_xhigh_po_2p85_1_28/Rin sky130_asc_res_xhigh_po_2p85_1_27/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_28/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_nfet_01v8_lvt_9_0 porst VSS sky130_asc_cap_mim_m3_1_4/Cout VDD VSS sky130_asc_nfet_01v8_lvt_9
Xsky130_asc_res_xhigh_po_2p85_1_18 sky130_asc_nfet_01v8_lvt_9_2/GATE sky130_asc_res_xhigh_po_2p85_1_17/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_18/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_29 sky130_asc_res_xhigh_po_2p85_1_29/Rin sky130_asc_res_xhigh_po_2p85_1_28/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_29/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_pfet_01v8_lvt_6_0 sky130_asc_pfet_01v8_lvt_6_1/GATE VDD sky130_asc_cap_mim_m3_1_4/Cout
+ VSS VDD VSS sky130_asc_pfet_01v8_lvt_6
Xsky130_asc_nfet_01v8_lvt_9_1 sky130_asc_cap_mim_m3_1_9/Cin sky130_asc_nfet_01v8_lvt_1_1/DRAIN
+ sky130_asc_cap_mim_m3_1_4/Cout VDD VSS sky130_asc_nfet_01v8_lvt_9
Xsky130_asc_pfet_01v8_lvt_6_1 sky130_asc_pfet_01v8_lvt_6_1/GATE VDD sky130_asc_pfet_01v8_lvt_6_1/GATE
+ VSS VDD VSS sky130_asc_pfet_01v8_lvt_6
Xsky130_asc_res_xhigh_po_2p85_1_19 sky130_asc_res_xhigh_po_2p85_1_19/Rin sky130_asc_res_xhigh_po_2p85_1_19/Rout
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_19/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_pnp_05v5_W3p40L3p40_1_0 sky130_asc_cap_mim_m3_1_9/Cin VSS VSS sky130_asc_cap_mim_m3_1_9/Cin
+ VSS VSS VDD VSS sky130_asc_pnp_05v5_W3p40L3p40_1
Xsky130_asc_nfet_01v8_lvt_9_2 sky130_asc_nfet_01v8_lvt_9_2/GATE sky130_asc_nfet_01v8_lvt_1_1/DRAIN
+ sky130_asc_pfet_01v8_lvt_6_1/GATE VDD VSS sky130_asc_nfet_01v8_lvt_9
Xsky130_asc_cap_mim_m3_1_0 VDD sky130_asc_cap_mim_m3_1_4/Cout VDD VSS VSS sky130_asc_cap_mim_m3_1
Xsky130_asc_cap_mim_m3_1_1 VDD sky130_asc_cap_mim_m3_1_4/Cout VDD VSS VSS sky130_asc_cap_mim_m3_1
Xsky130_asc_pnp_05v5_W3p40L3p40_8_0 sky130_asc_pnp_05v5_W3p40L3p40_8_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Emitter
+ sky130_asc_pnp_05v5_W3p40L3p40_8_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Base sky130_asc_pnp_05v5_W3p40L3p40_8_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Base
+ sky130_asc_pnp_05v5_W3p40L3p40_8_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_5/Emitter
+ sky130_asc_pnp_05v5_W3p40L3p40_8_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Base sky130_asc_pnp_05v5_W3p40L3p40_8_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Base
+ sky130_asc_pnp_05v5_W3p40L3p40_8_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_4/Emitter
+ sky130_asc_pnp_05v5_W3p40L3p40_8_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Base sky130_asc_pnp_05v5_W3p40L3p40_8_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Base
+ sky130_asc_res_xhigh_po_2p85_1_19/Rout sky130_asc_pnp_05v5_W3p40L3p40_8_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_3/Collector
+ sky130_asc_pnp_05v5_W3p40L3p40_8_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_3/Base sky130_asc_res_xhigh_po_2p85_1_19/Rout
+ sky130_asc_pnp_05v5_W3p40L3p40_8_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_2/Collector
+ sky130_asc_pnp_05v5_W3p40L3p40_8_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_2/Base sky130_asc_res_xhigh_po_2p85_1_19/Rout
+ sky130_asc_pnp_05v5_W3p40L3p40_8_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_1/Collector
+ VSS sky130_asc_res_xhigh_po_2p85_1_19/Rout sky130_asc_pnp_05v5_W3p40L3p40_8_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_0/Collector
+ VSS sky130_asc_res_xhigh_po_2p85_1_19/Rout sky130_asc_pnp_05v5_W3p40L3p40_8_0/xm1/Collector
+ VSS sky130_asc_pnp_05v5_W3p40L3p40_8_0/Emitter sky130_asc_pnp_05v5_W3p40L3p40_8_0/Base
+ VSS VDD VSS sky130_asc_pnp_05v5_W3p40L3p40_8
Xsky130_asc_cap_mim_m3_1_2 VDD sky130_asc_cap_mim_m3_1_4/Cout VDD VSS VSS sky130_asc_cap_mim_m3_1
Xsky130_asc_pnp_05v5_W3p40L3p40_8_1 sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Emitter
+ sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Collector
+ sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Base sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_5/Emitter
+ sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_5/Collector
+ sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_5/Base sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_4/Emitter
+ sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_4/Collector
+ sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_4/Base sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_3/Emitter
+ sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_3/Collector
+ sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_3/Base sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_2/Emitter
+ sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_2/Collector
+ sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_2/Base sky130_asc_res_xhigh_po_2p85_1_19/Rout
+ VSS VSS sky130_asc_res_xhigh_po_2p85_1_19/Rout VSS VSS sky130_asc_res_xhigh_po_2p85_1_19/Rout
+ VSS VSS sky130_asc_pnp_05v5_W3p40L3p40_8_1/Emitter sky130_asc_pnp_05v5_W3p40L3p40_8_1/Base
+ VSS VDD VSS sky130_asc_pnp_05v5_W3p40L3p40_8
Xsky130_asc_cap_mim_m3_1_3 VDD sky130_asc_cap_mim_m3_1_4/Cout VDD VSS VSS sky130_asc_cap_mim_m3_1
Xsky130_asc_pnp_05v5_W3p40L3p40_8_2 sky130_asc_pnp_05v5_W3p40L3p40_8_2/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Emitter
+ sky130_asc_pnp_05v5_W3p40L3p40_8_2/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Collector
+ sky130_asc_pnp_05v5_W3p40L3p40_8_2/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Base sky130_asc_pnp_05v5_W3p40L3p40_8_2/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_5/Emitter
+ sky130_asc_pnp_05v5_W3p40L3p40_8_2/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_5/Collector
+ sky130_asc_pnp_05v5_W3p40L3p40_8_2/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_5/Base sky130_asc_pnp_05v5_W3p40L3p40_8_2/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_4/Emitter
+ sky130_asc_pnp_05v5_W3p40L3p40_8_2/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_4/Collector
+ sky130_asc_pnp_05v5_W3p40L3p40_8_2/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_4/Base sky130_asc_pnp_05v5_W3p40L3p40_8_2/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_3/Emitter
+ sky130_asc_pnp_05v5_W3p40L3p40_8_2/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_3/Collector
+ sky130_asc_pnp_05v5_W3p40L3p40_8_2/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_3/Base sky130_asc_pnp_05v5_W3p40L3p40_8_2/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_2/Emitter
+ sky130_asc_pnp_05v5_W3p40L3p40_8_2/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_2/Collector
+ sky130_asc_pnp_05v5_W3p40L3p40_8_2/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_2/Base sky130_asc_pnp_05v5_W3p40L3p40_8_3/Emitter
+ sky130_asc_pnp_05v5_W3p40L3p40_8_3/Base sky130_asc_pnp_05v5_W3p40L3p40_8_3/Base
+ sky130_asc_pnp_05v5_W3p40L3p40_8_3/Emitter sky130_asc_pnp_05v5_W3p40L3p40_8_3/Base
+ sky130_asc_pnp_05v5_W3p40L3p40_8_3/Base sky130_asc_pnp_05v5_W3p40L3p40_8_3/Emitter
+ sky130_asc_pnp_05v5_W3p40L3p40_8_3/Base sky130_asc_pnp_05v5_W3p40L3p40_8_3/Base
+ sky130_asc_pnp_05v5_W3p40L3p40_8_2/Emitter sky130_asc_pnp_05v5_W3p40L3p40_8_2/Base
+ VSS VDD VSS sky130_asc_pnp_05v5_W3p40L3p40_8
Xsky130_asc_cap_mim_m3_1_4 VDD sky130_asc_cap_mim_m3_1_4/Cout VDD VSS VSS sky130_asc_cap_mim_m3_1
Xsky130_asc_pnp_05v5_W3p40L3p40_8_3 sky130_asc_pnp_05v5_W3p40L3p40_8_3/Emitter sky130_asc_pnp_05v5_W3p40L3p40_8_3/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Collector
+ sky130_asc_pnp_05v5_W3p40L3p40_8_3/Base sky130_asc_pnp_05v5_W3p40L3p40_8_3/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_5/Emitter
+ sky130_asc_pnp_05v5_W3p40L3p40_8_3/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_5/Collector
+ sky130_asc_pnp_05v5_W3p40L3p40_8_3/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_5/Base sky130_asc_pnp_05v5_W3p40L3p40_8_3/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_4/Emitter
+ sky130_asc_pnp_05v5_W3p40L3p40_8_3/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_4/Collector
+ sky130_asc_pnp_05v5_W3p40L3p40_8_3/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_4/Base sky130_asc_res_xhigh_po_2p85_1_19/Rout
+ sky130_asc_pnp_05v5_W3p40L3p40_8_3/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_3/Collector
+ sky130_asc_pnp_05v5_W3p40L3p40_8_3/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_3/Base sky130_asc_res_xhigh_po_2p85_1_19/Rout
+ sky130_asc_pnp_05v5_W3p40L3p40_8_3/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_2/Collector
+ sky130_asc_pnp_05v5_W3p40L3p40_8_3/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_2/Base sky130_asc_res_xhigh_po_2p85_1_19/Rout
+ VSS VSS sky130_asc_res_xhigh_po_2p85_1_19/Rout VSS VSS sky130_asc_pnp_05v5_W3p40L3p40_8_3/xm1/Emitter
+ VSS VSS sky130_asc_pnp_05v5_W3p40L3p40_8_3/Emitter sky130_asc_pnp_05v5_W3p40L3p40_8_3/Base
+ VSS VDD VSS sky130_asc_pnp_05v5_W3p40L3p40_8
Xsky130_asc_cap_mim_m3_1_5 sky130_asc_cap_mim_m3_1_9/Cin VSS VDD VSS VSS sky130_asc_cap_mim_m3_1
Xsky130_asc_res_xhigh_po_2p85_1_0 sky130_asc_res_xhigh_po_2p85_1_0/Rin VSS VDD VSS
+ sky130_asc_res_xhigh_po_2p85_1_0/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_cap_mim_m3_1_6 sky130_asc_cap_mim_m3_1_9/Cin VSS VDD VSS VSS sky130_asc_cap_mim_m3_1
Xsky130_asc_nfet_01v8_lvt_1_0 sky130_asc_nfet_01v8_lvt_1_1/GATE VSS sky130_asc_nfet_01v8_lvt_1_1/GATE
+ VDD VSS sky130_asc_nfet_01v8_lvt_1
Xsky130_asc_res_xhigh_po_2p85_1_1 sky130_asc_res_xhigh_po_2p85_1_1/Rin sky130_asc_res_xhigh_po_2p85_1_0/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_1/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_cap_mim_m3_1_7 sky130_asc_cap_mim_m3_1_9/Cin VSS VDD VSS VSS sky130_asc_cap_mim_m3_1
Xsky130_asc_nfet_01v8_lvt_1_1 sky130_asc_nfet_01v8_lvt_1_1/GATE VSS sky130_asc_nfet_01v8_lvt_1_1/DRAIN
+ VDD VSS sky130_asc_nfet_01v8_lvt_1
Xsky130_asc_res_xhigh_po_2p85_1_2 sky130_asc_res_xhigh_po_2p85_1_2/Rin sky130_asc_res_xhigh_po_2p85_1_1/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_2/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_cap_mim_m3_1_8 sky130_asc_cap_mim_m3_1_9/Cin VSS VDD VSS VSS sky130_asc_cap_mim_m3_1
Xsky130_asc_res_xhigh_po_2p85_1_3 sky130_asc_res_xhigh_po_2p85_1_3/Rin sky130_asc_res_xhigh_po_2p85_1_2/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_3/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_cap_mim_m3_1_9 sky130_asc_cap_mim_m3_1_9/Cin VSS VDD VSS VSS sky130_asc_cap_mim_m3_1
Xsky130_asc_res_xhigh_po_2p85_1_4 sky130_asc_res_xhigh_po_2p85_1_4/Rin sky130_asc_res_xhigh_po_2p85_1_3/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_4/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_5 sky130_asc_res_xhigh_po_2p85_1_5/Rin sky130_asc_res_xhigh_po_2p85_1_4/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_5/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_6 sky130_asc_res_xhigh_po_2p85_1_6/Rin sky130_asc_res_xhigh_po_2p85_1_5/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_6/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
C0 VSS sky130_asc_res_xhigh_po_2p85_1_25/a_2148_115# 0.12fF
C1 sky130_asc_res_xhigh_po_2p85_1_14/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_9/Rin 0.43fF
C2 sky130_asc_res_xhigh_po_2p85_1_24/Rin sky130_asc_res_xhigh_po_2p85_1_25/Rin 0.01fF
C3 sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_5/Emitter sky130_asc_nfet_01v8_lvt_1_1/DRAIN 0.75fF
C4 sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_3/Base VDD -0.01fF
C5 sky130_asc_pfet_01v8_lvt_6_1/GATE sky130_asc_pnp_05v5_W3p40L3p40_8_2/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_2/Emitter 0.00fF
C6 sky130_asc_res_xhigh_po_2p85_1_17/Rin sky130_asc_res_xhigh_po_2p85_1_15/Rin 0.05fF
C7 sky130_asc_pnp_05v5_W3p40L3p40_8_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Base sky130_asc_pnp_05v5_W3p40L3p40_8_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Emitter 0.00fF
C8 sky130_asc_res_xhigh_po_2p85_1_14/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_14/Rin 0.52fF
C9 sky130_asc_res_xhigh_po_2p85_1_10/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_9/Rin -0.00fF
C10 sky130_asc_res_xhigh_po_2p85_1_11/Rin sky130_asc_res_xhigh_po_2p85_1_10/Rin 0.78fF
C11 sky130_asc_pnp_05v5_W3p40L3p40_8_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_1/Collector sky130_asc_res_xhigh_po_2p85_1_19/a_2148_115# 0.00fF
C12 sky130_asc_res_xhigh_po_2p85_1_28/Rin sky130_asc_res_xhigh_po_2p85_1_11/a_2148_115# 0.31fF
C13 sky130_asc_res_xhigh_po_2p85_1_3/Rin sky130_asc_res_xhigh_po_2p85_1_2/a_2148_115# 0.28fF
C14 sky130_asc_res_xhigh_po_2p85_1_16/Rin sky130_asc_res_xhigh_po_2p85_1_16/a_2148_115# 0.02fF
C15 sky130_asc_pfet_01v8_lvt_6_1/GATE sky130_asc_pnp_05v5_W3p40L3p40_8_2/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_2/Base 0.00fF
C16 VSS sky130_asc_res_xhigh_po_2p85_2_0/Rin 0.70fF
C17 sky130_asc_res_xhigh_po_2p85_2_1/Rin VDD 1.85fF
C18 VSS sky130_asc_res_xhigh_po_2p85_1_0/Rin 0.71fF
C19 VDD sky130_asc_cap_mim_m3_1_9/Cin 2.21fF
C20 sky130_asc_res_xhigh_po_2p85_1_26/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_25/Rin 0.70fF
C21 sky130_asc_res_xhigh_po_2p85_1_17/Rin sky130_asc_nfet_01v8_lvt_1_1/DRAIN 0.07fF
C22 VSS sky130_asc_res_xhigh_po_2p85_1_18/a_2148_115# 0.17fF
C23 VDD sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_4/Collector -0.23fF
C24 sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_5/Collector VDD -0.23fF
C25 VDD sky130_asc_res_xhigh_po_2p85_1_4/a_2148_115# 0.15fF
C26 sky130_asc_res_xhigh_po_2p85_1_9/Rin VDD -0.02fF
C27 sky130_asc_res_xhigh_po_2p85_1_5/Rin sky130_asc_res_xhigh_po_2p85_1_6/a_2148_115# 0.69fF
C28 sky130_asc_res_xhigh_po_2p85_1_25/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_1/Rin 0.47fF
C29 sky130_asc_res_xhigh_po_2p85_2_0/Rin sky130_asc_res_xhigh_po_2p85_1_10/Rin 0.01fF
C30 sky130_asc_res_xhigh_po_2p85_1_16/Rin sky130_asc_res_xhigh_po_2p85_1_15/Rin 1.42fF
C31 sky130_asc_res_xhigh_po_2p85_1_14/Rin VDD 2.72fF
C32 sky130_asc_pnp_05v5_W3p40L3p40_8_2/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_5/Base sky130_asc_cap_mim_m3_1_9/Cin 0.30fF
C33 VDD sky130_asc_res_xhigh_po_2p85_1_21/Rin 0.12fF
C34 sky130_asc_res_xhigh_po_2p85_1_29/Rin sky130_asc_cap_mim_m3_1_9/Cin 1.28fF
C35 sky130_asc_nfet_01v8_lvt_1_1/DRAIN sky130_asc_pnp_05v5_W3p40L3p40_7_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_3/Base 0.00fF
C36 sky130_asc_pfet_01v8_lvt_6_1/GATE sky130_asc_cap_mim_m3_1_9/Cin 0.54fF
C37 sky130_asc_pnp_05v5_W3p40L3p40_8_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Base sky130_asc_pnp_05v5_W3p40L3p40_8_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_4/Emitter 0.00fF
C38 VSS sky130_asc_res_xhigh_po_2p85_1_17/a_2148_115# 0.02fF
C39 sky130_asc_res_xhigh_po_2p85_1_19/Rout sky130_asc_pnp_05v5_W3p40L3p40_8_3/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_2/Base 0.00fF
C40 sky130_asc_res_xhigh_po_2p85_1_0/Rin sky130_asc_res_xhigh_po_2p85_1_4/Rin 0.20fF
C41 sky130_asc_res_xhigh_po_2p85_1_11/Rin sky130_asc_res_xhigh_po_2p85_1_12/a_2148_115# 0.16fF
C42 sky130_asc_pnp_05v5_W3p40L3p40_8_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_1/Collector VSS 0.00fF
C43 sky130_asc_res_xhigh_po_2p85_1_12/Rin sky130_asc_res_xhigh_po_2p85_1_9/a_2148_115# 0.44fF
C44 sky130_asc_res_xhigh_po_2p85_1_0/Rin sky130_asc_res_xhigh_po_2p85_1_1/Rin 0.20fF
C45 VSS sky130_asc_res_xhigh_po_2p85_1_9/a_2148_115# 0.31fF
C46 VDD sky130_asc_cap_mim_m3_1_4/Cout 3.82fF
C47 sky130_asc_res_xhigh_po_2p85_1_16/Rin sky130_asc_nfet_01v8_lvt_1_1/DRAIN 0.05fF
C48 sky130_asc_res_xhigh_po_2p85_1_3/a_2148_115# VSS 0.26fF
C49 VSS sky130_asc_res_xhigh_po_2p85_1_6/Rin 0.49fF
C50 sky130_asc_res_xhigh_po_2p85_1_14/Rin sky130_asc_res_xhigh_po_2p85_1_13/Rin 0.01fF
C51 sky130_asc_res_xhigh_po_2p85_1_19/Rout sky130_asc_pnp_05v5_W3p40L3p40_8_3/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_3/Base 0.00fF
C52 sky130_asc_res_xhigh_po_2p85_1_26/Rin VDD 0.06fF
C53 sky130_asc_pnp_05v5_W3p40L3p40_8_3/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_2/Base sky130_asc_nfet_01v8_lvt_1_1/DRAIN 0.00fF
C54 sky130_asc_res_xhigh_po_2p85_1_0/Rin sky130_asc_res_xhigh_po_2p85_1_1/a_2148_115# 0.00fF
C55 sky130_asc_pnp_05v5_W3p40L3p40_8_3/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_2/Collector sky130_asc_nfet_01v8_lvt_1_1/GATE 0.16fF
C56 sky130_asc_res_xhigh_po_2p85_1_6/Rin sky130_asc_res_xhigh_po_2p85_1_7/Rin 0.01fF
C57 sky130_asc_res_xhigh_po_2p85_1_17/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_10/Rin 0.06fF
C58 VDD sky130_asc_pnp_05v5_W3p40L3p40_7_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_5/Collector 0.14fF
C59 sky130_asc_res_xhigh_po_2p85_1_19/Rout sky130_asc_pnp_05v5_W3p40L3p40_8_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_0/Collector 0.26fF
C60 sky130_asc_res_xhigh_po_2p85_1_15/Rin sky130_asc_res_xhigh_po_2p85_1_16/a_2148_115# 0.13fF
C61 porst sky130_asc_cap_mim_m3_1_4/Cout 0.14fF
C62 sky130_asc_res_xhigh_po_2p85_1_9/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_10/Rin 0.28fF
C63 sky130_asc_pnp_05v5_W3p40L3p40_8_3/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_3/Base sky130_asc_nfet_01v8_lvt_1_1/DRAIN 0.21fF
C64 sky130_asc_pnp_05v5_W3p40L3p40_7_0/Base sky130_asc_cap_mim_m3_1_4/Cout 0.00fF
C65 sky130_asc_pfet_01v8_lvt_6_1/GATE sky130_asc_cap_mim_m3_1_4/Cout 0.61fF
C66 sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Emitter sky130_asc_nfet_01v8_lvt_1_1/DRAIN 0.07fF
C67 sky130_asc_res_xhigh_po_2p85_1_29/Rin sky130_asc_res_xhigh_po_2p85_1_29/a_2148_115# -0.00fF
C68 sky130_asc_cap_mim_m3_1_9/Cin sky130_asc_res_xhigh_po_2p85_1_25/Rin 0.30fF
C69 sky130_asc_res_xhigh_po_2p85_1_3/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_4/Rin 0.29fF
C70 sky130_asc_res_xhigh_po_2p85_1_17/Rin sky130_asc_cap_mim_m3_1_9/Cin 0.85fF
C71 VSS sky130_asc_res_xhigh_po_2p85_1_19/a_2148_115# 0.00fF
C72 sky130_asc_pnp_05v5_W3p40L3p40_8_2/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Base sky130_asc_cap_mim_m3_1_9/Cin 0.20fF
C73 VSS sky130_asc_pnp_05v5_W3p40L3p40_8_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Base -0.04fF
C74 sky130_asc_res_xhigh_po_2p85_1_15/Rin sky130_asc_res_xhigh_po_2p85_2_0/a_2723_115# 0.50fF
C75 sky130_asc_res_xhigh_po_2p85_1_9/Rin sky130_asc_res_xhigh_po_2p85_1_13/a_2148_115# 0.44fF
C76 sky130_asc_res_xhigh_po_2p85_1_19/Rout sky130_asc_res_xhigh_po_2p85_1_19/Rin 0.12fF
C77 sky130_asc_res_xhigh_po_2p85_1_14/a_2148_115# sky130_asc_res_xhigh_po_2p85_2_0/Rin 0.66fF
C78 sky130_asc_res_xhigh_po_2p85_1_17/Rin sky130_asc_res_xhigh_po_2p85_1_14/Rin 0.07fF
C79 sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Collector VDD -0.49fF
C80 sky130_asc_pnp_05v5_W3p40L3p40_8_0/xm1/Collector sky130_asc_res_xhigh_po_2p85_1_19/Rin 0.00fF
C81 sky130_asc_res_xhigh_po_2p85_1_11/Rin VDD 0.23fF
C82 sky130_asc_res_xhigh_po_2p85_1_25/a_2148_115# VDD -0.01fF
C83 sky130_asc_res_xhigh_po_2p85_1_19/Rout sky130_asc_pnp_05v5_W3p40L3p40_8_0/xm1/Collector 0.02fF
C84 sky130_asc_res_xhigh_po_2p85_1_26/Rin sky130_asc_res_xhigh_po_2p85_1_25/Rin 0.86fF
C85 sky130_asc_nfet_01v8_lvt_1_1/DRAIN sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_3/Emitter 0.04fF
C86 sky130_asc_cap_mim_m3_1_4/Cout sky130_asc_pnp_05v5_W3p40L3p40_8_3/Emitter 0.36fF
C87 sky130_asc_res_xhigh_po_2p85_1_19/Rout sky130_asc_nfet_01v8_lvt_1_1/DRAIN 2.15fF
C88 sky130_asc_res_xhigh_po_2p85_1_16/Rin sky130_asc_cap_mim_m3_1_9/Cin 3.00fF
C89 sky130_asc_res_xhigh_po_2p85_1_17/Rin sky130_asc_cap_mim_m3_1_4/Cout 0.07fF
C90 sky130_asc_res_xhigh_po_2p85_1_28/a_2148_115# VSS 0.14fF
C91 sky130_asc_nfet_01v8_lvt_1_1/DRAIN sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_3/Collector 0.44fF
C92 sky130_asc_res_xhigh_po_2p85_1_27/Rin sky130_asc_res_xhigh_po_2p85_1_30/a_2148_115# 0.86fF
C93 sky130_asc_pnp_05v5_W3p40L3p40_7_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_5/Base sky130_asc_cap_mim_m3_1_4/Cout 0.04fF
C94 sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Base VDD -0.02fF
C95 sky130_asc_res_xhigh_po_2p85_1_24/Rin sky130_asc_res_xhigh_po_2p85_1_26/a_2148_115# 0.30fF
C96 sky130_asc_res_xhigh_po_2p85_1_28/Rin sky130_asc_res_xhigh_po_2p85_1_27/Rin 0.14fF
C97 sky130_asc_res_xhigh_po_2p85_1_12/Rin VSS 0.64fF
C98 sky130_asc_res_xhigh_po_2p85_1_27/Rin sky130_asc_res_xhigh_po_2p85_1_15/a_2148_115# 0.10fF
C99 sky130_asc_nfet_01v8_lvt_1_1/DRAIN sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_4/Emitter 0.02fF
C100 VSS sky130_asc_nfet_01v8_lvt_9_2/GATE 2.98fF
C101 sky130_asc_res_xhigh_po_2p85_1_22/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_23/Rin 0.29fF
C102 sky130_asc_pnp_05v5_W3p40L3p40_8_1/Base sky130_asc_cap_mim_m3_1_9/Cin 0.00fF
C103 sky130_asc_res_xhigh_po_2p85_2_0/Rin VDD 0.68fF
C104 sky130_asc_pnp_05v5_W3p40L3p40_8_1/Emitter sky130_asc_cap_mim_m3_1_4/Cout 0.00fF
C105 VSS sky130_asc_res_xhigh_po_2p85_1_7/Rin 0.41fF
C106 sky130_asc_res_xhigh_po_2p85_1_24/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_24/Rin 0.02fF
C107 sky130_asc_res_xhigh_po_2p85_1_0/Rin VDD 0.22fF
C108 sky130_asc_cap_mim_m3_1_9/Cin vbg 1.56fF
C109 sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Emitter sky130_asc_cap_mim_m3_1_9/Cin 0.03fF
C110 VSS sky130_asc_res_xhigh_po_2p85_1_5/a_2148_115# 0.14fF
C111 sky130_asc_res_xhigh_po_2p85_1_12/Rin sky130_asc_res_xhigh_po_2p85_1_10/Rin 1.39fF
C112 VSS sky130_asc_res_xhigh_po_2p85_1_20/a_2148_115# 0.47fF
C113 VSS sky130_asc_res_xhigh_po_2p85_1_22/Rin 0.08fF
C114 VSS sky130_asc_res_xhigh_po_2p85_1_10/Rin 1.55fF
C115 VSS sky130_asc_nfet_01v8_lvt_1_1/GATE 2.93fF
C116 sky130_asc_nfet_01v8_lvt_1_1/GATE sky130_asc_nfet_01v8_lvt_9_2/GATE 0.21fF
C117 sky130_asc_res_xhigh_po_2p85_1_24/Rin sky130_asc_res_xhigh_po_2p85_1_23/Rin 0.01fF
C118 sky130_asc_res_xhigh_po_2p85_1_16/Rin sky130_asc_cap_mim_m3_1_4/Cout 0.10fF
C119 VDD sky130_asc_pnp_05v5_W3p40L3p40_8_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Emitter 0.21fF
C120 sky130_asc_pnp_05v5_W3p40L3p40_8_3/Base sky130_asc_cap_mim_m3_1_4/Cout 0.42fF
C121 sky130_asc_pnp_05v5_W3p40L3p40_8_3/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_2/Collector VDD 0.00fF
C122 VSS sky130_asc_res_xhigh_po_2p85_1_4/Rin 0.47fF
C123 sky130_asc_res_xhigh_po_2p85_1_17/a_2148_115# VDD 0.04fF
C124 VSS sky130_asc_res_xhigh_po_2p85_1_1/Rin 0.72fF
C125 sky130_asc_pnp_05v5_W3p40L3p40_8_1/Base sky130_asc_cap_mim_m3_1_4/Cout 0.00fF
C126 sky130_asc_res_xhigh_po_2p85_1_13/Rin sky130_asc_res_xhigh_po_2p85_1_18/a_2148_115# 0.30fF
C127 sky130_asc_cap_mim_m3_1_4/Cout vbg 1.38fF
C128 sky130_asc_res_xhigh_po_2p85_1_9/a_2148_115# VDD -0.13fF
C129 VSS sky130_asc_res_xhigh_po_2p85_1_0/a_2148_115# 0.15fF
C130 sky130_asc_pnp_05v5_W3p40L3p40_8_2/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_5/Emitter sky130_asc_cap_mim_m3_1_9/Cin 1.01fF
C131 sky130_asc_res_xhigh_po_2p85_1_5/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_4/Rin -0.00fF
C132 sky130_asc_res_xhigh_po_2p85_1_15/Rin sky130_asc_cap_mim_m3_1_9/Cin 0.03fF
C133 VSS sky130_asc_res_xhigh_po_2p85_1_1/a_2148_115# 0.14fF
C134 sky130_asc_res_xhigh_po_2p85_1_3/a_2148_115# VDD -0.09fF
C135 sky130_asc_pnp_05v5_W3p40L3p40_8_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_0/Collector sky130_asc_cap_mim_m3_1_4/Cout 0.00fF
C136 sky130_asc_pnp_05v5_W3p40L3p40_7_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_2/Base sky130_asc_nfet_01v8_lvt_1_1/GATE 0.00fF
C137 sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Emitter sky130_asc_cap_mim_m3_1_4/Cout 0.14fF
C138 sky130_asc_res_xhigh_po_2p85_1_6/Rin VDD 0.45fF
C139 sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_3/Base sky130_asc_nfet_01v8_lvt_1_1/DRAIN 0.02fF
C140 sky130_asc_res_xhigh_po_2p85_1_22/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_21/Rin -0.00fF
C141 sky130_asc_res_xhigh_po_2p85_1_15/Rin sky130_asc_res_xhigh_po_2p85_1_9/Rin 0.02fF
C142 sky130_asc_pnp_05v5_W3p40L3p40_8_3/xm1/Emitter sky130_asc_cap_mim_m3_1_4/Cout 0.03fF
C143 VSS sky130_asc_res_xhigh_po_2p85_1_12/a_2148_115# 0.14fF
C144 sky130_asc_res_xhigh_po_2p85_1_15/Rin sky130_asc_res_xhigh_po_2p85_1_14/Rin 3.27fF
C145 sky130_asc_res_xhigh_po_2p85_1_27/Rin sky130_asc_cap_mim_m3_1_9/Cin 2.26fF
C146 sky130_asc_res_xhigh_po_2p85_1_4/Rin sky130_asc_res_xhigh_po_2p85_1_1/Rin 0.03fF
C147 sky130_asc_res_xhigh_po_2p85_1_14/Rin sky130_asc_res_xhigh_po_2p85_2_0/a_2723_115# 0.28fF
C148 sky130_asc_nfet_01v8_lvt_1_1/DRAIN sky130_asc_cap_mim_m3_1_9/Cin 0.07fF
C149 sky130_asc_res_xhigh_po_2p85_2_1/Rin sky130_asc_res_xhigh_po_2p85_1_21/a_2148_115# 0.67fF
C150 sky130_asc_res_xhigh_po_2p85_1_17/Rin sky130_asc_res_xhigh_po_2p85_2_0/Rin 0.14fF
C151 sky130_asc_nfet_01v8_lvt_1_1/DRAIN sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_4/Collector 0.46fF
C152 sky130_asc_nfet_01v8_lvt_1_1/DRAIN sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_5/Collector 0.81fF
C153 sky130_asc_res_xhigh_po_2p85_1_1/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_4/Rin 0.34fF
C154 sky130_asc_nfet_01v8_lvt_1_1/DRAIN sky130_asc_pnp_05v5_W3p40L3p40_8_3/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_4/Base 0.00fF
C155 sky130_asc_res_xhigh_po_2p85_1_15/Rin sky130_asc_cap_mim_m3_1_4/Cout 0.00fF
C156 sky130_asc_res_xhigh_po_2p85_1_17/Rin sky130_asc_res_xhigh_po_2p85_1_18/a_2148_115# 0.27fF
C157 sky130_asc_pnp_05v5_W3p40L3p40_8_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Base VDD 0.26fF
C158 sky130_asc_res_xhigh_po_2p85_1_5/Rin sky130_asc_res_xhigh_po_2p85_1_0/Rin 0.43fF
C159 sky130_asc_res_xhigh_po_2p85_1_14/a_2148_115# VSS 0.25fF
C160 sky130_asc_res_xhigh_po_2p85_1_19/Rout sky130_asc_cap_mim_m3_1_4/Cout 0.38fF
C161 sky130_asc_res_xhigh_po_2p85_1_29/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_24/Rin 0.29fF
C162 sky130_asc_res_xhigh_po_2p85_1_10/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_12/Rin 0.36fF
C163 sky130_asc_res_xhigh_po_2p85_1_21/Rin sky130_asc_res_xhigh_po_2p85_1_21/a_2148_115# 0.00fF
C164 sky130_asc_res_xhigh_po_2p85_1_10/a_2148_115# VSS 0.14fF
C165 sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Emitter sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Collector -0.01fF
C166 sky130_asc_pnp_05v5_W3p40L3p40_8_0/xm1/Collector sky130_asc_cap_mim_m3_1_4/Cout 0.21fF
C167 sky130_asc_res_xhigh_po_2p85_1_3/Rin sky130_asc_res_xhigh_po_2p85_1_3/a_2148_115# 0.94fF
C168 VDD sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_4/Base -0.01fF
C169 sky130_asc_res_xhigh_po_2p85_1_26/Rin sky130_asc_res_xhigh_po_2p85_1_30/a_2148_115# 0.30fF
C170 sky130_asc_nfet_01v8_lvt_1_1/DRAIN sky130_asc_cap_mim_m3_1_4/Cout 0.71fF
C171 sky130_asc_res_xhigh_po_2p85_1_27/Rin sky130_asc_res_xhigh_po_2p85_1_26/Rin 0.00fF
C172 sky130_asc_res_xhigh_po_2p85_1_16/Rin sky130_asc_res_xhigh_po_2p85_2_0/Rin 0.16fF
C173 sky130_asc_pnp_05v5_W3p40L3p40_7_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_5/Emitter VDD 0.19fF
C174 sky130_asc_res_xhigh_po_2p85_1_23/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_23/Rin 0.02fF
C175 sky130_asc_res_xhigh_po_2p85_1_10/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_10/Rin 0.04fF
C176 sky130_asc_res_xhigh_po_2p85_1_28/a_2148_115# VDD -0.21fF
C177 sky130_asc_pnp_05v5_W3p40L3p40_7_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_2/Collector sky130_asc_nfet_01v8_lvt_1_1/DRAIN 0.24fF
C178 sky130_asc_res_xhigh_po_2p85_1_12/Rin VDD 3.19fF
C179 sky130_asc_res_xhigh_po_2p85_1_26/Rin sky130_asc_res_xhigh_po_2p85_1_26/a_2148_115# 0.03fF
C180 sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Emitter sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Base -0.01fF
C181 VSS VDD 85.46fF
C182 VDD sky130_asc_nfet_01v8_lvt_9_2/GATE 3.32fF
C183 sky130_asc_pnp_05v5_W3p40L3p40_8_2/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Emitter sky130_asc_cap_mim_m3_1_9/Cin 0.56fF
C184 VDD sky130_asc_res_xhigh_po_2p85_1_7/Rin 0.35fF
C185 sky130_asc_res_xhigh_po_2p85_1_6/Rin sky130_asc_res_xhigh_po_2p85_1_5/Rin 0.05fF
C186 sky130_asc_res_xhigh_po_2p85_1_5/a_2148_115# VDD 0.15fF
C187 VDD sky130_asc_res_xhigh_po_2p85_1_20/a_2148_115# -0.00fF
C188 VSS sky130_asc_res_xhigh_po_2p85_1_2/Rin 0.20fF
C189 porst VSS 1.25fF
C190 VDD sky130_asc_res_xhigh_po_2p85_1_22/Rin 1.38fF
C191 sky130_asc_res_xhigh_po_2p85_1_15/Rin sky130_asc_res_xhigh_po_2p85_1_11/Rin 0.00fF
C192 porst sky130_asc_nfet_01v8_lvt_9_2/GATE 0.39fF
C193 VDD sky130_asc_res_xhigh_po_2p85_1_10/Rin 0.27fF
C194 sky130_asc_nfet_01v8_lvt_1_1/GATE VDD 3.25fF
C195 sky130_asc_res_xhigh_po_2p85_1_12/Rin sky130_asc_res_xhigh_po_2p85_1_13/Rin 0.01fF
C196 sky130_asc_res_xhigh_po_2p85_1_29/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_23/Rin 0.29fF
C197 VSS sky130_asc_res_xhigh_po_2p85_1_29/Rin 2.64fF
C198 VSS sky130_asc_pfet_01v8_lvt_6_1/GATE 4.26fF
C199 VSS sky130_asc_res_xhigh_po_2p85_1_8/a_2148_115# 0.14fF
C200 VSS sky130_asc_res_xhigh_po_2p85_1_13/Rin 0.25fF
C201 sky130_asc_pfet_01v8_lvt_6_1/GATE sky130_asc_nfet_01v8_lvt_9_2/GATE 1.92fF
C202 sky130_asc_res_xhigh_po_2p85_2_1/Rin sky130_asc_res_xhigh_po_2p85_1_21/Rin 0.36fF
C203 VDD sky130_asc_res_xhigh_po_2p85_1_4/Rin 0.30fF
C204 sky130_asc_nfet_01v8_lvt_1_1/DRAIN sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Collector 1.04fF
C205 VDD sky130_asc_res_xhigh_po_2p85_1_1/Rin 0.35fF
C206 sky130_asc_res_xhigh_po_2p85_1_27/Rin sky130_asc_res_xhigh_po_2p85_1_11/Rin 3.00fF
C207 sky130_asc_res_xhigh_po_2p85_1_14/Rin sky130_asc_res_xhigh_po_2p85_1_9/Rin 0.35fF
C208 VSS sky130_asc_res_xhigh_po_2p85_2_1/a_2723_115# 0.15fF
C209 sky130_asc_res_xhigh_po_2p85_1_28/Rin sky130_asc_res_xhigh_po_2p85_1_11/Rin 0.08fF
C210 sky130_asc_res_xhigh_po_2p85_1_15/Rin sky130_asc_res_xhigh_po_2p85_2_0/Rin 0.03fF
C211 sky130_asc_res_xhigh_po_2p85_1_11/Rin sky130_asc_res_xhigh_po_2p85_1_15/a_2148_115# 0.47fF
C212 sky130_asc_pnp_05v5_W3p40L3p40_8_2/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_4/Collector sky130_asc_cap_mim_m3_1_9/Cin 0.00fF
C213 sky130_asc_res_xhigh_po_2p85_1_6/Rin vbg 0.11fF
C214 sky130_asc_cap_mim_m3_1_9/Cin sky130_asc_cap_mim_m3_1_4/Cout 2.31fF
C215 sky130_asc_res_xhigh_po_2p85_1_15/Rin sky130_asc_res_xhigh_po_2p85_1_18/a_2148_115# 0.02fF
C216 sky130_asc_res_xhigh_po_2p85_1_1/Rin sky130_asc_res_xhigh_po_2p85_1_2/Rin 0.18fF
C217 sky130_asc_res_xhigh_po_2p85_1_26/Rin sky130_asc_cap_mim_m3_1_9/Cin 0.33fF
C218 sky130_asc_res_xhigh_po_2p85_1_3/Rin VSS 0.28fF
C219 sky130_asc_nfet_01v8_lvt_1_1/DRAIN sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Base 0.04fF
C220 VSS sky130_asc_res_xhigh_po_2p85_1_11/a_2148_115# 0.19fF
C221 sky130_asc_pfet_01v8_lvt_6_1/GATE sky130_asc_pnp_05v5_W3p40L3p40_8_2/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_2/Collector 0.00fF
C222 sky130_asc_res_xhigh_po_2p85_1_6/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_0/Rin 0.27fF
C223 VSS sky130_asc_res_xhigh_po_2p85_1_25/Rin 0.25fF
C224 sky130_asc_pnp_05v5_W3p40L3p40_8_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_3/Collector sky130_asc_nfet_01v8_lvt_1_1/DRAIN 0.33fF
C225 VDD sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_5/Base -0.01fF
C226 sky130_asc_res_xhigh_po_2p85_1_12/Rin sky130_asc_res_xhigh_po_2p85_1_13/a_2148_115# 0.60fF
C227 VSS sky130_asc_pnp_05v5_W3p40L3p40_8_3/Emitter 0.03fF
C228 sky130_asc_res_xhigh_po_2p85_1_17/Rin VSS 0.93fF
C229 sky130_asc_res_xhigh_po_2p85_1_17/Rin sky130_asc_nfet_01v8_lvt_9_2/GATE 0.12fF
C230 VSS sky130_asc_res_xhigh_po_2p85_1_13/a_2148_115# 0.17fF
C231 sky130_asc_res_xhigh_po_2p85_1_15/Rin sky130_asc_res_xhigh_po_2p85_1_17/a_2148_115# 0.15fF
C232 sky130_asc_res_xhigh_po_2p85_1_19/Rout sky130_asc_pnp_05v5_W3p40L3p40_8_3/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_2/Collector -0.00fF
C233 sky130_asc_res_xhigh_po_2p85_1_15/Rin sky130_asc_res_xhigh_po_2p85_1_9/a_2148_115# 0.02fF
C234 VSS sky130_asc_res_xhigh_po_2p85_1_5/Rin 0.34fF
C235 sky130_asc_res_xhigh_po_2p85_1_19/a_2148_115# sky130_asc_pnp_05v5_W3p40L3p40_8_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_0/Collector 0.49fF
C236 sky130_asc_res_xhigh_po_2p85_1_19/Rout sky130_asc_pnp_05v5_W3p40L3p40_8_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_1/Collector 0.17fF
C237 sky130_asc_res_xhigh_po_2p85_1_3/Rin sky130_asc_res_xhigh_po_2p85_1_4/Rin 0.16fF
C238 sky130_asc_res_xhigh_po_2p85_1_13/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_10/Rin 0.28fF
C239 sky130_asc_res_xhigh_po_2p85_1_14/a_2148_115# VDD -0.19fF
C240 sky130_asc_res_xhigh_po_2p85_1_3/Rin sky130_asc_res_xhigh_po_2p85_1_1/Rin 0.04fF
C241 sky130_asc_pnp_05v5_W3p40L3p40_8_3/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_2/Collector sky130_asc_nfet_01v8_lvt_1_1/DRAIN 0.00fF
C242 sky130_asc_pnp_05v5_W3p40L3p40_7_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_5/Collector sky130_asc_cap_mim_m3_1_4/Cout 0.05fF
C243 sky130_asc_res_xhigh_po_2p85_1_10/a_2148_115# VDD -0.22fF
C244 sky130_asc_res_xhigh_po_2p85_1_5/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_5/Rin -0.00fF
C245 sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Collector sky130_asc_cap_mim_m3_1_9/Cin 0.07fF
C246 sky130_asc_res_xhigh_po_2p85_1_6/Rin sky130_asc_res_xhigh_po_2p85_1_6/a_2148_115# 0.02fF
C247 sky130_asc_res_xhigh_po_2p85_1_16/Rin VSS 2.24fF
C248 sky130_asc_res_xhigh_po_2p85_1_16/Rin sky130_asc_nfet_01v8_lvt_9_2/GATE 0.23fF
C249 VSS sky130_asc_res_xhigh_po_2p85_1_27/a_2148_115# 0.14fF
C250 sky130_asc_pnp_05v5_W3p40L3p40_8_3/Base VSS -0.02fF
C251 sky130_asc_res_xhigh_po_2p85_1_5/Rin sky130_asc_res_xhigh_po_2p85_1_4/Rin 0.02fF
C252 VSS vbg 1.00fF
C253 sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Base sky130_asc_cap_mim_m3_1_9/Cin 0.02fF
C254 sky130_asc_res_xhigh_po_2p85_1_11/Rin sky130_asc_res_xhigh_po_2p85_1_14/Rin 0.03fF
C255 sky130_asc_res_xhigh_po_2p85_1_7/Rin vbg 0.17fF
C256 sky130_asc_res_xhigh_po_2p85_1_19/Rout sky130_asc_res_xhigh_po_2p85_1_19/a_2148_115# 0.28fF
C257 sky130_asc_res_xhigh_po_2p85_2_0/Rin sky130_asc_cap_mim_m3_1_9/Cin 0.28fF
C258 sky130_asc_res_xhigh_po_2p85_1_0/Rin sky130_asc_cap_mim_m3_1_9/Cin 0.37fF
C259 sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Collector sky130_asc_cap_mim_m3_1_4/Cout 0.09fF
C260 sky130_asc_pnp_05v5_W3p40L3p40_8_3/xm1/Emitter VSS 0.00fF
C261 VDD sky130_asc_res_xhigh_po_2p85_1_2/Rin 0.74fF
C262 VSS sky130_asc_res_xhigh_po_2p85_1_16/a_2148_115# 0.14fF
C263 porst VDD 0.41fF
C264 sky130_asc_res_xhigh_po_2p85_2_0/Rin sky130_asc_res_xhigh_po_2p85_1_9/Rin 0.40fF
C265 sky130_asc_res_xhigh_po_2p85_1_29/Rin VDD 0.27fF
C266 sky130_asc_pnp_05v5_W3p40L3p40_8_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Base sky130_asc_nfet_01v8_lvt_1_1/DRAIN 0.00fF
C267 sky130_asc_res_xhigh_po_2p85_2_0/Rin sky130_asc_res_xhigh_po_2p85_1_14/Rin 0.04fF
C268 VSS sky130_asc_res_xhigh_po_2p85_1_22/a_2148_115# 0.18fF
C269 sky130_asc_pfet_01v8_lvt_6_1/GATE VDD 2.78fF
C270 VDD sky130_asc_res_xhigh_po_2p85_1_8/a_2148_115# 0.15fF
C271 sky130_asc_res_xhigh_po_2p85_1_13/Rin VDD 0.18fF
C272 sky130_asc_pnp_05v5_W3p40L3p40_8_2/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_5/Collector sky130_asc_cap_mim_m3_1_9/Cin 0.52fF
C273 sky130_asc_res_xhigh_po_2p85_1_14/Rin sky130_asc_res_xhigh_po_2p85_1_18/a_2148_115# 0.28fF
C274 sky130_asc_res_xhigh_po_2p85_1_12/Rin sky130_asc_res_xhigh_po_2p85_1_15/Rin 0.00fF
C275 sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Base sky130_asc_cap_mim_m3_1_4/Cout 0.04fF
C276 sky130_asc_res_xhigh_po_2p85_1_19/Rout sky130_asc_pnp_05v5_W3p40L3p40_8_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_2/Base 0.00fF
C277 sky130_asc_res_xhigh_po_2p85_1_15/Rin VSS 1.14fF
C278 sky130_asc_res_xhigh_po_2p85_1_15/Rin sky130_asc_nfet_01v8_lvt_9_2/GATE 0.05fF
C279 sky130_asc_res_xhigh_po_2p85_2_1/a_2723_115# VDD 0.04fF
C280 VSS sky130_asc_res_xhigh_po_2p85_1_19/Rin 0.09fF
C281 sky130_asc_res_xhigh_po_2p85_1_19/Rin sky130_asc_nfet_01v8_lvt_9_2/GATE 1.60fF
C282 sky130_asc_res_xhigh_po_2p85_1_22/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_22/Rin 1.01fF
C283 sky130_asc_res_xhigh_po_2p85_2_0/Rin sky130_asc_cap_mim_m3_1_4/Cout 0.04fF
C284 sky130_asc_nfet_01v8_lvt_1_1/DRAIN sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_4/Base 0.01fF
C285 sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_5/Emitter VDD -0.02fF
C286 sky130_asc_res_xhigh_po_2p85_1_19/Rout sky130_asc_pnp_05v5_W3p40L3p40_8_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_2/Collector 0.00fF
C287 VSS sky130_asc_res_xhigh_po_2p85_1_24/Rin 0.27fF
C288 VSS sky130_asc_res_xhigh_po_2p85_2_0/a_2723_115# 0.18fF
C289 sky130_asc_res_xhigh_po_2p85_1_19/Rout VSS 3.90fF
C290 sky130_asc_res_xhigh_po_2p85_1_19/Rout sky130_asc_nfet_01v8_lvt_9_2/GATE 0.35fF
C291 VSS sky130_asc_res_xhigh_po_2p85_1_7/a_2148_115# 0.14fF
C292 sky130_asc_nfet_01v8_lvt_1_1/DRAIN sky130_asc_pnp_05v5_W3p40L3p40_8_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_2/Base 0.00fF
C293 sky130_asc_res_xhigh_po_2p85_1_28/Rin sky130_asc_res_xhigh_po_2p85_1_28/a_2148_115# 0.58fF
C294 sky130_asc_res_xhigh_po_2p85_1_7/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_7/Rin 0.02fF
C295 sky130_asc_res_xhigh_po_2p85_1_6/Rin sky130_asc_cap_mim_m3_1_9/Cin 0.26fF
C296 sky130_asc_res_xhigh_po_2p85_1_3/Rin VDD 0.79fF
C297 sky130_asc_res_xhigh_po_2p85_1_15/Rin sky130_asc_res_xhigh_po_2p85_1_10/Rin 0.12fF
C298 sky130_asc_res_xhigh_po_2p85_1_17/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_14/Rin 0.01fF
C299 VSS sky130_asc_res_xhigh_po_2p85_1_6/a_2148_115# 0.30fF
C300 VSS sky130_asc_res_xhigh_po_2p85_1_30/a_2148_115# 0.18fF
C301 sky130_asc_res_xhigh_po_2p85_1_27/Rin VSS 0.86fF
C302 sky130_asc_res_xhigh_po_2p85_1_9/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_9/Rin -0.00fF
C303 sky130_asc_pnp_05v5_W3p40L3p40_8_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_2/Collector sky130_asc_nfet_01v8_lvt_1_1/DRAIN 0.00fF
C304 sky130_asc_res_xhigh_po_2p85_1_28/Rin VSS 0.19fF
C305 sky130_asc_pnp_05v5_W3p40L3p40_8_0/xm1/Collector sky130_asc_nfet_01v8_lvt_9_2/GATE 0.00fF
C306 VDD sky130_asc_res_xhigh_po_2p85_1_25/Rin 1.63fF
C307 VSS sky130_asc_nfet_01v8_lvt_1_1/DRAIN 0.75fF
C308 VSS sky130_asc_res_xhigh_po_2p85_1_15/a_2148_115# 0.18fF
C309 sky130_asc_res_xhigh_po_2p85_1_19/Rout sky130_asc_res_xhigh_po_2p85_1_20/a_2148_115# 0.23fF
C310 sky130_asc_nfet_01v8_lvt_1_1/DRAIN sky130_asc_nfet_01v8_lvt_9_2/GATE 0.23fF
C311 sky130_asc_res_xhigh_po_2p85_1_9/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_14/Rin 0.43fF
C312 sky130_asc_res_xhigh_po_2p85_1_2/a_2148_115# VSS 0.25fF
C313 VSS sky130_asc_res_xhigh_po_2p85_1_21/a_2148_115# 0.44fF
C314 sky130_asc_cap_mim_m3_1_4/Cout sky130_asc_pnp_05v5_W3p40L3p40_8_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Emitter 0.12fF
C315 sky130_asc_res_xhigh_po_2p85_1_19/Rout sky130_asc_nfet_01v8_lvt_1_1/GATE 0.83fF
C316 VDD sky130_asc_pnp_05v5_W3p40L3p40_8_3/Emitter 0.02fF
C317 sky130_asc_res_xhigh_po_2p85_1_17/Rin VDD 0.62fF
C318 sky130_asc_pnp_05v5_W3p40L3p40_8_3/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_2/Collector sky130_asc_cap_mim_m3_1_4/Cout 0.00fF
C319 sky130_asc_res_xhigh_po_2p85_1_3/Rin sky130_asc_res_xhigh_po_2p85_1_2/Rin 0.15fF
C320 VSS sky130_asc_res_xhigh_po_2p85_1_26/a_2148_115# 0.18fF
C321 VDD sky130_asc_res_xhigh_po_2p85_1_13/a_2148_115# -0.22fF
C322 sky130_asc_pnp_05v5_W3p40L3p40_7_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_5/Base VDD 0.07fF
C323 sky130_asc_res_xhigh_po_2p85_1_27/Rin sky130_asc_res_xhigh_po_2p85_1_10/Rin 0.15fF
C324 sky130_asc_res_xhigh_po_2p85_1_28/Rin sky130_asc_res_xhigh_po_2p85_1_10/Rin 0.04fF
C325 sky130_asc_res_xhigh_po_2p85_1_15/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_10/Rin 0.31fF
C326 sky130_asc_res_xhigh_po_2p85_1_24/a_2148_115# VSS 0.14fF
C327 sky130_asc_res_xhigh_po_2p85_1_29/Rin sky130_asc_res_xhigh_po_2p85_1_11/a_2148_115# 0.30fF
C328 sky130_asc_nfet_01v8_lvt_1_1/DRAIN sky130_asc_nfet_01v8_lvt_1_1/GATE 0.38fF
C329 sky130_asc_res_xhigh_po_2p85_1_5/Rin VDD 0.11fF
C330 sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Collector sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Base -0.01fF
C331 sky130_asc_res_xhigh_po_2p85_1_6/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_4/Rin 0.30fF
C332 sky130_asc_pnp_05v5_W3p40L3p40_7_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_2/Base sky130_asc_nfet_01v8_lvt_1_1/DRAIN 0.20fF
C333 sky130_asc_res_xhigh_po_2p85_1_6/Rin sky130_asc_cap_mim_m3_1_4/Cout 0.10fF
C334 sky130_asc_pfet_01v8_lvt_6_1/GATE sky130_asc_pnp_05v5_W3p40L3p40_8_3/Emitter 0.73fF
C335 sky130_asc_res_xhigh_po_2p85_1_17/Rin sky130_asc_pfet_01v8_lvt_6_1/GATE 0.18fF
C336 sky130_asc_res_xhigh_po_2p85_1_17/Rin sky130_asc_res_xhigh_po_2p85_1_13/Rin 0.01fF
C337 sky130_asc_res_xhigh_po_2p85_1_13/Rin sky130_asc_res_xhigh_po_2p85_1_13/a_2148_115# -0.00fF
C338 sky130_asc_cap_mim_m3_1_9/Cin sky130_asc_pnp_05v5_W3p40L3p40_8_2/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_3/Emitter 0.00fF
C339 VSS sky130_asc_res_xhigh_po_2p85_1_23/Rin 0.93fF
C340 sky130_asc_res_xhigh_po_2p85_1_2/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_1/Rin 0.16fF
C341 sky130_asc_res_xhigh_po_2p85_1_16/Rin VDD 0.38fF
C342 sky130_asc_pnp_05v5_W3p40L3p40_8_2/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Collector sky130_asc_cap_mim_m3_1_9/Cin 0.39fF
C343 sky130_asc_pnp_05v5_W3p40L3p40_8_3/Base VDD 0.09fF
C344 sky130_asc_cap_mim_m3_1_9/Cin sky130_asc_pnp_05v5_W3p40L3p40_8_2/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_4/Emitter 0.00fF
C345 sky130_asc_res_xhigh_po_2p85_1_22/Rin sky130_asc_res_xhigh_po_2p85_1_23/Rin 0.17fF
C346 VDD vbg 1.51fF
C347 sky130_asc_res_xhigh_po_2p85_1_19/a_2148_115# sky130_asc_cap_mim_m3_1_4/Cout 0.49fF
C348 sky130_asc_pnp_05v5_W3p40L3p40_8_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Base sky130_asc_cap_mim_m3_1_4/Cout 0.18fF
C349 VSS sky130_asc_res_xhigh_po_2p85_2_1/Rin 0.10fF
C350 sky130_asc_nfet_01v8_lvt_1_1/DRAIN sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_5/Base 0.22fF
C351 VDD sky130_asc_pnp_05v5_W3p40L3p40_8_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_0/Collector 0.06fF
C352 sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Emitter VDD -0.04fF
C353 sky130_asc_res_xhigh_po_2p85_1_15/Rin sky130_asc_res_xhigh_po_2p85_1_14/a_2148_115# 0.02fF
C354 VSS sky130_asc_cap_mim_m3_1_9/Cin 2.26fF
C355 sky130_asc_nfet_01v8_lvt_9_2/GATE sky130_asc_cap_mim_m3_1_9/Cin 0.25fF
C356 sky130_asc_res_xhigh_po_2p85_1_16/Rin sky130_asc_pfet_01v8_lvt_6_1/GATE 1.68fF
C357 sky130_asc_cap_mim_m3_1_9/Cin sky130_asc_res_xhigh_po_2p85_1_7/Rin 0.19fF
C358 sky130_asc_nfet_01v8_lvt_1_1/DRAIN sky130_asc_pnp_05v5_W3p40L3p40_8_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_3/Base 0.20fF
C359 sky130_asc_pnp_05v5_W3p40L3p40_8_3/Base sky130_asc_pfet_01v8_lvt_6_1/GATE 0.56fF
C360 sky130_asc_res_xhigh_po_2p85_1_12/Rin sky130_asc_res_xhigh_po_2p85_1_9/Rin 0.09fF
C361 VSS sky130_asc_res_xhigh_po_2p85_1_23/a_2148_115# 0.14fF
C362 VSS sky130_asc_res_xhigh_po_2p85_1_4/a_2148_115# 0.14fF
C363 VSS sky130_asc_res_xhigh_po_2p85_1_9/Rin 0.33fF
C364 sky130_asc_res_xhigh_po_2p85_1_12/Rin sky130_asc_res_xhigh_po_2p85_1_14/Rin 0.02fF
C365 porst sky130_asc_pnp_05v5_W3p40L3p40_8_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_0/Collector 0.03fF
C366 sky130_asc_res_xhigh_po_2p85_1_11/Rin sky130_asc_res_xhigh_po_2p85_1_9/a_2148_115# 0.29fF
C367 VSS sky130_asc_res_xhigh_po_2p85_1_14/Rin 0.39fF
C368 sky130_asc_res_xhigh_po_2p85_1_22/a_2148_115# VDD -0.21fF
C369 VSS sky130_asc_res_xhigh_po_2p85_1_21/Rin 0.13fF
C370 sky130_asc_nfet_01v8_lvt_1_1/GATE sky130_asc_cap_mim_m3_1_9/Cin 0.07fF
C371 sky130_asc_pnp_05v5_W3p40L3p40_8_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Base sky130_asc_pnp_05v5_W3p40L3p40_8_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_5/Emitter -0.00fF
C372 sky130_asc_pnp_05v5_W3p40L3p40_8_3/xm1/Emitter porst 0.00fF
C373 sky130_asc_pnp_05v5_W3p40L3p40_7_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_5/Emitter sky130_asc_cap_mim_m3_1_4/Cout 0.10fF
C374 sky130_asc_res_xhigh_po_2p85_1_9/Rin sky130_asc_res_xhigh_po_2p85_1_10/Rin 0.22fF
C375 sky130_asc_res_xhigh_po_2p85_1_17/a_2148_115# sky130_asc_res_xhigh_po_2p85_2_0/Rin 0.01fF
C376 sky130_asc_res_xhigh_po_2p85_1_15/Rin VDD 1.12fF
C377 sky130_asc_res_xhigh_po_2p85_1_14/Rin sky130_asc_res_xhigh_po_2p85_1_10/Rin 0.09fF
C378 VDD sky130_asc_res_xhigh_po_2p85_1_19/Rin 0.07fF
C379 sky130_asc_res_xhigh_po_2p85_1_19/Rout sky130_asc_pnp_05v5_W3p40L3p40_8_3/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_3/Collector -0.00fF
C380 VSS sky130_asc_cap_mim_m3_1_4/Cout 2.50fF
C381 sky130_asc_nfet_01v8_lvt_9_2/GATE sky130_asc_cap_mim_m3_1_4/Cout 4.87fF
C382 sky130_asc_res_xhigh_po_2p85_1_21/Rin sky130_asc_res_xhigh_po_2p85_1_22/Rin 0.01fF
C383 VSS sky130_asc_res_xhigh_po_2p85_1_29/a_2148_115# 0.18fF
C384 sky130_asc_cap_mim_m3_1_4/Cout sky130_asc_res_xhigh_po_2p85_1_7/Rin 0.06fF
C385 VDD sky130_asc_res_xhigh_po_2p85_2_0/a_2723_115# 0.00fF
C386 VDD sky130_asc_res_xhigh_po_2p85_1_24/Rin 1.58fF
C387 sky130_asc_res_xhigh_po_2p85_1_4/Rin sky130_asc_res_xhigh_po_2p85_1_4/a_2148_115# -0.00fF
C388 sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_3/Emitter VDD -0.02fF
C389 sky130_asc_res_xhigh_po_2p85_1_19/Rout VDD 0.56fF
C390 sky130_asc_res_xhigh_po_2p85_1_26/Rin VSS 0.39fF
C391 sky130_asc_res_xhigh_po_2p85_1_6/Rin sky130_asc_res_xhigh_po_2p85_1_0/Rin 0.68fF
C392 VDD sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_3/Collector -0.22fF
C393 sky130_asc_res_xhigh_po_2p85_1_17/Rin sky130_asc_res_xhigh_po_2p85_1_16/Rin 0.10fF
C394 sky130_asc_pnp_05v5_W3p40L3p40_8_3/Base sky130_asc_pnp_05v5_W3p40L3p40_8_3/Emitter 0.04fF
C395 sky130_asc_nfet_01v8_lvt_1_1/DRAIN sky130_asc_pnp_05v5_W3p40L3p40_8_3/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_3/Collector 0.44fF
C396 sky130_asc_res_xhigh_po_2p85_1_6/a_2148_115# VDD -0.00fF
C397 sky130_asc_cap_mim_m3_1_4/Cout sky130_asc_res_xhigh_po_2p85_1_20/a_2148_115# 0.50fF
C398 sky130_asc_res_xhigh_po_2p85_1_30/a_2148_115# VDD -0.20fF
C399 sky130_asc_res_xhigh_po_2p85_1_27/Rin VDD 4.94fF
C400 sky130_asc_pnp_05v5_W3p40L3p40_8_1/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_4/Emitter VDD -0.02fF
C401 sky130_asc_res_xhigh_po_2p85_1_28/Rin VDD 1.33fF
C402 sky130_asc_nfet_01v8_lvt_1_1/GATE sky130_asc_cap_mim_m3_1_4/Cout 1.35fF
C403 sky130_asc_nfet_01v8_lvt_1_1/DRAIN VDD 5.42fF
C404 sky130_asc_res_xhigh_po_2p85_1_15/Rin sky130_asc_pfet_01v8_lvt_6_1/GATE 0.43fF
C405 sky130_asc_res_xhigh_po_2p85_1_19/Rout porst 0.03fF
C406 sky130_asc_res_xhigh_po_2p85_1_2/a_2148_115# VDD -0.09fF
C407 sky130_asc_pnp_05v5_W3p40L3p40_8_2/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_4/Base sky130_asc_cap_mim_m3_1_9/Cin 0.00fF
C408 VDD sky130_asc_res_xhigh_po_2p85_1_21/a_2148_115# -0.16fF
C409 VDD sky130_asc_res_xhigh_po_2p85_1_26/a_2148_115# -0.20fF
C410 porst sky130_asc_pnp_05v5_W3p40L3p40_8_0/xm1/Collector 0.00fF
C411 sky130_asc_res_xhigh_po_2p85_1_2/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_2/Rin 0.83fF
C412 sky130_asc_res_xhigh_po_2p85_1_27/Rin sky130_asc_res_xhigh_po_2p85_1_29/Rin 0.07fF
C413 sky130_asc_res_xhigh_po_2p85_1_28/Rin sky130_asc_res_xhigh_po_2p85_1_29/Rin 0.01fF
C414 sky130_asc_nfet_01v8_lvt_1_1/DRAIN sky130_asc_pfet_01v8_lvt_6_1/GATE 0.43fF
C415 sky130_asc_res_xhigh_po_2p85_1_12/Rin sky130_asc_res_xhigh_po_2p85_1_11/Rin 0.25fF
C416 VDD sky130_asc_res_xhigh_po_2p85_1_23/Rin 3.69fF
C417 sky130_asc_res_xhigh_po_2p85_1_11/Rin VSS 1.94fF
C418 VSS 0 458.46fF
C419 VDD 0 967.57fF
C420 sky130_asc_cap_mim_m3_1_4/Cout 0 104.97fF
C421 sky130_asc_res_xhigh_po_2p85_2_1/Rin 0 2.41fF
C422 sky130_asc_res_xhigh_po_2p85_1_23/Rin 0 10.40fF
C423 sky130_asc_res_xhigh_po_2p85_1_22/Rin 0 2.42fF
C424 sky130_asc_res_xhigh_po_2p85_1_4/Rin 0 3.37fF
C425 sky130_asc_res_xhigh_po_2p85_1_0/Rin 0 3.49fF
C426 sky130_asc_res_xhigh_po_2p85_1_25/Rin 0 2.49fF
C427 sky130_asc_res_xhigh_po_2p85_1_29/Rin 0 4.29fF
C428 sky130_asc_res_xhigh_po_2p85_1_9/Rin 0 2.76fF
C429 sky130_asc_res_xhigh_po_2p85_1_13/Rin 0 2.87fF
C430 sky130_asc_nfet_01v8_lvt_9_2/GATE 0 15.25fF
C431 sky130_asc_res_xhigh_po_2p85_1_19/Rin 0 3.12fF
C432 sky130_asc_nfet_01v8_lvt_1_1/GATE 0 8.01fF
C433 sky130_asc_pfet_01v8_lvt_6_1/GATE 0 10.03fF
C434 sky130_asc_cap_mim_m3_1_9/Cin 0 43.06fF
C435 vbg 0 6.79fF
C436 sky130_asc_res_xhigh_po_2p85_1_5/Rin 0 2.57fF
C437 sky130_asc_res_xhigh_po_2p85_1_6/Rin 0 3.56fF
C438 sky130_asc_res_xhigh_po_2p85_1_6/a_2148_115# 0 2.65fF
C439 sky130_asc_res_xhigh_po_2p85_1_5/a_2148_115# 0 2.65fF
C440 sky130_asc_res_xhigh_po_2p85_1_3/Rin 0 2.54fF
C441 sky130_asc_res_xhigh_po_2p85_1_4/a_2148_115# 0 2.65fF
C442 sky130_asc_res_xhigh_po_2p85_1_2/Rin 0 2.73fF
C443 sky130_asc_res_xhigh_po_2p85_1_3/a_2148_115# 0 2.65fF
C444 sky130_asc_res_xhigh_po_2p85_1_1/Rin 0 4.26fF
C445 sky130_asc_res_xhigh_po_2p85_1_2/a_2148_115# 0 2.65fF
C446 sky130_asc_res_xhigh_po_2p85_1_1/a_2148_115# 0 2.65fF
C447 sky130_asc_res_xhigh_po_2p85_1_0/a_2148_115# 0 2.65fF
C448 sky130_asc_pnp_05v5_W3p40L3p40_8_3/Emitter 0 2.91fF
C449 sky130_asc_pnp_05v5_W3p40L3p40_8_3/Base 0 23.41fF
C450 sky130_asc_pnp_05v5_W3p40L3p40_8_2/Emitter 0 2.98fF
C451 sky130_asc_pnp_05v5_W3p40L3p40_8_2/Base 0 23.69fF
C452 sky130_asc_pnp_05v5_W3p40L3p40_8_1/Emitter 0 2.98fF
C453 sky130_asc_res_xhigh_po_2p85_1_19/Rout 0 6.25fF
C454 sky130_asc_pnp_05v5_W3p40L3p40_8_1/Base 0 23.69fF
C455 sky130_asc_pnp_05v5_W3p40L3p40_8_0/Emitter 0 2.98fF
C456 sky130_asc_pnp_05v5_W3p40L3p40_8_0/Base 0 23.69fF
C457 sky130_asc_pnp_05v5_W3p40L3p40_8_0/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40_6/Base 0 0.01fF
C458 sky130_asc_nfet_01v8_lvt_1_1/DRAIN 0 5.31fF
C459 sky130_asc_res_xhigh_po_2p85_1_19/a_2148_115# 0 2.65fF
C460 sky130_asc_res_xhigh_po_2p85_1_29/a_2148_115# 0 2.65fF
C461 sky130_asc_res_xhigh_po_2p85_1_17/Rin 0 3.80fF
C462 sky130_asc_res_xhigh_po_2p85_1_18/a_2148_115# 0 2.65fF
C463 sky130_asc_res_xhigh_po_2p85_1_27/Rin 0 4.28fF
C464 sky130_asc_res_xhigh_po_2p85_1_28/Rin 0 3.09fF
C465 sky130_asc_res_xhigh_po_2p85_1_28/a_2148_115# 0 2.65fF
C466 sky130_asc_res_xhigh_po_2p85_1_17/a_2148_115# 0 2.65fF
C467 sky130_asc_res_xhigh_po_2p85_1_27/a_2148_115# 0 2.65fF
C468 sky130_asc_res_xhigh_po_2p85_1_15/Rin 0 4.82fF
C469 sky130_asc_res_xhigh_po_2p85_1_16/Rin 0 3.30fF
C470 sky130_asc_res_xhigh_po_2p85_1_16/a_2148_115# 0 2.65fF
C471 sky130_asc_res_xhigh_po_2p85_1_26/Rin 0 3.08fF
C472 sky130_asc_res_xhigh_po_2p85_1_26/a_2148_115# 0 2.65fF
C473 sky130_asc_res_xhigh_po_2p85_1_15/a_2148_115# 0 2.65fF
C474 sky130_asc_res_xhigh_po_2p85_1_25/a_2148_115# 0 2.65fF
C475 sky130_asc_res_xhigh_po_2p85_1_14/Rin 0 3.56fF
C476 sky130_asc_res_xhigh_po_2p85_1_14/a_2148_115# 0 2.65fF
C477 sky130_asc_res_xhigh_po_2p85_1_24/Rin 0 3.64fF
C478 sky130_asc_res_xhigh_po_2p85_1_24/a_2148_115# 0 2.65fF
C479 sky130_asc_res_xhigh_po_2p85_1_12/Rin 0 3.52fF
C480 sky130_asc_res_xhigh_po_2p85_1_13/a_2148_115# 0 2.65fF
C481 sky130_asc_res_xhigh_po_2p85_1_23/a_2148_115# 0 2.65fF
C482 sky130_asc_res_xhigh_po_2p85_1_11/Rin 0 3.59fF
C483 sky130_asc_res_xhigh_po_2p85_1_12/a_2148_115# 0 2.65fF
C484 sky130_asc_res_xhigh_po_2p85_2_1/a_2723_115# 0 2.67fF
C485 sky130_asc_res_xhigh_po_2p85_1_11/a_2148_115# 0 2.65fF
C486 sky130_asc_res_xhigh_po_2p85_1_22/a_2148_115# 0 2.65fF
C487 sky130_asc_res_xhigh_po_2p85_2_0/a_2723_115# 0 2.67fF
C488 sky130_asc_res_xhigh_po_2p85_1_21/Rin 0 3.11fF
C489 sky130_asc_res_xhigh_po_2p85_1_21/a_2148_115# 0 2.65fF
C490 sky130_asc_res_xhigh_po_2p85_1_10/Rin 0 5.13fF
C491 sky130_asc_res_xhigh_po_2p85_1_10/a_2148_115# 0 2.65fF
C492 sky130_asc_pnp_05v5_W3p40L3p40_7_0/Base 0 20.68fF
C493 sky130_asc_res_xhigh_po_2p85_1_20/a_2148_115# 0 2.65fF
C494 sky130_asc_res_xhigh_po_2p85_1_30/a_2148_115# 0 2.65fF
C495 sky130_asc_res_xhigh_po_2p85_2_0/Rin 0 3.57fF
C496 sky130_asc_res_xhigh_po_2p85_1_9/a_2148_115# 0 2.65fF
C497 porst 0 9.58fF
C498 sky130_asc_res_xhigh_po_2p85_1_8/a_2148_115# 0 2.65fF
C499 sky130_asc_res_xhigh_po_2p85_1_7/Rin 0 3.08fF
C500 sky130_asc_res_xhigh_po_2p85_1_7/a_2148_115# 0 2.65fF
.ends

