****

v2 2 0 ac 1
* v1 1 0 SIN(0 0.01 1MEG 0 0) 
* .tran 10ns 30us 0us
* .control
*     save all
*     run
*     write ../raw-result/try.raw all
* .endc
* * .print tran v(1)
.end