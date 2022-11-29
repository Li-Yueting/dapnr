transient analysis - bgr circuit 

.lib /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.313/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include design_extracted.sp

Xbgr porst bgr 0 VDD bgr_top
v1 VDD 0 pwl(0 0 5us 1.8v)
v2 porst 0 pulse(0V 1.8V 10us 0us 0us 5us)
.option 
* .tran 10ns 20us 0us
.control 
    save all
*     option temp=27
    tran 10ns 50us 0us
*     * .print tran v(bg) v(VDD) v(porst)
*     * unset askquit
*     * set noinit
*     print tran all
*     * stop when time = 18us
*     * * simulate
    run
    write ../raw-result/bgr_tran_all.raw all
*     * * store snapshot to file
*     * snsave ../raw-result/bgr_trans_time_18u.snap
*     * write ../raw-result/bgr_tran_vbg.raw v(bg)
*     * write ../raw-result/bgr_tran_vdd.raw v(VDD)
*     * write ../raw-result/bgr_tran_porst.raw v(porst)
*     quit
.endc
.END
