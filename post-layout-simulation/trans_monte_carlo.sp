transient analysis - bgr circuit 

.lib /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.313/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt_mm
.include ./extracted-pex/bgr_top_flat.spice
XBGR porst bgr VSS VDD bgr_top_flat

v1 VDD 0 pwl(0 0 5us 1.8v)
v2 VSS 0 0
v3 porst 0 pulse(0V 1.8V 10us 0us 0us 5us)

.option SEED = random
.option temp =27
.control
  set appendwrite
  let run=0
  dowhile run <= 10
    if run > 0
      reset
      set appendwrite
    end
    save all
    tran 0.05u 30u
    write post_temp27_bgr_gauss{$&run}.raw bgr vdd porst
    let run = run + 1
  end
  set nolegend
  unset askquit
  quit
.endc
.end