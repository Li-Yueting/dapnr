* tf test
.lib "/farmshare/home/classes/ee/272/skywater-pdk.v2021/libraries/sky130_fd_pr/latest/models/sky130.lib.spice" tt
X1 d g 0 0 sky130_fd_pr__nfet_01v8 w=10 l=0.15
Rd d dd 2k
vdd dd 0 1.8
vg gg 0 0.7
vtest gg g 0
.op
.tf v(d) vtest
.end