SIMPLE DIFFERENTIAL PAIR
VCC 7 0 12
VEE 8 0 -12
VIN 1 0 AC 1 DC 0
RS1 1 2 1K
RS2 6 0 1K
Q1 3 2 4 MOD1
Q2 5 6 4 MOD1
RC1 7 3 10K
RC2 7 5 10K
RE 4 8 10K
.MODEL MOD1 NPN BF=50 VAF=50 IS=1.E-12 RB=100 CJC=.5PF TF=.6NS
.control 
    save all
    tran 10ns 20us 0us
    run
    write ../raw-result/test_all.raw all
.endc
* .tran 10ns 20us 0us
* wrnodev ../raw-result/test.txt
* stop when time =3.9    
* .tran 10ns 20us 0us
* .print tran all
* stop when time = 18us

* .control
* stop when time = 18us

* * TF V(5) VIN
* .endc
* .save all

* .AC DEC 10 1 100 MEG
.END