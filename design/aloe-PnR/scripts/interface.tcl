# _name_        interface.tcl
# _function_    exam values of 2 objective functions: area, netweight, netlength, mismatch variation 
# _author_      Yueting Li
# _date_        08-30-2022

proc interface {outdir design_name} {
    signoff $outdir $design_name
    layout_summary $outdir $design_name
}

proc list_negative {lst1} {
    set ll [llength $lst1]
    for {set n 0} {$n < $ll} {incr n} {
        lappend res [expr -[lindex $lst1 $n]]
    }
    return $res
}   

proc population_pnr {base_dir gen design_name pop_size} {
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
        lassign [layout_summary $dir $design_name] net_total_length 
        lappend nl $net_total_length
        incr number
    }
    # set nl_norm [nl_normalization $nl]
    set fitness [list_negative $nl]
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

proc layout_summary {outdir design_name} {
    set filename [file join $outdir "layoutSum.txt"]
    # Objective 0 - Area & Utilization (already optimized in floorplan step)
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
    # Objective 1 - Total Net Length
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
        puts $fp "----------------------------------------------------"
        puts $fp [format "%-20s %-20s %-20s" "NetName" "NetWeight" "NetLength"]
        for {set i 0} {$i< [llength $net_name]} {incr i} {
            puts $fp [format "%-20s %-20s %-20s" [lindex $net_name $i] [lindex $net_weight $i] [lindex $net_length $i]]
        }
        puts $fp "----------------------------------------------------"
        puts $fp "----------------------------------------------------"
    close $fp
    return $net_total_length
    # "$net_total_length $mds"
}

proc netLength {netName} {
  set length 0
  foreach wirePtr [dbGet [dbGet -p top.nets.name $netName].wires] {
    set length [expr $length + [dbGet $wirePtr.length]]
  }
  return $length
}


