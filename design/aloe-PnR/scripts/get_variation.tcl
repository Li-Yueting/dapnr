proc inst_dist {arg1 arg2} {
    # Source codes from - https://support.cadence.com/apex/ArticleAttachmentPortal?id=a1Od0000000nUIhEAM&pageName=ArticleContent
    # Find and report locations:
    set inst1_pt [lindex [dbGet [dbGet -p top.insts.name $arg1].pt] 0]
    set inst1_x [lindex $inst1_pt 0]
    set inst1_y [lindex $inst1_pt 1]
    set inst2_pt [lindex [dbGet [dbGet -p top.insts.name $arg2].pt] 0]
    set inst2_x [lindex $inst2_pt 0]
    set inst2_y [lindex $inst2_pt 1]
    puts ""
    puts "$arg1 is located at ($inst1_x , $inst1_y)"
    puts "$arg2 is located at ($inst2_x , $inst2_y)"

    # Find distance and report them:
    set x_dist [expr $inst1_x - $inst2_x]
    set y_dist [expr $inst1_y - $inst2_y]
    set r_dist [expr sqrt(($x_dist * $x_dist) + ($y_dist * $y_dist))]
    return $r_dist
}

proc get_variation {correlation_distance} {
# rr=correlation distance 100/1000; s = spacial-related variation; u = spatical-unrelated variation
set rr $correlation_distance ;# assign 100 here, can be 1000 as well
lassign { 2.61369E-14 8.53761E-20 3.38669E-11 3.91232E-12 4.93449E-11 3.38984E-13 5.82471E-15 9.86377E-11 9.50904E-13 6.82247E-18} u1 u2 u3 u4 u5 u6 u7 u8 u9 u13
# M1 -M2 
set r1_2 [inst_dist CM/M1 CM/M2]
set tmp [expr (double($r1_2)/$rr)**2]
set s1_2  [expr 2.9*($u1+$u2)*(1-$tmp)]
# M1-M3
set r1_3 [inst_dist CM/M1 CM/M3]
set tmp [expr (double($r1_3)/$rr)**2]
set s1_3  [expr 2.9*($u1+$u3)*(1-$tmp)]
# M2-M3
set r2_3 [inst_dist CM/M2 CM/M3]
set tmp [expr (double($r2_3)/$rr)**2]
set s2_3  [expr 2.9*($u2+$u3)*(1-$tmp)]
# M4-M8
set r4_8 [inst_dist amp/M4 amp/M8]
set tmp [expr (double($r4_8)/$rr)**2]
set s4_8  [expr 2.9*($u4+$u8)*(1-$tmp)]
# M4-13
set r4_13 [inst_dist amp/M4 amp/M13]
set tmp [expr (double($r4_13)/$rr)**2]
set s4_13  [expr 2.9*($u4+$u13)*(1-$tmp)]
# M8-13
set r8_13 [inst_dist amp/M8 amp/M13]
set tmp [expr (double($r8_13)/$rr)**2]
set s8_13  [expr 2.9*($u8+$u13)*(1-$tmp)]
# M5-M9
set r5_9 [inst_dist amp/M5 amp/M9]
set tmp [expr (double($r5_9)/$rr)**2]
set s5_9  [expr 2.9*($u5+$u9)*(1-$tmp)]
# M6-M7
set r6_7 [inst_dist amp/M6 amp/M7]
set tmp [expr (double($r6_7)/$rr)**2]
set s6_7  [expr 2.9*($u6+$u7)*(1-$tmp)]

set variation_sum [expr $s1_2 + $s1_3 + $s2_3+ $s4_8 + $s4_13 + $s8_13 + $s5_9 + $s6_7 ]
return $variation_sum
}