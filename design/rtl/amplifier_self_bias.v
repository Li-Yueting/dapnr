module amplifier_self_bias (
    inout a,
    inout b,
    inout out,
    inout VSS,
    inout VDD
 );
    wire n1, n2, n3;
    sky130_asc_pfet_01v8_lvt_6 M3 (
        .GATE(n1),
        .SOURCE(VDD),
        .DRAIN(n1)
     );
    sky130_asc_pfet_01v8_lvt_6 M2 (
        .GATE(n1),
        .SOURCE(VDD),
        .DRAIN(out)
    );
    sky130_asc_nfet_01v8_lvt_9 M4 (
        .GATE(b),
        .SOURCE(n2),
        .DRAIN(n1)
    );
    sky130_asc_nfet_01v8_lvt_9 M1 (
        .GATE(a),
        .SOURCE(n2),
        .DRAIN(out)
    );
    sky130_asc_nfet_01v8_lvt_1 M7 (
        .GATE(n3),
        .SOURCE(VSS),
        .DRAIN(n2)
    );
    sky130_asc_nfet_01v8_lvt_1 M6 (
        .GATE(n3),
        .SOURCE(VSS),
        .DRAIN(n3)
    );
    sky130_asc_pfet_01v8_lvt_12 M5 (
        .GATE(out),
        .SOURCE(VDD),
        .DRAIN(n3)
    );
endmodule
