v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 250 140 310 140 { lab=#net1}
N 210 300 350 300 { lab=#net2}
N 210 170 210 220 { lab=#net1}
N 350 170 350 220 { lab=#net3}
N 210 220 210 270 { lab=#net1}
N 350 220 350 270 { lab=#net3}
N 350 190 610 190 { lab=#net3}
N 420 150 420 190 { lab=#net3}
N 710 150 710 190 { lab=#net3}
N 610 190 1110 190 { lab=#net3}
N 460 180 460 390 { lab=#net4}
N 820 150 820 190 { lab=#net3}
N 1040 190 1040 220 { lab=#net3}
N 970 180 970 190 { lab=#net3}
N 350 80 350 110 { lab=VDD}
N 350 80 1150 80 { lab=VDD}
N 1150 80 1150 90 { lab=VDD}
N 460 80 460 120 { lab=VDD}
N 750 80 750 120 { lab=VDD}
N 860 80 860 120 { lab=VDD}
N 970 80 970 120 { lab=VDD}
N 280 140 280 190 { lab=#net1}
N 210 190 280 190 { lab=#net1}
N 210 330 350 330 { lab=#net5}
N 510 210 510 240 { lab=VDD}
N 510 210 550 210 { lab=VDD}
N 550 80 550 210 { lab=VDD}
N 210 80 210 110 { lab=VDD}
N 210 80 350 80 { lab=VDD}
N 280 300 280 480 { lab=#net2}
N 460 390 460 480 { lab=#net4}
N 320 510 420 510 { lab=#net4}
N 420 480 460 480 { lab=#net4}
N 420 480 420 510 { lab=#net4}
N 280 540 470 540 { lab=GND}
N 470 510 470 540 { lab=GND}
N 460 510 470 510 { lab=GND}
N 270 510 280 510 { lab=GND}
N 270 510 270 540 { lab=GND}
N 270 540 280 540 { lab=GND}
N 470 540 550 540 { lab=GND}
N 750 180 750 300 { lab=#net6}
N 740 300 750 300 { lab=#net6}
N 750 420 750 540 { lab=GND}
N 550 540 750 540 { lab=GND}
N 710 390 710 540 { lab=GND}
N 860 420 860 540 { lab=GND}
N 750 540 860 540 { lab=GND}
N 820 390 820 540 { lab=GND}
N 750 300 750 360 { lab=#net6}
N 860 180 860 220 { lab=#net7}
N 800 310 840 310 { lab=GND}
N 800 310 800 540 { lab=GND}
N 860 220 860 280 { lab=#net7}
N 860 340 860 360 { lab=#net8}
N 930 260 930 280 { lab=#net7}
N 860 260 930 260 { lab=#net7}
N 170 300 170 340 { lab=#net7}
N 550 440 550 540 { lab=GND}
N 620 300 620 380 { lab=#net6}
N 620 440 620 540 { lab=GND}
N 600 410 600 540 { lab=GND}
N 170 340 790 340 { lab=#net7}
N 790 260 790 340 { lab=#net7}
N 790 260 860 260 { lab=#net7}
N 550 270 550 300 { lab=#net6}
N 550 360 550 440 { lab=GND}
N 390 300 550 300 { lab=#net6}
N 550 300 740 300 { lab=#net6}
N 930 280 930 390 { lab=#net7}
N 930 450 930 540 { lab=GND}
N 860 540 930 540 { lab=GND}
N 1040 280 1040 540 { lab=GND}
N 930 540 1040 540 { lab=GND}
N 1150 220 1150 380 { lab=V(OUT)}
N 1150 440 1150 540 { lab=GND}
N 1040 540 1150 540 { lab=GND}
N 910 420 910 540 { lab=GND}
N 1130 410 1130 540 { lab=GND}
N 990 250 1000 250 { lab=Porst}
N 1150 90 1150 120 { lab=VDD}
N 1150 180 1150 220 { lab=V(OUT)}
N 1110 150 1110 190 { lab=#net3}
N 1150 250 1170 250 { lab=V(OUT)}
C {xschem_sky130/sky130_fd_pr/nfet_01v8.sym} 190 300 0 0 {name=M1
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
C {xschem_sky130/sky130_fd_pr/pfet3_01v8.sym} 330 140 0 0 {name=M2
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
C {xschem_sky130/sky130_fd_pr/pfet3_01v8.sym} 230 140 2 0 {name=M3
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
C {xschem_sky130/sky130_fd_pr/nfet_01v8.sym} 370 300 2 0 {name=M4
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
C {xschem_sky130/sky130_fd_pr/pfet3_01v8.sym} 440 150 0 0 {name=M5
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
C {xschem_sky130/sky130_fd_pr/pfet3_01v8.sym} 530 240 0 0 {name=M6
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
C {xschem_sky130/sky130_fd_pr/pfet3_01v8.sym} 730 150 0 0 {name=M7
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
C {xschem_sky130/sky130_fd_pr/pfet3_01v8.sym} 840 150 0 0 {name=M8
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
C {xschem_sky130/sky130_fd_pr/pfet3_01v8.sym} 1130 150 0 0 {name=M9
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
C {xschem_sky130/sky130_fd_pr/cap_mim_m3_1.sym} 970 150 0 0 {name=C1 model=cap_mim_m3_1 W=1 L=1 MF=1 spiceprefix=X}
C {xschem_sky130/sky130_fd_pr/nfet_01v8.sym} 440 510 0 0 {name=M11
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
C {xschem_sky130/sky130_fd_pr/nfet_01v8.sym} 300 510 2 0 {name=M12
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
C {xschem_sky130/sky130_fd_pr/cap_mim_m3_1.sym} 550 330 0 0 {name=C2 model=cap_mim_m3_1 W=1 L=1 MF=1 spiceprefix=X}
C {xschem_sky130/sky130_fd_pr/res_xhigh_po_2p85.sym} 620 410 0 0 {name=R1
W=2.85
L=5
model=res_xhigh_po_2p85
spiceprefix=X
mult=1}
C {xschem_sky130/sky130_fd_pr/pnp_05v5.sym} 730 390 0 0 {name=Q1
model=pnp_05v5_W3p40L3p40
spiceprefix=X
}
C {xschem_sky130/sky130_fd_pr/pnp_05v5.sym} 840 390 0 0 {name=Q2
model=pnp_05v5_W3p40L3p40
spiceprefix=X
}
C {xschem_sky130/sky130_fd_pr/res_xhigh_po_2p85.sym} 860 310 0 0 {name=R2
W=2.85
L=5
model=res_xhigh_po_2p85
spiceprefix=X
mult=1}
C {xschem_sky130/sky130_fd_pr/res_xhigh_po_2p85.sym} 930 420 0 0 {name=R3
W=2.85
L=5
model=res_xhigh_po_2p85
spiceprefix=X
mult=1}
C {xschem_sky130/sky130_fd_pr/res_xhigh_po_2p85.sym} 1150 410 0 0 {name=R4
W=2.85
L=5
model=res_xhigh_po_2p85
spiceprefix=X
mult=1}
C {devices/ipin.sym} 990 250 0 0 {name=p1 lab=Porst}
C {devices/opin.sym} 1170 250 0 0 {name=p2 lab=V(OUT)}
C {devices/vdd.sym} 640 80 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 670 540 0 0 {name=l2 lab=GND}
C {xschem_sky130/sky130_fd_pr/nfet_01v8.sym} 440 510 0 0 {name=M10
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
C {xschem_sky130/sky130_fd_pr/nfet_01v8.sym} 1020 250 0 0 {name=M13
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
