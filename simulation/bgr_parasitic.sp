**.subckt tsmc_bandgap_real_tran
V1 VPWR VGND 'VDD' pwl 0us 0 5us 'VDD' 
* Vr4 Vb net2 0
* Vr2 Vb net1 0
* Vm1 net5 Va 0
* Vm2 net4 Vb 0
* Vm3 net6 vbg 0
* Vr1 Va net3 0
* Vq2 Va Veb 0

XBGR porst bg VGND VPWR bgr_top
V2 porst VGND 0 pulse(0V 1.8V 10us 0us 0us 5us)
* C1 VDD vgate 20p m=1
* C2 Va GND 20p m=1
**** begin user architecture code

.lib /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.310/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include design_extracted.sp


.option savecurrents
* .param R3val='22.187k'
* .param alpha='1'
* .param R2R3ratio='5.6555038*alpha'
* .param R2val='R3val*R2R3ratio'
* .param R4R2ratio='0.79694273'
* .param R4val='R2val*R4R2ratio'
.param VDD=1.8
.control
* save all  @m.xm1.msky130_fd_pr__pfet_01v8_lvt[gm]  @m.xm2.msky130_fd_pr__pfet_01v8_lvt[gm]  @m.xm3.msky130_fd_pr__pfet_01v8_lvt[gm]  @m.xm4.msky130_fd_pr__pfet_01v8_lvt[gm]  @m.xm5.msky130_fd_pr__nfet_01v8_lvt[gm]  @m.xm6.msky130_fd_pr__nfet_01v8_lvt[gm]  @m.xm7.msky130_fd_pr__nfet_01v8_lvt[gm]  @m.xm8.msky130_fd_pr__pfet_01v8_lvt[gm]  @m.xm9.msky130_fd_pr__nfet_01v8_lvt[gm]  @m.xm13.msky130_fd_pr__pfet_01v8_lvt[gm]

save all

option temp=27
tran 0.1n 20u
* write ./sims/post_bandgap_real_27degc_vbg.raw vbg
unset askquit
quit
.endc


**** end user architecture code
**.ends
.GLOBAL VDD 
.GLOBAL GND 

.END