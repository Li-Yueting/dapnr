v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 230 70 290 70 { lab=#net1}
N 190 230 330 230 { lab=#net2}
N 190 100 190 150 { lab=#net1}
N 330 100 330 150 { lab=#net3}
N 190 150 190 200 { lab=#net1}
N 330 150 330 200 { lab=#net3}
N 330 120 590 120 { lab=#net3}
N 400 80 400 120 { lab=#net3}
N 690 80 690 120 { lab=#net3}
N 590 120 1090 120 { lab=#net3}
N 440 110 440 320 { lab=#net4}
N 800 80 800 120 { lab=#net3}
N 1020 120 1020 150 { lab=#net3}
N 950 110 950 120 { lab=#net3}
N 330 10 330 40 { lab=#net5}
N 330 10 1130 10 { lab=#net5}
N 1130 10 1130 20 { lab=#net5}
N 440 10 440 50 { lab=#net5}
N 730 10 730 50 { lab=#net5}
N 840 10 840 50 { lab=#net5}
N 950 10 950 50 { lab=#net5}
N 260 70 260 120 { lab=#net1}
N 190 120 260 120 { lab=#net1}
N 190 260 330 260 { lab=#net6}
N 490 140 490 170 { lab=#net5}
N 490 140 530 140 { lab=#net5}
N 530 10 530 140 { lab=#net5}
N 190 10 190 40 { lab=#net5}
N 190 10 330 10 { lab=#net5}
N 260 230 260 410 { lab=#net2}
N 440 320 440 410 { lab=#net4}
N 300 440 400 440 { lab=#net4}
N 400 410 440 410 { lab=#net4}
N 400 410 400 440 { lab=#net4}
N 260 470 450 470 { lab=Va}
N 450 440 450 470 { lab=Va}
N 440 440 450 440 { lab=Va}
N 250 440 260 440 { lab=Va}
N 250 440 250 470 { lab=Va}
N 250 470 260 470 { lab=Va}
N 450 470 530 470 { lab=Va}
N 730 110 730 230 { lab=#net7}
N 720 230 730 230 { lab=#net7}
N 730 350 730 470 { lab=Va}
N 530 470 730 470 { lab=Va}
N 690 320 690 470 { lab=Va}
N 840 350 840 470 { lab=Va}
N 730 470 840 470 { lab=Va}
N 800 320 800 470 { lab=Va}
N 730 230 730 290 { lab=#net7}
N 840 110 840 150 { lab=Vb}
N 780 240 820 240 { lab=Va}
N 780 240 780 470 { lab=Va}
N 840 150 840 210 { lab=Vb}
N 840 270 840 290 { lab=#net8}
N 910 190 910 210 { lab=Vb}
N 840 190 910 190 { lab=Vb}
N 150 230 150 270 { lab=Vb}
N 530 370 530 470 { lab=Va}
N 600 230 600 310 { lab=#net7}
N 600 370 600 470 { lab=Va}
N 580 340 580 470 { lab=Va}
N 150 270 770 270 { lab=Vb}
N 770 190 770 270 { lab=Vb}
N 770 190 840 190 { lab=Vb}
N 530 200 530 230 { lab=#net7}
N 530 290 530 370 { lab=Va}
N 370 230 530 230 { lab=#net7}
N 530 230 720 230 { lab=#net7}
N 910 210 910 320 { lab=Vb}
N 910 380 910 470 { lab=Va}
N 840 470 910 470 { lab=Va}
N 1020 210 1020 470 { lab=Va}
N 910 470 1020 470 { lab=Va}
N 1130 150 1130 310 { lab=#net9}
N 1130 370 1130 470 { lab=Va}
N 1020 470 1130 470 { lab=Va}
N 890 350 890 470 { lab=Va}
N 1110 340 1110 470 { lab=Va}
N 970 180 980 180 { lab=Porst}
N 1130 20 1130 50 {}
N 1130 110 1130 150 {}
N 1090 80 1090 120 {}
C {xschem_sky130/sky130_fd_pr/nfet_01v8.sym} 170 230 0 0 {name=M1
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {xschem_sky130/sky130_fd_pr/pfet3_01v8.sym} 310 70 0 0 {name=M2
L=0.15
W=1
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {xschem_sky130/sky130_fd_pr/pfet3_01v8.sym} 210 70 2 0 {name=M3
L=0.15
W=1
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {xschem_sky130/sky130_fd_pr/nfet_01v8.sym} 350 230 2 0 {name=M4
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {xschem_sky130/sky130_fd_pr/pfet3_01v8.sym} 420 80 0 0 {name=M5
L=0.15
W=1
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {xschem_sky130/sky130_fd_pr/pfet3_01v8.sym} 510 170 0 0 {name=M6
L=0.15
W=1
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {xschem_sky130/sky130_fd_pr/pfet3_01v8.sym} 710 80 0 0 {name=M7
L=0.15
W=1
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {xschem_sky130/sky130_fd_pr/pfet3_01v8.sym} 820 80 0 0 {name=M8
L=0.15
W=1
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {xschem_sky130/sky130_fd_pr/pfet3_01v8.sym} 1110 80 0 0 {name=M9
L=0.15
W=1
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {xschem_sky130/sky130_fd_pr/cap_mim_m3_1.sym} 950 80 0 0 {name=C1 model=cap_mim_m3_1 W=1 L=1 MF=1 spiceprefix=X}
C {xschem_sky130/sky130_fd_pr/pfet3_01v8.sym} 1000 180 0 0 {name=M10
L=0.15
W=1
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {xschem_sky130/sky130_fd_pr/nfet_01v8.sym} 420 440 0 0 {name=M11
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {xschem_sky130/sky130_fd_pr/nfet_01v8.sym} 280 440 2 0 {name=M12
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {xschem_sky130/sky130_fd_pr/cap_mim_m3_1.sym} 530 260 0 0 {name=C2 model=cap_mim_m3_1 W=1 L=1 MF=1 spiceprefix=X}
C {xschem_sky130/sky130_fd_pr/res_xhigh_po_2p85.sym} 600 340 0 0 {name=R1
W=2.85
L=5
model=res_xhigh_po_2p85
spiceprefix=X
mult=1}
C {xschem_sky130/sky130_fd_pr/pnp_05v5.sym} 710 320 0 0 {name=Q1
model=pnp_05v5_W3p40L3p40
spiceprefix=X
}
C {xschem_sky130/sky130_fd_pr/pnp_05v5.sym} 820 320 0 0 {name=Q2
model=pnp_05v5_W3p40L3p40
spiceprefix=X
}
C {xschem_sky130/sky130_fd_pr/res_xhigh_po_2p85.sym} 840 240 0 0 {name=R2
W=2.85
L=5
model=res_xhigh_po_2p85
spiceprefix=X
mult=1}
C {xschem_sky130/sky130_fd_pr/res_xhigh_po_2p85.sym} 910 350 0 0 {name=R3
W=2.85
L=5
model=res_xhigh_po_2p85
spiceprefix=X
mult=1}
C {xschem_sky130/sky130_fd_pr/res_xhigh_po_2p85.sym} 1130 340 0 0 {name=R4
W=2.85
L=5
model=res_xhigh_po_2p85
spiceprefix=X
mult=1}
C {lab_pin.sym} 1130 390 2 0 {name=l1 sig_type=std_logic lab=Va}
C {lab_pin.sym} 770 190 0 0 {name=l3 sig_type=std_logic lab=Vb}
C {lab_pin.sym} 970 180 0 0 {name=l4 sig_type=std_logic lab=Porst}
