# _name_        interface.tcl
# _function_    exam values of 4 objective functions: area, netweight, netlength, mismatch variation 
# _author_      Yueting Li
# _date_        08-30-2022

proc interface {outdir design_name} {
    signoff $outdir $design_name
    layout_summary $outdir $design_name
}

proc population_pnr {base_dir gen design_name correlation_distance pop_size} {
    set dirs [glob -directory $base_dir -type d gen-$gen*] 
    # puts $dirs
    set fitness [list]
    set number 0
    set pop_size [expr $pop_size*2]
    while {$number< $pop_size} {
        source -verbose scripts/loadfp.tcl
        set dir $base_dir/gen-$gen-id-$number
        source -verbose $dir/netweight.tcl
        source -verbose scripts/pnr.tcl
        lassign [layout_summary $dir $design_name $correlation_distance] net_total_length total_variation
        set objective [expr - 100*$total_variation - 0.001*$net_total_length]
        #- $net_total_length 
        lappend fitness $objective
        incr number
    }
    # only signoff for best subject of popution for each generation
    set best [tcl::mathfunc::max {*}$fitness]
    set best_index [lsearch $fitness $best]
    set best_dir $base_dir/gen-$gen-id-$best_index
    signoff $best_dir $design_name
    # output fitness file
    set file $base_dir/summary/gen-$gen-fitness.txt
    set f [open $file w+]
    puts $f $fitness
    close $f
    return $fitness
}

proc signoff {outdir design_name} {
    # verification
    verifyConnectivity -noAntenna
    verify_drc
    # create_snapshot -name signoff -categories design
    # report_metric -file reports/metrics.html -format html
    # design.gds.gz
    streamOut $outdir/$design_name.gds.gz \
        -units 1000                       \
        -mapFile inputs/adk/rtk-stream-out.map
    # design.gds
    streamOut $outdir/$design_name-merged.gds  \
        -units 1000                            \
        -mapFile inputs/adk/rtk-stream-out.map \
        -merge inputs/adk/stdcells.gds
    # design.lvs.v
    saveNetlist -excludeLeafCell           \
        -flat                              \
        -phys                              \
        $outdir/$design_name.lvs.v
    # design.lef
    write_lef_abstract -5.8 -extractBlockObs $outdir/$design_name.lef
    # design.def.gz
    defOut -routing $outdir/$design_name.def.gz
} 

proc layout_summary {outdir design_name correlation_distance} {
    set filename [file join $outdir "layoutSum.txt"]
    # Objective 1 - Area & Utilization
    set chip_area [dbget top.fplan.area]
    set chip_core_box [dbGet top.fPlan.corebox]
    set llx [lindex [lindex $chip_core_box 0] 0]
    set lly [lindex [lindex $chip_core_box 0] 1]
    set urx [lindex [lindex $chip_core_box 0] 2]
    set ury [lindex [lindex $chip_core_box 0] 3]
    set chip_core_area [expr [expr $urx-$llx]*[expr $ury-$lly]]
    set std_area 0
    foreach area [dbGet top.insts.area] {
        set std_area [expr $std_area + $area]
    }
    set core_utilization [expr $std_area/$chip_core_area]
    set chip_utilization [expr $std_area/$chip_area] 
    # Objective 2 - Net Length & Weight
    set net_name [dbGet top.nets.name] ;#net name list
    set net_weight [dbGet top.nets.weight] ;# net weight list 
    set net_length [list] ;#net length list
    set net_total_length 0 
    foreach netPtr [dbGet top.nets] {
        set netName [dbGet $netPtr.name]
        set length [netLength $netName]
        lappend net_length $length
        set net_total_length [expr $net_total_length + $length]
    }
    # Objective 3 - Symmetry 
    # Objective 4 - Variation
    set total_variation [get_variation $correlation_distance]
    set rr $correlation_distance ;# assign 100 here, can be 1000 as well
    lassign {1.09E-03 1.63E-02 8.99E-03 4.94E-02 1.26E-01 2.50E-03 2.50E-03 5.17E-02 1.26E-01 5.11E-06} u1 u2 u3 u4 u5 u6 u7 u8 u9 u13
    set r1_2 [inst_dist CM/M1 CM/M2]
    set r1_3 [inst_dist CM/M1 CM/M3]
    set r2_3 [inst_dist CM/M2 CM/M3]
    set r4_8 [inst_dist amp/M4 amp/M8]
    set r4_13 [inst_dist amp/M4 amp/M13]
    set r8_13 [inst_dist amp/M8 amp/M13]
    set r5_9 [inst_dist amp/M5 amp/M9]
    set r6_7 [inst_dist amp/M6 amp/M7]


    # OUTPUT
    set fp [open $filename w+] ;# open the filename for writing
        puts $fp "Current Layout Characteristics"
        puts $fp "==================================================="
        puts $fp "chip_area: $chip_area" ;# omitting '-nonewline' will result in an extra newline
        puts $fp "chip_core_area: $chip_core_area"
        puts $fp "std_area: $std_area"
        puts $fp "net_total_length: $net_total_length"
        puts $fp "core_utilization: $core_utilization"
        puts $fp "chip_utilization: $chip_utilization"
        puts $fp "total_variation: $total_variation"
        puts $fp "----------------------------------------------------"
        puts $fp [format "%-20s %-20s %-20s" "NetName" "NetWeight" "NetLength"]
        for {set i 0} {$i< [llength $net_name]} {incr i} {
            puts $fp [format "%-20s %-20s %-20s" [lindex $net_name $i] [lindex $net_weight $i] [lindex $net_length $i]]
        }
        puts $fp [format "%-20s %-20s" "Instance" "Distance"]
        puts $fp [format "%-20s %-20s" r1_2 $r1_2]
        puts $fp [format "%-20s %-20s" r1_3 $r1_3]
        puts $fp [format "%-20s %-20s" r2_3 $r2_3]
        puts $fp [format "%-20s %-20s" r4_8 $r4_8]
        puts $fp [format "%-20s %-20s" r4_13 $r4_13]
        puts $fp [format "%-20s %-20s" r8_13 $r8_13]
        puts $fp [format "%-20s %-20s" r5_9 $r5_9]
        puts $fp [format "%-20s %-20s" r6_7 $r6_7]
        # puts $fp "net_name: $net_name"
        # puts $fp "net_weight: $net_weight"
        # puts $fp "net_length: $net_length"
    close $fp
    return "$net_total_length $total_variation"
}

