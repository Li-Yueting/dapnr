RC Circuit Transient Response
*resistor connected between nodes 1 and 2
r1 1 2 1k
*capacitor connected between nodes 2 and 0
c1 2 0 1u
*piecewise linear input voltage
vin 1 0 pwl (0 0 1ns 0 10ns 1.8v 20ms 1.8v)
v3  3 0 PULSE(0 1.8 2NS 2NS 2NS 500us 1000us)
*transient analysis for 20ms, step size 0.02ms
.tran 0.02ms 10ms
*defining the run-time control functions
.control
    run
    *plotting input and output voltages
    print v(1) v(2)
    write ./result/test_v1.raw v(1)
    write ./result/test_v3.raw v(3)
.endc
.end