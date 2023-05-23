v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 260 60 260 80 { lab=VDD}
N 150 80 260 80 { lab=VDD}
N 260 80 350 80 { lab=VDD}
N 350 80 500 80 { lab=VDD}
N 150 140 150 190 { lab=#net1}
N 190 110 310 110 { lab=#net1}
N 350 140 350 190 { lab=out}
N 150 250 150 290 { lab=#net2}
N 150 290 250 290 { lab=#net2}
N 250 290 350 290 { lab=#net2}
N 350 250 350 290 { lab=#net2}
N 290 320 460 320 { lab=#net3}
N 80 220 110 220 { lab=b}
N 500 280 500 290 { lab=#net3}
N 500 140 500 280 { lab=#net3}
N 150 160 260 160 { lab=#net1}
N 260 110 260 160 { lab=#net1}
N 250 350 250 370 { lab=GND}
N 500 350 500 370 { lab=GND}
N 410 280 410 320 { lab=#net3}
N 410 280 500 280 { lab=#net3}
N 390 220 420 220 { lab=a}
N 350 160 450 160 { lab=out}
N 420 110 460 110 { lab=out}
N 420 110 420 160 { lab=out}
N 500 110 510 110 { lab=VDD}
N 510 80 510 110 { lab=VDD}
N 500 80 510 80 { lab=VDD}
N 350 110 360 110 { lab=VDD}
N 360 80 360 110 { lab=VDD}
N 140 110 150 110 { lab=#net4}
N 140 80 140 110 { lab=#net4}
N 240 320 250 320 { lab=GND}
N 240 320 240 350 { lab=GND}
N 240 350 250 350 { lab=GND}
N 500 320 510 320 { lab=GND}
N 510 320 510 350 { lab=GND}
N 500 350 510 350 { lab=GND}
N 250 370 500 370 { lab=GND}
N 380 370 380 390 { lab=GND}
N 150 220 350 220 { lab=GND}
N 260 260 280 260 { lab=GND}
N 280 220 280 260 { lab=GND}
C {xschem_sky130/sky130_fd_pr/nfet_01v8_lvt.sym} 370 220 0 1 {name=M1
L=2
W=26.95
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {xschem_sky130/sky130_fd_pr/pfet_01v8_lvt.sym} 330 110 0 0 {name=M2
L=2
W=38.66
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {xschem_sky130/sky130_fd_pr/pfet_01v8_lvt.sym} 170 110 2 0 {name=M3
L=2
W=38.66
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {xschem_sky130/sky130_fd_pr/nfet_01v8_lvt.sym} 130 220 0 0 {name=M4
L=2
W=26.95
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {xschem_sky130/sky130_fd_pr/pfet_01v8.sym} 480 110 0 0 {name=M5
L=2
W=77.32
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
C {xschem_sky130/sky130_fd_pr/nfet_01v8_lvt.sym} 480 320 0 0 {name=M6
L=2
W=3.65
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {xschem_sky130/sky130_fd_pr/nfet_01v8.sym} 270 320 0 1 {name=M7
L=2
W=3.65
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
C {devices/ipin.sym} 90 220 0 0 {name=p1 lab=b
}
C {devices/iopin.sym} 270 260 2 0 {name=p5 lab=GND
}
C {devices/iopin.sym} 380 380 1 0 {name=p4 lab=GND}
C {devices/ipin.sym} 410 220 2 0 {name=p2 lab=a}
C {devices/iopin.sym} 260 70 3 0 {name=p6 lab=VDD}
C {devices/opin.sym} 440 160 0 0 {name=p7 lab=out}