proc netLength {netName} {
  set length 0
  foreach wirePtr [dbGet [dbGet -p top.nets.name $netName].wires] {
    set length [expr $length + [dbGet $wirePtr.length]]
  }
  return $length
}

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
lassign {1.09E-03 1.63E-02 8.99E-03 4.94E-02 1.26E-01 2.50E-03 2.50E-03 5.17E-02 1.26E-01 5.11E-06} u1 u2 u3 u4 u5 u6 u7 u8 u9 u13
# M1 -M2 
set r1_2 [inst_dist CM/M1 CM/M2]
set tmp [expr (double($r1_2)/$rr)**2]
set tmp1 [expr exp(-$tmp)]
set s1_2  [expr 2.9*($u1+$u2)*(1-$tmp1)]
# M1-M3
set r1_3 [inst_dist CM/M1 CM/M3]
set tmp [expr (double($r1_3)/$rr)**2]
set tmp1 [expr exp(-$tmp)]
set s1_3  [expr 2.9*($u1+$u3)*(1-$tmp1)]
# M2-M3
set r2_3 [inst_dist CM/M2 CM/M3]
set tmp [expr (double($r2_3)/$rr)**2]
set tmp1 [expr exp(-$tmp)]
set s2_3  [expr 2.9*($u2+$u3)*(1-$tmp1)]
# M4-M8
set r4_8 [inst_dist amp/M4 amp/M8]
set tmp [expr (double($r4_8)/$rr)**2]
set tmp1 [expr exp(-$tmp)]
set s4_8  [expr 2.9*($u4+$u8)*(1-$tmp1)]
# M4-13
set r4_13 [inst_dist amp/M4 amp/M13]
set tmp [expr (double($r4_13)/$rr)**2]
set tmp1 [expr exp(-$tmp)]
set s4_13  [expr 2.9*($u4+$u13)*(1-$tmp1)]
# M8-13
set r8_13 [inst_dist amp/M8 amp/M13]
set tmp [expr (double($r8_13)/$rr)**2]
set tmp1 [expr exp(-$tmp)]
set s8_13  [expr 2.9*($u8+$u13)*(1-$tmp1)]
# M5-M9
set r5_9 [inst_dist amp/M5 amp/M9]
set tmp [expr (double($r5_9)/$rr)**2]
set tmp1 [expr exp(-$tmp)]
set s5_9  [expr 2.9*($u5+$u9)*(1-$tmp1)]
# M6-M7
set r6_7 [inst_dist amp/M6 amp/M7]
set tmp [expr (double($r6_7)/$rr)**2]
set tmp1 [expr exp(-$tmp)]
set s6_7  [expr 2.9*($u6+$u7)*(1-$tmp1)]
set variation_sum [expr $s1_2 + $s1_3 + $s2_3+ $s4_8 + $s4_13 + $s8_13 + $s5_9 + $s6_7 ]
puts "variation_sum: $variation_sum"
return $variation_sum
}