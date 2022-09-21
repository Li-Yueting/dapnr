bgr tf - compute variation coefficients

.lib /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.313/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include design_extracted.sp

Xbgr porst bg 0 VDD bgr_top
* v1 VDD 0 pwl(-30ns 1.8v 10ns 1.8v)
v1 VDD 0 pwl(0 0 5us 1.8v)
v2 porst 0 pulse(0V 1.8V 10us 0us 0us 5us)
* v2 porst 0 pwl(103ns 0 105ns 1.8v 200ns 1.8v 202ns 0)
* v2 porst 0 PULSE(0 1.8v 2ns 2ns 2ns 500ns 1000ns)
* V1 VDD VSS pwl (0us 0v 5us 1.8v 10us 1.8v)
* V2 porst VSS 0 pulse(0v 1.8v 10us 0us 0us 5us)    
.control 
    save all
    option temp=27
    tran 10ns 20us 0us
    * .print tran v(bg) v(VDD) v(porst)
    write ./result/bgr_tran_vbg.raw v(bg)
    write ./result/bgr_tran_vdd.raw v(VDD)
    write ./result/bgr_tran_porst.raw v(porst)
    quit
.endc
.END
