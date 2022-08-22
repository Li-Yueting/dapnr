#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Tue Jun  7 00:05:05 2022                
#                                                     
#######################################################

#@(#)CDS: Innovus v20.13-s083_1 (64bit) 01/19/2021 16:51 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: NanoRoute 20.13-s083_1 NR201221-0721/20_13-UB (database version 18.20.538) {superthreading v2.13}
#@(#)CDS: AAE 20.13-s024 (64bit) 01/19/2021 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: CTE 20.13-s042_1 () Jan 14 2021 08:49:42 ( )
#@(#)CDS: SYNTECH 20.13-s015_1 () Jan  6 2021 07:44:41 ( )
#@(#)CDS: CPE v20.13-s092
#@(#)CDS: IQuantus/TQuantus 20.1.1-s453 (64bit) Fri Nov 20 21:16:44 PST 2020 (Linux 2.6.32-431.11.2.el6.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
setDistributeHost -local
define_proc_arguments cal_nl -info {Writes TCL scripts to run.
} -define_args {{-n "current run number" "int_value" int required}
    {-l "length of zero-padding" "int_value" int required}
    {-d "expression directory" "none" string required}
    {-b "blk_name" "none" string optional}
    }
define_proc_arguments areaRatio -info {Compute the ratio of the group-elements-cumulated-area to the group-bounding-box-area. 
} -define_args {
    {-group "Group name" "none" string {required}}
  }
define_proc_arguments swap_cells -info {Writes TCL scripts to run.
} -define_args {{-net "net name" "none" string required}
    {-tail "tied cell identifying string" "none" string optional}
    }
define_proc_arguments pnr -info {Writes TCL scripts to run.
} -define_args {{-g "generation" "none" string required}
	{-gennum "generation num" "int_value" int required}
	{-n "population size" "int_value" int required}
	{-pnr_dir "place and route directroy" "none" string required}
	{-t "timed" "" boolean optional}
	}
define_proc_arguments save_lvs_netlist -define_args {{-dcapNamePattern "regex pattern of dcaps" "none" string required} {-fVerilog "file name to be saved" "none" string required} {-flat "export flat or hierarchical verilog" "" boolean optional} }
set_message -id NRIG-39 -suppress
set_message -id IMPLF-201 -suppress
set_message -id IMPLF-44 -suppress
set_message -id IMPSP-9513 -suppress
set_message -id IMPSP-9514 -suppress
set_message -id IMPDB-2078 -suppress
setMessageLimit 5
set ::TimeLib::tsgMarkCellLatchConstructFlag 1
get_message -id GLOBAL-100 -suppress
get_message -id GLOBAL-100 -suppress
set _timing_save_restore_compression_mode hybrid
set conf_qxconf_file NULL
set conf_qxlib_file NULL
set defHierChar /
set distributed_client_message_echo 1
set distributed_mmmc_disable_reports_auto_redirection 0
set gpsPrivate::dpgNewAddBufsDBUpdate 1
set gpsPrivate::lsgEnableNewDbApiInRestruct 1
set init_gnd_net VSS
set init_io_file {}
set init_lef_file {/home/users/xingyuni/ee372/aloe-sky130/aloe/stemcell/rtk-tech.tlef  /home/users/xingyuni/ee372/aloe-sky130/aloe/stemcell/stdcells.lef}
set init_pwr_net VDD
set init_top_cell bgr_top
set init_verilog /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.v
get_message -id GLOBAL-100 -suppress
get_message -id GLOBAL-100 -suppress
set latch_time_borrow_mode max_borrow
set pegDefaultResScaleFactor 1.000000
set pegDetailResScaleFactor 1.000000
get_message -id GLOBAL-100 -suppress
get_message -id GLOBAL-100 -suppress
set report_inactive_arcs_format {from to when arc_type sense reason}
set timing_library_load_pin_cap_indices {}
set timing_library_write_library_to_directory {}
set tso_post_client_restore_command {update_timing ; write_eco_opt_db ;}
set init_design_uniquify 1
init_design
setRouteMode -earlyGlobalMaxRouteLayer 5
setPinAssignMode -maxLayer 5
setNanoRouteMode -routeTopRoutingLayer 5
setDesignMode -topRoutingLayer met4
setDesignMode -process 16 -flowEffort standard
setViaGenMode -reset
setViaGenMode -optimize_cross_via true
setViaGenMode -optimize_via_on_routing_track true
setViaGenMode -viarule_preference default
setViaGenMode -ignore_DRC false
setPlaceMode -checkDiffusionWidth true
setPlaceMode -coreEffort high
setNanoRouteMode -routeExpAdvancedTechnology true
setNanoRouteMode -routeBottomRoutingLayer 2 -drouteAutoStop false -drouteExpAdvancedMarFix true -drouteFixAntenna true -drouteUseMultiCutViaEffort high -routeWithTimingDriven false -routeWithSiDriven false -routeAutoPinAccessForBlockPin true -routeConcurrentMinimizeViaCountEffort high
setStreamOutMode -textSize 0.1
setStreamOutMode -virtualConnection false
globalNetConnect VDD -type tiehi -pin VDD -inst *
globalNetConnect VSS -type tielo -pin VSS -inst *
globalNetConnect VDD -type pgpin -pin VDD -inst *
globalNetConnect VSS -type pgpin -pin VSS -inst *
globalNetConnect VDD -type tiehi -pin VPWR -inst *
globalNetConnect VSS -type tielo -pin VGND -inst *
globalNetConnect VDD -type tiehi -pin VPB -inst *
globalNetConnect VSS -type tielo -pin VNB -inst *
globalNetConnect VDD -type pgpin -pin VPWR -inst *
globalNetConnect VSS -type pgpin -pin VGND -inst *
globalNetConnect VDD -type pgpin -pin VPB -inst *
globalNetConnect VSS -type pgpin -pin VNB -inst *
globalNetConnect VSS -type pgpin -net VSS -inst *
globalNetConnect VSS -type net -pin SOURCE -inst *nfet*
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
defOut -floorplan -noStdCells /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 14
createNetGroup group1
specifyNetWeight va 15
createNetGroup group2
specifyNetWeight vb 3
createNetGroup group3
specifyNetWeight vbg 10
createNetGroup group4
specifyNetWeight VSS 8
createNetGroup group5
specifyNetWeight vc 18
createNetGroup group6
specifyNetWeight l17 17
createNetGroup group7
specifyNetWeight l18 14
createNetGroup group8
specifyNetWeight l19 11
createNetGroup group9
specifyNetWeight l20 17
createNetGroup group10
specifyNetWeight amp/vg 13
createNetGroup group11
specifyNetWeight amp/vq 20
createNetGroup group12
specifyNetWeight amp/vx 8
createNetGroup group13
specifyNetWeight VNW 18
createNetGroup group14
specifyNetWeight VDDPST 6
createNetGroup group15
specifyNetWeight POC 11
createNetGroup group16
specifyNetWeight VDDCE 6
createNetGroup group17
specifyNetWeight VDDPE 5
createNetGroup group18
specifyNetWeight VPW 10
createNetGroup group19
specifyNetWeight VSSPST 19
createNetGroup group20
specifyNetWeight VSSE 6
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 11
createNetGroup group22
specifyNetWeight BGR_Core/l6 5
createNetGroup group23
specifyNetWeight BGR_Core/l7 4
createNetGroup group24
specifyNetWeight BGR_Core/l8 12
createNetGroup group25
specifyNetWeight BGR_Core/l10 17
createNetGroup group26
specifyNetWeight BGR_Core/l11 19
createNetGroup group27
specifyNetWeight BGR_Core/l1 5
createNetGroup group28
specifyNetWeight BGR_Core/l2 13
createNetGroup group29
specifyNetWeight BGR_Core/l4 15
createNetGroup group30
specifyNetWeight BGR_Core/l5 12
createNetGroup group31
specifyNetWeight BGR_Core/l12 8
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 19
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 17
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 16
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 18
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 10
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 3
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 19
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 2
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 4
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 14
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 2
createNetGroup group43
specifyNetWeight R17/l 17
createNetGroup group44
specifyNetWeight R18/l 12
createNetGroup group45
specifyNetWeight R19/l 9
createNetGroup group46
specifyNetWeight R20/l 12
createNetGroup group47
specifyNetWeight VDD 4
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 20
createNetGroup group1
specifyNetWeight va 9
createNetGroup group2
specifyNetWeight vb 9
createNetGroup group3
specifyNetWeight vbg 6
createNetGroup group4
specifyNetWeight VSS 9
createNetGroup group5
specifyNetWeight vc 19
createNetGroup group6
specifyNetWeight l17 16
createNetGroup group7
specifyNetWeight l18 4
createNetGroup group8
specifyNetWeight l19 4
createNetGroup group9
specifyNetWeight l20 12
createNetGroup group10
specifyNetWeight amp/vg 18
createNetGroup group11
specifyNetWeight amp/vq 17
createNetGroup group12
specifyNetWeight amp/vx 5
createNetGroup group13
specifyNetWeight VNW 11
createNetGroup group14
specifyNetWeight VDDPST 19
createNetGroup group15
specifyNetWeight POC 11
createNetGroup group16
specifyNetWeight VDDCE 5
createNetGroup group17
specifyNetWeight VDDPE 19
createNetGroup group18
specifyNetWeight VPW 12
createNetGroup group19
specifyNetWeight VSSPST 19
createNetGroup group20
specifyNetWeight VSSE 8
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 19
createNetGroup group22
specifyNetWeight BGR_Core/l6 20
createNetGroup group23
specifyNetWeight BGR_Core/l7 11
createNetGroup group24
specifyNetWeight BGR_Core/l8 16
createNetGroup group25
specifyNetWeight BGR_Core/l10 4
createNetGroup group26
specifyNetWeight BGR_Core/l11 14
createNetGroup group27
specifyNetWeight BGR_Core/l1 12
createNetGroup group28
specifyNetWeight BGR_Core/l2 20
createNetGroup group29
specifyNetWeight BGR_Core/l4 9
createNetGroup group30
specifyNetWeight BGR_Core/l5 11
createNetGroup group31
specifyNetWeight BGR_Core/l12 7
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 8
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 7
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 3
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 10
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 17
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 4
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 4
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 6
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 6
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 3
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 4
createNetGroup group43
specifyNetWeight R17/l 19
createNetGroup group44
specifyNetWeight R18/l 14
createNetGroup group45
specifyNetWeight R19/l 18
createNetGroup group46
specifyNetWeight R20/l 10
createNetGroup group47
specifyNetWeight VDD 18
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 8
createNetGroup group1
specifyNetWeight va 20
createNetGroup group2
specifyNetWeight vb 15
createNetGroup group3
specifyNetWeight vbg 20
createNetGroup group4
specifyNetWeight VSS 8
createNetGroup group5
specifyNetWeight vc 10
createNetGroup group6
specifyNetWeight l17 16
createNetGroup group7
specifyNetWeight l18 17
createNetGroup group8
specifyNetWeight l19 13
createNetGroup group9
specifyNetWeight l20 4
createNetGroup group10
specifyNetWeight amp/vg 12
createNetGroup group11
specifyNetWeight amp/vq 5
createNetGroup group12
specifyNetWeight amp/vx 17
createNetGroup group13
specifyNetWeight VNW 20
createNetGroup group14
specifyNetWeight VDDPST 12
createNetGroup group15
specifyNetWeight POC 8
createNetGroup group16
specifyNetWeight VDDCE 9
createNetGroup group17
specifyNetWeight VDDPE 2
createNetGroup group18
specifyNetWeight VPW 10
createNetGroup group19
specifyNetWeight VSSPST 5
createNetGroup group20
specifyNetWeight VSSE 9
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 13
createNetGroup group22
specifyNetWeight BGR_Core/l6 7
createNetGroup group23
specifyNetWeight BGR_Core/l7 12
createNetGroup group24
specifyNetWeight BGR_Core/l8 15
createNetGroup group25
specifyNetWeight BGR_Core/l10 3
createNetGroup group26
specifyNetWeight BGR_Core/l11 5
createNetGroup group27
specifyNetWeight BGR_Core/l1 6
createNetGroup group28
specifyNetWeight BGR_Core/l2 9
createNetGroup group29
specifyNetWeight BGR_Core/l4 3
createNetGroup group30
specifyNetWeight BGR_Core/l5 20
createNetGroup group31
specifyNetWeight BGR_Core/l12 19
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 4
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 2
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 5
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 8
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 20
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 5
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 14
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 4
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 13
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 5
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 3
createNetGroup group43
specifyNetWeight R17/l 2
createNetGroup group44
specifyNetWeight R18/l 8
createNetGroup group45
specifyNetWeight R19/l 7
createNetGroup group46
specifyNetWeight R20/l 5
createNetGroup group47
specifyNetWeight VDD 17
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 3
createNetGroup group1
specifyNetWeight va 2
createNetGroup group2
specifyNetWeight vb 19
createNetGroup group3
specifyNetWeight vbg 15
createNetGroup group4
specifyNetWeight VSS 16
createNetGroup group5
specifyNetWeight vc 5
createNetGroup group6
specifyNetWeight l17 10
createNetGroup group7
specifyNetWeight l18 4
createNetGroup group8
specifyNetWeight l19 9
createNetGroup group9
specifyNetWeight l20 4
createNetGroup group10
specifyNetWeight amp/vg 11
createNetGroup group11
specifyNetWeight amp/vq 13
createNetGroup group12
specifyNetWeight amp/vx 15
createNetGroup group13
specifyNetWeight VNW 7
createNetGroup group14
specifyNetWeight VDDPST 3
createNetGroup group15
specifyNetWeight POC 18
createNetGroup group16
specifyNetWeight VDDCE 16
createNetGroup group17
specifyNetWeight VDDPE 3
createNetGroup group18
specifyNetWeight VPW 5
createNetGroup group19
specifyNetWeight VSSPST 14
createNetGroup group20
specifyNetWeight VSSE 8
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 10
createNetGroup group22
specifyNetWeight BGR_Core/l6 13
createNetGroup group23
specifyNetWeight BGR_Core/l7 17
createNetGroup group24
specifyNetWeight BGR_Core/l8 20
createNetGroup group25
specifyNetWeight BGR_Core/l10 7
createNetGroup group26
specifyNetWeight BGR_Core/l11 8
createNetGroup group27
specifyNetWeight BGR_Core/l1 3
createNetGroup group28
specifyNetWeight BGR_Core/l2 7
createNetGroup group29
specifyNetWeight BGR_Core/l4 7
createNetGroup group30
specifyNetWeight BGR_Core/l5 12
createNetGroup group31
specifyNetWeight BGR_Core/l12 18
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 10
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 5
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 16
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 7
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 2
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 17
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 15
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 20
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 18
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 11
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 13
createNetGroup group43
specifyNetWeight R17/l 14
createNetGroup group44
specifyNetWeight R18/l 10
createNetGroup group45
specifyNetWeight R19/l 6
createNetGroup group46
specifyNetWeight R20/l 19
createNetGroup group47
specifyNetWeight VDD 2
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 4
createNetGroup group1
specifyNetWeight va 12
createNetGroup group2
specifyNetWeight vb 3
createNetGroup group3
specifyNetWeight vbg 19
createNetGroup group4
specifyNetWeight VSS 3
createNetGroup group5
specifyNetWeight vc 10
createNetGroup group6
specifyNetWeight l17 6
createNetGroup group7
specifyNetWeight l18 9
createNetGroup group8
specifyNetWeight l19 17
createNetGroup group9
specifyNetWeight l20 13
createNetGroup group10
specifyNetWeight amp/vg 11
createNetGroup group11
specifyNetWeight amp/vq 13
createNetGroup group12
specifyNetWeight amp/vx 20
createNetGroup group13
specifyNetWeight VNW 6
createNetGroup group14
specifyNetWeight VDDPST 11
createNetGroup group15
specifyNetWeight POC 14
createNetGroup group16
specifyNetWeight VDDCE 15
createNetGroup group17
specifyNetWeight VDDPE 4
createNetGroup group18
specifyNetWeight VPW 2
createNetGroup group19
specifyNetWeight VSSPST 8
createNetGroup group20
specifyNetWeight VSSE 12
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 7
createNetGroup group22
specifyNetWeight BGR_Core/l6 9
createNetGroup group23
specifyNetWeight BGR_Core/l7 9
createNetGroup group24
specifyNetWeight BGR_Core/l8 16
createNetGroup group25
specifyNetWeight BGR_Core/l10 14
createNetGroup group26
specifyNetWeight BGR_Core/l11 20
createNetGroup group27
specifyNetWeight BGR_Core/l1 15
createNetGroup group28
specifyNetWeight BGR_Core/l2 3
createNetGroup group29
specifyNetWeight BGR_Core/l4 14
createNetGroup group30
specifyNetWeight BGR_Core/l5 20
createNetGroup group31
specifyNetWeight BGR_Core/l12 15
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 3
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 7
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 16
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 4
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 10
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 7
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 16
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 18
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 17
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 19
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 2
createNetGroup group43
specifyNetWeight R17/l 3
createNetGroup group44
specifyNetWeight R18/l 17
createNetGroup group45
specifyNetWeight R19/l 12
createNetGroup group46
specifyNetWeight R20/l 11
createNetGroup group47
specifyNetWeight VDD 16
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 15
createNetGroup group1
specifyNetWeight va 8
createNetGroup group2
specifyNetWeight vb 19
createNetGroup group3
specifyNetWeight vbg 4
createNetGroup group4
specifyNetWeight VSS 16
createNetGroup group5
specifyNetWeight vc 6
createNetGroup group6
specifyNetWeight l17 2
createNetGroup group7
specifyNetWeight l18 14
createNetGroup group8
specifyNetWeight l19 15
createNetGroup group9
specifyNetWeight l20 12
createNetGroup group10
specifyNetWeight amp/vg 2
createNetGroup group11
specifyNetWeight amp/vq 8
createNetGroup group12
specifyNetWeight amp/vx 2
createNetGroup group13
specifyNetWeight VNW 2
createNetGroup group14
specifyNetWeight VDDPST 18
createNetGroup group15
specifyNetWeight POC 5
createNetGroup group16
specifyNetWeight VDDCE 8
createNetGroup group17
specifyNetWeight VDDPE 5
createNetGroup group18
specifyNetWeight VPW 8
createNetGroup group19
specifyNetWeight VSSPST 11
createNetGroup group20
specifyNetWeight VSSE 10
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 7
createNetGroup group22
specifyNetWeight BGR_Core/l6 5
createNetGroup group23
specifyNetWeight BGR_Core/l7 17
createNetGroup group24
specifyNetWeight BGR_Core/l8 14
createNetGroup group25
specifyNetWeight BGR_Core/l10 4
createNetGroup group26
specifyNetWeight BGR_Core/l11 2
createNetGroup group27
specifyNetWeight BGR_Core/l1 10
createNetGroup group28
specifyNetWeight BGR_Core/l2 16
createNetGroup group29
specifyNetWeight BGR_Core/l4 5
createNetGroup group30
specifyNetWeight BGR_Core/l5 10
createNetGroup group31
specifyNetWeight BGR_Core/l12 6
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 18
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 13
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 5
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 6
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 10
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 2
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 3
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 3
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 8
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 10
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 19
createNetGroup group43
specifyNetWeight R17/l 12
createNetGroup group44
specifyNetWeight R18/l 13
createNetGroup group45
specifyNetWeight R19/l 20
createNetGroup group46
specifyNetWeight R20/l 3
createNetGroup group47
specifyNetWeight VDD 17
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 15
createNetGroup group1
specifyNetWeight va 13
createNetGroup group2
specifyNetWeight vb 19
createNetGroup group3
specifyNetWeight vbg 7
createNetGroup group4
specifyNetWeight VSS 12
createNetGroup group5
specifyNetWeight vc 8
createNetGroup group6
specifyNetWeight l17 14
createNetGroup group7
specifyNetWeight l18 20
createNetGroup group8
specifyNetWeight l19 11
createNetGroup group9
specifyNetWeight l20 2
createNetGroup group10
specifyNetWeight amp/vg 6
createNetGroup group11
specifyNetWeight amp/vq 6
createNetGroup group12
specifyNetWeight amp/vx 10
createNetGroup group13
specifyNetWeight VNW 12
createNetGroup group14
specifyNetWeight VDDPST 12
createNetGroup group15
specifyNetWeight POC 13
createNetGroup group16
specifyNetWeight VDDCE 4
createNetGroup group17
specifyNetWeight VDDPE 12
createNetGroup group18
specifyNetWeight VPW 3
createNetGroup group19
specifyNetWeight VSSPST 3
createNetGroup group20
specifyNetWeight VSSE 10
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 7
createNetGroup group22
specifyNetWeight BGR_Core/l6 6
createNetGroup group23
specifyNetWeight BGR_Core/l7 20
createNetGroup group24
specifyNetWeight BGR_Core/l8 11
createNetGroup group25
specifyNetWeight BGR_Core/l10 13
createNetGroup group26
specifyNetWeight BGR_Core/l11 14
createNetGroup group27
specifyNetWeight BGR_Core/l1 19
createNetGroup group28
specifyNetWeight BGR_Core/l2 6
createNetGroup group29
specifyNetWeight BGR_Core/l4 11
createNetGroup group30
specifyNetWeight BGR_Core/l5 5
createNetGroup group31
specifyNetWeight BGR_Core/l12 17
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 9
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 3
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 11
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 7
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 18
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 4
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 11
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 14
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 12
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 11
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 15
createNetGroup group43
specifyNetWeight R17/l 5
createNetGroup group44
specifyNetWeight R18/l 5
createNetGroup group45
specifyNetWeight R19/l 19
createNetGroup group46
specifyNetWeight R20/l 17
createNetGroup group47
specifyNetWeight VDD 17
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 12
createNetGroup group1
specifyNetWeight va 5
createNetGroup group2
specifyNetWeight vb 17
createNetGroup group3
specifyNetWeight vbg 5
createNetGroup group4
specifyNetWeight VSS 17
createNetGroup group5
specifyNetWeight vc 17
createNetGroup group6
specifyNetWeight l17 15
createNetGroup group7
specifyNetWeight l18 3
createNetGroup group8
specifyNetWeight l19 11
createNetGroup group9
specifyNetWeight l20 12
createNetGroup group10
specifyNetWeight amp/vg 6
createNetGroup group11
specifyNetWeight amp/vq 7
createNetGroup group12
specifyNetWeight amp/vx 20
createNetGroup group13
specifyNetWeight VNW 14
createNetGroup group14
specifyNetWeight VDDPST 4
createNetGroup group15
specifyNetWeight POC 4
createNetGroup group16
specifyNetWeight VDDCE 4
createNetGroup group17
specifyNetWeight VDDPE 8
createNetGroup group18
specifyNetWeight VPW 9
createNetGroup group19
specifyNetWeight VSSPST 3
createNetGroup group20
specifyNetWeight VSSE 14
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 2
createNetGroup group22
specifyNetWeight BGR_Core/l6 5
createNetGroup group23
specifyNetWeight BGR_Core/l7 14
createNetGroup group24
specifyNetWeight BGR_Core/l8 19
createNetGroup group25
specifyNetWeight BGR_Core/l10 18
createNetGroup group26
specifyNetWeight BGR_Core/l11 11
createNetGroup group27
specifyNetWeight BGR_Core/l1 16
createNetGroup group28
specifyNetWeight BGR_Core/l2 17
createNetGroup group29
specifyNetWeight BGR_Core/l4 20
createNetGroup group30
specifyNetWeight BGR_Core/l5 8
createNetGroup group31
specifyNetWeight BGR_Core/l12 15
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 4
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 13
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 9
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 10
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 20
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 7
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 15
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 8
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 13
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 5
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 4
createNetGroup group43
specifyNetWeight R17/l 2
createNetGroup group44
specifyNetWeight R18/l 18
createNetGroup group45
specifyNetWeight R19/l 16
createNetGroup group46
specifyNetWeight R20/l 8
createNetGroup group47
specifyNetWeight VDD 5
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 14
createNetGroup group1
specifyNetWeight va 10
createNetGroup group2
specifyNetWeight vb 8
createNetGroup group3
specifyNetWeight vbg 3
createNetGroup group4
specifyNetWeight VSS 3
createNetGroup group5
specifyNetWeight vc 8
createNetGroup group6
specifyNetWeight l17 6
createNetGroup group7
specifyNetWeight l18 5
createNetGroup group8
specifyNetWeight l19 8
createNetGroup group9
specifyNetWeight l20 16
createNetGroup group10
specifyNetWeight amp/vg 14
createNetGroup group11
specifyNetWeight amp/vq 13
createNetGroup group12
specifyNetWeight amp/vx 19
createNetGroup group13
specifyNetWeight VNW 6
createNetGroup group14
specifyNetWeight VDDPST 5
createNetGroup group15
specifyNetWeight POC 17
createNetGroup group16
specifyNetWeight VDDCE 6
createNetGroup group17
specifyNetWeight VDDPE 20
createNetGroup group18
specifyNetWeight VPW 14
createNetGroup group19
specifyNetWeight VSSPST 15
createNetGroup group20
specifyNetWeight VSSE 18
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 17
createNetGroup group22
specifyNetWeight BGR_Core/l6 12
createNetGroup group23
specifyNetWeight BGR_Core/l7 17
createNetGroup group24
specifyNetWeight BGR_Core/l8 17
createNetGroup group25
specifyNetWeight BGR_Core/l10 8
createNetGroup group26
specifyNetWeight BGR_Core/l11 19
createNetGroup group27
specifyNetWeight BGR_Core/l1 9
createNetGroup group28
specifyNetWeight BGR_Core/l2 2
createNetGroup group29
specifyNetWeight BGR_Core/l4 12
createNetGroup group30
specifyNetWeight BGR_Core/l5 12
createNetGroup group31
specifyNetWeight BGR_Core/l12 12
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 3
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 18
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 6
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 10
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 6
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 14
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 20
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 11
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 17
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 4
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 4
createNetGroup group43
specifyNetWeight R17/l 18
createNetGroup group44
specifyNetWeight R18/l 3
createNetGroup group45
specifyNetWeight R19/l 4
createNetGroup group46
specifyNetWeight R20/l 9
createNetGroup group47
specifyNetWeight VDD 6
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 11
createNetGroup group1
specifyNetWeight va 2
createNetGroup group2
specifyNetWeight vb 16
createNetGroup group3
specifyNetWeight vbg 12
createNetGroup group4
specifyNetWeight VSS 3
createNetGroup group5
specifyNetWeight vc 7
createNetGroup group6
specifyNetWeight l17 6
createNetGroup group7
specifyNetWeight l18 16
createNetGroup group8
specifyNetWeight l19 13
createNetGroup group9
specifyNetWeight l20 18
createNetGroup group10
specifyNetWeight amp/vg 14
createNetGroup group11
specifyNetWeight amp/vq 18
createNetGroup group12
specifyNetWeight amp/vx 18
createNetGroup group13
specifyNetWeight VNW 3
createNetGroup group14
specifyNetWeight VDDPST 20
createNetGroup group15
specifyNetWeight POC 4
createNetGroup group16
specifyNetWeight VDDCE 18
createNetGroup group17
specifyNetWeight VDDPE 4
createNetGroup group18
specifyNetWeight VPW 15
createNetGroup group19
specifyNetWeight VSSPST 8
createNetGroup group20
specifyNetWeight VSSE 11
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 19
createNetGroup group22
specifyNetWeight BGR_Core/l6 15
createNetGroup group23
specifyNetWeight BGR_Core/l7 17
createNetGroup group24
specifyNetWeight BGR_Core/l8 14
createNetGroup group25
specifyNetWeight BGR_Core/l10 20
createNetGroup group26
specifyNetWeight BGR_Core/l11 9
createNetGroup group27
specifyNetWeight BGR_Core/l1 2
createNetGroup group28
specifyNetWeight BGR_Core/l2 2
createNetGroup group29
specifyNetWeight BGR_Core/l4 7
createNetGroup group30
specifyNetWeight BGR_Core/l5 11
createNetGroup group31
specifyNetWeight BGR_Core/l12 18
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 20
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 10
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 12
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 4
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 17
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 10
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 11
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 15
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 14
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 14
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 3
createNetGroup group43
specifyNetWeight R17/l 7
createNetGroup group44
specifyNetWeight R18/l 6
createNetGroup group45
specifyNetWeight R19/l 9
createNetGroup group46
specifyNetWeight R20/l 11
createNetGroup group47
specifyNetWeight VDD 12
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 3
createNetGroup group1
specifyNetWeight va 17
createNetGroup group2
specifyNetWeight vb 15
createNetGroup group3
specifyNetWeight vbg 6
createNetGroup group4
specifyNetWeight VSS 3
createNetGroup group5
specifyNetWeight vc 17
createNetGroup group6
specifyNetWeight l17 4
createNetGroup group7
specifyNetWeight l18 6
createNetGroup group8
specifyNetWeight l19 13
createNetGroup group9
specifyNetWeight l20 15
createNetGroup group10
specifyNetWeight amp/vg 3
createNetGroup group11
specifyNetWeight amp/vq 16
createNetGroup group12
specifyNetWeight amp/vx 14
createNetGroup group13
specifyNetWeight VNW 16
createNetGroup group14
specifyNetWeight VDDPST 3
createNetGroup group15
specifyNetWeight POC 5
createNetGroup group16
specifyNetWeight VDDCE 17
createNetGroup group17
specifyNetWeight VDDPE 6
createNetGroup group18
specifyNetWeight VPW 2
createNetGroup group19
specifyNetWeight VSSPST 3
createNetGroup group20
specifyNetWeight VSSE 6
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 12
createNetGroup group22
specifyNetWeight BGR_Core/l6 5
createNetGroup group23
specifyNetWeight BGR_Core/l7 19
createNetGroup group24
specifyNetWeight BGR_Core/l8 13
createNetGroup group25
specifyNetWeight BGR_Core/l10 8
createNetGroup group26
specifyNetWeight BGR_Core/l11 14
createNetGroup group27
specifyNetWeight BGR_Core/l1 17
createNetGroup group28
specifyNetWeight BGR_Core/l2 5
createNetGroup group29
specifyNetWeight BGR_Core/l4 3
createNetGroup group30
specifyNetWeight BGR_Core/l5 16
createNetGroup group31
specifyNetWeight BGR_Core/l12 12
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 5
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 11
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 6
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 14
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 11
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 5
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 18
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 8
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 3
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 14
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 16
createNetGroup group43
specifyNetWeight R17/l 13
createNetGroup group44
specifyNetWeight R18/l 8
createNetGroup group45
specifyNetWeight R19/l 16
createNetGroup group46
specifyNetWeight R20/l 13
createNetGroup group47
specifyNetWeight VDD 4
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 3
createNetGroup group1
specifyNetWeight va 17
createNetGroup group2
specifyNetWeight vb 10
createNetGroup group3
specifyNetWeight vbg 2
createNetGroup group4
specifyNetWeight VSS 4
createNetGroup group5
specifyNetWeight vc 18
createNetGroup group6
specifyNetWeight l17 20
createNetGroup group7
specifyNetWeight l18 20
createNetGroup group8
specifyNetWeight l19 8
createNetGroup group9
specifyNetWeight l20 9
createNetGroup group10
specifyNetWeight amp/vg 4
createNetGroup group11
specifyNetWeight amp/vq 18
createNetGroup group12
specifyNetWeight amp/vx 18
createNetGroup group13
specifyNetWeight VNW 15
createNetGroup group14
specifyNetWeight VDDPST 18
createNetGroup group15
specifyNetWeight POC 11
createNetGroup group16
specifyNetWeight VDDCE 5
createNetGroup group17
specifyNetWeight VDDPE 6
createNetGroup group18
specifyNetWeight VPW 15
createNetGroup group19
specifyNetWeight VSSPST 20
createNetGroup group20
specifyNetWeight VSSE 15
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 4
createNetGroup group22
specifyNetWeight BGR_Core/l6 5
createNetGroup group23
specifyNetWeight BGR_Core/l7 15
createNetGroup group24
specifyNetWeight BGR_Core/l8 4
createNetGroup group25
specifyNetWeight BGR_Core/l10 5
createNetGroup group26
specifyNetWeight BGR_Core/l11 15
createNetGroup group27
specifyNetWeight BGR_Core/l1 6
createNetGroup group28
specifyNetWeight BGR_Core/l2 2
createNetGroup group29
specifyNetWeight BGR_Core/l4 16
createNetGroup group30
specifyNetWeight BGR_Core/l5 15
createNetGroup group31
specifyNetWeight BGR_Core/l12 15
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 2
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 17
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 12
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 10
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 4
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 13
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 4
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 5
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 13
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 2
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 13
createNetGroup group43
specifyNetWeight R17/l 13
createNetGroup group44
specifyNetWeight R18/l 7
createNetGroup group45
specifyNetWeight R19/l 2
createNetGroup group46
specifyNetWeight R20/l 9
createNetGroup group47
specifyNetWeight VDD 13
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 6
createNetGroup group1
specifyNetWeight va 8
createNetGroup group2
specifyNetWeight vb 2
createNetGroup group3
specifyNetWeight vbg 8
createNetGroup group4
specifyNetWeight VSS 3
createNetGroup group5
specifyNetWeight vc 5
createNetGroup group6
specifyNetWeight l17 2
createNetGroup group7
specifyNetWeight l18 11
createNetGroup group8
specifyNetWeight l19 13
createNetGroup group9
specifyNetWeight l20 2
createNetGroup group10
specifyNetWeight amp/vg 9
createNetGroup group11
specifyNetWeight amp/vq 6
createNetGroup group12
specifyNetWeight amp/vx 7
createNetGroup group13
specifyNetWeight VNW 16
createNetGroup group14
specifyNetWeight VDDPST 5
createNetGroup group15
specifyNetWeight POC 17
createNetGroup group16
specifyNetWeight VDDCE 13
createNetGroup group17
specifyNetWeight VDDPE 10
createNetGroup group18
specifyNetWeight VPW 6
createNetGroup group19
specifyNetWeight VSSPST 2
createNetGroup group20
specifyNetWeight VSSE 8
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 13
createNetGroup group22
specifyNetWeight BGR_Core/l6 12
createNetGroup group23
specifyNetWeight BGR_Core/l7 17
createNetGroup group24
specifyNetWeight BGR_Core/l8 11
createNetGroup group25
specifyNetWeight BGR_Core/l10 11
createNetGroup group26
specifyNetWeight BGR_Core/l11 19
createNetGroup group27
specifyNetWeight BGR_Core/l1 12
createNetGroup group28
specifyNetWeight BGR_Core/l2 7
createNetGroup group29
specifyNetWeight BGR_Core/l4 20
createNetGroup group30
specifyNetWeight BGR_Core/l5 4
createNetGroup group31
specifyNetWeight BGR_Core/l12 5
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 19
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 20
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 11
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 7
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 14
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 6
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 6
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 9
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 12
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 18
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 9
createNetGroup group43
specifyNetWeight R17/l 9
createNetGroup group44
specifyNetWeight R18/l 7
createNetGroup group45
specifyNetWeight R19/l 11
createNetGroup group46
specifyNetWeight R20/l 13
createNetGroup group47
specifyNetWeight VDD 15
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 6
createNetGroup group1
specifyNetWeight va 2
createNetGroup group2
specifyNetWeight vb 14
createNetGroup group3
specifyNetWeight vbg 4
createNetGroup group4
specifyNetWeight VSS 18
createNetGroup group5
specifyNetWeight vc 4
createNetGroup group6
specifyNetWeight l17 6
createNetGroup group7
specifyNetWeight l18 15
createNetGroup group8
specifyNetWeight l19 11
createNetGroup group9
specifyNetWeight l20 19
createNetGroup group10
specifyNetWeight amp/vg 15
createNetGroup group11
specifyNetWeight amp/vq 6
createNetGroup group12
specifyNetWeight amp/vx 20
createNetGroup group13
specifyNetWeight VNW 15
createNetGroup group14
specifyNetWeight VDDPST 11
createNetGroup group15
specifyNetWeight POC 13
createNetGroup group16
specifyNetWeight VDDCE 4
createNetGroup group17
specifyNetWeight VDDPE 9
createNetGroup group18
specifyNetWeight VPW 16
createNetGroup group19
specifyNetWeight VSSPST 13
createNetGroup group20
specifyNetWeight VSSE 18
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 3
createNetGroup group22
specifyNetWeight BGR_Core/l6 14
createNetGroup group23
specifyNetWeight BGR_Core/l7 15
createNetGroup group24
specifyNetWeight BGR_Core/l8 2
createNetGroup group25
specifyNetWeight BGR_Core/l10 15
createNetGroup group26
specifyNetWeight BGR_Core/l11 12
createNetGroup group27
specifyNetWeight BGR_Core/l1 16
createNetGroup group28
specifyNetWeight BGR_Core/l2 8
createNetGroup group29
specifyNetWeight BGR_Core/l4 13
createNetGroup group30
specifyNetWeight BGR_Core/l5 11
createNetGroup group31
specifyNetWeight BGR_Core/l12 17
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 4
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 7
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 5
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 10
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 5
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 19
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 6
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 16
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 14
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 7
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 15
createNetGroup group43
specifyNetWeight R17/l 15
createNetGroup group44
specifyNetWeight R18/l 7
createNetGroup group45
specifyNetWeight R19/l 9
createNetGroup group46
specifyNetWeight R20/l 16
createNetGroup group47
specifyNetWeight VDD 12
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 6
createNetGroup group1
specifyNetWeight va 13
createNetGroup group2
specifyNetWeight vb 16
createNetGroup group3
specifyNetWeight vbg 4
createNetGroup group4
specifyNetWeight VSS 12
createNetGroup group5
specifyNetWeight vc 17
createNetGroup group6
specifyNetWeight l17 8
createNetGroup group7
specifyNetWeight l18 11
createNetGroup group8
specifyNetWeight l19 2
createNetGroup group9
specifyNetWeight l20 16
createNetGroup group10
specifyNetWeight amp/vg 16
createNetGroup group11
specifyNetWeight amp/vq 2
createNetGroup group12
specifyNetWeight amp/vx 8
createNetGroup group13
specifyNetWeight VNW 11
createNetGroup group14
specifyNetWeight VDDPST 5
createNetGroup group15
specifyNetWeight POC 11
createNetGroup group16
specifyNetWeight VDDCE 19
createNetGroup group17
specifyNetWeight VDDPE 6
createNetGroup group18
specifyNetWeight VPW 15
createNetGroup group19
specifyNetWeight VSSPST 17
createNetGroup group20
specifyNetWeight VSSE 4
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 17
createNetGroup group22
specifyNetWeight BGR_Core/l6 9
createNetGroup group23
specifyNetWeight BGR_Core/l7 19
createNetGroup group24
specifyNetWeight BGR_Core/l8 14
createNetGroup group25
specifyNetWeight BGR_Core/l10 10
createNetGroup group26
specifyNetWeight BGR_Core/l11 2
createNetGroup group27
specifyNetWeight BGR_Core/l1 5
createNetGroup group28
specifyNetWeight BGR_Core/l2 10
createNetGroup group29
specifyNetWeight BGR_Core/l4 3
createNetGroup group30
specifyNetWeight BGR_Core/l5 2
createNetGroup group31
specifyNetWeight BGR_Core/l12 10
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 14
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 18
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 20
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 14
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 16
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 5
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 10
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 13
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 11
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 8
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 4
createNetGroup group43
specifyNetWeight R17/l 3
createNetGroup group44
specifyNetWeight R18/l 4
createNetGroup group45
specifyNetWeight R19/l 10
createNetGroup group46
specifyNetWeight R20/l 11
createNetGroup group47
specifyNetWeight VDD 19
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 5
createNetGroup group1
specifyNetWeight va 18
createNetGroup group2
specifyNetWeight vb 9
createNetGroup group3
specifyNetWeight vbg 7
createNetGroup group4
specifyNetWeight VSS 17
createNetGroup group5
specifyNetWeight vc 4
createNetGroup group6
specifyNetWeight l17 15
createNetGroup group7
specifyNetWeight l18 11
createNetGroup group8
specifyNetWeight l19 11
createNetGroup group9
specifyNetWeight l20 18
createNetGroup group10
specifyNetWeight amp/vg 6
createNetGroup group11
specifyNetWeight amp/vq 20
createNetGroup group12
specifyNetWeight amp/vx 18
createNetGroup group13
specifyNetWeight VNW 8
createNetGroup group14
specifyNetWeight VDDPST 19
createNetGroup group15
specifyNetWeight POC 5
createNetGroup group16
specifyNetWeight VDDCE 15
createNetGroup group17
specifyNetWeight VDDPE 19
createNetGroup group18
specifyNetWeight VPW 14
createNetGroup group19
specifyNetWeight VSSPST 10
createNetGroup group20
specifyNetWeight VSSE 11
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 16
createNetGroup group22
specifyNetWeight BGR_Core/l6 13
createNetGroup group23
specifyNetWeight BGR_Core/l7 20
createNetGroup group24
specifyNetWeight BGR_Core/l8 6
createNetGroup group25
specifyNetWeight BGR_Core/l10 7
createNetGroup group26
specifyNetWeight BGR_Core/l11 5
createNetGroup group27
specifyNetWeight BGR_Core/l1 5
createNetGroup group28
specifyNetWeight BGR_Core/l2 14
createNetGroup group29
specifyNetWeight BGR_Core/l4 14
createNetGroup group30
specifyNetWeight BGR_Core/l5 20
createNetGroup group31
specifyNetWeight BGR_Core/l12 16
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 6
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 19
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 11
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 13
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 17
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 15
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 8
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 17
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 17
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 18
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 12
createNetGroup group43
specifyNetWeight R17/l 17
createNetGroup group44
specifyNetWeight R18/l 3
createNetGroup group45
specifyNetWeight R19/l 16
createNetGroup group46
specifyNetWeight R20/l 11
createNetGroup group47
specifyNetWeight VDD 6
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 3
createNetGroup group1
specifyNetWeight va 8
createNetGroup group2
specifyNetWeight vb 2
createNetGroup group3
specifyNetWeight vbg 13
createNetGroup group4
specifyNetWeight VSS 8
createNetGroup group5
specifyNetWeight vc 17
createNetGroup group6
specifyNetWeight l17 14
createNetGroup group7
specifyNetWeight l18 2
createNetGroup group8
specifyNetWeight l19 18
createNetGroup group9
specifyNetWeight l20 4
createNetGroup group10
specifyNetWeight amp/vg 4
createNetGroup group11
specifyNetWeight amp/vq 14
createNetGroup group12
specifyNetWeight amp/vx 2
createNetGroup group13
specifyNetWeight VNW 13
createNetGroup group14
specifyNetWeight VDDPST 3
createNetGroup group15
specifyNetWeight POC 5
createNetGroup group16
specifyNetWeight VDDCE 2
createNetGroup group17
specifyNetWeight VDDPE 10
createNetGroup group18
specifyNetWeight VPW 11
createNetGroup group19
specifyNetWeight VSSPST 9
createNetGroup group20
specifyNetWeight VSSE 6
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 20
createNetGroup group22
specifyNetWeight BGR_Core/l6 11
createNetGroup group23
specifyNetWeight BGR_Core/l7 8
createNetGroup group24
specifyNetWeight BGR_Core/l8 5
createNetGroup group25
specifyNetWeight BGR_Core/l10 15
createNetGroup group26
specifyNetWeight BGR_Core/l11 16
createNetGroup group27
specifyNetWeight BGR_Core/l1 12
createNetGroup group28
specifyNetWeight BGR_Core/l2 14
createNetGroup group29
specifyNetWeight BGR_Core/l4 7
createNetGroup group30
specifyNetWeight BGR_Core/l5 12
createNetGroup group31
specifyNetWeight BGR_Core/l12 15
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 15
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 6
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 16
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 6
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 18
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 12
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 6
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 8
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 7
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 16
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 13
createNetGroup group43
specifyNetWeight R17/l 14
createNetGroup group44
specifyNetWeight R18/l 15
createNetGroup group45
specifyNetWeight R19/l 17
createNetGroup group46
specifyNetWeight R20/l 14
createNetGroup group47
specifyNetWeight VDD 9
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 16
createNetGroup group1
specifyNetWeight va 8
createNetGroup group2
specifyNetWeight vb 20
createNetGroup group3
specifyNetWeight vbg 3
createNetGroup group4
specifyNetWeight VSS 16
createNetGroup group5
specifyNetWeight vc 14
createNetGroup group6
specifyNetWeight l17 3
createNetGroup group7
specifyNetWeight l18 9
createNetGroup group8
specifyNetWeight l19 4
createNetGroup group9
specifyNetWeight l20 7
createNetGroup group10
specifyNetWeight amp/vg 13
createNetGroup group11
specifyNetWeight amp/vq 3
createNetGroup group12
specifyNetWeight amp/vx 7
createNetGroup group13
specifyNetWeight VNW 9
createNetGroup group14
specifyNetWeight VDDPST 11
createNetGroup group15
specifyNetWeight POC 4
createNetGroup group16
specifyNetWeight VDDCE 18
createNetGroup group17
specifyNetWeight VDDPE 11
createNetGroup group18
specifyNetWeight VPW 13
createNetGroup group19
specifyNetWeight VSSPST 15
createNetGroup group20
specifyNetWeight VSSE 16
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 3
createNetGroup group22
specifyNetWeight BGR_Core/l6 18
createNetGroup group23
specifyNetWeight BGR_Core/l7 19
createNetGroup group24
specifyNetWeight BGR_Core/l8 15
createNetGroup group25
specifyNetWeight BGR_Core/l10 20
createNetGroup group26
specifyNetWeight BGR_Core/l11 16
createNetGroup group27
specifyNetWeight BGR_Core/l1 17
createNetGroup group28
specifyNetWeight BGR_Core/l2 10
createNetGroup group29
specifyNetWeight BGR_Core/l4 17
createNetGroup group30
specifyNetWeight BGR_Core/l5 8
createNetGroup group31
specifyNetWeight BGR_Core/l12 12
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 10
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 3
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 3
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 3
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 7
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 13
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 2
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 11
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 2
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 6
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 4
createNetGroup group43
specifyNetWeight R17/l 15
createNetGroup group44
specifyNetWeight R18/l 9
createNetGroup group45
specifyNetWeight R19/l 14
createNetGroup group46
specifyNetWeight R20/l 19
createNetGroup group47
specifyNetWeight VDD 9
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 8
createNetGroup group1
specifyNetWeight va 12
createNetGroup group2
specifyNetWeight vb 5
createNetGroup group3
specifyNetWeight vbg 4
createNetGroup group4
specifyNetWeight VSS 5
createNetGroup group5
specifyNetWeight vc 12
createNetGroup group6
specifyNetWeight l17 12
createNetGroup group7
specifyNetWeight l18 19
createNetGroup group8
specifyNetWeight l19 16
createNetGroup group9
specifyNetWeight l20 12
createNetGroup group10
specifyNetWeight amp/vg 10
createNetGroup group11
specifyNetWeight amp/vq 2
createNetGroup group12
specifyNetWeight amp/vx 18
createNetGroup group13
specifyNetWeight VNW 3
createNetGroup group14
specifyNetWeight VDDPST 8
createNetGroup group15
specifyNetWeight POC 13
createNetGroup group16
specifyNetWeight VDDCE 4
createNetGroup group17
specifyNetWeight VDDPE 8
createNetGroup group18
specifyNetWeight VPW 18
createNetGroup group19
specifyNetWeight VSSPST 13
createNetGroup group20
specifyNetWeight VSSE 8
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 8
createNetGroup group22
specifyNetWeight BGR_Core/l6 10
createNetGroup group23
specifyNetWeight BGR_Core/l7 11
createNetGroup group24
specifyNetWeight BGR_Core/l8 11
createNetGroup group25
specifyNetWeight BGR_Core/l10 18
createNetGroup group26
specifyNetWeight BGR_Core/l11 14
createNetGroup group27
specifyNetWeight BGR_Core/l1 10
createNetGroup group28
specifyNetWeight BGR_Core/l2 17
createNetGroup group29
specifyNetWeight BGR_Core/l4 13
createNetGroup group30
specifyNetWeight BGR_Core/l5 9
createNetGroup group31
specifyNetWeight BGR_Core/l12 3
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 11
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 19
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 4
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 2
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 16
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 17
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 16
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 3
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 15
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 17
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 16
createNetGroup group43
specifyNetWeight R17/l 16
createNetGroup group44
specifyNetWeight R18/l 5
createNetGroup group45
specifyNetWeight R19/l 4
createNetGroup group46
specifyNetWeight R20/l 4
createNetGroup group47
specifyNetWeight VDD 9
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 6
createNetGroup group1
specifyNetWeight va 15
createNetGroup group2
specifyNetWeight vb 8
createNetGroup group3
specifyNetWeight vbg 16
createNetGroup group4
specifyNetWeight VSS 5
createNetGroup group5
specifyNetWeight vc 4
createNetGroup group6
specifyNetWeight l17 15
createNetGroup group7
specifyNetWeight l18 19
createNetGroup group8
specifyNetWeight l19 14
createNetGroup group9
specifyNetWeight l20 3
createNetGroup group10
specifyNetWeight amp/vg 7
createNetGroup group11
specifyNetWeight amp/vq 9
createNetGroup group12
specifyNetWeight amp/vx 17
createNetGroup group13
specifyNetWeight VNW 9
createNetGroup group14
specifyNetWeight VDDPST 6
createNetGroup group15
specifyNetWeight POC 10
createNetGroup group16
specifyNetWeight VDDCE 13
createNetGroup group17
specifyNetWeight VDDPE 12
createNetGroup group18
specifyNetWeight VPW 15
createNetGroup group19
specifyNetWeight VSSPST 5
createNetGroup group20
specifyNetWeight VSSE 19
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 11
createNetGroup group22
specifyNetWeight BGR_Core/l6 19
createNetGroup group23
specifyNetWeight BGR_Core/l7 8
createNetGroup group24
specifyNetWeight BGR_Core/l8 11
createNetGroup group25
specifyNetWeight BGR_Core/l10 16
createNetGroup group26
specifyNetWeight BGR_Core/l11 18
createNetGroup group27
specifyNetWeight BGR_Core/l1 16
createNetGroup group28
specifyNetWeight BGR_Core/l2 19
createNetGroup group29
specifyNetWeight BGR_Core/l4 10
createNetGroup group30
specifyNetWeight BGR_Core/l5 10
createNetGroup group31
specifyNetWeight BGR_Core/l12 9
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 2
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 5
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 5
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 7
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 15
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 9
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 8
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 11
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 2
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 19
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 18
createNetGroup group43
specifyNetWeight R17/l 15
createNetGroup group44
specifyNetWeight R18/l 3
createNetGroup group45
specifyNetWeight R19/l 5
createNetGroup group46
specifyNetWeight R20/l 14
createNetGroup group47
specifyNetWeight VDD 10
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 20
createNetGroup group1
specifyNetWeight va 13
createNetGroup group2
specifyNetWeight vb 9
createNetGroup group3
specifyNetWeight vbg 19
createNetGroup group4
specifyNetWeight VSS 13
createNetGroup group5
specifyNetWeight vc 11
createNetGroup group6
specifyNetWeight l17 9
createNetGroup group7
specifyNetWeight l18 9
createNetGroup group8
specifyNetWeight l19 4
createNetGroup group9
specifyNetWeight l20 18
createNetGroup group10
specifyNetWeight amp/vg 11
createNetGroup group11
specifyNetWeight amp/vq 12
createNetGroup group12
specifyNetWeight amp/vx 9
createNetGroup group13
specifyNetWeight VNW 13
createNetGroup group14
specifyNetWeight VDDPST 17
createNetGroup group15
specifyNetWeight POC 11
createNetGroup group16
specifyNetWeight VDDCE 20
createNetGroup group17
specifyNetWeight VDDPE 7
createNetGroup group18
specifyNetWeight VPW 6
createNetGroup group19
specifyNetWeight VSSPST 2
createNetGroup group20
specifyNetWeight VSSE 19
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 18
createNetGroup group22
specifyNetWeight BGR_Core/l6 12
createNetGroup group23
specifyNetWeight BGR_Core/l7 13
createNetGroup group24
specifyNetWeight BGR_Core/l8 20
createNetGroup group25
specifyNetWeight BGR_Core/l10 2
createNetGroup group26
specifyNetWeight BGR_Core/l11 6
createNetGroup group27
specifyNetWeight BGR_Core/l1 14
createNetGroup group28
specifyNetWeight BGR_Core/l2 6
createNetGroup group29
specifyNetWeight BGR_Core/l4 7
createNetGroup group30
specifyNetWeight BGR_Core/l5 18
createNetGroup group31
specifyNetWeight BGR_Core/l12 4
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 6
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 8
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 17
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 20
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 8
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 9
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 6
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 9
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 14
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 13
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 20
createNetGroup group43
specifyNetWeight R17/l 6
createNetGroup group44
specifyNetWeight R18/l 17
createNetGroup group45
specifyNetWeight R19/l 5
createNetGroup group46
specifyNetWeight R20/l 2
createNetGroup group47
specifyNetWeight VDD 18
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 17
createNetGroup group1
specifyNetWeight va 16
createNetGroup group2
specifyNetWeight vb 11
createNetGroup group3
specifyNetWeight vbg 2
createNetGroup group4
specifyNetWeight VSS 4
createNetGroup group5
specifyNetWeight vc 9
createNetGroup group6
specifyNetWeight l17 19
createNetGroup group7
specifyNetWeight l18 7
createNetGroup group8
specifyNetWeight l19 17
createNetGroup group9
specifyNetWeight l20 17
createNetGroup group10
specifyNetWeight amp/vg 19
createNetGroup group11
specifyNetWeight amp/vq 12
createNetGroup group12
specifyNetWeight amp/vx 4
createNetGroup group13
specifyNetWeight VNW 10
createNetGroup group14
specifyNetWeight VDDPST 6
createNetGroup group15
specifyNetWeight POC 14
createNetGroup group16
specifyNetWeight VDDCE 8
createNetGroup group17
specifyNetWeight VDDPE 12
createNetGroup group18
specifyNetWeight VPW 11
createNetGroup group19
specifyNetWeight VSSPST 14
createNetGroup group20
specifyNetWeight VSSE 3
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 8
createNetGroup group22
specifyNetWeight BGR_Core/l6 3
createNetGroup group23
specifyNetWeight BGR_Core/l7 12
createNetGroup group24
specifyNetWeight BGR_Core/l8 9
createNetGroup group25
specifyNetWeight BGR_Core/l10 12
createNetGroup group26
specifyNetWeight BGR_Core/l11 16
createNetGroup group27
specifyNetWeight BGR_Core/l1 9
createNetGroup group28
specifyNetWeight BGR_Core/l2 10
createNetGroup group29
specifyNetWeight BGR_Core/l4 13
createNetGroup group30
specifyNetWeight BGR_Core/l5 7
createNetGroup group31
specifyNetWeight BGR_Core/l12 11
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 2
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 13
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 20
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 19
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 3
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 6
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 13
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 2
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 17
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 3
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 2
createNetGroup group43
specifyNetWeight R17/l 9
createNetGroup group44
specifyNetWeight R18/l 3
createNetGroup group45
specifyNetWeight R19/l 2
createNetGroup group46
specifyNetWeight R20/l 9
createNetGroup group47
specifyNetWeight VDD 12
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 3
createNetGroup group1
specifyNetWeight va 13
createNetGroup group2
specifyNetWeight vb 15
createNetGroup group3
specifyNetWeight vbg 6
createNetGroup group4
specifyNetWeight VSS 12
createNetGroup group5
specifyNetWeight vc 8
createNetGroup group6
specifyNetWeight l17 16
createNetGroup group7
specifyNetWeight l18 15
createNetGroup group8
specifyNetWeight l19 6
createNetGroup group9
specifyNetWeight l20 13
createNetGroup group10
specifyNetWeight amp/vg 11
createNetGroup group11
specifyNetWeight amp/vq 7
createNetGroup group12
specifyNetWeight amp/vx 12
createNetGroup group13
specifyNetWeight VNW 15
createNetGroup group14
specifyNetWeight VDDPST 14
createNetGroup group15
specifyNetWeight POC 2
createNetGroup group16
specifyNetWeight VDDCE 15
createNetGroup group17
specifyNetWeight VDDPE 10
createNetGroup group18
specifyNetWeight VPW 19
createNetGroup group19
specifyNetWeight VSSPST 19
createNetGroup group20
specifyNetWeight VSSE 16
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 3
createNetGroup group22
specifyNetWeight BGR_Core/l6 20
createNetGroup group23
specifyNetWeight BGR_Core/l7 5
createNetGroup group24
specifyNetWeight BGR_Core/l8 15
createNetGroup group25
specifyNetWeight BGR_Core/l10 14
createNetGroup group26
specifyNetWeight BGR_Core/l11 7
createNetGroup group27
specifyNetWeight BGR_Core/l1 2
createNetGroup group28
specifyNetWeight BGR_Core/l2 18
createNetGroup group29
specifyNetWeight BGR_Core/l4 6
createNetGroup group30
specifyNetWeight BGR_Core/l5 18
createNetGroup group31
specifyNetWeight BGR_Core/l12 6
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 4
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 12
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 9
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 7
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 9
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 2
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 7
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 19
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 7
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 4
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 15
createNetGroup group43
specifyNetWeight R17/l 5
createNetGroup group44
specifyNetWeight R18/l 16
createNetGroup group45
specifyNetWeight R19/l 6
createNetGroup group46
specifyNetWeight R20/l 3
createNetGroup group47
specifyNetWeight VDD 10
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 14
createNetGroup group1
specifyNetWeight va 2
createNetGroup group2
specifyNetWeight vb 3
createNetGroup group3
specifyNetWeight vbg 17
createNetGroup group4
specifyNetWeight VSS 14
createNetGroup group5
specifyNetWeight vc 4
createNetGroup group6
specifyNetWeight l17 13
createNetGroup group7
specifyNetWeight l18 11
createNetGroup group8
specifyNetWeight l19 6
createNetGroup group9
specifyNetWeight l20 16
createNetGroup group10
specifyNetWeight amp/vg 9
createNetGroup group11
specifyNetWeight amp/vq 18
createNetGroup group12
specifyNetWeight amp/vx 13
createNetGroup group13
specifyNetWeight VNW 7
createNetGroup group14
specifyNetWeight VDDPST 14
createNetGroup group15
specifyNetWeight POC 12
createNetGroup group16
specifyNetWeight VDDCE 10
createNetGroup group17
specifyNetWeight VDDPE 17
createNetGroup group18
specifyNetWeight VPW 14
createNetGroup group19
specifyNetWeight VSSPST 2
createNetGroup group20
specifyNetWeight VSSE 11
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 18
createNetGroup group22
specifyNetWeight BGR_Core/l6 11
createNetGroup group23
specifyNetWeight BGR_Core/l7 19
createNetGroup group24
specifyNetWeight BGR_Core/l8 17
createNetGroup group25
specifyNetWeight BGR_Core/l10 3
createNetGroup group26
specifyNetWeight BGR_Core/l11 19
createNetGroup group27
specifyNetWeight BGR_Core/l1 20
createNetGroup group28
specifyNetWeight BGR_Core/l2 19
createNetGroup group29
specifyNetWeight BGR_Core/l4 10
createNetGroup group30
specifyNetWeight BGR_Core/l5 3
createNetGroup group31
specifyNetWeight BGR_Core/l12 16
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 14
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 5
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 14
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 13
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 17
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 3
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 2
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 10
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 3
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 10
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 20
createNetGroup group43
specifyNetWeight R17/l 11
createNetGroup group44
specifyNetWeight R18/l 8
createNetGroup group45
specifyNetWeight R19/l 18
createNetGroup group46
specifyNetWeight R20/l 18
createNetGroup group47
specifyNetWeight VDD 12
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 10
createNetGroup group1
specifyNetWeight va 8
createNetGroup group2
specifyNetWeight vb 5
createNetGroup group3
specifyNetWeight vbg 20
createNetGroup group4
specifyNetWeight VSS 5
createNetGroup group5
specifyNetWeight vc 12
createNetGroup group6
specifyNetWeight l17 9
createNetGroup group7
specifyNetWeight l18 20
createNetGroup group8
specifyNetWeight l19 19
createNetGroup group9
specifyNetWeight l20 13
createNetGroup group10
specifyNetWeight amp/vg 7
createNetGroup group11
specifyNetWeight amp/vq 6
createNetGroup group12
specifyNetWeight amp/vx 12
createNetGroup group13
specifyNetWeight VNW 2
createNetGroup group14
specifyNetWeight VDDPST 20
createNetGroup group15
specifyNetWeight POC 3
createNetGroup group16
specifyNetWeight VDDCE 20
createNetGroup group17
specifyNetWeight VDDPE 6
createNetGroup group18
specifyNetWeight VPW 13
createNetGroup group19
specifyNetWeight VSSPST 13
createNetGroup group20
specifyNetWeight VSSE 11
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 11
createNetGroup group22
specifyNetWeight BGR_Core/l6 12
createNetGroup group23
specifyNetWeight BGR_Core/l7 17
createNetGroup group24
specifyNetWeight BGR_Core/l8 14
createNetGroup group25
specifyNetWeight BGR_Core/l10 15
createNetGroup group26
specifyNetWeight BGR_Core/l11 7
createNetGroup group27
specifyNetWeight BGR_Core/l1 2
createNetGroup group28
specifyNetWeight BGR_Core/l2 6
createNetGroup group29
specifyNetWeight BGR_Core/l4 20
createNetGroup group30
specifyNetWeight BGR_Core/l5 3
createNetGroup group31
specifyNetWeight BGR_Core/l12 16
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 6
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 12
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 2
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 17
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 10
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 8
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 4
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 19
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 15
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 10
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 7
createNetGroup group43
specifyNetWeight R17/l 18
createNetGroup group44
specifyNetWeight R18/l 7
createNetGroup group45
specifyNetWeight R19/l 4
createNetGroup group46
specifyNetWeight R20/l 7
createNetGroup group47
specifyNetWeight VDD 20
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 18
createNetGroup group1
specifyNetWeight va 19
createNetGroup group2
specifyNetWeight vb 14
createNetGroup group3
specifyNetWeight vbg 15
createNetGroup group4
specifyNetWeight VSS 9
createNetGroup group5
specifyNetWeight vc 10
createNetGroup group6
specifyNetWeight l17 11
createNetGroup group7
specifyNetWeight l18 11
createNetGroup group8
specifyNetWeight l19 2
createNetGroup group9
specifyNetWeight l20 15
createNetGroup group10
specifyNetWeight amp/vg 10
createNetGroup group11
specifyNetWeight amp/vq 10
createNetGroup group12
specifyNetWeight amp/vx 19
createNetGroup group13
specifyNetWeight VNW 18
createNetGroup group14
specifyNetWeight VDDPST 19
createNetGroup group15
specifyNetWeight POC 12
createNetGroup group16
specifyNetWeight VDDCE 12
createNetGroup group17
specifyNetWeight VDDPE 8
createNetGroup group18
specifyNetWeight VPW 15
createNetGroup group19
specifyNetWeight VSSPST 6
createNetGroup group20
specifyNetWeight VSSE 2
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 18
createNetGroup group22
specifyNetWeight BGR_Core/l6 6
createNetGroup group23
specifyNetWeight BGR_Core/l7 20
createNetGroup group24
specifyNetWeight BGR_Core/l8 14
createNetGroup group25
specifyNetWeight BGR_Core/l10 13
createNetGroup group26
specifyNetWeight BGR_Core/l11 16
createNetGroup group27
specifyNetWeight BGR_Core/l1 3
createNetGroup group28
specifyNetWeight BGR_Core/l2 19
createNetGroup group29
specifyNetWeight BGR_Core/l4 15
createNetGroup group30
specifyNetWeight BGR_Core/l5 9
createNetGroup group31
specifyNetWeight BGR_Core/l12 2
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 13
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 18
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 7
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 8
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 13
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 17
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 2
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 9
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 20
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 9
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 10
createNetGroup group43
specifyNetWeight R17/l 7
createNetGroup group44
specifyNetWeight R18/l 15
createNetGroup group45
specifyNetWeight R19/l 4
createNetGroup group46
specifyNetWeight R20/l 20
createNetGroup group47
specifyNetWeight VDD 16
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 16
createNetGroup group1
specifyNetWeight va 18
createNetGroup group2
specifyNetWeight vb 5
createNetGroup group3
specifyNetWeight vbg 8
createNetGroup group4
specifyNetWeight VSS 5
createNetGroup group5
specifyNetWeight vc 7
createNetGroup group6
specifyNetWeight l17 16
createNetGroup group7
specifyNetWeight l18 4
createNetGroup group8
specifyNetWeight l19 15
createNetGroup group9
specifyNetWeight l20 14
createNetGroup group10
specifyNetWeight amp/vg 10
createNetGroup group11
specifyNetWeight amp/vq 10
createNetGroup group12
specifyNetWeight amp/vx 15
createNetGroup group13
specifyNetWeight VNW 13
createNetGroup group14
specifyNetWeight VDDPST 12
createNetGroup group15
specifyNetWeight POC 4
createNetGroup group16
specifyNetWeight VDDCE 11
createNetGroup group17
specifyNetWeight VDDPE 2
createNetGroup group18
specifyNetWeight VPW 17
createNetGroup group19
specifyNetWeight VSSPST 2
createNetGroup group20
specifyNetWeight VSSE 10
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 8
createNetGroup group22
specifyNetWeight BGR_Core/l6 14
createNetGroup group23
specifyNetWeight BGR_Core/l7 14
createNetGroup group24
specifyNetWeight BGR_Core/l8 15
createNetGroup group25
specifyNetWeight BGR_Core/l10 14
createNetGroup group26
specifyNetWeight BGR_Core/l11 3
createNetGroup group27
specifyNetWeight BGR_Core/l1 20
createNetGroup group28
specifyNetWeight BGR_Core/l2 16
createNetGroup group29
specifyNetWeight BGR_Core/l4 13
createNetGroup group30
specifyNetWeight BGR_Core/l5 20
createNetGroup group31
specifyNetWeight BGR_Core/l12 6
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 20
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 10
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 12
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 2
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 14
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 17
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 18
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 6
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 3
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 4
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 20
createNetGroup group43
specifyNetWeight R17/l 13
createNetGroup group44
specifyNetWeight R18/l 13
createNetGroup group45
specifyNetWeight R19/l 2
createNetGroup group46
specifyNetWeight R20/l 4
createNetGroup group47
specifyNetWeight VDD 8
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 19
createNetGroup group1
specifyNetWeight va 17
createNetGroup group2
specifyNetWeight vb 3
createNetGroup group3
specifyNetWeight vbg 12
createNetGroup group4
specifyNetWeight VSS 18
createNetGroup group5
specifyNetWeight vc 2
createNetGroup group6
specifyNetWeight l17 12
createNetGroup group7
specifyNetWeight l18 14
createNetGroup group8
specifyNetWeight l19 6
createNetGroup group9
specifyNetWeight l20 10
createNetGroup group10
specifyNetWeight amp/vg 15
createNetGroup group11
specifyNetWeight amp/vq 6
createNetGroup group12
specifyNetWeight amp/vx 6
createNetGroup group13
specifyNetWeight VNW 14
createNetGroup group14
specifyNetWeight VDDPST 11
createNetGroup group15
specifyNetWeight POC 18
createNetGroup group16
specifyNetWeight VDDCE 3
createNetGroup group17
specifyNetWeight VDDPE 7
createNetGroup group18
specifyNetWeight VPW 6
createNetGroup group19
specifyNetWeight VSSPST 6
createNetGroup group20
specifyNetWeight VSSE 17
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 3
createNetGroup group22
specifyNetWeight BGR_Core/l6 18
createNetGroup group23
specifyNetWeight BGR_Core/l7 3
createNetGroup group24
specifyNetWeight BGR_Core/l8 19
createNetGroup group25
specifyNetWeight BGR_Core/l10 14
createNetGroup group26
specifyNetWeight BGR_Core/l11 7
createNetGroup group27
specifyNetWeight BGR_Core/l1 13
createNetGroup group28
specifyNetWeight BGR_Core/l2 20
createNetGroup group29
specifyNetWeight BGR_Core/l4 4
createNetGroup group30
specifyNetWeight BGR_Core/l5 4
createNetGroup group31
specifyNetWeight BGR_Core/l12 19
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 7
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 10
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 8
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 10
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 12
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 10
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 10
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 18
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 16
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 6
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 16
createNetGroup group43
specifyNetWeight R17/l 19
createNetGroup group44
specifyNetWeight R18/l 6
createNetGroup group45
specifyNetWeight R19/l 3
createNetGroup group46
specifyNetWeight R20/l 20
createNetGroup group47
specifyNetWeight VDD 7
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 3
createNetGroup group1
specifyNetWeight va 12
createNetGroup group2
specifyNetWeight vb 4
createNetGroup group3
specifyNetWeight vbg 8
createNetGroup group4
specifyNetWeight VSS 15
createNetGroup group5
specifyNetWeight vc 16
createNetGroup group6
specifyNetWeight l17 9
createNetGroup group7
specifyNetWeight l18 16
createNetGroup group8
specifyNetWeight l19 18
createNetGroup group9
specifyNetWeight l20 7
createNetGroup group10
specifyNetWeight amp/vg 12
createNetGroup group11
specifyNetWeight amp/vq 6
createNetGroup group12
specifyNetWeight amp/vx 17
createNetGroup group13
specifyNetWeight VNW 19
createNetGroup group14
specifyNetWeight VDDPST 3
createNetGroup group15
specifyNetWeight POC 19
createNetGroup group16
specifyNetWeight VDDCE 4
createNetGroup group17
specifyNetWeight VDDPE 18
createNetGroup group18
specifyNetWeight VPW 12
createNetGroup group19
specifyNetWeight VSSPST 2
createNetGroup group20
specifyNetWeight VSSE 4
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 5
createNetGroup group22
specifyNetWeight BGR_Core/l6 15
createNetGroup group23
specifyNetWeight BGR_Core/l7 13
createNetGroup group24
specifyNetWeight BGR_Core/l8 20
createNetGroup group25
specifyNetWeight BGR_Core/l10 16
createNetGroup group26
specifyNetWeight BGR_Core/l11 12
createNetGroup group27
specifyNetWeight BGR_Core/l1 14
createNetGroup group28
specifyNetWeight BGR_Core/l2 18
createNetGroup group29
specifyNetWeight BGR_Core/l4 13
createNetGroup group30
specifyNetWeight BGR_Core/l5 5
createNetGroup group31
specifyNetWeight BGR_Core/l12 6
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 12
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 2
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 7
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 6
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 2
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 12
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 8
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 3
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 15
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 3
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 11
createNetGroup group43
specifyNetWeight R17/l 14
createNetGroup group44
specifyNetWeight R18/l 3
createNetGroup group45
specifyNetWeight R19/l 7
createNetGroup group46
specifyNetWeight R20/l 13
createNetGroup group47
specifyNetWeight VDD 4
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 3
createNetGroup group1
specifyNetWeight va 16
createNetGroup group2
specifyNetWeight vb 13
createNetGroup group3
specifyNetWeight vbg 10
createNetGroup group4
specifyNetWeight VSS 2
createNetGroup group5
specifyNetWeight vc 11
createNetGroup group6
specifyNetWeight l17 20
createNetGroup group7
specifyNetWeight l18 16
createNetGroup group8
specifyNetWeight l19 15
createNetGroup group9
specifyNetWeight l20 7
createNetGroup group10
specifyNetWeight amp/vg 2
createNetGroup group11
specifyNetWeight amp/vq 16
createNetGroup group12
specifyNetWeight amp/vx 10
createNetGroup group13
specifyNetWeight VNW 8
createNetGroup group14
specifyNetWeight VDDPST 14
createNetGroup group15
specifyNetWeight POC 4
createNetGroup group16
specifyNetWeight VDDCE 13
createNetGroup group17
specifyNetWeight VDDPE 5
createNetGroup group18
specifyNetWeight VPW 5
createNetGroup group19
specifyNetWeight VSSPST 2
createNetGroup group20
specifyNetWeight VSSE 13
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 2
createNetGroup group22
specifyNetWeight BGR_Core/l6 7
createNetGroup group23
specifyNetWeight BGR_Core/l7 14
createNetGroup group24
specifyNetWeight BGR_Core/l8 2
createNetGroup group25
specifyNetWeight BGR_Core/l10 12
createNetGroup group26
specifyNetWeight BGR_Core/l11 16
createNetGroup group27
specifyNetWeight BGR_Core/l1 19
createNetGroup group28
specifyNetWeight BGR_Core/l2 17
createNetGroup group29
specifyNetWeight BGR_Core/l4 17
createNetGroup group30
specifyNetWeight BGR_Core/l5 4
createNetGroup group31
specifyNetWeight BGR_Core/l12 3
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 19
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 14
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 10
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 2
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 18
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 5
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 4
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 12
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 13
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 5
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 17
createNetGroup group43
specifyNetWeight R17/l 3
createNetGroup group44
specifyNetWeight R18/l 6
createNetGroup group45
specifyNetWeight R19/l 18
createNetGroup group46
specifyNetWeight R20/l 11
createNetGroup group47
specifyNetWeight VDD 3
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 14
createNetGroup group1
specifyNetWeight va 12
createNetGroup group2
specifyNetWeight vb 7
createNetGroup group3
specifyNetWeight vbg 19
createNetGroup group4
specifyNetWeight VSS 6
createNetGroup group5
specifyNetWeight vc 6
createNetGroup group6
specifyNetWeight l17 7
createNetGroup group7
specifyNetWeight l18 7
createNetGroup group8
specifyNetWeight l19 7
createNetGroup group9
specifyNetWeight l20 9
createNetGroup group10
specifyNetWeight amp/vg 12
createNetGroup group11
specifyNetWeight amp/vq 2
createNetGroup group12
specifyNetWeight amp/vx 17
createNetGroup group13
specifyNetWeight VNW 14
createNetGroup group14
specifyNetWeight VDDPST 3
createNetGroup group15
specifyNetWeight POC 9
createNetGroup group16
specifyNetWeight VDDCE 9
createNetGroup group17
specifyNetWeight VDDPE 11
createNetGroup group18
specifyNetWeight VPW 12
createNetGroup group19
specifyNetWeight VSSPST 7
createNetGroup group20
specifyNetWeight VSSE 9
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 13
createNetGroup group22
specifyNetWeight BGR_Core/l6 9
createNetGroup group23
specifyNetWeight BGR_Core/l7 7
createNetGroup group24
specifyNetWeight BGR_Core/l8 15
createNetGroup group25
specifyNetWeight BGR_Core/l10 16
createNetGroup group26
specifyNetWeight BGR_Core/l11 13
createNetGroup group27
specifyNetWeight BGR_Core/l1 20
createNetGroup group28
specifyNetWeight BGR_Core/l2 6
createNetGroup group29
specifyNetWeight BGR_Core/l4 14
createNetGroup group30
specifyNetWeight BGR_Core/l5 20
createNetGroup group31
specifyNetWeight BGR_Core/l12 2
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 7
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 20
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 2
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 14
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 7
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 6
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 2
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 2
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 12
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 18
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 2
createNetGroup group43
specifyNetWeight R17/l 3
createNetGroup group44
specifyNetWeight R18/l 3
createNetGroup group45
specifyNetWeight R19/l 5
createNetGroup group46
specifyNetWeight R20/l 20
createNetGroup group47
specifyNetWeight VDD 6
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 14
createNetGroup group1
specifyNetWeight va 2
createNetGroup group2
specifyNetWeight vb 15
createNetGroup group3
specifyNetWeight vbg 15
createNetGroup group4
specifyNetWeight VSS 14
createNetGroup group5
specifyNetWeight vc 20
createNetGroup group6
specifyNetWeight l17 12
createNetGroup group7
specifyNetWeight l18 9
createNetGroup group8
specifyNetWeight l19 6
createNetGroup group9
specifyNetWeight l20 13
createNetGroup group10
specifyNetWeight amp/vg 18
createNetGroup group11
specifyNetWeight amp/vq 8
createNetGroup group12
specifyNetWeight amp/vx 19
createNetGroup group13
specifyNetWeight VNW 14
createNetGroup group14
specifyNetWeight VDDPST 4
createNetGroup group15
specifyNetWeight POC 6
createNetGroup group16
specifyNetWeight VDDCE 15
createNetGroup group17
specifyNetWeight VDDPE 20
createNetGroup group18
specifyNetWeight VPW 13
createNetGroup group19
specifyNetWeight VSSPST 5
createNetGroup group20
specifyNetWeight VSSE 15
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 15
createNetGroup group22
specifyNetWeight BGR_Core/l6 9
createNetGroup group23
specifyNetWeight BGR_Core/l7 17
createNetGroup group24
specifyNetWeight BGR_Core/l8 14
createNetGroup group25
specifyNetWeight BGR_Core/l10 9
createNetGroup group26
specifyNetWeight BGR_Core/l11 14
createNetGroup group27
specifyNetWeight BGR_Core/l1 9
createNetGroup group28
specifyNetWeight BGR_Core/l2 17
createNetGroup group29
specifyNetWeight BGR_Core/l4 14
createNetGroup group30
specifyNetWeight BGR_Core/l5 20
createNetGroup group31
specifyNetWeight BGR_Core/l12 4
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 10
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 10
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 18
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 13
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 19
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 2
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 17
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 9
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 10
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 3
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 12
createNetGroup group43
specifyNetWeight R17/l 14
createNetGroup group44
specifyNetWeight R18/l 5
createNetGroup group45
specifyNetWeight R19/l 19
createNetGroup group46
specifyNetWeight R20/l 3
createNetGroup group47
specifyNetWeight VDD 6
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 2
createNetGroup group1
specifyNetWeight va 15
createNetGroup group2
specifyNetWeight vb 14
createNetGroup group3
specifyNetWeight vbg 15
createNetGroup group4
specifyNetWeight VSS 15
createNetGroup group5
specifyNetWeight vc 5
createNetGroup group6
specifyNetWeight l17 16
createNetGroup group7
specifyNetWeight l18 16
createNetGroup group8
specifyNetWeight l19 7
createNetGroup group9
specifyNetWeight l20 7
createNetGroup group10
specifyNetWeight amp/vg 12
createNetGroup group11
specifyNetWeight amp/vq 17
createNetGroup group12
specifyNetWeight amp/vx 15
createNetGroup group13
specifyNetWeight VNW 7
createNetGroup group14
specifyNetWeight VDDPST 20
createNetGroup group15
specifyNetWeight POC 11
createNetGroup group16
specifyNetWeight VDDCE 18
createNetGroup group17
specifyNetWeight VDDPE 5
createNetGroup group18
specifyNetWeight VPW 13
createNetGroup group19
specifyNetWeight VSSPST 13
createNetGroup group20
specifyNetWeight VSSE 6
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 13
createNetGroup group22
specifyNetWeight BGR_Core/l6 17
createNetGroup group23
specifyNetWeight BGR_Core/l7 18
createNetGroup group24
specifyNetWeight BGR_Core/l8 3
createNetGroup group25
specifyNetWeight BGR_Core/l10 8
createNetGroup group26
specifyNetWeight BGR_Core/l11 10
createNetGroup group27
specifyNetWeight BGR_Core/l1 7
createNetGroup group28
specifyNetWeight BGR_Core/l2 20
createNetGroup group29
specifyNetWeight BGR_Core/l4 12
createNetGroup group30
specifyNetWeight BGR_Core/l5 11
createNetGroup group31
specifyNetWeight BGR_Core/l12 14
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 3
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 11
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 19
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 15
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 3
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 15
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 10
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 14
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 8
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 13
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 6
createNetGroup group43
specifyNetWeight R17/l 6
createNetGroup group44
specifyNetWeight R18/l 5
createNetGroup group45
specifyNetWeight R19/l 13
createNetGroup group46
specifyNetWeight R20/l 7
createNetGroup group47
specifyNetWeight VDD 2
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 20
createNetGroup group1
specifyNetWeight va 14
createNetGroup group2
specifyNetWeight vb 16
createNetGroup group3
specifyNetWeight vbg 4
createNetGroup group4
specifyNetWeight VSS 18
createNetGroup group5
specifyNetWeight vc 4
createNetGroup group6
specifyNetWeight l17 15
createNetGroup group7
specifyNetWeight l18 19
createNetGroup group8
specifyNetWeight l19 19
createNetGroup group9
specifyNetWeight l20 6
createNetGroup group10
specifyNetWeight amp/vg 7
createNetGroup group11
specifyNetWeight amp/vq 6
createNetGroup group12
specifyNetWeight amp/vx 8
createNetGroup group13
specifyNetWeight VNW 7
createNetGroup group14
specifyNetWeight VDDPST 9
createNetGroup group15
specifyNetWeight POC 2
createNetGroup group16
specifyNetWeight VDDCE 18
createNetGroup group17
specifyNetWeight VDDPE 6
createNetGroup group18
specifyNetWeight VPW 17
createNetGroup group19
specifyNetWeight VSSPST 13
createNetGroup group20
specifyNetWeight VSSE 11
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 12
createNetGroup group22
specifyNetWeight BGR_Core/l6 5
createNetGroup group23
specifyNetWeight BGR_Core/l7 15
createNetGroup group24
specifyNetWeight BGR_Core/l8 10
createNetGroup group25
specifyNetWeight BGR_Core/l10 7
createNetGroup group26
specifyNetWeight BGR_Core/l11 12
createNetGroup group27
specifyNetWeight BGR_Core/l1 18
createNetGroup group28
specifyNetWeight BGR_Core/l2 12
createNetGroup group29
specifyNetWeight BGR_Core/l4 19
createNetGroup group30
specifyNetWeight BGR_Core/l5 6
createNetGroup group31
specifyNetWeight BGR_Core/l12 14
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 19
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 11
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 9
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 14
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 13
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 14
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 17
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 18
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 11
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 15
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 15
createNetGroup group43
specifyNetWeight R17/l 5
createNetGroup group44
specifyNetWeight R18/l 6
createNetGroup group45
specifyNetWeight R19/l 6
createNetGroup group46
specifyNetWeight R20/l 2
createNetGroup group47
specifyNetWeight VDD 20
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 5
createNetGroup group1
specifyNetWeight va 8
createNetGroup group2
specifyNetWeight vb 18
createNetGroup group3
specifyNetWeight vbg 5
createNetGroup group4
specifyNetWeight VSS 12
createNetGroup group5
specifyNetWeight vc 10
createNetGroup group6
specifyNetWeight l17 7
createNetGroup group7
specifyNetWeight l18 14
createNetGroup group8
specifyNetWeight l19 4
createNetGroup group9
specifyNetWeight l20 3
createNetGroup group10
specifyNetWeight amp/vg 2
createNetGroup group11
specifyNetWeight amp/vq 5
createNetGroup group12
specifyNetWeight amp/vx 13
createNetGroup group13
specifyNetWeight VNW 17
createNetGroup group14
specifyNetWeight VDDPST 12
createNetGroup group15
specifyNetWeight POC 5
createNetGroup group16
specifyNetWeight VDDCE 16
createNetGroup group17
specifyNetWeight VDDPE 13
createNetGroup group18
specifyNetWeight VPW 20
createNetGroup group19
specifyNetWeight VSSPST 10
createNetGroup group20
specifyNetWeight VSSE 17
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 9
createNetGroup group22
specifyNetWeight BGR_Core/l6 7
createNetGroup group23
specifyNetWeight BGR_Core/l7 19
createNetGroup group24
specifyNetWeight BGR_Core/l8 19
createNetGroup group25
specifyNetWeight BGR_Core/l10 4
createNetGroup group26
specifyNetWeight BGR_Core/l11 18
createNetGroup group27
specifyNetWeight BGR_Core/l1 7
createNetGroup group28
specifyNetWeight BGR_Core/l2 2
createNetGroup group29
specifyNetWeight BGR_Core/l4 7
createNetGroup group30
specifyNetWeight BGR_Core/l5 18
createNetGroup group31
specifyNetWeight BGR_Core/l12 15
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 8
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 16
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 14
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 10
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 2
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 20
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 6
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 14
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 7
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 16
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 20
createNetGroup group43
specifyNetWeight R17/l 3
createNetGroup group44
specifyNetWeight R18/l 14
createNetGroup group45
specifyNetWeight R19/l 4
createNetGroup group46
specifyNetWeight R20/l 20
createNetGroup group47
specifyNetWeight VDD 14
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 9
createNetGroup group1
specifyNetWeight va 18
createNetGroup group2
specifyNetWeight vb 16
createNetGroup group3
specifyNetWeight vbg 3
createNetGroup group4
specifyNetWeight VSS 17
createNetGroup group5
specifyNetWeight vc 17
createNetGroup group6
specifyNetWeight l17 5
createNetGroup group7
specifyNetWeight l18 10
createNetGroup group8
specifyNetWeight l19 18
createNetGroup group9
specifyNetWeight l20 17
createNetGroup group10
specifyNetWeight amp/vg 19
createNetGroup group11
specifyNetWeight amp/vq 14
createNetGroup group12
specifyNetWeight amp/vx 17
createNetGroup group13
specifyNetWeight VNW 10
createNetGroup group14
specifyNetWeight VDDPST 7
createNetGroup group15
specifyNetWeight POC 9
createNetGroup group16
specifyNetWeight VDDCE 19
createNetGroup group17
specifyNetWeight VDDPE 13
createNetGroup group18
specifyNetWeight VPW 7
createNetGroup group19
specifyNetWeight VSSPST 11
createNetGroup group20
specifyNetWeight VSSE 6
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 16
createNetGroup group22
specifyNetWeight BGR_Core/l6 4
createNetGroup group23
specifyNetWeight BGR_Core/l7 4
createNetGroup group24
specifyNetWeight BGR_Core/l8 17
createNetGroup group25
specifyNetWeight BGR_Core/l10 14
createNetGroup group26
specifyNetWeight BGR_Core/l11 20
createNetGroup group27
specifyNetWeight BGR_Core/l1 15
createNetGroup group28
specifyNetWeight BGR_Core/l2 19
createNetGroup group29
specifyNetWeight BGR_Core/l4 4
createNetGroup group30
specifyNetWeight BGR_Core/l5 10
createNetGroup group31
specifyNetWeight BGR_Core/l12 17
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 9
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 5
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 11
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 6
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 13
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 5
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 6
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 3
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 6
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 20
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 19
createNetGroup group43
specifyNetWeight R17/l 8
createNetGroup group44
specifyNetWeight R18/l 2
createNetGroup group45
specifyNetWeight R19/l 3
createNetGroup group46
specifyNetWeight R20/l 14
createNetGroup group47
specifyNetWeight VDD 19
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 5
createNetGroup group1
specifyNetWeight va 17
createNetGroup group2
specifyNetWeight vb 19
createNetGroup group3
specifyNetWeight vbg 13
createNetGroup group4
specifyNetWeight VSS 11
createNetGroup group5
specifyNetWeight vc 12
createNetGroup group6
specifyNetWeight l17 5
createNetGroup group7
specifyNetWeight l18 2
createNetGroup group8
specifyNetWeight l19 9
createNetGroup group9
specifyNetWeight l20 9
createNetGroup group10
specifyNetWeight amp/vg 17
createNetGroup group11
specifyNetWeight amp/vq 11
createNetGroup group12
specifyNetWeight amp/vx 10
createNetGroup group13
specifyNetWeight VNW 9
createNetGroup group14
specifyNetWeight VDDPST 2
createNetGroup group15
specifyNetWeight POC 17
createNetGroup group16
specifyNetWeight VDDCE 13
createNetGroup group17
specifyNetWeight VDDPE 18
createNetGroup group18
specifyNetWeight VPW 12
createNetGroup group19
specifyNetWeight VSSPST 4
createNetGroup group20
specifyNetWeight VSSE 4
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 11
createNetGroup group22
specifyNetWeight BGR_Core/l6 20
createNetGroup group23
specifyNetWeight BGR_Core/l7 15
createNetGroup group24
specifyNetWeight BGR_Core/l8 9
createNetGroup group25
specifyNetWeight BGR_Core/l10 13
createNetGroup group26
specifyNetWeight BGR_Core/l11 14
createNetGroup group27
specifyNetWeight BGR_Core/l1 6
createNetGroup group28
specifyNetWeight BGR_Core/l2 9
createNetGroup group29
specifyNetWeight BGR_Core/l4 11
createNetGroup group30
specifyNetWeight BGR_Core/l5 8
createNetGroup group31
specifyNetWeight BGR_Core/l12 17
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 13
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 11
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 14
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 6
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 5
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 14
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 13
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 18
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 17
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 9
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 13
createNetGroup group43
specifyNetWeight R17/l 13
createNetGroup group44
specifyNetWeight R18/l 15
createNetGroup group45
specifyNetWeight R19/l 10
createNetGroup group46
specifyNetWeight R20/l 13
createNetGroup group47
specifyNetWeight VDD 14
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 5
createNetGroup group1
specifyNetWeight va 17
createNetGroup group2
specifyNetWeight vb 11
createNetGroup group3
specifyNetWeight vbg 5
createNetGroup group4
specifyNetWeight VSS 9
createNetGroup group5
specifyNetWeight vc 16
createNetGroup group6
specifyNetWeight l17 6
createNetGroup group7
specifyNetWeight l18 13
createNetGroup group8
specifyNetWeight l19 9
createNetGroup group9
specifyNetWeight l20 7
createNetGroup group10
specifyNetWeight amp/vg 12
createNetGroup group11
specifyNetWeight amp/vq 17
createNetGroup group12
specifyNetWeight amp/vx 9
createNetGroup group13
specifyNetWeight VNW 5
createNetGroup group14
specifyNetWeight VDDPST 14
createNetGroup group15
specifyNetWeight POC 14
createNetGroup group16
specifyNetWeight VDDCE 16
createNetGroup group17
specifyNetWeight VDDPE 18
createNetGroup group18
specifyNetWeight VPW 16
createNetGroup group19
specifyNetWeight VSSPST 20
createNetGroup group20
specifyNetWeight VSSE 9
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 14
createNetGroup group22
specifyNetWeight BGR_Core/l6 18
createNetGroup group23
specifyNetWeight BGR_Core/l7 11
createNetGroup group24
specifyNetWeight BGR_Core/l8 17
createNetGroup group25
specifyNetWeight BGR_Core/l10 9
createNetGroup group26
specifyNetWeight BGR_Core/l11 12
createNetGroup group27
specifyNetWeight BGR_Core/l1 18
createNetGroup group28
specifyNetWeight BGR_Core/l2 2
createNetGroup group29
specifyNetWeight BGR_Core/l4 4
createNetGroup group30
specifyNetWeight BGR_Core/l5 17
createNetGroup group31
specifyNetWeight BGR_Core/l12 12
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 14
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 9
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 15
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 3
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 20
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 3
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 15
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 4
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 10
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 8
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 12
createNetGroup group43
specifyNetWeight R17/l 7
createNetGroup group44
specifyNetWeight R18/l 5
createNetGroup group45
specifyNetWeight R19/l 7
createNetGroup group46
specifyNetWeight R20/l 13
createNetGroup group47
specifyNetWeight VDD 2
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 3
createNetGroup group1
specifyNetWeight va 2
createNetGroup group2
specifyNetWeight vb 14
createNetGroup group3
specifyNetWeight vbg 19
createNetGroup group4
specifyNetWeight VSS 12
createNetGroup group5
specifyNetWeight vc 2
createNetGroup group6
specifyNetWeight l17 6
createNetGroup group7
specifyNetWeight l18 5
createNetGroup group8
specifyNetWeight l19 8
createNetGroup group9
specifyNetWeight l20 4
createNetGroup group10
specifyNetWeight amp/vg 16
createNetGroup group11
specifyNetWeight amp/vq 8
createNetGroup group12
specifyNetWeight amp/vx 2
createNetGroup group13
specifyNetWeight VNW 18
createNetGroup group14
specifyNetWeight VDDPST 15
createNetGroup group15
specifyNetWeight POC 4
createNetGroup group16
specifyNetWeight VDDCE 19
createNetGroup group17
specifyNetWeight VDDPE 7
createNetGroup group18
specifyNetWeight VPW 9
createNetGroup group19
specifyNetWeight VSSPST 9
createNetGroup group20
specifyNetWeight VSSE 15
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 14
createNetGroup group22
specifyNetWeight BGR_Core/l6 17
createNetGroup group23
specifyNetWeight BGR_Core/l7 2
createNetGroup group24
specifyNetWeight BGR_Core/l8 15
createNetGroup group25
specifyNetWeight BGR_Core/l10 8
createNetGroup group26
specifyNetWeight BGR_Core/l11 14
createNetGroup group27
specifyNetWeight BGR_Core/l1 3
createNetGroup group28
specifyNetWeight BGR_Core/l2 10
createNetGroup group29
specifyNetWeight BGR_Core/l4 2
createNetGroup group30
specifyNetWeight BGR_Core/l5 20
createNetGroup group31
specifyNetWeight BGR_Core/l12 13
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 13
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 12
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 16
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 6
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 18
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 4
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 10
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 5
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 5
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 10
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 2
createNetGroup group43
specifyNetWeight R17/l 6
createNetGroup group44
specifyNetWeight R18/l 6
createNetGroup group45
specifyNetWeight R19/l 14
createNetGroup group46
specifyNetWeight R20/l 8
createNetGroup group47
specifyNetWeight VDD 20
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 8
createNetGroup group1
specifyNetWeight va 15
createNetGroup group2
specifyNetWeight vb 18
createNetGroup group3
specifyNetWeight vbg 18
createNetGroup group4
specifyNetWeight VSS 17
createNetGroup group5
specifyNetWeight vc 5
createNetGroup group6
specifyNetWeight l17 19
createNetGroup group7
specifyNetWeight l18 5
createNetGroup group8
specifyNetWeight l19 17
createNetGroup group9
specifyNetWeight l20 5
createNetGroup group10
specifyNetWeight amp/vg 18
createNetGroup group11
specifyNetWeight amp/vq 16
createNetGroup group12
specifyNetWeight amp/vx 17
createNetGroup group13
specifyNetWeight VNW 7
createNetGroup group14
specifyNetWeight VDDPST 16
createNetGroup group15
specifyNetWeight POC 19
createNetGroup group16
specifyNetWeight VDDCE 12
createNetGroup group17
specifyNetWeight VDDPE 6
createNetGroup group18
specifyNetWeight VPW 15
createNetGroup group19
specifyNetWeight VSSPST 10
createNetGroup group20
specifyNetWeight VSSE 14
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 4
createNetGroup group22
specifyNetWeight BGR_Core/l6 20
createNetGroup group23
specifyNetWeight BGR_Core/l7 18
createNetGroup group24
specifyNetWeight BGR_Core/l8 12
createNetGroup group25
specifyNetWeight BGR_Core/l10 9
createNetGroup group26
specifyNetWeight BGR_Core/l11 16
createNetGroup group27
specifyNetWeight BGR_Core/l1 9
createNetGroup group28
specifyNetWeight BGR_Core/l2 13
createNetGroup group29
specifyNetWeight BGR_Core/l4 17
createNetGroup group30
specifyNetWeight BGR_Core/l5 15
createNetGroup group31
specifyNetWeight BGR_Core/l12 2
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 16
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 2
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 19
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 14
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 16
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 9
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 15
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 9
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 10
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 17
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 17
createNetGroup group43
specifyNetWeight R17/l 6
createNetGroup group44
specifyNetWeight R18/l 9
createNetGroup group45
specifyNetWeight R19/l 16
createNetGroup group46
specifyNetWeight R20/l 11
createNetGroup group47
specifyNetWeight VDD 13
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 6
createNetGroup group1
specifyNetWeight va 18
createNetGroup group2
specifyNetWeight vb 4
createNetGroup group3
specifyNetWeight vbg 8
createNetGroup group4
specifyNetWeight VSS 16
createNetGroup group5
specifyNetWeight vc 11
createNetGroup group6
specifyNetWeight l17 18
createNetGroup group7
specifyNetWeight l18 5
createNetGroup group8
specifyNetWeight l19 3
createNetGroup group9
specifyNetWeight l20 6
createNetGroup group10
specifyNetWeight amp/vg 12
createNetGroup group11
specifyNetWeight amp/vq 3
createNetGroup group12
specifyNetWeight amp/vx 12
createNetGroup group13
specifyNetWeight VNW 7
createNetGroup group14
specifyNetWeight VDDPST 16
createNetGroup group15
specifyNetWeight POC 14
createNetGroup group16
specifyNetWeight VDDCE 8
createNetGroup group17
specifyNetWeight VDDPE 15
createNetGroup group18
specifyNetWeight VPW 17
createNetGroup group19
specifyNetWeight VSSPST 8
createNetGroup group20
specifyNetWeight VSSE 7
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 14
createNetGroup group22
specifyNetWeight BGR_Core/l6 3
createNetGroup group23
specifyNetWeight BGR_Core/l7 12
createNetGroup group24
specifyNetWeight BGR_Core/l8 18
createNetGroup group25
specifyNetWeight BGR_Core/l10 8
createNetGroup group26
specifyNetWeight BGR_Core/l11 12
createNetGroup group27
specifyNetWeight BGR_Core/l1 7
createNetGroup group28
specifyNetWeight BGR_Core/l2 18
createNetGroup group29
specifyNetWeight BGR_Core/l4 19
createNetGroup group30
specifyNetWeight BGR_Core/l5 20
createNetGroup group31
specifyNetWeight BGR_Core/l12 15
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 6
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 17
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 20
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 8
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 16
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 3
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 9
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 17
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 12
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 19
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 8
createNetGroup group43
specifyNetWeight R17/l 2
createNetGroup group44
specifyNetWeight R18/l 3
createNetGroup group45
specifyNetWeight R19/l 3
createNetGroup group46
specifyNetWeight R20/l 6
createNetGroup group47
specifyNetWeight VDD 9
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 9
createNetGroup group1
specifyNetWeight va 5
createNetGroup group2
specifyNetWeight vb 18
createNetGroup group3
specifyNetWeight vbg 15
createNetGroup group4
specifyNetWeight VSS 4
createNetGroup group5
specifyNetWeight vc 11
createNetGroup group6
specifyNetWeight l17 12
createNetGroup group7
specifyNetWeight l18 17
createNetGroup group8
specifyNetWeight l19 8
createNetGroup group9
specifyNetWeight l20 7
createNetGroup group10
specifyNetWeight amp/vg 13
createNetGroup group11
specifyNetWeight amp/vq 19
createNetGroup group12
specifyNetWeight amp/vx 13
createNetGroup group13
specifyNetWeight VNW 16
createNetGroup group14
specifyNetWeight VDDPST 14
createNetGroup group15
specifyNetWeight POC 16
createNetGroup group16
specifyNetWeight VDDCE 12
createNetGroup group17
specifyNetWeight VDDPE 16
createNetGroup group18
specifyNetWeight VPW 4
createNetGroup group19
specifyNetWeight VSSPST 6
createNetGroup group20
specifyNetWeight VSSE 9
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 5
createNetGroup group22
specifyNetWeight BGR_Core/l6 6
createNetGroup group23
specifyNetWeight BGR_Core/l7 14
createNetGroup group24
specifyNetWeight BGR_Core/l8 16
createNetGroup group25
specifyNetWeight BGR_Core/l10 19
createNetGroup group26
specifyNetWeight BGR_Core/l11 8
createNetGroup group27
specifyNetWeight BGR_Core/l1 13
createNetGroup group28
specifyNetWeight BGR_Core/l2 3
createNetGroup group29
specifyNetWeight BGR_Core/l4 2
createNetGroup group30
specifyNetWeight BGR_Core/l5 14
createNetGroup group31
specifyNetWeight BGR_Core/l12 8
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 4
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 15
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 20
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 20
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 15
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 19
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 8
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 2
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 6
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 18
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 17
createNetGroup group43
specifyNetWeight R17/l 11
createNetGroup group44
specifyNetWeight R18/l 14
createNetGroup group45
specifyNetWeight R19/l 19
createNetGroup group46
specifyNetWeight R20/l 19
createNetGroup group47
specifyNetWeight VDD 4
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 17
createNetGroup group1
specifyNetWeight va 2
createNetGroup group2
specifyNetWeight vb 8
createNetGroup group3
specifyNetWeight vbg 15
createNetGroup group4
specifyNetWeight VSS 5
createNetGroup group5
specifyNetWeight vc 13
createNetGroup group6
specifyNetWeight l17 11
createNetGroup group7
specifyNetWeight l18 4
createNetGroup group8
specifyNetWeight l19 2
createNetGroup group9
specifyNetWeight l20 9
createNetGroup group10
specifyNetWeight amp/vg 2
createNetGroup group11
specifyNetWeight amp/vq 20
createNetGroup group12
specifyNetWeight amp/vx 18
createNetGroup group13
specifyNetWeight VNW 13
createNetGroup group14
specifyNetWeight VDDPST 6
createNetGroup group15
specifyNetWeight POC 16
createNetGroup group16
specifyNetWeight VDDCE 10
createNetGroup group17
specifyNetWeight VDDPE 5
createNetGroup group18
specifyNetWeight VPW 20
createNetGroup group19
specifyNetWeight VSSPST 16
createNetGroup group20
specifyNetWeight VSSE 10
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 9
createNetGroup group22
specifyNetWeight BGR_Core/l6 14
createNetGroup group23
specifyNetWeight BGR_Core/l7 14
createNetGroup group24
specifyNetWeight BGR_Core/l8 18
createNetGroup group25
specifyNetWeight BGR_Core/l10 12
createNetGroup group26
specifyNetWeight BGR_Core/l11 9
createNetGroup group27
specifyNetWeight BGR_Core/l1 20
createNetGroup group28
specifyNetWeight BGR_Core/l2 10
createNetGroup group29
specifyNetWeight BGR_Core/l4 4
createNetGroup group30
specifyNetWeight BGR_Core/l5 3
createNetGroup group31
specifyNetWeight BGR_Core/l12 6
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 12
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 20
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 20
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 17
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 4
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 18
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 17
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 15
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 12
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 14
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 2
createNetGroup group43
specifyNetWeight R17/l 5
createNetGroup group44
specifyNetWeight R18/l 15
createNetGroup group45
specifyNetWeight R19/l 6
createNetGroup group46
specifyNetWeight R20/l 6
createNetGroup group47
specifyNetWeight VDD 2
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 15
createNetGroup group1
specifyNetWeight va 9
createNetGroup group2
specifyNetWeight vb 3
createNetGroup group3
specifyNetWeight vbg 10
createNetGroup group4
specifyNetWeight VSS 8
createNetGroup group5
specifyNetWeight vc 10
createNetGroup group6
specifyNetWeight l17 14
createNetGroup group7
specifyNetWeight l18 5
createNetGroup group8
specifyNetWeight l19 13
createNetGroup group9
specifyNetWeight l20 11
createNetGroup group10
specifyNetWeight amp/vg 13
createNetGroup group11
specifyNetWeight amp/vq 8
createNetGroup group12
specifyNetWeight amp/vx 19
createNetGroup group13
specifyNetWeight VNW 19
createNetGroup group14
specifyNetWeight VDDPST 3
createNetGroup group15
specifyNetWeight POC 12
createNetGroup group16
specifyNetWeight VDDCE 18
createNetGroup group17
specifyNetWeight VDDPE 19
createNetGroup group18
specifyNetWeight VPW 2
createNetGroup group19
specifyNetWeight VSSPST 7
createNetGroup group20
specifyNetWeight VSSE 17
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 2
createNetGroup group22
specifyNetWeight BGR_Core/l6 10
createNetGroup group23
specifyNetWeight BGR_Core/l7 12
createNetGroup group24
specifyNetWeight BGR_Core/l8 6
createNetGroup group25
specifyNetWeight BGR_Core/l10 13
createNetGroup group26
specifyNetWeight BGR_Core/l11 5
createNetGroup group27
specifyNetWeight BGR_Core/l1 19
createNetGroup group28
specifyNetWeight BGR_Core/l2 15
createNetGroup group29
specifyNetWeight BGR_Core/l4 4
createNetGroup group30
specifyNetWeight BGR_Core/l5 10
createNetGroup group31
specifyNetWeight BGR_Core/l12 20
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 5
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 18
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 4
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 20
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 6
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 17
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 3
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 18
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 9
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 13
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 5
createNetGroup group43
specifyNetWeight R17/l 19
createNetGroup group44
specifyNetWeight R18/l 8
createNetGroup group45
specifyNetWeight R19/l 7
createNetGroup group46
specifyNetWeight R20/l 9
createNetGroup group47
specifyNetWeight VDD 14
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 16
createNetGroup group1
specifyNetWeight va 13
createNetGroup group2
specifyNetWeight vb 7
createNetGroup group3
specifyNetWeight vbg 10
createNetGroup group4
specifyNetWeight VSS 2
createNetGroup group5
specifyNetWeight vc 13
createNetGroup group6
specifyNetWeight l17 19
createNetGroup group7
specifyNetWeight l18 8
createNetGroup group8
specifyNetWeight l19 8
createNetGroup group9
specifyNetWeight l20 16
createNetGroup group10
specifyNetWeight amp/vg 12
createNetGroup group11
specifyNetWeight amp/vq 6
createNetGroup group12
specifyNetWeight amp/vx 10
createNetGroup group13
specifyNetWeight VNW 19
createNetGroup group14
specifyNetWeight VDDPST 2
createNetGroup group15
specifyNetWeight POC 4
createNetGroup group16
specifyNetWeight VDDCE 12
createNetGroup group17
specifyNetWeight VDDPE 11
createNetGroup group18
specifyNetWeight VPW 12
createNetGroup group19
specifyNetWeight VSSPST 3
createNetGroup group20
specifyNetWeight VSSE 4
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 2
createNetGroup group22
specifyNetWeight BGR_Core/l6 11
createNetGroup group23
specifyNetWeight BGR_Core/l7 5
createNetGroup group24
specifyNetWeight BGR_Core/l8 7
createNetGroup group25
specifyNetWeight BGR_Core/l10 10
createNetGroup group26
specifyNetWeight BGR_Core/l11 8
createNetGroup group27
specifyNetWeight BGR_Core/l1 18
createNetGroup group28
specifyNetWeight BGR_Core/l2 19
createNetGroup group29
specifyNetWeight BGR_Core/l4 13
createNetGroup group30
specifyNetWeight BGR_Core/l5 16
createNetGroup group31
specifyNetWeight BGR_Core/l12 4
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 15
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 18
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 19
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 15
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 5
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 4
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 20
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 16
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 12
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 7
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 11
createNetGroup group43
specifyNetWeight R17/l 9
createNetGroup group44
specifyNetWeight R18/l 15
createNetGroup group45
specifyNetWeight R19/l 11
createNetGroup group46
specifyNetWeight R20/l 3
createNetGroup group47
specifyNetWeight VDD 2
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 10
createNetGroup group1
specifyNetWeight va 4
createNetGroup group2
specifyNetWeight vb 12
createNetGroup group3
specifyNetWeight vbg 12
createNetGroup group4
specifyNetWeight VSS 11
createNetGroup group5
specifyNetWeight vc 19
createNetGroup group6
specifyNetWeight l17 11
createNetGroup group7
specifyNetWeight l18 3
createNetGroup group8
specifyNetWeight l19 9
createNetGroup group9
specifyNetWeight l20 18
createNetGroup group10
specifyNetWeight amp/vg 6
createNetGroup group11
specifyNetWeight amp/vq 10
createNetGroup group12
specifyNetWeight amp/vx 3
createNetGroup group13
specifyNetWeight VNW 14
createNetGroup group14
specifyNetWeight VDDPST 15
createNetGroup group15
specifyNetWeight POC 10
createNetGroup group16
specifyNetWeight VDDCE 20
createNetGroup group17
specifyNetWeight VDDPE 9
createNetGroup group18
specifyNetWeight VPW 10
createNetGroup group19
specifyNetWeight VSSPST 12
createNetGroup group20
specifyNetWeight VSSE 19
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 17
createNetGroup group22
specifyNetWeight BGR_Core/l6 16
createNetGroup group23
specifyNetWeight BGR_Core/l7 5
createNetGroup group24
specifyNetWeight BGR_Core/l8 15
createNetGroup group25
specifyNetWeight BGR_Core/l10 13
createNetGroup group26
specifyNetWeight BGR_Core/l11 7
createNetGroup group27
specifyNetWeight BGR_Core/l1 18
createNetGroup group28
specifyNetWeight BGR_Core/l2 3
createNetGroup group29
specifyNetWeight BGR_Core/l4 9
createNetGroup group30
specifyNetWeight BGR_Core/l5 17
createNetGroup group31
specifyNetWeight BGR_Core/l12 14
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 2
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 9
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 4
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 11
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 5
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 7
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 6
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 16
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 2
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 13
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 18
createNetGroup group43
specifyNetWeight R17/l 15
createNetGroup group44
specifyNetWeight R18/l 5
createNetGroup group45
specifyNetWeight R19/l 18
createNetGroup group46
specifyNetWeight R20/l 9
createNetGroup group47
specifyNetWeight VDD 17
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 10
createNetGroup group1
specifyNetWeight va 14
createNetGroup group2
specifyNetWeight vb 15
createNetGroup group3
specifyNetWeight vbg 17
createNetGroup group4
specifyNetWeight VSS 4
createNetGroup group5
specifyNetWeight vc 3
createNetGroup group6
specifyNetWeight l17 7
createNetGroup group7
specifyNetWeight l18 18
createNetGroup group8
specifyNetWeight l19 13
createNetGroup group9
specifyNetWeight l20 8
createNetGroup group10
specifyNetWeight amp/vg 9
createNetGroup group11
specifyNetWeight amp/vq 6
createNetGroup group12
specifyNetWeight amp/vx 9
createNetGroup group13
specifyNetWeight VNW 11
createNetGroup group14
specifyNetWeight VDDPST 6
createNetGroup group15
specifyNetWeight POC 7
createNetGroup group16
specifyNetWeight VDDCE 19
createNetGroup group17
specifyNetWeight VDDPE 10
createNetGroup group18
specifyNetWeight VPW 19
createNetGroup group19
specifyNetWeight VSSPST 2
createNetGroup group20
specifyNetWeight VSSE 7
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 9
createNetGroup group22
specifyNetWeight BGR_Core/l6 15
createNetGroup group23
specifyNetWeight BGR_Core/l7 7
createNetGroup group24
specifyNetWeight BGR_Core/l8 9
createNetGroup group25
specifyNetWeight BGR_Core/l10 19
createNetGroup group26
specifyNetWeight BGR_Core/l11 6
createNetGroup group27
specifyNetWeight BGR_Core/l1 20
createNetGroup group28
specifyNetWeight BGR_Core/l2 7
createNetGroup group29
specifyNetWeight BGR_Core/l4 9
createNetGroup group30
specifyNetWeight BGR_Core/l5 18
createNetGroup group31
specifyNetWeight BGR_Core/l12 11
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 2
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 16
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 8
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 3
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 15
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 7
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 14
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 18
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 14
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 8
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 14
createNetGroup group43
specifyNetWeight R17/l 19
createNetGroup group44
specifyNetWeight R18/l 18
createNetGroup group45
specifyNetWeight R19/l 17
createNetGroup group46
specifyNetWeight R20/l 5
createNetGroup group47
specifyNetWeight VDD 6
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 19
createNetGroup group1
specifyNetWeight va 2
createNetGroup group2
specifyNetWeight vb 4
createNetGroup group3
specifyNetWeight vbg 2
createNetGroup group4
specifyNetWeight VSS 12
createNetGroup group5
specifyNetWeight vc 9
createNetGroup group6
specifyNetWeight l17 14
createNetGroup group7
specifyNetWeight l18 16
createNetGroup group8
specifyNetWeight l19 10
createNetGroup group9
specifyNetWeight l20 15
createNetGroup group10
specifyNetWeight amp/vg 13
createNetGroup group11
specifyNetWeight amp/vq 14
createNetGroup group12
specifyNetWeight amp/vx 10
createNetGroup group13
specifyNetWeight VNW 4
createNetGroup group14
specifyNetWeight VDDPST 7
createNetGroup group15
specifyNetWeight POC 20
createNetGroup group16
specifyNetWeight VDDCE 9
createNetGroup group17
specifyNetWeight VDDPE 8
createNetGroup group18
specifyNetWeight VPW 3
createNetGroup group19
specifyNetWeight VSSPST 3
createNetGroup group20
specifyNetWeight VSSE 18
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 4
createNetGroup group22
specifyNetWeight BGR_Core/l6 16
createNetGroup group23
specifyNetWeight BGR_Core/l7 9
createNetGroup group24
specifyNetWeight BGR_Core/l8 16
createNetGroup group25
specifyNetWeight BGR_Core/l10 6
createNetGroup group26
specifyNetWeight BGR_Core/l11 18
createNetGroup group27
specifyNetWeight BGR_Core/l1 11
createNetGroup group28
specifyNetWeight BGR_Core/l2 2
createNetGroup group29
specifyNetWeight BGR_Core/l4 6
createNetGroup group30
specifyNetWeight BGR_Core/l5 13
createNetGroup group31
specifyNetWeight BGR_Core/l12 13
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 13
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 11
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 18
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 10
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 6
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 2
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 17
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 8
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 14
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 12
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 17
createNetGroup group43
specifyNetWeight R17/l 11
createNetGroup group44
specifyNetWeight R18/l 16
createNetGroup group45
specifyNetWeight R19/l 6
createNetGroup group46
specifyNetWeight R20/l 17
createNetGroup group47
specifyNetWeight VDD 11
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 13
createNetGroup group1
specifyNetWeight va 14
createNetGroup group2
specifyNetWeight vb 14
createNetGroup group3
specifyNetWeight vbg 20
createNetGroup group4
specifyNetWeight VSS 9
createNetGroup group5
specifyNetWeight vc 14
createNetGroup group6
specifyNetWeight l17 18
createNetGroup group7
specifyNetWeight l18 11
createNetGroup group8
specifyNetWeight l19 20
createNetGroup group9
specifyNetWeight l20 9
createNetGroup group10
specifyNetWeight amp/vg 8
createNetGroup group11
specifyNetWeight amp/vq 15
createNetGroup group12
specifyNetWeight amp/vx 8
createNetGroup group13
specifyNetWeight VNW 10
createNetGroup group14
specifyNetWeight VDDPST 18
createNetGroup group15
specifyNetWeight POC 7
createNetGroup group16
specifyNetWeight VDDCE 18
createNetGroup group17
specifyNetWeight VDDPE 6
createNetGroup group18
specifyNetWeight VPW 18
createNetGroup group19
specifyNetWeight VSSPST 19
createNetGroup group20
specifyNetWeight VSSE 18
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 17
createNetGroup group22
specifyNetWeight BGR_Core/l6 12
createNetGroup group23
specifyNetWeight BGR_Core/l7 10
createNetGroup group24
specifyNetWeight BGR_Core/l8 15
createNetGroup group25
specifyNetWeight BGR_Core/l10 11
createNetGroup group26
specifyNetWeight BGR_Core/l11 16
createNetGroup group27
specifyNetWeight BGR_Core/l1 18
createNetGroup group28
specifyNetWeight BGR_Core/l2 3
createNetGroup group29
specifyNetWeight BGR_Core/l4 8
createNetGroup group30
specifyNetWeight BGR_Core/l5 10
createNetGroup group31
specifyNetWeight BGR_Core/l12 16
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 4
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 2
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 8
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 5
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 10
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 2
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 8
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 7
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 7
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 13
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 10
createNetGroup group43
specifyNetWeight R17/l 2
createNetGroup group44
specifyNetWeight R18/l 2
createNetGroup group45
specifyNetWeight R19/l 2
createNetGroup group46
specifyNetWeight R20/l 7
createNetGroup group47
specifyNetWeight VDD 11
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 14
createNetGroup group1
specifyNetWeight va 17
createNetGroup group2
specifyNetWeight vb 13
createNetGroup group3
specifyNetWeight vbg 13
createNetGroup group4
specifyNetWeight VSS 4
createNetGroup group5
specifyNetWeight vc 4
createNetGroup group6
specifyNetWeight l17 20
createNetGroup group7
specifyNetWeight l18 15
createNetGroup group8
specifyNetWeight l19 5
createNetGroup group9
specifyNetWeight l20 2
createNetGroup group10
specifyNetWeight amp/vg 7
createNetGroup group11
specifyNetWeight amp/vq 2
createNetGroup group12
specifyNetWeight amp/vx 19
createNetGroup group13
specifyNetWeight VNW 10
createNetGroup group14
specifyNetWeight VDDPST 13
createNetGroup group15
specifyNetWeight POC 8
createNetGroup group16
specifyNetWeight VDDCE 14
createNetGroup group17
specifyNetWeight VDDPE 8
createNetGroup group18
specifyNetWeight VPW 12
createNetGroup group19
specifyNetWeight VSSPST 7
createNetGroup group20
specifyNetWeight VSSE 7
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 17
createNetGroup group22
specifyNetWeight BGR_Core/l6 6
createNetGroup group23
specifyNetWeight BGR_Core/l7 20
createNetGroup group24
specifyNetWeight BGR_Core/l8 18
createNetGroup group25
specifyNetWeight BGR_Core/l10 15
createNetGroup group26
specifyNetWeight BGR_Core/l11 20
createNetGroup group27
specifyNetWeight BGR_Core/l1 9
createNetGroup group28
specifyNetWeight BGR_Core/l2 2
createNetGroup group29
specifyNetWeight BGR_Core/l4 3
createNetGroup group30
specifyNetWeight BGR_Core/l5 15
createNetGroup group31
specifyNetWeight BGR_Core/l12 3
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 6
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 18
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 4
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 15
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 11
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 12
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 8
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 3
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 12
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 6
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 12
createNetGroup group43
specifyNetWeight R17/l 10
createNetGroup group44
specifyNetWeight R18/l 17
createNetGroup group45
specifyNetWeight R19/l 17
createNetGroup group46
specifyNetWeight R20/l 12
createNetGroup group47
specifyNetWeight VDD 10
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 16
createNetGroup group1
specifyNetWeight va 7
createNetGroup group2
specifyNetWeight vb 5
createNetGroup group3
specifyNetWeight vbg 18
createNetGroup group4
specifyNetWeight VSS 14
createNetGroup group5
specifyNetWeight vc 10
createNetGroup group6
specifyNetWeight l17 19
createNetGroup group7
specifyNetWeight l18 14
createNetGroup group8
specifyNetWeight l19 16
createNetGroup group9
specifyNetWeight l20 15
createNetGroup group10
specifyNetWeight amp/vg 7
createNetGroup group11
specifyNetWeight amp/vq 15
createNetGroup group12
specifyNetWeight amp/vx 6
createNetGroup group13
specifyNetWeight VNW 5
createNetGroup group14
specifyNetWeight VDDPST 20
createNetGroup group15
specifyNetWeight POC 5
createNetGroup group16
specifyNetWeight VDDCE 7
createNetGroup group17
specifyNetWeight VDDPE 17
createNetGroup group18
specifyNetWeight VPW 11
createNetGroup group19
specifyNetWeight VSSPST 5
createNetGroup group20
specifyNetWeight VSSE 15
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 10
createNetGroup group22
specifyNetWeight BGR_Core/l6 10
createNetGroup group23
specifyNetWeight BGR_Core/l7 5
createNetGroup group24
specifyNetWeight BGR_Core/l8 13
createNetGroup group25
specifyNetWeight BGR_Core/l10 18
createNetGroup group26
specifyNetWeight BGR_Core/l11 19
createNetGroup group27
specifyNetWeight BGR_Core/l1 4
createNetGroup group28
specifyNetWeight BGR_Core/l2 2
createNetGroup group29
specifyNetWeight BGR_Core/l4 3
createNetGroup group30
specifyNetWeight BGR_Core/l5 2
createNetGroup group31
specifyNetWeight BGR_Core/l12 6
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 5
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 15
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 14
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 17
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 2
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 12
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 6
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 4
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 14
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 20
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 9
createNetGroup group43
specifyNetWeight R17/l 3
createNetGroup group44
specifyNetWeight R18/l 8
createNetGroup group45
specifyNetWeight R19/l 15
createNetGroup group46
specifyNetWeight R20/l 2
createNetGroup group47
specifyNetWeight VDD 3
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 6
createNetGroup group1
specifyNetWeight va 19
createNetGroup group2
specifyNetWeight vb 11
createNetGroup group3
specifyNetWeight vbg 15
createNetGroup group4
specifyNetWeight VSS 17
createNetGroup group5
specifyNetWeight vc 14
createNetGroup group6
specifyNetWeight l17 19
createNetGroup group7
specifyNetWeight l18 3
createNetGroup group8
specifyNetWeight l19 16
createNetGroup group9
specifyNetWeight l20 19
createNetGroup group10
specifyNetWeight amp/vg 6
createNetGroup group11
specifyNetWeight amp/vq 19
createNetGroup group12
specifyNetWeight amp/vx 6
createNetGroup group13
specifyNetWeight VNW 8
createNetGroup group14
specifyNetWeight VDDPST 20
createNetGroup group15
specifyNetWeight POC 7
createNetGroup group16
specifyNetWeight VDDCE 4
createNetGroup group17
specifyNetWeight VDDPE 20
createNetGroup group18
specifyNetWeight VPW 17
createNetGroup group19
specifyNetWeight VSSPST 11
createNetGroup group20
specifyNetWeight VSSE 10
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 10
createNetGroup group22
specifyNetWeight BGR_Core/l6 8
createNetGroup group23
specifyNetWeight BGR_Core/l7 14
createNetGroup group24
specifyNetWeight BGR_Core/l8 2
createNetGroup group25
specifyNetWeight BGR_Core/l10 3
createNetGroup group26
specifyNetWeight BGR_Core/l11 18
createNetGroup group27
specifyNetWeight BGR_Core/l1 4
createNetGroup group28
specifyNetWeight BGR_Core/l2 2
createNetGroup group29
specifyNetWeight BGR_Core/l4 11
createNetGroup group30
specifyNetWeight BGR_Core/l5 6
createNetGroup group31
specifyNetWeight BGR_Core/l12 6
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 18
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 6
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 5
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 12
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 2
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 12
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 6
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 12
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 20
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 4
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 4
createNetGroup group43
specifyNetWeight R17/l 13
createNetGroup group44
specifyNetWeight R18/l 8
createNetGroup group45
specifyNetWeight R19/l 10
createNetGroup group46
specifyNetWeight R20/l 16
createNetGroup group47
specifyNetWeight VDD 12
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 17
createNetGroup group1
specifyNetWeight va 19
createNetGroup group2
specifyNetWeight vb 18
createNetGroup group3
specifyNetWeight vbg 4
createNetGroup group4
specifyNetWeight VSS 18
createNetGroup group5
specifyNetWeight vc 4
createNetGroup group6
specifyNetWeight l17 12
createNetGroup group7
specifyNetWeight l18 16
createNetGroup group8
specifyNetWeight l19 14
createNetGroup group9
specifyNetWeight l20 14
createNetGroup group10
specifyNetWeight amp/vg 19
createNetGroup group11
specifyNetWeight amp/vq 17
createNetGroup group12
specifyNetWeight amp/vx 19
createNetGroup group13
specifyNetWeight VNW 15
createNetGroup group14
specifyNetWeight VDDPST 18
createNetGroup group15
specifyNetWeight POC 4
createNetGroup group16
specifyNetWeight VDDCE 9
createNetGroup group17
specifyNetWeight VDDPE 6
createNetGroup group18
specifyNetWeight VPW 14
createNetGroup group19
specifyNetWeight VSSPST 18
createNetGroup group20
specifyNetWeight VSSE 12
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 6
createNetGroup group22
specifyNetWeight BGR_Core/l6 4
createNetGroup group23
specifyNetWeight BGR_Core/l7 6
createNetGroup group24
specifyNetWeight BGR_Core/l8 6
createNetGroup group25
specifyNetWeight BGR_Core/l10 3
createNetGroup group26
specifyNetWeight BGR_Core/l11 14
createNetGroup group27
specifyNetWeight BGR_Core/l1 20
createNetGroup group28
specifyNetWeight BGR_Core/l2 5
createNetGroup group29
specifyNetWeight BGR_Core/l4 4
createNetGroup group30
specifyNetWeight BGR_Core/l5 18
createNetGroup group31
specifyNetWeight BGR_Core/l12 10
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 20
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 11
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 13
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 17
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 14
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 20
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 12
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 16
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 18
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 13
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 9
createNetGroup group43
specifyNetWeight R17/l 18
createNetGroup group44
specifyNetWeight R18/l 3
createNetGroup group45
specifyNetWeight R19/l 14
createNetGroup group46
specifyNetWeight R20/l 13
createNetGroup group47
specifyNetWeight VDD 12
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 2
createNetGroup group1
specifyNetWeight va 9
createNetGroup group2
specifyNetWeight vb 20
createNetGroup group3
specifyNetWeight vbg 4
createNetGroup group4
specifyNetWeight VSS 20
createNetGroup group5
specifyNetWeight vc 17
createNetGroup group6
specifyNetWeight l17 5
createNetGroup group7
specifyNetWeight l18 13
createNetGroup group8
specifyNetWeight l19 15
createNetGroup group9
specifyNetWeight l20 9
createNetGroup group10
specifyNetWeight amp/vg 19
createNetGroup group11
specifyNetWeight amp/vq 2
createNetGroup group12
specifyNetWeight amp/vx 18
createNetGroup group13
specifyNetWeight VNW 18
createNetGroup group14
specifyNetWeight VDDPST 5
createNetGroup group15
specifyNetWeight POC 3
createNetGroup group16
specifyNetWeight VDDCE 20
createNetGroup group17
specifyNetWeight VDDPE 13
createNetGroup group18
specifyNetWeight VPW 3
createNetGroup group19
specifyNetWeight VSSPST 13
createNetGroup group20
specifyNetWeight VSSE 7
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 12
createNetGroup group22
specifyNetWeight BGR_Core/l6 10
createNetGroup group23
specifyNetWeight BGR_Core/l7 17
createNetGroup group24
specifyNetWeight BGR_Core/l8 17
createNetGroup group25
specifyNetWeight BGR_Core/l10 15
createNetGroup group26
specifyNetWeight BGR_Core/l11 2
createNetGroup group27
specifyNetWeight BGR_Core/l1 9
createNetGroup group28
specifyNetWeight BGR_Core/l2 17
createNetGroup group29
specifyNetWeight BGR_Core/l4 13
createNetGroup group30
specifyNetWeight BGR_Core/l5 7
createNetGroup group31
specifyNetWeight BGR_Core/l12 3
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 17
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 18
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 7
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 14
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 11
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 20
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 17
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 8
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 2
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 16
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 7
createNetGroup group43
specifyNetWeight R17/l 16
createNetGroup group44
specifyNetWeight R18/l 12
createNetGroup group45
specifyNetWeight R19/l 20
createNetGroup group46
specifyNetWeight R20/l 12
createNetGroup group47
specifyNetWeight VDD 15
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 6
createNetGroup group1
specifyNetWeight va 18
createNetGroup group2
specifyNetWeight vb 15
createNetGroup group3
specifyNetWeight vbg 14
createNetGroup group4
specifyNetWeight VSS 8
createNetGroup group5
specifyNetWeight vc 9
createNetGroup group6
specifyNetWeight l17 13
createNetGroup group7
specifyNetWeight l18 14
createNetGroup group8
specifyNetWeight l19 11
createNetGroup group9
specifyNetWeight l20 9
createNetGroup group10
specifyNetWeight amp/vg 8
createNetGroup group11
specifyNetWeight amp/vq 10
createNetGroup group12
specifyNetWeight amp/vx 9
createNetGroup group13
specifyNetWeight VNW 19
createNetGroup group14
specifyNetWeight VDDPST 20
createNetGroup group15
specifyNetWeight POC 13
createNetGroup group16
specifyNetWeight VDDCE 16
createNetGroup group17
specifyNetWeight VDDPE 9
createNetGroup group18
specifyNetWeight VPW 12
createNetGroup group19
specifyNetWeight VSSPST 6
createNetGroup group20
specifyNetWeight VSSE 12
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 9
createNetGroup group22
specifyNetWeight BGR_Core/l6 6
createNetGroup group23
specifyNetWeight BGR_Core/l7 10
createNetGroup group24
specifyNetWeight BGR_Core/l8 19
createNetGroup group25
specifyNetWeight BGR_Core/l10 7
createNetGroup group26
specifyNetWeight BGR_Core/l11 19
createNetGroup group27
specifyNetWeight BGR_Core/l1 5
createNetGroup group28
specifyNetWeight BGR_Core/l2 16
createNetGroup group29
specifyNetWeight BGR_Core/l4 17
createNetGroup group30
specifyNetWeight BGR_Core/l5 8
createNetGroup group31
specifyNetWeight BGR_Core/l12 7
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 13
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 9
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 4
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 19
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 17
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 8
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 11
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 14
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 10
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 18
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 8
createNetGroup group43
specifyNetWeight R17/l 13
createNetGroup group44
specifyNetWeight R18/l 15
createNetGroup group45
specifyNetWeight R19/l 12
createNetGroup group46
specifyNetWeight R20/l 2
createNetGroup group47
specifyNetWeight VDD 3
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 8
createNetGroup group1
specifyNetWeight va 7
createNetGroup group2
specifyNetWeight vb 19
createNetGroup group3
specifyNetWeight vbg 16
createNetGroup group4
specifyNetWeight VSS 8
createNetGroup group5
specifyNetWeight vc 4
createNetGroup group6
specifyNetWeight l17 10
createNetGroup group7
specifyNetWeight l18 18
createNetGroup group8
specifyNetWeight l19 11
createNetGroup group9
specifyNetWeight l20 17
createNetGroup group10
specifyNetWeight amp/vg 15
createNetGroup group11
specifyNetWeight amp/vq 12
createNetGroup group12
specifyNetWeight amp/vx 14
createNetGroup group13
specifyNetWeight VNW 3
createNetGroup group14
specifyNetWeight VDDPST 5
createNetGroup group15
specifyNetWeight POC 3
createNetGroup group16
specifyNetWeight VDDCE 12
createNetGroup group17
specifyNetWeight VDDPE 7
createNetGroup group18
specifyNetWeight VPW 10
createNetGroup group19
specifyNetWeight VSSPST 19
createNetGroup group20
specifyNetWeight VSSE 16
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 11
createNetGroup group22
specifyNetWeight BGR_Core/l6 19
createNetGroup group23
specifyNetWeight BGR_Core/l7 15
createNetGroup group24
specifyNetWeight BGR_Core/l8 17
createNetGroup group25
specifyNetWeight BGR_Core/l10 13
createNetGroup group26
specifyNetWeight BGR_Core/l11 9
createNetGroup group27
specifyNetWeight BGR_Core/l1 4
createNetGroup group28
specifyNetWeight BGR_Core/l2 4
createNetGroup group29
specifyNetWeight BGR_Core/l4 4
createNetGroup group30
specifyNetWeight BGR_Core/l5 18
createNetGroup group31
specifyNetWeight BGR_Core/l12 2
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 20
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 18
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 12
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 5
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 20
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 9
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 2
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 3
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 5
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 11
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 4
createNetGroup group43
specifyNetWeight R17/l 20
createNetGroup group44
specifyNetWeight R18/l 14
createNetGroup group45
specifyNetWeight R19/l 6
createNetGroup group46
specifyNetWeight R20/l 20
createNetGroup group47
specifyNetWeight VDD 18
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 10
createNetGroup group1
specifyNetWeight va 11
createNetGroup group2
specifyNetWeight vb 7
createNetGroup group3
specifyNetWeight vbg 7
createNetGroup group4
specifyNetWeight VSS 16
createNetGroup group5
specifyNetWeight vc 20
createNetGroup group6
specifyNetWeight l17 9
createNetGroup group7
specifyNetWeight l18 6
createNetGroup group8
specifyNetWeight l19 6
createNetGroup group9
specifyNetWeight l20 9
createNetGroup group10
specifyNetWeight amp/vg 10
createNetGroup group11
specifyNetWeight amp/vq 17
createNetGroup group12
specifyNetWeight amp/vx 11
createNetGroup group13
specifyNetWeight VNW 6
createNetGroup group14
specifyNetWeight VDDPST 10
createNetGroup group15
specifyNetWeight POC 8
createNetGroup group16
specifyNetWeight VDDCE 4
createNetGroup group17
specifyNetWeight VDDPE 6
createNetGroup group18
specifyNetWeight VPW 15
createNetGroup group19
specifyNetWeight VSSPST 7
createNetGroup group20
specifyNetWeight VSSE 8
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 20
createNetGroup group22
specifyNetWeight BGR_Core/l6 2
createNetGroup group23
specifyNetWeight BGR_Core/l7 13
createNetGroup group24
specifyNetWeight BGR_Core/l8 19
createNetGroup group25
specifyNetWeight BGR_Core/l10 17
createNetGroup group26
specifyNetWeight BGR_Core/l11 6
createNetGroup group27
specifyNetWeight BGR_Core/l1 10
createNetGroup group28
specifyNetWeight BGR_Core/l2 4
createNetGroup group29
specifyNetWeight BGR_Core/l4 10
createNetGroup group30
specifyNetWeight BGR_Core/l5 9
createNetGroup group31
specifyNetWeight BGR_Core/l12 2
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 6
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 8
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 20
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 2
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 15
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 6
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 6
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 17
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 19
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 3
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 18
createNetGroup group43
specifyNetWeight R17/l 12
createNetGroup group44
specifyNetWeight R18/l 9
createNetGroup group45
specifyNetWeight R19/l 7
createNetGroup group46
specifyNetWeight R20/l 16
createNetGroup group47
specifyNetWeight VDD 12
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 9
createNetGroup group1
specifyNetWeight va 10
createNetGroup group2
specifyNetWeight vb 8
createNetGroup group3
specifyNetWeight vbg 5
createNetGroup group4
specifyNetWeight VSS 16
createNetGroup group5
specifyNetWeight vc 13
createNetGroup group6
specifyNetWeight l17 17
createNetGroup group7
specifyNetWeight l18 10
createNetGroup group8
specifyNetWeight l19 13
createNetGroup group9
specifyNetWeight l20 19
createNetGroup group10
specifyNetWeight amp/vg 20
createNetGroup group11
specifyNetWeight amp/vq 11
createNetGroup group12
specifyNetWeight amp/vx 8
createNetGroup group13
specifyNetWeight VNW 11
createNetGroup group14
specifyNetWeight VDDPST 19
createNetGroup group15
specifyNetWeight POC 14
createNetGroup group16
specifyNetWeight VDDCE 4
createNetGroup group17
specifyNetWeight VDDPE 7
createNetGroup group18
specifyNetWeight VPW 14
createNetGroup group19
specifyNetWeight VSSPST 5
createNetGroup group20
specifyNetWeight VSSE 20
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 5
createNetGroup group22
specifyNetWeight BGR_Core/l6 18
createNetGroup group23
specifyNetWeight BGR_Core/l7 6
createNetGroup group24
specifyNetWeight BGR_Core/l8 16
createNetGroup group25
specifyNetWeight BGR_Core/l10 6
createNetGroup group26
specifyNetWeight BGR_Core/l11 15
createNetGroup group27
specifyNetWeight BGR_Core/l1 10
createNetGroup group28
specifyNetWeight BGR_Core/l2 19
createNetGroup group29
specifyNetWeight BGR_Core/l4 8
createNetGroup group30
specifyNetWeight BGR_Core/l5 7
createNetGroup group31
specifyNetWeight BGR_Core/l12 4
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 10
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 16
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 12
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 14
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 18
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 3
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 13
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 14
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 14
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 19
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 6
createNetGroup group43
specifyNetWeight R17/l 19
createNetGroup group44
specifyNetWeight R18/l 20
createNetGroup group45
specifyNetWeight R19/l 6
createNetGroup group46
specifyNetWeight R20/l 3
createNetGroup group47
specifyNetWeight VDD 11
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 18
createNetGroup group1
specifyNetWeight va 20
createNetGroup group2
specifyNetWeight vb 15
createNetGroup group3
specifyNetWeight vbg 8
createNetGroup group4
specifyNetWeight VSS 8
createNetGroup group5
specifyNetWeight vc 16
createNetGroup group6
specifyNetWeight l17 8
createNetGroup group7
specifyNetWeight l18 14
createNetGroup group8
specifyNetWeight l19 4
createNetGroup group9
specifyNetWeight l20 5
createNetGroup group10
specifyNetWeight amp/vg 19
createNetGroup group11
specifyNetWeight amp/vq 14
createNetGroup group12
specifyNetWeight amp/vx 5
createNetGroup group13
specifyNetWeight VNW 18
createNetGroup group14
specifyNetWeight VDDPST 16
createNetGroup group15
specifyNetWeight POC 7
createNetGroup group16
specifyNetWeight VDDCE 3
createNetGroup group17
specifyNetWeight VDDPE 8
createNetGroup group18
specifyNetWeight VPW 9
createNetGroup group19
specifyNetWeight VSSPST 9
createNetGroup group20
specifyNetWeight VSSE 5
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 14
createNetGroup group22
specifyNetWeight BGR_Core/l6 15
createNetGroup group23
specifyNetWeight BGR_Core/l7 4
createNetGroup group24
specifyNetWeight BGR_Core/l8 19
createNetGroup group25
specifyNetWeight BGR_Core/l10 8
createNetGroup group26
specifyNetWeight BGR_Core/l11 18
createNetGroup group27
specifyNetWeight BGR_Core/l1 8
createNetGroup group28
specifyNetWeight BGR_Core/l2 8
createNetGroup group29
specifyNetWeight BGR_Core/l4 17
createNetGroup group30
specifyNetWeight BGR_Core/l5 4
createNetGroup group31
specifyNetWeight BGR_Core/l12 8
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 5
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 18
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 6
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 8
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 19
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 20
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 18
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 15
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 14
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 10
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 17
createNetGroup group43
specifyNetWeight R17/l 2
createNetGroup group44
specifyNetWeight R18/l 13
createNetGroup group45
specifyNetWeight R19/l 13
createNetGroup group46
specifyNetWeight R20/l 8
createNetGroup group47
specifyNetWeight VDD 3
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 16
createNetGroup group1
specifyNetWeight va 8
createNetGroup group2
specifyNetWeight vb 18
createNetGroup group3
specifyNetWeight vbg 8
createNetGroup group4
specifyNetWeight VSS 4
createNetGroup group5
specifyNetWeight vc 2
createNetGroup group6
specifyNetWeight l17 6
createNetGroup group7
specifyNetWeight l18 9
createNetGroup group8
specifyNetWeight l19 16
createNetGroup group9
specifyNetWeight l20 17
createNetGroup group10
specifyNetWeight amp/vg 4
createNetGroup group11
specifyNetWeight amp/vq 10
createNetGroup group12
specifyNetWeight amp/vx 11
createNetGroup group13
specifyNetWeight VNW 14
createNetGroup group14
specifyNetWeight VDDPST 12
createNetGroup group15
specifyNetWeight POC 11
createNetGroup group16
specifyNetWeight VDDCE 4
createNetGroup group17
specifyNetWeight VDDPE 5
createNetGroup group18
specifyNetWeight VPW 17
createNetGroup group19
specifyNetWeight VSSPST 13
createNetGroup group20
specifyNetWeight VSSE 4
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 9
createNetGroup group22
specifyNetWeight BGR_Core/l6 6
createNetGroup group23
specifyNetWeight BGR_Core/l7 15
createNetGroup group24
specifyNetWeight BGR_Core/l8 9
createNetGroup group25
specifyNetWeight BGR_Core/l10 2
createNetGroup group26
specifyNetWeight BGR_Core/l11 17
createNetGroup group27
specifyNetWeight BGR_Core/l1 11
createNetGroup group28
specifyNetWeight BGR_Core/l2 6
createNetGroup group29
specifyNetWeight BGR_Core/l4 18
createNetGroup group30
specifyNetWeight BGR_Core/l5 13
createNetGroup group31
specifyNetWeight BGR_Core/l12 6
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 5
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 18
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 12
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 12
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 4
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 13
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 8
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 8
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 11
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 18
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 15
createNetGroup group43
specifyNetWeight R17/l 14
createNetGroup group44
specifyNetWeight R18/l 14
createNetGroup group45
specifyNetWeight R19/l 3
createNetGroup group46
specifyNetWeight R20/l 6
createNetGroup group47
specifyNetWeight VDD 16
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 11
createNetGroup group1
specifyNetWeight va 6
createNetGroup group2
specifyNetWeight vb 18
createNetGroup group3
specifyNetWeight vbg 8
createNetGroup group4
specifyNetWeight VSS 17
createNetGroup group5
specifyNetWeight vc 17
createNetGroup group6
specifyNetWeight l17 13
createNetGroup group7
specifyNetWeight l18 6
createNetGroup group8
specifyNetWeight l19 20
createNetGroup group9
specifyNetWeight l20 6
createNetGroup group10
specifyNetWeight amp/vg 20
createNetGroup group11
specifyNetWeight amp/vq 15
createNetGroup group12
specifyNetWeight amp/vx 10
createNetGroup group13
specifyNetWeight VNW 8
createNetGroup group14
specifyNetWeight VDDPST 5
createNetGroup group15
specifyNetWeight POC 7
createNetGroup group16
specifyNetWeight VDDCE 6
createNetGroup group17
specifyNetWeight VDDPE 16
createNetGroup group18
specifyNetWeight VPW 19
createNetGroup group19
specifyNetWeight VSSPST 15
createNetGroup group20
specifyNetWeight VSSE 7
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 3
createNetGroup group22
specifyNetWeight BGR_Core/l6 11
createNetGroup group23
specifyNetWeight BGR_Core/l7 17
createNetGroup group24
specifyNetWeight BGR_Core/l8 20
createNetGroup group25
specifyNetWeight BGR_Core/l10 4
createNetGroup group26
specifyNetWeight BGR_Core/l11 13
createNetGroup group27
specifyNetWeight BGR_Core/l1 5
createNetGroup group28
specifyNetWeight BGR_Core/l2 5
createNetGroup group29
specifyNetWeight BGR_Core/l4 17
createNetGroup group30
specifyNetWeight BGR_Core/l5 9
createNetGroup group31
specifyNetWeight BGR_Core/l12 18
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 3
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 2
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 20
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 4
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 16
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 10
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 20
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 10
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 19
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 14
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 7
createNetGroup group43
specifyNetWeight R17/l 9
createNetGroup group44
specifyNetWeight R18/l 5
createNetGroup group45
specifyNetWeight R19/l 20
createNetGroup group46
specifyNetWeight R20/l 18
createNetGroup group47
specifyNetWeight VDD 7
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 9
createNetGroup group1
specifyNetWeight va 2
createNetGroup group2
specifyNetWeight vb 9
createNetGroup group3
specifyNetWeight vbg 6
createNetGroup group4
specifyNetWeight VSS 12
createNetGroup group5
specifyNetWeight vc 6
createNetGroup group6
specifyNetWeight l17 6
createNetGroup group7
specifyNetWeight l18 20
createNetGroup group8
specifyNetWeight l19 7
createNetGroup group9
specifyNetWeight l20 4
createNetGroup group10
specifyNetWeight amp/vg 5
createNetGroup group11
specifyNetWeight amp/vq 10
createNetGroup group12
specifyNetWeight amp/vx 5
createNetGroup group13
specifyNetWeight VNW 10
createNetGroup group14
specifyNetWeight VDDPST 16
createNetGroup group15
specifyNetWeight POC 20
createNetGroup group16
specifyNetWeight VDDCE 10
createNetGroup group17
specifyNetWeight VDDPE 20
createNetGroup group18
specifyNetWeight VPW 15
createNetGroup group19
specifyNetWeight VSSPST 3
createNetGroup group20
specifyNetWeight VSSE 4
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 6
createNetGroup group22
specifyNetWeight BGR_Core/l6 16
createNetGroup group23
specifyNetWeight BGR_Core/l7 3
createNetGroup group24
specifyNetWeight BGR_Core/l8 13
createNetGroup group25
specifyNetWeight BGR_Core/l10 12
createNetGroup group26
specifyNetWeight BGR_Core/l11 10
createNetGroup group27
specifyNetWeight BGR_Core/l1 15
createNetGroup group28
specifyNetWeight BGR_Core/l2 14
createNetGroup group29
specifyNetWeight BGR_Core/l4 2
createNetGroup group30
specifyNetWeight BGR_Core/l5 11
createNetGroup group31
specifyNetWeight BGR_Core/l12 9
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 8
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 4
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 20
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 6
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 9
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 18
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 8
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 16
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 12
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 2
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 10
createNetGroup group43
specifyNetWeight R17/l 15
createNetGroup group44
specifyNetWeight R18/l 20
createNetGroup group45
specifyNetWeight R19/l 18
createNetGroup group46
specifyNetWeight R20/l 19
createNetGroup group47
specifyNetWeight VDD 6
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 20
createNetGroup group1
specifyNetWeight va 19
createNetGroup group2
specifyNetWeight vb 14
createNetGroup group3
specifyNetWeight vbg 8
createNetGroup group4
specifyNetWeight VSS 2
createNetGroup group5
specifyNetWeight vc 11
createNetGroup group6
specifyNetWeight l17 5
createNetGroup group7
specifyNetWeight l18 16
createNetGroup group8
specifyNetWeight l19 10
createNetGroup group9
specifyNetWeight l20 9
createNetGroup group10
specifyNetWeight amp/vg 10
createNetGroup group11
specifyNetWeight amp/vq 11
createNetGroup group12
specifyNetWeight amp/vx 4
createNetGroup group13
specifyNetWeight VNW 13
createNetGroup group14
specifyNetWeight VDDPST 6
createNetGroup group15
specifyNetWeight POC 16
createNetGroup group16
specifyNetWeight VDDCE 2
createNetGroup group17
specifyNetWeight VDDPE 14
createNetGroup group18
specifyNetWeight VPW 16
createNetGroup group19
specifyNetWeight VSSPST 3
createNetGroup group20
specifyNetWeight VSSE 11
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 18
createNetGroup group22
specifyNetWeight BGR_Core/l6 15
createNetGroup group23
specifyNetWeight BGR_Core/l7 16
createNetGroup group24
specifyNetWeight BGR_Core/l8 20
createNetGroup group25
specifyNetWeight BGR_Core/l10 18
createNetGroup group26
specifyNetWeight BGR_Core/l11 8
createNetGroup group27
specifyNetWeight BGR_Core/l1 7
createNetGroup group28
specifyNetWeight BGR_Core/l2 2
createNetGroup group29
specifyNetWeight BGR_Core/l4 10
createNetGroup group30
specifyNetWeight BGR_Core/l5 5
createNetGroup group31
specifyNetWeight BGR_Core/l12 14
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 10
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 8
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 17
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 17
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 10
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 18
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 14
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 6
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 17
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 10
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 7
createNetGroup group43
specifyNetWeight R17/l 2
createNetGroup group44
specifyNetWeight R18/l 8
createNetGroup group45
specifyNetWeight R19/l 12
createNetGroup group46
specifyNetWeight R20/l 10
createNetGroup group47
specifyNetWeight VDD 5
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 15
createNetGroup group1
specifyNetWeight va 11
createNetGroup group2
specifyNetWeight vb 12
createNetGroup group3
specifyNetWeight vbg 8
createNetGroup group4
specifyNetWeight VSS 12
createNetGroup group5
specifyNetWeight vc 12
createNetGroup group6
specifyNetWeight l17 15
createNetGroup group7
specifyNetWeight l18 6
createNetGroup group8
specifyNetWeight l19 5
createNetGroup group9
specifyNetWeight l20 9
createNetGroup group10
specifyNetWeight amp/vg 13
createNetGroup group11
specifyNetWeight amp/vq 17
createNetGroup group12
specifyNetWeight amp/vx 16
createNetGroup group13
specifyNetWeight VNW 7
createNetGroup group14
specifyNetWeight VDDPST 13
createNetGroup group15
specifyNetWeight POC 15
createNetGroup group16
specifyNetWeight VDDCE 15
createNetGroup group17
specifyNetWeight VDDPE 15
createNetGroup group18
specifyNetWeight VPW 13
createNetGroup group19
specifyNetWeight VSSPST 20
createNetGroup group20
specifyNetWeight VSSE 5
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 4
createNetGroup group22
specifyNetWeight BGR_Core/l6 19
createNetGroup group23
specifyNetWeight BGR_Core/l7 16
createNetGroup group24
specifyNetWeight BGR_Core/l8 6
createNetGroup group25
specifyNetWeight BGR_Core/l10 5
createNetGroup group26
specifyNetWeight BGR_Core/l11 2
createNetGroup group27
specifyNetWeight BGR_Core/l1 18
createNetGroup group28
specifyNetWeight BGR_Core/l2 14
createNetGroup group29
specifyNetWeight BGR_Core/l4 17
createNetGroup group30
specifyNetWeight BGR_Core/l5 9
createNetGroup group31
specifyNetWeight BGR_Core/l12 14
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 5
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 15
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 3
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 11
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 7
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 11
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 10
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 18
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 5
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 19
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 12
createNetGroup group43
specifyNetWeight R17/l 2
createNetGroup group44
specifyNetWeight R18/l 6
createNetGroup group45
specifyNetWeight R19/l 2
createNetGroup group46
specifyNetWeight R20/l 4
createNetGroup group47
specifyNetWeight VDD 12
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 16
createNetGroup group1
specifyNetWeight va 8
createNetGroup group2
specifyNetWeight vb 9
createNetGroup group3
specifyNetWeight vbg 13
createNetGroup group4
specifyNetWeight VSS 8
createNetGroup group5
specifyNetWeight vc 20
createNetGroup group6
specifyNetWeight l17 16
createNetGroup group7
specifyNetWeight l18 10
createNetGroup group8
specifyNetWeight l19 19
createNetGroup group9
specifyNetWeight l20 7
createNetGroup group10
specifyNetWeight amp/vg 16
createNetGroup group11
specifyNetWeight amp/vq 14
createNetGroup group12
specifyNetWeight amp/vx 2
createNetGroup group13
specifyNetWeight VNW 5
createNetGroup group14
specifyNetWeight VDDPST 2
createNetGroup group15
specifyNetWeight POC 5
createNetGroup group16
specifyNetWeight VDDCE 12
createNetGroup group17
specifyNetWeight VDDPE 8
createNetGroup group18
specifyNetWeight VPW 11
createNetGroup group19
specifyNetWeight VSSPST 19
createNetGroup group20
specifyNetWeight VSSE 5
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 18
createNetGroup group22
specifyNetWeight BGR_Core/l6 11
createNetGroup group23
specifyNetWeight BGR_Core/l7 4
createNetGroup group24
specifyNetWeight BGR_Core/l8 5
createNetGroup group25
specifyNetWeight BGR_Core/l10 19
createNetGroup group26
specifyNetWeight BGR_Core/l11 11
createNetGroup group27
specifyNetWeight BGR_Core/l1 3
createNetGroup group28
specifyNetWeight BGR_Core/l2 9
createNetGroup group29
specifyNetWeight BGR_Core/l4 5
createNetGroup group30
specifyNetWeight BGR_Core/l5 7
createNetGroup group31
specifyNetWeight BGR_Core/l12 16
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 7
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 7
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 16
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 10
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 7
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 16
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 20
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 2
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 19
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 14
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 2
createNetGroup group43
specifyNetWeight R17/l 5
createNetGroup group44
specifyNetWeight R18/l 5
createNetGroup group45
specifyNetWeight R19/l 11
createNetGroup group46
specifyNetWeight R20/l 4
createNetGroup group47
specifyNetWeight VDD 14
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 10
createNetGroup group1
specifyNetWeight va 14
createNetGroup group2
specifyNetWeight vb 9
createNetGroup group3
specifyNetWeight vbg 16
createNetGroup group4
specifyNetWeight VSS 13
createNetGroup group5
specifyNetWeight vc 18
createNetGroup group6
specifyNetWeight l17 19
createNetGroup group7
specifyNetWeight l18 13
createNetGroup group8
specifyNetWeight l19 7
createNetGroup group9
specifyNetWeight l20 15
createNetGroup group10
specifyNetWeight amp/vg 2
createNetGroup group11
specifyNetWeight amp/vq 20
createNetGroup group12
specifyNetWeight amp/vx 15
createNetGroup group13
specifyNetWeight VNW 9
createNetGroup group14
specifyNetWeight VDDPST 11
createNetGroup group15
specifyNetWeight POC 13
createNetGroup group16
specifyNetWeight VDDCE 18
createNetGroup group17
specifyNetWeight VDDPE 12
createNetGroup group18
specifyNetWeight VPW 17
createNetGroup group19
specifyNetWeight VSSPST 16
createNetGroup group20
specifyNetWeight VSSE 10
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 13
createNetGroup group22
specifyNetWeight BGR_Core/l6 10
createNetGroup group23
specifyNetWeight BGR_Core/l7 7
createNetGroup group24
specifyNetWeight BGR_Core/l8 7
createNetGroup group25
specifyNetWeight BGR_Core/l10 9
createNetGroup group26
specifyNetWeight BGR_Core/l11 16
createNetGroup group27
specifyNetWeight BGR_Core/l1 12
createNetGroup group28
specifyNetWeight BGR_Core/l2 2
createNetGroup group29
specifyNetWeight BGR_Core/l4 13
createNetGroup group30
specifyNetWeight BGR_Core/l5 17
createNetGroup group31
specifyNetWeight BGR_Core/l12 11
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 9
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 2
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 5
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 16
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 18
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 7
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 8
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 14
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 12
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 19
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 6
createNetGroup group43
specifyNetWeight R17/l 3
createNetGroup group44
specifyNetWeight R18/l 17
createNetGroup group45
specifyNetWeight R19/l 15
createNetGroup group46
specifyNetWeight R20/l 16
createNetGroup group47
specifyNetWeight VDD 16
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 2
createNetGroup group1
specifyNetWeight va 8
createNetGroup group2
specifyNetWeight vb 20
createNetGroup group3
specifyNetWeight vbg 8
createNetGroup group4
specifyNetWeight VSS 11
createNetGroup group5
specifyNetWeight vc 4
createNetGroup group6
specifyNetWeight l17 17
createNetGroup group7
specifyNetWeight l18 6
createNetGroup group8
specifyNetWeight l19 4
createNetGroup group9
specifyNetWeight l20 18
createNetGroup group10
specifyNetWeight amp/vg 19
createNetGroup group11
specifyNetWeight amp/vq 14
createNetGroup group12
specifyNetWeight amp/vx 10
createNetGroup group13
specifyNetWeight VNW 8
createNetGroup group14
specifyNetWeight VDDPST 4
createNetGroup group15
specifyNetWeight POC 15
createNetGroup group16
specifyNetWeight VDDCE 2
createNetGroup group17
specifyNetWeight VDDPE 19
createNetGroup group18
specifyNetWeight VPW 17
createNetGroup group19
specifyNetWeight VSSPST 12
createNetGroup group20
specifyNetWeight VSSE 2
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 8
createNetGroup group22
specifyNetWeight BGR_Core/l6 11
createNetGroup group23
specifyNetWeight BGR_Core/l7 15
createNetGroup group24
specifyNetWeight BGR_Core/l8 16
createNetGroup group25
specifyNetWeight BGR_Core/l10 18
createNetGroup group26
specifyNetWeight BGR_Core/l11 11
createNetGroup group27
specifyNetWeight BGR_Core/l1 4
createNetGroup group28
specifyNetWeight BGR_Core/l2 3
createNetGroup group29
specifyNetWeight BGR_Core/l4 4
createNetGroup group30
specifyNetWeight BGR_Core/l5 13
createNetGroup group31
specifyNetWeight BGR_Core/l12 14
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 15
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 14
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 9
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 11
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 17
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 14
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 19
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 2
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 15
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 11
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 17
createNetGroup group43
specifyNetWeight R17/l 6
createNetGroup group44
specifyNetWeight R18/l 14
createNetGroup group45
specifyNetWeight R19/l 15
createNetGroup group46
specifyNetWeight R20/l 14
createNetGroup group47
specifyNetWeight VDD 20
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 17
createNetGroup group1
specifyNetWeight va 19
createNetGroup group2
specifyNetWeight vb 13
createNetGroup group3
specifyNetWeight vbg 11
createNetGroup group4
specifyNetWeight VSS 11
createNetGroup group5
specifyNetWeight vc 15
createNetGroup group6
specifyNetWeight l17 20
createNetGroup group7
specifyNetWeight l18 7
createNetGroup group8
specifyNetWeight l19 13
createNetGroup group9
specifyNetWeight l20 3
createNetGroup group10
specifyNetWeight amp/vg 15
createNetGroup group11
specifyNetWeight amp/vq 16
createNetGroup group12
specifyNetWeight amp/vx 16
createNetGroup group13
specifyNetWeight VNW 11
createNetGroup group14
specifyNetWeight VDDPST 4
createNetGroup group15
specifyNetWeight POC 9
createNetGroup group16
specifyNetWeight VDDCE 12
createNetGroup group17
specifyNetWeight VDDPE 9
createNetGroup group18
specifyNetWeight VPW 14
createNetGroup group19
specifyNetWeight VSSPST 2
createNetGroup group20
specifyNetWeight VSSE 12
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 6
createNetGroup group22
specifyNetWeight BGR_Core/l6 7
createNetGroup group23
specifyNetWeight BGR_Core/l7 17
createNetGroup group24
specifyNetWeight BGR_Core/l8 4
createNetGroup group25
specifyNetWeight BGR_Core/l10 5
createNetGroup group26
specifyNetWeight BGR_Core/l11 7
createNetGroup group27
specifyNetWeight BGR_Core/l1 3
createNetGroup group28
specifyNetWeight BGR_Core/l2 9
createNetGroup group29
specifyNetWeight BGR_Core/l4 7
createNetGroup group30
specifyNetWeight BGR_Core/l5 2
createNetGroup group31
specifyNetWeight BGR_Core/l12 18
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 15
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 15
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 7
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 11
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 14
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 16
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 11
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 19
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 3
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 7
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 17
createNetGroup group43
specifyNetWeight R17/l 7
createNetGroup group44
specifyNetWeight R18/l 5
createNetGroup group45
specifyNetWeight R19/l 5
createNetGroup group46
specifyNetWeight R20/l 17
createNetGroup group47
specifyNetWeight VDD 11
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 11
createNetGroup group1
specifyNetWeight va 14
createNetGroup group2
specifyNetWeight vb 3
createNetGroup group3
specifyNetWeight vbg 20
createNetGroup group4
specifyNetWeight VSS 5
createNetGroup group5
specifyNetWeight vc 10
createNetGroup group6
specifyNetWeight l17 12
createNetGroup group7
specifyNetWeight l18 16
createNetGroup group8
specifyNetWeight l19 4
createNetGroup group9
specifyNetWeight l20 3
createNetGroup group10
specifyNetWeight amp/vg 11
createNetGroup group11
specifyNetWeight amp/vq 9
createNetGroup group12
specifyNetWeight amp/vx 16
createNetGroup group13
specifyNetWeight VNW 11
createNetGroup group14
specifyNetWeight VDDPST 19
createNetGroup group15
specifyNetWeight POC 8
createNetGroup group16
specifyNetWeight VDDCE 14
createNetGroup group17
specifyNetWeight VDDPE 4
createNetGroup group18
specifyNetWeight VPW 15
createNetGroup group19
specifyNetWeight VSSPST 3
createNetGroup group20
specifyNetWeight VSSE 3
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 4
createNetGroup group22
specifyNetWeight BGR_Core/l6 13
createNetGroup group23
specifyNetWeight BGR_Core/l7 2
createNetGroup group24
specifyNetWeight BGR_Core/l8 11
createNetGroup group25
specifyNetWeight BGR_Core/l10 11
createNetGroup group26
specifyNetWeight BGR_Core/l11 3
createNetGroup group27
specifyNetWeight BGR_Core/l1 2
createNetGroup group28
specifyNetWeight BGR_Core/l2 3
createNetGroup group29
specifyNetWeight BGR_Core/l4 3
createNetGroup group30
specifyNetWeight BGR_Core/l5 6
createNetGroup group31
specifyNetWeight BGR_Core/l12 7
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 17
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 4
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 20
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 6
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 2
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 19
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 6
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 5
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 4
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 4
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 5
createNetGroup group43
specifyNetWeight R17/l 8
createNetGroup group44
specifyNetWeight R18/l 5
createNetGroup group45
specifyNetWeight R19/l 17
createNetGroup group46
specifyNetWeight R20/l 15
createNetGroup group47
specifyNetWeight VDD 4
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 17
createNetGroup group1
specifyNetWeight va 16
createNetGroup group2
specifyNetWeight vb 18
createNetGroup group3
specifyNetWeight vbg 7
createNetGroup group4
specifyNetWeight VSS 6
createNetGroup group5
specifyNetWeight vc 19
createNetGroup group6
specifyNetWeight l17 5
createNetGroup group7
specifyNetWeight l18 6
createNetGroup group8
specifyNetWeight l19 13
createNetGroup group9
specifyNetWeight l20 15
createNetGroup group10
specifyNetWeight amp/vg 18
createNetGroup group11
specifyNetWeight amp/vq 6
createNetGroup group12
specifyNetWeight amp/vx 4
createNetGroup group13
specifyNetWeight VNW 18
createNetGroup group14
specifyNetWeight VDDPST 3
createNetGroup group15
specifyNetWeight POC 19
createNetGroup group16
specifyNetWeight VDDCE 9
createNetGroup group17
specifyNetWeight VDDPE 5
createNetGroup group18
specifyNetWeight VPW 14
createNetGroup group19
specifyNetWeight VSSPST 13
createNetGroup group20
specifyNetWeight VSSE 18
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 12
createNetGroup group22
specifyNetWeight BGR_Core/l6 19
createNetGroup group23
specifyNetWeight BGR_Core/l7 20
createNetGroup group24
specifyNetWeight BGR_Core/l8 19
createNetGroup group25
specifyNetWeight BGR_Core/l10 14
createNetGroup group26
specifyNetWeight BGR_Core/l11 11
createNetGroup group27
specifyNetWeight BGR_Core/l1 9
createNetGroup group28
specifyNetWeight BGR_Core/l2 20
createNetGroup group29
specifyNetWeight BGR_Core/l4 4
createNetGroup group30
specifyNetWeight BGR_Core/l5 6
createNetGroup group31
specifyNetWeight BGR_Core/l12 14
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 13
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 11
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 13
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 18
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 13
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 2
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 2
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 2
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 6
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 10
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 8
createNetGroup group43
specifyNetWeight R17/l 6
createNetGroup group44
specifyNetWeight R18/l 7
createNetGroup group45
specifyNetWeight R19/l 5
createNetGroup group46
specifyNetWeight R20/l 17
createNetGroup group47
specifyNetWeight VDD 17
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 10
createNetGroup group1
specifyNetWeight va 10
createNetGroup group2
specifyNetWeight vb 6
createNetGroup group3
specifyNetWeight vbg 3
createNetGroup group4
specifyNetWeight VSS 7
createNetGroup group5
specifyNetWeight vc 7
createNetGroup group6
specifyNetWeight l17 13
createNetGroup group7
specifyNetWeight l18 12
createNetGroup group8
specifyNetWeight l19 8
createNetGroup group9
specifyNetWeight l20 5
createNetGroup group10
specifyNetWeight amp/vg 18
createNetGroup group11
specifyNetWeight amp/vq 17
createNetGroup group12
specifyNetWeight amp/vx 6
createNetGroup group13
specifyNetWeight VNW 10
createNetGroup group14
specifyNetWeight VDDPST 12
createNetGroup group15
specifyNetWeight POC 8
createNetGroup group16
specifyNetWeight VDDCE 5
createNetGroup group17
specifyNetWeight VDDPE 9
createNetGroup group18
specifyNetWeight VPW 13
createNetGroup group19
specifyNetWeight VSSPST 14
createNetGroup group20
specifyNetWeight VSSE 5
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 10
createNetGroup group22
specifyNetWeight BGR_Core/l6 14
createNetGroup group23
specifyNetWeight BGR_Core/l7 19
createNetGroup group24
specifyNetWeight BGR_Core/l8 13
createNetGroup group25
specifyNetWeight BGR_Core/l10 3
createNetGroup group26
specifyNetWeight BGR_Core/l11 12
createNetGroup group27
specifyNetWeight BGR_Core/l1 9
createNetGroup group28
specifyNetWeight BGR_Core/l2 14
createNetGroup group29
specifyNetWeight BGR_Core/l4 3
createNetGroup group30
specifyNetWeight BGR_Core/l5 15
createNetGroup group31
specifyNetWeight BGR_Core/l12 19
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 10
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 7
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 10
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 3
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 10
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 4
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 12
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 15
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 2
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 10
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 9
createNetGroup group43
specifyNetWeight R17/l 7
createNetGroup group44
specifyNetWeight R18/l 10
createNetGroup group45
specifyNetWeight R19/l 13
createNetGroup group46
specifyNetWeight R20/l 18
createNetGroup group47
specifyNetWeight VDD 5
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 17
createNetGroup group1
specifyNetWeight va 8
createNetGroup group2
specifyNetWeight vb 20
createNetGroup group3
specifyNetWeight vbg 20
createNetGroup group4
specifyNetWeight VSS 8
createNetGroup group5
specifyNetWeight vc 4
createNetGroup group6
specifyNetWeight l17 15
createNetGroup group7
specifyNetWeight l18 11
createNetGroup group8
specifyNetWeight l19 3
createNetGroup group9
specifyNetWeight l20 10
createNetGroup group10
specifyNetWeight amp/vg 2
createNetGroup group11
specifyNetWeight amp/vq 2
createNetGroup group12
specifyNetWeight amp/vx 7
createNetGroup group13
specifyNetWeight VNW 12
createNetGroup group14
specifyNetWeight VDDPST 7
createNetGroup group15
specifyNetWeight POC 14
createNetGroup group16
specifyNetWeight VDDCE 9
createNetGroup group17
specifyNetWeight VDDPE 20
createNetGroup group18
specifyNetWeight VPW 19
createNetGroup group19
specifyNetWeight VSSPST 8
createNetGroup group20
specifyNetWeight VSSE 3
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 19
createNetGroup group22
specifyNetWeight BGR_Core/l6 8
createNetGroup group23
specifyNetWeight BGR_Core/l7 16
createNetGroup group24
specifyNetWeight BGR_Core/l8 19
createNetGroup group25
specifyNetWeight BGR_Core/l10 16
createNetGroup group26
specifyNetWeight BGR_Core/l11 20
createNetGroup group27
specifyNetWeight BGR_Core/l1 12
createNetGroup group28
specifyNetWeight BGR_Core/l2 13
createNetGroup group29
specifyNetWeight BGR_Core/l4 13
createNetGroup group30
specifyNetWeight BGR_Core/l5 5
createNetGroup group31
specifyNetWeight BGR_Core/l12 2
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 15
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 13
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 7
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 17
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 9
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 14
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 2
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 8
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 17
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 15
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 14
createNetGroup group43
specifyNetWeight R17/l 7
createNetGroup group44
specifyNetWeight R18/l 6
createNetGroup group45
specifyNetWeight R19/l 15
createNetGroup group46
specifyNetWeight R20/l 14
createNetGroup group47
specifyNetWeight VDD 16
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 10
createNetGroup group1
specifyNetWeight va 4
createNetGroup group2
specifyNetWeight vb 7
createNetGroup group3
specifyNetWeight vbg 20
createNetGroup group4
specifyNetWeight VSS 13
createNetGroup group5
specifyNetWeight vc 2
createNetGroup group6
specifyNetWeight l17 11
createNetGroup group7
specifyNetWeight l18 7
createNetGroup group8
specifyNetWeight l19 5
createNetGroup group9
specifyNetWeight l20 6
createNetGroup group10
specifyNetWeight amp/vg 10
createNetGroup group11
specifyNetWeight amp/vq 7
createNetGroup group12
specifyNetWeight amp/vx 14
createNetGroup group13
specifyNetWeight VNW 10
createNetGroup group14
specifyNetWeight VDDPST 18
createNetGroup group15
specifyNetWeight POC 15
createNetGroup group16
specifyNetWeight VDDCE 12
createNetGroup group17
specifyNetWeight VDDPE 19
createNetGroup group18
specifyNetWeight VPW 15
createNetGroup group19
specifyNetWeight VSSPST 17
createNetGroup group20
specifyNetWeight VSSE 16
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 5
createNetGroup group22
specifyNetWeight BGR_Core/l6 10
createNetGroup group23
specifyNetWeight BGR_Core/l7 12
createNetGroup group24
specifyNetWeight BGR_Core/l8 10
createNetGroup group25
specifyNetWeight BGR_Core/l10 10
createNetGroup group26
specifyNetWeight BGR_Core/l11 11
createNetGroup group27
specifyNetWeight BGR_Core/l1 14
createNetGroup group28
specifyNetWeight BGR_Core/l2 18
createNetGroup group29
specifyNetWeight BGR_Core/l4 2
createNetGroup group30
specifyNetWeight BGR_Core/l5 17
createNetGroup group31
specifyNetWeight BGR_Core/l12 18
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 18
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 8
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 15
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 10
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 15
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 3
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 2
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 15
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 19
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 4
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 10
createNetGroup group43
specifyNetWeight R17/l 2
createNetGroup group44
specifyNetWeight R18/l 2
createNetGroup group45
specifyNetWeight R19/l 17
createNetGroup group46
specifyNetWeight R20/l 14
createNetGroup group47
specifyNetWeight VDD 19
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 19
createNetGroup group1
specifyNetWeight va 17
createNetGroup group2
specifyNetWeight vb 18
createNetGroup group3
specifyNetWeight vbg 16
createNetGroup group4
specifyNetWeight VSS 17
createNetGroup group5
specifyNetWeight vc 19
createNetGroup group6
specifyNetWeight l17 17
createNetGroup group7
specifyNetWeight l18 20
createNetGroup group8
specifyNetWeight l19 7
createNetGroup group9
specifyNetWeight l20 20
createNetGroup group10
specifyNetWeight amp/vg 2
createNetGroup group11
specifyNetWeight amp/vq 13
createNetGroup group12
specifyNetWeight amp/vx 8
createNetGroup group13
specifyNetWeight VNW 11
createNetGroup group14
specifyNetWeight VDDPST 15
createNetGroup group15
specifyNetWeight POC 4
createNetGroup group16
specifyNetWeight VDDCE 9
createNetGroup group17
specifyNetWeight VDDPE 5
createNetGroup group18
specifyNetWeight VPW 7
createNetGroup group19
specifyNetWeight VSSPST 16
createNetGroup group20
specifyNetWeight VSSE 6
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 17
createNetGroup group22
specifyNetWeight BGR_Core/l6 12
createNetGroup group23
specifyNetWeight BGR_Core/l7 16
createNetGroup group24
specifyNetWeight BGR_Core/l8 6
createNetGroup group25
specifyNetWeight BGR_Core/l10 17
createNetGroup group26
specifyNetWeight BGR_Core/l11 10
createNetGroup group27
specifyNetWeight BGR_Core/l1 17
createNetGroup group28
specifyNetWeight BGR_Core/l2 12
createNetGroup group29
specifyNetWeight BGR_Core/l4 18
createNetGroup group30
specifyNetWeight BGR_Core/l5 9
createNetGroup group31
specifyNetWeight BGR_Core/l12 3
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 13
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 18
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 10
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 14
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 19
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 5
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 11
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 6
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 18
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 6
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 6
createNetGroup group43
specifyNetWeight R17/l 4
createNetGroup group44
specifyNetWeight R18/l 12
createNetGroup group45
specifyNetWeight R19/l 8
createNetGroup group46
specifyNetWeight R20/l 3
createNetGroup group47
specifyNetWeight VDD 2
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 17
createNetGroup group1
specifyNetWeight va 4
createNetGroup group2
specifyNetWeight vb 20
createNetGroup group3
specifyNetWeight vbg 18
createNetGroup group4
specifyNetWeight VSS 16
createNetGroup group5
specifyNetWeight vc 3
createNetGroup group6
specifyNetWeight l17 6
createNetGroup group7
specifyNetWeight l18 16
createNetGroup group8
specifyNetWeight l19 20
createNetGroup group9
specifyNetWeight l20 6
createNetGroup group10
specifyNetWeight amp/vg 20
createNetGroup group11
specifyNetWeight amp/vq 10
createNetGroup group12
specifyNetWeight amp/vx 4
createNetGroup group13
specifyNetWeight VNW 11
createNetGroup group14
specifyNetWeight VDDPST 13
createNetGroup group15
specifyNetWeight POC 6
createNetGroup group16
specifyNetWeight VDDCE 16
createNetGroup group17
specifyNetWeight VDDPE 13
createNetGroup group18
specifyNetWeight VPW 3
createNetGroup group19
specifyNetWeight VSSPST 12
createNetGroup group20
specifyNetWeight VSSE 5
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 5
createNetGroup group22
specifyNetWeight BGR_Core/l6 5
createNetGroup group23
specifyNetWeight BGR_Core/l7 11
createNetGroup group24
specifyNetWeight BGR_Core/l8 11
createNetGroup group25
specifyNetWeight BGR_Core/l10 20
createNetGroup group26
specifyNetWeight BGR_Core/l11 13
createNetGroup group27
specifyNetWeight BGR_Core/l1 7
createNetGroup group28
specifyNetWeight BGR_Core/l2 2
createNetGroup group29
specifyNetWeight BGR_Core/l4 17
createNetGroup group30
specifyNetWeight BGR_Core/l5 14
createNetGroup group31
specifyNetWeight BGR_Core/l12 14
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 8
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 4
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 15
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 10
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 17
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 15
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 17
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 14
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 6
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 15
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 8
createNetGroup group43
specifyNetWeight R17/l 15
createNetGroup group44
specifyNetWeight R18/l 8
createNetGroup group45
specifyNetWeight R19/l 10
createNetGroup group46
specifyNetWeight R20/l 4
createNetGroup group47
specifyNetWeight VDD 6
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 12
createNetGroup group1
specifyNetWeight va 13
createNetGroup group2
specifyNetWeight vb 11
createNetGroup group3
specifyNetWeight vbg 16
createNetGroup group4
specifyNetWeight VSS 14
createNetGroup group5
specifyNetWeight vc 12
createNetGroup group6
specifyNetWeight l17 9
createNetGroup group7
specifyNetWeight l18 7
createNetGroup group8
specifyNetWeight l19 16
createNetGroup group9
specifyNetWeight l20 6
createNetGroup group10
specifyNetWeight amp/vg 12
createNetGroup group11
specifyNetWeight amp/vq 9
createNetGroup group12
specifyNetWeight amp/vx 17
createNetGroup group13
specifyNetWeight VNW 6
createNetGroup group14
specifyNetWeight VDDPST 5
createNetGroup group15
specifyNetWeight POC 19
createNetGroup group16
specifyNetWeight VDDCE 20
createNetGroup group17
specifyNetWeight VDDPE 16
createNetGroup group18
specifyNetWeight VPW 12
createNetGroup group19
specifyNetWeight VSSPST 7
createNetGroup group20
specifyNetWeight VSSE 4
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 12
createNetGroup group22
specifyNetWeight BGR_Core/l6 7
createNetGroup group23
specifyNetWeight BGR_Core/l7 10
createNetGroup group24
specifyNetWeight BGR_Core/l8 13
createNetGroup group25
specifyNetWeight BGR_Core/l10 5
createNetGroup group26
specifyNetWeight BGR_Core/l11 5
createNetGroup group27
specifyNetWeight BGR_Core/l1 14
createNetGroup group28
specifyNetWeight BGR_Core/l2 12
createNetGroup group29
specifyNetWeight BGR_Core/l4 12
createNetGroup group30
specifyNetWeight BGR_Core/l5 11
createNetGroup group31
specifyNetWeight BGR_Core/l12 12
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 2
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 8
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 11
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 7
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 7
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 19
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 7
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 17
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 9
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 4
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 18
createNetGroup group43
specifyNetWeight R17/l 10
createNetGroup group44
specifyNetWeight R18/l 5
createNetGroup group45
specifyNetWeight R19/l 3
createNetGroup group46
specifyNetWeight R20/l 14
createNetGroup group47
specifyNetWeight VDD 4
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 16
createNetGroup group1
specifyNetWeight va 17
createNetGroup group2
specifyNetWeight vb 6
createNetGroup group3
specifyNetWeight vbg 6
createNetGroup group4
specifyNetWeight VSS 6
createNetGroup group5
specifyNetWeight vc 3
createNetGroup group6
specifyNetWeight l17 5
createNetGroup group7
specifyNetWeight l18 6
createNetGroup group8
specifyNetWeight l19 5
createNetGroup group9
specifyNetWeight l20 14
createNetGroup group10
specifyNetWeight amp/vg 5
createNetGroup group11
specifyNetWeight amp/vq 11
createNetGroup group12
specifyNetWeight amp/vx 4
createNetGroup group13
specifyNetWeight VNW 20
createNetGroup group14
specifyNetWeight VDDPST 20
createNetGroup group15
specifyNetWeight POC 5
createNetGroup group16
specifyNetWeight VDDCE 8
createNetGroup group17
specifyNetWeight VDDPE 11
createNetGroup group18
specifyNetWeight VPW 14
createNetGroup group19
specifyNetWeight VSSPST 7
createNetGroup group20
specifyNetWeight VSSE 18
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 16
createNetGroup group22
specifyNetWeight BGR_Core/l6 10
createNetGroup group23
specifyNetWeight BGR_Core/l7 12
createNetGroup group24
specifyNetWeight BGR_Core/l8 7
createNetGroup group25
specifyNetWeight BGR_Core/l10 14
createNetGroup group26
specifyNetWeight BGR_Core/l11 10
createNetGroup group27
specifyNetWeight BGR_Core/l1 7
createNetGroup group28
specifyNetWeight BGR_Core/l2 7
createNetGroup group29
specifyNetWeight BGR_Core/l4 4
createNetGroup group30
specifyNetWeight BGR_Core/l5 8
createNetGroup group31
specifyNetWeight BGR_Core/l12 18
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 13
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 16
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 4
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 12
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 18
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 15
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 11
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 16
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 3
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 6
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 13
createNetGroup group43
specifyNetWeight R17/l 7
createNetGroup group44
specifyNetWeight R18/l 17
createNetGroup group45
specifyNetWeight R19/l 9
createNetGroup group46
specifyNetWeight R20/l 9
createNetGroup group47
specifyNetWeight VDD 4
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 16
createNetGroup group1
specifyNetWeight va 15
createNetGroup group2
specifyNetWeight vb 5
createNetGroup group3
specifyNetWeight vbg 13
createNetGroup group4
specifyNetWeight VSS 17
createNetGroup group5
specifyNetWeight vc 9
createNetGroup group6
specifyNetWeight l17 5
createNetGroup group7
specifyNetWeight l18 12
createNetGroup group8
specifyNetWeight l19 6
createNetGroup group9
specifyNetWeight l20 8
createNetGroup group10
specifyNetWeight amp/vg 9
createNetGroup group11
specifyNetWeight amp/vq 19
createNetGroup group12
specifyNetWeight amp/vx 12
createNetGroup group13
specifyNetWeight VNW 17
createNetGroup group14
specifyNetWeight VDDPST 12
createNetGroup group15
specifyNetWeight POC 20
createNetGroup group16
specifyNetWeight VDDCE 17
createNetGroup group17
specifyNetWeight VDDPE 18
createNetGroup group18
specifyNetWeight VPW 10
createNetGroup group19
specifyNetWeight VSSPST 11
createNetGroup group20
specifyNetWeight VSSE 2
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 7
createNetGroup group22
specifyNetWeight BGR_Core/l6 10
createNetGroup group23
specifyNetWeight BGR_Core/l7 8
createNetGroup group24
specifyNetWeight BGR_Core/l8 18
createNetGroup group25
specifyNetWeight BGR_Core/l10 19
createNetGroup group26
specifyNetWeight BGR_Core/l11 5
createNetGroup group27
specifyNetWeight BGR_Core/l1 11
createNetGroup group28
specifyNetWeight BGR_Core/l2 16
createNetGroup group29
specifyNetWeight BGR_Core/l4 7
createNetGroup group30
specifyNetWeight BGR_Core/l5 5
createNetGroup group31
specifyNetWeight BGR_Core/l12 3
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 16
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 18
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 18
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 19
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 20
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 19
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 14
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 15
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 12
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 12
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 9
createNetGroup group43
specifyNetWeight R17/l 12
createNetGroup group44
specifyNetWeight R18/l 17
createNetGroup group45
specifyNetWeight R19/l 6
createNetGroup group46
specifyNetWeight R20/l 18
createNetGroup group47
specifyNetWeight VDD 2
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 6
createNetGroup group1
specifyNetWeight va 2
createNetGroup group2
specifyNetWeight vb 4
createNetGroup group3
specifyNetWeight vbg 19
createNetGroup group4
specifyNetWeight VSS 19
createNetGroup group5
specifyNetWeight vc 2
createNetGroup group6
specifyNetWeight l17 6
createNetGroup group7
specifyNetWeight l18 5
createNetGroup group8
specifyNetWeight l19 3
createNetGroup group9
specifyNetWeight l20 12
createNetGroup group10
specifyNetWeight amp/vg 11
createNetGroup group11
specifyNetWeight amp/vq 8
createNetGroup group12
specifyNetWeight amp/vx 4
createNetGroup group13
specifyNetWeight VNW 3
createNetGroup group14
specifyNetWeight VDDPST 9
createNetGroup group15
specifyNetWeight POC 7
createNetGroup group16
specifyNetWeight VDDCE 13
createNetGroup group17
specifyNetWeight VDDPE 14
createNetGroup group18
specifyNetWeight VPW 18
createNetGroup group19
specifyNetWeight VSSPST 13
createNetGroup group20
specifyNetWeight VSSE 15
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 8
createNetGroup group22
specifyNetWeight BGR_Core/l6 14
createNetGroup group23
specifyNetWeight BGR_Core/l7 3
createNetGroup group24
specifyNetWeight BGR_Core/l8 9
createNetGroup group25
specifyNetWeight BGR_Core/l10 20
createNetGroup group26
specifyNetWeight BGR_Core/l11 2
createNetGroup group27
specifyNetWeight BGR_Core/l1 16
createNetGroup group28
specifyNetWeight BGR_Core/l2 2
createNetGroup group29
specifyNetWeight BGR_Core/l4 15
createNetGroup group30
specifyNetWeight BGR_Core/l5 6
createNetGroup group31
specifyNetWeight BGR_Core/l12 8
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 4
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 20
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 6
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 12
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 10
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 11
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 16
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 12
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 18
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 15
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 17
createNetGroup group43
specifyNetWeight R17/l 12
createNetGroup group44
specifyNetWeight R18/l 10
createNetGroup group45
specifyNetWeight R19/l 18
createNetGroup group46
specifyNetWeight R20/l 11
createNetGroup group47
specifyNetWeight VDD 16
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 12
createNetGroup group1
specifyNetWeight va 14
createNetGroup group2
specifyNetWeight vb 12
createNetGroup group3
specifyNetWeight vbg 14
createNetGroup group4
specifyNetWeight VSS 6
createNetGroup group5
specifyNetWeight vc 10
createNetGroup group6
specifyNetWeight l17 2
createNetGroup group7
specifyNetWeight l18 8
createNetGroup group8
specifyNetWeight l19 16
createNetGroup group9
specifyNetWeight l20 11
createNetGroup group10
specifyNetWeight amp/vg 14
createNetGroup group11
specifyNetWeight amp/vq 15
createNetGroup group12
specifyNetWeight amp/vx 6
createNetGroup group13
specifyNetWeight VNW 7
createNetGroup group14
specifyNetWeight VDDPST 17
createNetGroup group15
specifyNetWeight POC 8
createNetGroup group16
specifyNetWeight VDDCE 7
createNetGroup group17
specifyNetWeight VDDPE 8
createNetGroup group18
specifyNetWeight VPW 4
createNetGroup group19
specifyNetWeight VSSPST 10
createNetGroup group20
specifyNetWeight VSSE 18
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 18
createNetGroup group22
specifyNetWeight BGR_Core/l6 7
createNetGroup group23
specifyNetWeight BGR_Core/l7 20
createNetGroup group24
specifyNetWeight BGR_Core/l8 7
createNetGroup group25
specifyNetWeight BGR_Core/l10 17
createNetGroup group26
specifyNetWeight BGR_Core/l11 5
createNetGroup group27
specifyNetWeight BGR_Core/l1 17
createNetGroup group28
specifyNetWeight BGR_Core/l2 9
createNetGroup group29
specifyNetWeight BGR_Core/l4 15
createNetGroup group30
specifyNetWeight BGR_Core/l5 7
createNetGroup group31
specifyNetWeight BGR_Core/l12 5
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 3
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 18
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 3
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 4
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 5
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 20
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 6
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 6
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 20
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 8
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 13
createNetGroup group43
specifyNetWeight R17/l 13
createNetGroup group44
specifyNetWeight R18/l 5
createNetGroup group45
specifyNetWeight R19/l 5
createNetGroup group46
specifyNetWeight R20/l 14
createNetGroup group47
specifyNetWeight VDD 17
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 12
createNetGroup group1
specifyNetWeight va 20
createNetGroup group2
specifyNetWeight vb 18
createNetGroup group3
specifyNetWeight vbg 8
createNetGroup group4
specifyNetWeight VSS 19
createNetGroup group5
specifyNetWeight vc 9
createNetGroup group6
specifyNetWeight l17 20
createNetGroup group7
specifyNetWeight l18 16
createNetGroup group8
specifyNetWeight l19 11
createNetGroup group9
specifyNetWeight l20 5
createNetGroup group10
specifyNetWeight amp/vg 6
createNetGroup group11
specifyNetWeight amp/vq 15
createNetGroup group12
specifyNetWeight amp/vx 5
createNetGroup group13
specifyNetWeight VNW 8
createNetGroup group14
specifyNetWeight VDDPST 6
createNetGroup group15
specifyNetWeight POC 7
createNetGroup group16
specifyNetWeight VDDCE 10
createNetGroup group17
specifyNetWeight VDDPE 10
createNetGroup group18
specifyNetWeight VPW 12
createNetGroup group19
specifyNetWeight VSSPST 7
createNetGroup group20
specifyNetWeight VSSE 16
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 12
createNetGroup group22
specifyNetWeight BGR_Core/l6 19
createNetGroup group23
specifyNetWeight BGR_Core/l7 5
createNetGroup group24
specifyNetWeight BGR_Core/l8 4
createNetGroup group25
specifyNetWeight BGR_Core/l10 14
createNetGroup group26
specifyNetWeight BGR_Core/l11 2
createNetGroup group27
specifyNetWeight BGR_Core/l1 3
createNetGroup group28
specifyNetWeight BGR_Core/l2 8
createNetGroup group29
specifyNetWeight BGR_Core/l4 12
createNetGroup group30
specifyNetWeight BGR_Core/l5 15
createNetGroup group31
specifyNetWeight BGR_Core/l12 9
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 12
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 15
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 20
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 5
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 12
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 4
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 17
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 17
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 11
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 9
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 14
createNetGroup group43
specifyNetWeight R17/l 3
createNetGroup group44
specifyNetWeight R18/l 13
createNetGroup group45
specifyNetWeight R19/l 12
createNetGroup group46
specifyNetWeight R20/l 7
createNetGroup group47
specifyNetWeight VDD 4
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 10
createNetGroup group1
specifyNetWeight va 16
createNetGroup group2
specifyNetWeight vb 2
createNetGroup group3
specifyNetWeight vbg 7
createNetGroup group4
specifyNetWeight VSS 7
createNetGroup group5
specifyNetWeight vc 6
createNetGroup group6
specifyNetWeight l17 19
createNetGroup group7
specifyNetWeight l18 20
createNetGroup group8
specifyNetWeight l19 12
createNetGroup group9
specifyNetWeight l20 16
createNetGroup group10
specifyNetWeight amp/vg 4
createNetGroup group11
specifyNetWeight amp/vq 14
createNetGroup group12
specifyNetWeight amp/vx 10
createNetGroup group13
specifyNetWeight VNW 16
createNetGroup group14
specifyNetWeight VDDPST 11
createNetGroup group15
specifyNetWeight POC 2
createNetGroup group16
specifyNetWeight VDDCE 14
createNetGroup group17
specifyNetWeight VDDPE 2
createNetGroup group18
specifyNetWeight VPW 16
createNetGroup group19
specifyNetWeight VSSPST 5
createNetGroup group20
specifyNetWeight VSSE 6
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 11
createNetGroup group22
specifyNetWeight BGR_Core/l6 12
createNetGroup group23
specifyNetWeight BGR_Core/l7 11
createNetGroup group24
specifyNetWeight BGR_Core/l8 6
createNetGroup group25
specifyNetWeight BGR_Core/l10 17
createNetGroup group26
specifyNetWeight BGR_Core/l11 16
createNetGroup group27
specifyNetWeight BGR_Core/l1 2
createNetGroup group28
specifyNetWeight BGR_Core/l2 12
createNetGroup group29
specifyNetWeight BGR_Core/l4 6
createNetGroup group30
specifyNetWeight BGR_Core/l5 15
createNetGroup group31
specifyNetWeight BGR_Core/l12 2
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 11
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 7
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 20
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 7
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 4
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 15
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 18
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 16
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 19
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 6
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 15
createNetGroup group43
specifyNetWeight R17/l 12
createNetGroup group44
specifyNetWeight R18/l 6
createNetGroup group45
specifyNetWeight R19/l 19
createNetGroup group46
specifyNetWeight R20/l 13
createNetGroup group47
specifyNetWeight VDD 20
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 4
createNetGroup group1
specifyNetWeight va 4
createNetGroup group2
specifyNetWeight vb 9
createNetGroup group3
specifyNetWeight vbg 5
createNetGroup group4
specifyNetWeight VSS 4
createNetGroup group5
specifyNetWeight vc 8
createNetGroup group6
specifyNetWeight l17 17
createNetGroup group7
specifyNetWeight l18 8
createNetGroup group8
specifyNetWeight l19 2
createNetGroup group9
specifyNetWeight l20 14
createNetGroup group10
specifyNetWeight amp/vg 12
createNetGroup group11
specifyNetWeight amp/vq 10
createNetGroup group12
specifyNetWeight amp/vx 13
createNetGroup group13
specifyNetWeight VNW 20
createNetGroup group14
specifyNetWeight VDDPST 10
createNetGroup group15
specifyNetWeight POC 16
createNetGroup group16
specifyNetWeight VDDCE 18
createNetGroup group17
specifyNetWeight VDDPE 3
createNetGroup group18
specifyNetWeight VPW 11
createNetGroup group19
specifyNetWeight VSSPST 16
createNetGroup group20
specifyNetWeight VSSE 15
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 9
createNetGroup group22
specifyNetWeight BGR_Core/l6 17
createNetGroup group23
specifyNetWeight BGR_Core/l7 2
createNetGroup group24
specifyNetWeight BGR_Core/l8 18
createNetGroup group25
specifyNetWeight BGR_Core/l10 14
createNetGroup group26
specifyNetWeight BGR_Core/l11 12
createNetGroup group27
specifyNetWeight BGR_Core/l1 8
createNetGroup group28
specifyNetWeight BGR_Core/l2 20
createNetGroup group29
specifyNetWeight BGR_Core/l4 13
createNetGroup group30
specifyNetWeight BGR_Core/l5 11
createNetGroup group31
specifyNetWeight BGR_Core/l12 7
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 7
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 10
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 8
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 5
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 13
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 14
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 6
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 11
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 10
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 7
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 14
createNetGroup group43
specifyNetWeight R17/l 2
createNetGroup group44
specifyNetWeight R18/l 4
createNetGroup group45
specifyNetWeight R19/l 7
createNetGroup group46
specifyNetWeight R20/l 14
createNetGroup group47
specifyNetWeight VDD 15
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 4
createNetGroup group1
specifyNetWeight va 20
createNetGroup group2
specifyNetWeight vb 9
createNetGroup group3
specifyNetWeight vbg 19
createNetGroup group4
specifyNetWeight VSS 12
createNetGroup group5
specifyNetWeight vc 4
createNetGroup group6
specifyNetWeight l17 8
createNetGroup group7
specifyNetWeight l18 12
createNetGroup group8
specifyNetWeight l19 16
createNetGroup group9
specifyNetWeight l20 19
createNetGroup group10
specifyNetWeight amp/vg 5
createNetGroup group11
specifyNetWeight amp/vq 7
createNetGroup group12
specifyNetWeight amp/vx 7
createNetGroup group13
specifyNetWeight VNW 20
createNetGroup group14
specifyNetWeight VDDPST 3
createNetGroup group15
specifyNetWeight POC 16
createNetGroup group16
specifyNetWeight VDDCE 10
createNetGroup group17
specifyNetWeight VDDPE 8
createNetGroup group18
specifyNetWeight VPW 19
createNetGroup group19
specifyNetWeight VSSPST 3
createNetGroup group20
specifyNetWeight VSSE 17
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 4
createNetGroup group22
specifyNetWeight BGR_Core/l6 2
createNetGroup group23
specifyNetWeight BGR_Core/l7 3
createNetGroup group24
specifyNetWeight BGR_Core/l8 8
createNetGroup group25
specifyNetWeight BGR_Core/l10 7
createNetGroup group26
specifyNetWeight BGR_Core/l11 17
createNetGroup group27
specifyNetWeight BGR_Core/l1 8
createNetGroup group28
specifyNetWeight BGR_Core/l2 18
createNetGroup group29
specifyNetWeight BGR_Core/l4 11
createNetGroup group30
specifyNetWeight BGR_Core/l5 20
createNetGroup group31
specifyNetWeight BGR_Core/l12 20
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 4
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 6
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 13
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 19
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 2
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 12
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 11
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 19
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 9
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 20
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 11
createNetGroup group43
specifyNetWeight R17/l 2
createNetGroup group44
specifyNetWeight R18/l 20
createNetGroup group45
specifyNetWeight R19/l 15
createNetGroup group46
specifyNetWeight R20/l 13
createNetGroup group47
specifyNetWeight VDD 4
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 10
createNetGroup group1
specifyNetWeight va 13
createNetGroup group2
specifyNetWeight vb 5
createNetGroup group3
specifyNetWeight vbg 11
createNetGroup group4
specifyNetWeight VSS 9
createNetGroup group5
specifyNetWeight vc 20
createNetGroup group6
specifyNetWeight l17 6
createNetGroup group7
specifyNetWeight l18 13
createNetGroup group8
specifyNetWeight l19 3
createNetGroup group9
specifyNetWeight l20 2
createNetGroup group10
specifyNetWeight amp/vg 14
createNetGroup group11
specifyNetWeight amp/vq 2
createNetGroup group12
specifyNetWeight amp/vx 15
createNetGroup group13
specifyNetWeight VNW 9
createNetGroup group14
specifyNetWeight VDDPST 15
createNetGroup group15
specifyNetWeight POC 20
createNetGroup group16
specifyNetWeight VDDCE 16
createNetGroup group17
specifyNetWeight VDDPE 11
createNetGroup group18
specifyNetWeight VPW 2
createNetGroup group19
specifyNetWeight VSSPST 7
createNetGroup group20
specifyNetWeight VSSE 20
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 16
createNetGroup group22
specifyNetWeight BGR_Core/l6 19
createNetGroup group23
specifyNetWeight BGR_Core/l7 4
createNetGroup group24
specifyNetWeight BGR_Core/l8 2
createNetGroup group25
specifyNetWeight BGR_Core/l10 3
createNetGroup group26
specifyNetWeight BGR_Core/l11 4
createNetGroup group27
specifyNetWeight BGR_Core/l1 6
createNetGroup group28
specifyNetWeight BGR_Core/l2 14
createNetGroup group29
specifyNetWeight BGR_Core/l4 14
createNetGroup group30
specifyNetWeight BGR_Core/l5 7
createNetGroup group31
specifyNetWeight BGR_Core/l12 9
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 19
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 5
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 2
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 3
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 14
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 14
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 11
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 7
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 14
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 2
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 12
createNetGroup group43
specifyNetWeight R17/l 15
createNetGroup group44
specifyNetWeight R18/l 18
createNetGroup group45
specifyNetWeight R19/l 8
createNetGroup group46
specifyNetWeight R20/l 18
createNetGroup group47
specifyNetWeight VDD 13
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 3
createNetGroup group1
specifyNetWeight va 15
createNetGroup group2
specifyNetWeight vb 17
createNetGroup group3
specifyNetWeight vbg 18
createNetGroup group4
specifyNetWeight VSS 4
createNetGroup group5
specifyNetWeight vc 3
createNetGroup group6
specifyNetWeight l17 8
createNetGroup group7
specifyNetWeight l18 12
createNetGroup group8
specifyNetWeight l19 16
createNetGroup group9
specifyNetWeight l20 7
createNetGroup group10
specifyNetWeight amp/vg 20
createNetGroup group11
specifyNetWeight amp/vq 8
createNetGroup group12
specifyNetWeight amp/vx 8
createNetGroup group13
specifyNetWeight VNW 3
createNetGroup group14
specifyNetWeight VDDPST 8
createNetGroup group15
specifyNetWeight POC 5
createNetGroup group16
specifyNetWeight VDDCE 11
createNetGroup group17
specifyNetWeight VDDPE 12
createNetGroup group18
specifyNetWeight VPW 12
createNetGroup group19
specifyNetWeight VSSPST 11
createNetGroup group20
specifyNetWeight VSSE 6
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 7
createNetGroup group22
specifyNetWeight BGR_Core/l6 20
createNetGroup group23
specifyNetWeight BGR_Core/l7 15
createNetGroup group24
specifyNetWeight BGR_Core/l8 10
createNetGroup group25
specifyNetWeight BGR_Core/l10 3
createNetGroup group26
specifyNetWeight BGR_Core/l11 14
createNetGroup group27
specifyNetWeight BGR_Core/l1 5
createNetGroup group28
specifyNetWeight BGR_Core/l2 20
createNetGroup group29
specifyNetWeight BGR_Core/l4 17
createNetGroup group30
specifyNetWeight BGR_Core/l5 7
createNetGroup group31
specifyNetWeight BGR_Core/l12 14
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 9
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 15
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 14
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 6
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 19
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 16
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 13
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 3
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 18
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 9
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 8
createNetGroup group43
specifyNetWeight R17/l 18
createNetGroup group44
specifyNetWeight R18/l 14
createNetGroup group45
specifyNetWeight R19/l 17
createNetGroup group46
specifyNetWeight R20/l 9
createNetGroup group47
specifyNetWeight VDD 20
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 19
createNetGroup group1
specifyNetWeight va 5
createNetGroup group2
specifyNetWeight vb 6
createNetGroup group3
specifyNetWeight vbg 7
createNetGroup group4
specifyNetWeight VSS 19
createNetGroup group5
specifyNetWeight vc 11
createNetGroup group6
specifyNetWeight l17 2
createNetGroup group7
specifyNetWeight l18 12
createNetGroup group8
specifyNetWeight l19 5
createNetGroup group9
specifyNetWeight l20 6
createNetGroup group10
specifyNetWeight amp/vg 18
createNetGroup group11
specifyNetWeight amp/vq 7
createNetGroup group12
specifyNetWeight amp/vx 19
createNetGroup group13
specifyNetWeight VNW 15
createNetGroup group14
specifyNetWeight VDDPST 10
createNetGroup group15
specifyNetWeight POC 2
createNetGroup group16
specifyNetWeight VDDCE 13
createNetGroup group17
specifyNetWeight VDDPE 6
createNetGroup group18
specifyNetWeight VPW 3
createNetGroup group19
specifyNetWeight VSSPST 18
createNetGroup group20
specifyNetWeight VSSE 8
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 16
createNetGroup group22
specifyNetWeight BGR_Core/l6 10
createNetGroup group23
specifyNetWeight BGR_Core/l7 15
createNetGroup group24
specifyNetWeight BGR_Core/l8 3
createNetGroup group25
specifyNetWeight BGR_Core/l10 9
createNetGroup group26
specifyNetWeight BGR_Core/l11 20
createNetGroup group27
specifyNetWeight BGR_Core/l1 10
createNetGroup group28
specifyNetWeight BGR_Core/l2 8
createNetGroup group29
specifyNetWeight BGR_Core/l4 12
createNetGroup group30
specifyNetWeight BGR_Core/l5 5
createNetGroup group31
specifyNetWeight BGR_Core/l12 10
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 17
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 13
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 11
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 3
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 10
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 5
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 13
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 11
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 8
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 12
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 9
createNetGroup group43
specifyNetWeight R17/l 9
createNetGroup group44
specifyNetWeight R18/l 8
createNetGroup group45
specifyNetWeight R19/l 8
createNetGroup group46
specifyNetWeight R20/l 14
createNetGroup group47
specifyNetWeight VDD 5
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 10
createNetGroup group1
specifyNetWeight va 7
createNetGroup group2
specifyNetWeight vb 13
createNetGroup group3
specifyNetWeight vbg 14
createNetGroup group4
specifyNetWeight VSS 14
createNetGroup group5
specifyNetWeight vc 2
createNetGroup group6
specifyNetWeight l17 19
createNetGroup group7
specifyNetWeight l18 3
createNetGroup group8
specifyNetWeight l19 19
createNetGroup group9
specifyNetWeight l20 15
createNetGroup group10
specifyNetWeight amp/vg 5
createNetGroup group11
specifyNetWeight amp/vq 10
createNetGroup group12
specifyNetWeight amp/vx 8
createNetGroup group13
specifyNetWeight VNW 18
createNetGroup group14
specifyNetWeight VDDPST 11
createNetGroup group15
specifyNetWeight POC 4
createNetGroup group16
specifyNetWeight VDDCE 5
createNetGroup group17
specifyNetWeight VDDPE 18
createNetGroup group18
specifyNetWeight VPW 15
createNetGroup group19
specifyNetWeight VSSPST 19
createNetGroup group20
specifyNetWeight VSSE 13
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 7
createNetGroup group22
specifyNetWeight BGR_Core/l6 6
createNetGroup group23
specifyNetWeight BGR_Core/l7 5
createNetGroup group24
specifyNetWeight BGR_Core/l8 11
createNetGroup group25
specifyNetWeight BGR_Core/l10 11
createNetGroup group26
specifyNetWeight BGR_Core/l11 7
createNetGroup group27
specifyNetWeight BGR_Core/l1 17
createNetGroup group28
specifyNetWeight BGR_Core/l2 11
createNetGroup group29
specifyNetWeight BGR_Core/l4 9
createNetGroup group30
specifyNetWeight BGR_Core/l5 19
createNetGroup group31
specifyNetWeight BGR_Core/l12 20
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 9
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 4
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 17
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 8
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 13
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 15
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 10
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 12
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 5
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 6
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 16
createNetGroup group43
specifyNetWeight R17/l 13
createNetGroup group44
specifyNetWeight R18/l 18
createNetGroup group45
specifyNetWeight R19/l 6
createNetGroup group46
specifyNetWeight R20/l 4
createNetGroup group47
specifyNetWeight VDD 16
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 17
createNetGroup group1
specifyNetWeight va 12
createNetGroup group2
specifyNetWeight vb 11
createNetGroup group3
specifyNetWeight vbg 17
createNetGroup group4
specifyNetWeight VSS 12
createNetGroup group5
specifyNetWeight vc 6
createNetGroup group6
specifyNetWeight l17 11
createNetGroup group7
specifyNetWeight l18 3
createNetGroup group8
specifyNetWeight l19 15
createNetGroup group9
specifyNetWeight l20 4
createNetGroup group10
specifyNetWeight amp/vg 16
createNetGroup group11
specifyNetWeight amp/vq 20
createNetGroup group12
specifyNetWeight amp/vx 7
createNetGroup group13
specifyNetWeight VNW 4
createNetGroup group14
specifyNetWeight VDDPST 5
createNetGroup group15
specifyNetWeight POC 14
createNetGroup group16
specifyNetWeight VDDCE 9
createNetGroup group17
specifyNetWeight VDDPE 11
createNetGroup group18
specifyNetWeight VPW 5
createNetGroup group19
specifyNetWeight VSSPST 15
createNetGroup group20
specifyNetWeight VSSE 20
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 11
createNetGroup group22
specifyNetWeight BGR_Core/l6 19
createNetGroup group23
specifyNetWeight BGR_Core/l7 2
createNetGroup group24
specifyNetWeight BGR_Core/l8 20
createNetGroup group25
specifyNetWeight BGR_Core/l10 3
createNetGroup group26
specifyNetWeight BGR_Core/l11 14
createNetGroup group27
specifyNetWeight BGR_Core/l1 15
createNetGroup group28
specifyNetWeight BGR_Core/l2 18
createNetGroup group29
specifyNetWeight BGR_Core/l4 13
createNetGroup group30
specifyNetWeight BGR_Core/l5 9
createNetGroup group31
specifyNetWeight BGR_Core/l12 9
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 7
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 5
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 5
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 19
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 6
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 11
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 13
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 17
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 18
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 9
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 15
createNetGroup group43
specifyNetWeight R17/l 6
createNetGroup group44
specifyNetWeight R18/l 7
createNetGroup group45
specifyNetWeight R19/l 12
createNetGroup group46
specifyNetWeight R20/l 7
createNetGroup group47
specifyNetWeight VDD 2
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 6
createNetGroup group1
specifyNetWeight va 5
createNetGroup group2
specifyNetWeight vb 18
createNetGroup group3
specifyNetWeight vbg 12
createNetGroup group4
specifyNetWeight VSS 11
createNetGroup group5
specifyNetWeight vc 9
createNetGroup group6
specifyNetWeight l17 5
createNetGroup group7
specifyNetWeight l18 19
createNetGroup group8
specifyNetWeight l19 5
createNetGroup group9
specifyNetWeight l20 17
createNetGroup group10
specifyNetWeight amp/vg 18
createNetGroup group11
specifyNetWeight amp/vq 17
createNetGroup group12
specifyNetWeight amp/vx 11
createNetGroup group13
specifyNetWeight VNW 12
createNetGroup group14
specifyNetWeight VDDPST 4
createNetGroup group15
specifyNetWeight POC 8
createNetGroup group16
specifyNetWeight VDDCE 3
createNetGroup group17
specifyNetWeight VDDPE 14
createNetGroup group18
specifyNetWeight VPW 10
createNetGroup group19
specifyNetWeight VSSPST 18
createNetGroup group20
specifyNetWeight VSSE 12
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 9
createNetGroup group22
specifyNetWeight BGR_Core/l6 20
createNetGroup group23
specifyNetWeight BGR_Core/l7 12
createNetGroup group24
specifyNetWeight BGR_Core/l8 10
createNetGroup group25
specifyNetWeight BGR_Core/l10 4
createNetGroup group26
specifyNetWeight BGR_Core/l11 16
createNetGroup group27
specifyNetWeight BGR_Core/l1 6
createNetGroup group28
specifyNetWeight BGR_Core/l2 3
createNetGroup group29
specifyNetWeight BGR_Core/l4 5
createNetGroup group30
specifyNetWeight BGR_Core/l5 16
createNetGroup group31
specifyNetWeight BGR_Core/l12 10
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 12
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 10
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 16
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 2
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 12
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 12
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 9
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 13
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 13
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 13
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 14
createNetGroup group43
specifyNetWeight R17/l 8
createNetGroup group44
specifyNetWeight R18/l 2
createNetGroup group45
specifyNetWeight R19/l 14
createNetGroup group46
specifyNetWeight R20/l 20
createNetGroup group47
specifyNetWeight VDD 19
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 14
createNetGroup group1
specifyNetWeight va 2
createNetGroup group2
specifyNetWeight vb 19
createNetGroup group3
specifyNetWeight vbg 5
createNetGroup group4
specifyNetWeight VSS 12
createNetGroup group5
specifyNetWeight vc 12
createNetGroup group6
specifyNetWeight l17 2
createNetGroup group7
specifyNetWeight l18 15
createNetGroup group8
specifyNetWeight l19 6
createNetGroup group9
specifyNetWeight l20 4
createNetGroup group10
specifyNetWeight amp/vg 6
createNetGroup group11
specifyNetWeight amp/vq 3
createNetGroup group12
specifyNetWeight amp/vx 19
createNetGroup group13
specifyNetWeight VNW 11
createNetGroup group14
specifyNetWeight VDDPST 8
createNetGroup group15
specifyNetWeight POC 13
createNetGroup group16
specifyNetWeight VDDCE 9
createNetGroup group17
specifyNetWeight VDDPE 20
createNetGroup group18
specifyNetWeight VPW 4
createNetGroup group19
specifyNetWeight VSSPST 9
createNetGroup group20
specifyNetWeight VSSE 15
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 12
createNetGroup group22
specifyNetWeight BGR_Core/l6 11
createNetGroup group23
specifyNetWeight BGR_Core/l7 2
createNetGroup group24
specifyNetWeight BGR_Core/l8 4
createNetGroup group25
specifyNetWeight BGR_Core/l10 16
createNetGroup group26
specifyNetWeight BGR_Core/l11 10
createNetGroup group27
specifyNetWeight BGR_Core/l1 14
createNetGroup group28
specifyNetWeight BGR_Core/l2 8
createNetGroup group29
specifyNetWeight BGR_Core/l4 7
createNetGroup group30
specifyNetWeight BGR_Core/l5 16
createNetGroup group31
specifyNetWeight BGR_Core/l12 2
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 7
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 2
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 7
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 20
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 3
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 4
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 13
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 3
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 9
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 9
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 17
createNetGroup group43
specifyNetWeight R17/l 10
createNetGroup group44
specifyNetWeight R18/l 11
createNetGroup group45
specifyNetWeight R19/l 20
createNetGroup group46
specifyNetWeight R20/l 13
createNetGroup group47
specifyNetWeight VDD 19
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 17
createNetGroup group1
specifyNetWeight va 18
createNetGroup group2
specifyNetWeight vb 3
createNetGroup group3
specifyNetWeight vbg 9
createNetGroup group4
specifyNetWeight VSS 20
createNetGroup group5
specifyNetWeight vc 6
createNetGroup group6
specifyNetWeight l17 8
createNetGroup group7
specifyNetWeight l18 9
createNetGroup group8
specifyNetWeight l19 5
createNetGroup group9
specifyNetWeight l20 6
createNetGroup group10
specifyNetWeight amp/vg 5
createNetGroup group11
specifyNetWeight amp/vq 3
createNetGroup group12
specifyNetWeight amp/vx 19
createNetGroup group13
specifyNetWeight VNW 4
createNetGroup group14
specifyNetWeight VDDPST 20
createNetGroup group15
specifyNetWeight POC 15
createNetGroup group16
specifyNetWeight VDDCE 16
createNetGroup group17
specifyNetWeight VDDPE 16
createNetGroup group18
specifyNetWeight VPW 14
createNetGroup group19
specifyNetWeight VSSPST 2
createNetGroup group20
specifyNetWeight VSSE 18
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 12
createNetGroup group22
specifyNetWeight BGR_Core/l6 18
createNetGroup group23
specifyNetWeight BGR_Core/l7 8
createNetGroup group24
specifyNetWeight BGR_Core/l8 6
createNetGroup group25
specifyNetWeight BGR_Core/l10 11
createNetGroup group26
specifyNetWeight BGR_Core/l11 19
createNetGroup group27
specifyNetWeight BGR_Core/l1 11
createNetGroup group28
specifyNetWeight BGR_Core/l2 14
createNetGroup group29
specifyNetWeight BGR_Core/l4 18
createNetGroup group30
specifyNetWeight BGR_Core/l5 3
createNetGroup group31
specifyNetWeight BGR_Core/l12 16
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 20
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 20
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 9
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 14
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 10
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 19
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 11
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 5
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 12
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 20
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 10
createNetGroup group43
specifyNetWeight R17/l 18
createNetGroup group44
specifyNetWeight R18/l 10
createNetGroup group45
specifyNetWeight R19/l 16
createNetGroup group46
specifyNetWeight R20/l 16
createNetGroup group47
specifyNetWeight VDD 5
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 11
createNetGroup group1
specifyNetWeight va 12
createNetGroup group2
specifyNetWeight vb 4
createNetGroup group3
specifyNetWeight vbg 15
createNetGroup group4
specifyNetWeight VSS 19
createNetGroup group5
specifyNetWeight vc 12
createNetGroup group6
specifyNetWeight l17 2
createNetGroup group7
specifyNetWeight l18 5
createNetGroup group8
specifyNetWeight l19 12
createNetGroup group9
specifyNetWeight l20 20
createNetGroup group10
specifyNetWeight amp/vg 5
createNetGroup group11
specifyNetWeight amp/vq 19
createNetGroup group12
specifyNetWeight amp/vx 8
createNetGroup group13
specifyNetWeight VNW 20
createNetGroup group14
specifyNetWeight VDDPST 2
createNetGroup group15
specifyNetWeight POC 2
createNetGroup group16
specifyNetWeight VDDCE 2
createNetGroup group17
specifyNetWeight VDDPE 11
createNetGroup group18
specifyNetWeight VPW 16
createNetGroup group19
specifyNetWeight VSSPST 5
createNetGroup group20
specifyNetWeight VSSE 18
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 2
createNetGroup group22
specifyNetWeight BGR_Core/l6 17
createNetGroup group23
specifyNetWeight BGR_Core/l7 9
createNetGroup group24
specifyNetWeight BGR_Core/l8 10
createNetGroup group25
specifyNetWeight BGR_Core/l10 18
createNetGroup group26
specifyNetWeight BGR_Core/l11 11
createNetGroup group27
specifyNetWeight BGR_Core/l1 10
createNetGroup group28
specifyNetWeight BGR_Core/l2 8
createNetGroup group29
specifyNetWeight BGR_Core/l4 14
createNetGroup group30
specifyNetWeight BGR_Core/l5 16
createNetGroup group31
specifyNetWeight BGR_Core/l12 17
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 11
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 12
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 2
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 20
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 11
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 5
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 12
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 4
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 6
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 14
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 16
createNetGroup group43
specifyNetWeight R17/l 10
createNetGroup group44
specifyNetWeight R18/l 13
createNetGroup group45
specifyNetWeight R19/l 10
createNetGroup group46
specifyNetWeight R20/l 9
createNetGroup group47
specifyNetWeight VDD 7
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 16
createNetGroup group1
specifyNetWeight va 16
createNetGroup group2
specifyNetWeight vb 10
createNetGroup group3
specifyNetWeight vbg 17
createNetGroup group4
specifyNetWeight VSS 12
createNetGroup group5
specifyNetWeight vc 5
createNetGroup group6
specifyNetWeight l17 4
createNetGroup group7
specifyNetWeight l18 7
createNetGroup group8
specifyNetWeight l19 19
createNetGroup group9
specifyNetWeight l20 3
createNetGroup group10
specifyNetWeight amp/vg 10
createNetGroup group11
specifyNetWeight amp/vq 13
createNetGroup group12
specifyNetWeight amp/vx 12
createNetGroup group13
specifyNetWeight VNW 13
createNetGroup group14
specifyNetWeight VDDPST 3
createNetGroup group15
specifyNetWeight POC 14
createNetGroup group16
specifyNetWeight VDDCE 12
createNetGroup group17
specifyNetWeight VDDPE 7
createNetGroup group18
specifyNetWeight VPW 11
createNetGroup group19
specifyNetWeight VSSPST 17
createNetGroup group20
specifyNetWeight VSSE 3
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 19
createNetGroup group22
specifyNetWeight BGR_Core/l6 18
createNetGroup group23
specifyNetWeight BGR_Core/l7 11
createNetGroup group24
specifyNetWeight BGR_Core/l8 12
createNetGroup group25
specifyNetWeight BGR_Core/l10 10
createNetGroup group26
specifyNetWeight BGR_Core/l11 12
createNetGroup group27
specifyNetWeight BGR_Core/l1 4
createNetGroup group28
specifyNetWeight BGR_Core/l2 13
createNetGroup group29
specifyNetWeight BGR_Core/l4 2
createNetGroup group30
specifyNetWeight BGR_Core/l5 16
createNetGroup group31
specifyNetWeight BGR_Core/l12 7
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 13
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 11
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 10
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 17
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 2
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 16
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 7
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 9
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 13
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 9
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 5
createNetGroup group43
specifyNetWeight R17/l 3
createNetGroup group44
specifyNetWeight R18/l 14
createNetGroup group45
specifyNetWeight R19/l 16
createNetGroup group46
specifyNetWeight R20/l 14
createNetGroup group47
specifyNetWeight VDD 3
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 2
createNetGroup group1
specifyNetWeight va 2
createNetGroup group2
specifyNetWeight vb 16
createNetGroup group3
specifyNetWeight vbg 10
createNetGroup group4
specifyNetWeight VSS 9
createNetGroup group5
specifyNetWeight vc 8
createNetGroup group6
specifyNetWeight l17 7
createNetGroup group7
specifyNetWeight l18 16
createNetGroup group8
specifyNetWeight l19 5
createNetGroup group9
specifyNetWeight l20 14
createNetGroup group10
specifyNetWeight amp/vg 19
createNetGroup group11
specifyNetWeight amp/vq 3
createNetGroup group12
specifyNetWeight amp/vx 10
createNetGroup group13
specifyNetWeight VNW 5
createNetGroup group14
specifyNetWeight VDDPST 6
createNetGroup group15
specifyNetWeight POC 3
createNetGroup group16
specifyNetWeight VDDCE 2
createNetGroup group17
specifyNetWeight VDDPE 10
createNetGroup group18
specifyNetWeight VPW 15
createNetGroup group19
specifyNetWeight VSSPST 18
createNetGroup group20
specifyNetWeight VSSE 20
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 11
createNetGroup group22
specifyNetWeight BGR_Core/l6 4
createNetGroup group23
specifyNetWeight BGR_Core/l7 12
createNetGroup group24
specifyNetWeight BGR_Core/l8 17
createNetGroup group25
specifyNetWeight BGR_Core/l10 20
createNetGroup group26
specifyNetWeight BGR_Core/l11 12
createNetGroup group27
specifyNetWeight BGR_Core/l1 10
createNetGroup group28
specifyNetWeight BGR_Core/l2 12
createNetGroup group29
specifyNetWeight BGR_Core/l4 9
createNetGroup group30
specifyNetWeight BGR_Core/l5 3
createNetGroup group31
specifyNetWeight BGR_Core/l12 18
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 9
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 16
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 18
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 2
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 14
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 12
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 3
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 18
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 8
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 5
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 19
createNetGroup group43
specifyNetWeight R17/l 9
createNetGroup group44
specifyNetWeight R18/l 2
createNetGroup group45
specifyNetWeight R19/l 19
createNetGroup group46
specifyNetWeight R20/l 12
createNetGroup group47
specifyNetWeight VDD 6
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 20
createNetGroup group1
specifyNetWeight va 17
createNetGroup group2
specifyNetWeight vb 19
createNetGroup group3
specifyNetWeight vbg 17
createNetGroup group4
specifyNetWeight VSS 12
createNetGroup group5
specifyNetWeight vc 15
createNetGroup group6
specifyNetWeight l17 7
createNetGroup group7
specifyNetWeight l18 16
createNetGroup group8
specifyNetWeight l19 10
createNetGroup group9
specifyNetWeight l20 7
createNetGroup group10
specifyNetWeight amp/vg 3
createNetGroup group11
specifyNetWeight amp/vq 13
createNetGroup group12
specifyNetWeight amp/vx 11
createNetGroup group13
specifyNetWeight VNW 12
createNetGroup group14
specifyNetWeight VDDPST 10
createNetGroup group15
specifyNetWeight POC 9
createNetGroup group16
specifyNetWeight VDDCE 14
createNetGroup group17
specifyNetWeight VDDPE 2
createNetGroup group18
specifyNetWeight VPW 3
createNetGroup group19
specifyNetWeight VSSPST 5
createNetGroup group20
specifyNetWeight VSSE 6
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 12
createNetGroup group22
specifyNetWeight BGR_Core/l6 20
createNetGroup group23
specifyNetWeight BGR_Core/l7 7
createNetGroup group24
specifyNetWeight BGR_Core/l8 2
createNetGroup group25
specifyNetWeight BGR_Core/l10 3
createNetGroup group26
specifyNetWeight BGR_Core/l11 19
createNetGroup group27
specifyNetWeight BGR_Core/l1 7
createNetGroup group28
specifyNetWeight BGR_Core/l2 20
createNetGroup group29
specifyNetWeight BGR_Core/l4 6
createNetGroup group30
specifyNetWeight BGR_Core/l5 4
createNetGroup group31
specifyNetWeight BGR_Core/l12 6
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 6
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 19
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 7
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 15
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 14
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 2
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 13
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 11
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 13
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 20
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 2
createNetGroup group43
specifyNetWeight R17/l 9
createNetGroup group44
specifyNetWeight R18/l 20
createNetGroup group45
specifyNetWeight R19/l 2
createNetGroup group46
specifyNetWeight R20/l 13
createNetGroup group47
specifyNetWeight VDD 13
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 4
createNetGroup group1
specifyNetWeight va 20
createNetGroup group2
specifyNetWeight vb 13
createNetGroup group3
specifyNetWeight vbg 13
createNetGroup group4
specifyNetWeight VSS 8
createNetGroup group5
specifyNetWeight vc 4
createNetGroup group6
specifyNetWeight l17 15
createNetGroup group7
specifyNetWeight l18 8
createNetGroup group8
specifyNetWeight l19 13
createNetGroup group9
specifyNetWeight l20 20
createNetGroup group10
specifyNetWeight amp/vg 10
createNetGroup group11
specifyNetWeight amp/vq 6
createNetGroup group12
specifyNetWeight amp/vx 8
createNetGroup group13
specifyNetWeight VNW 18
createNetGroup group14
specifyNetWeight VDDPST 7
createNetGroup group15
specifyNetWeight POC 6
createNetGroup group16
specifyNetWeight VDDCE 18
createNetGroup group17
specifyNetWeight VDDPE 5
createNetGroup group18
specifyNetWeight VPW 12
createNetGroup group19
specifyNetWeight VSSPST 20
createNetGroup group20
specifyNetWeight VSSE 20
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 19
createNetGroup group22
specifyNetWeight BGR_Core/l6 5
createNetGroup group23
specifyNetWeight BGR_Core/l7 7
createNetGroup group24
specifyNetWeight BGR_Core/l8 13
createNetGroup group25
specifyNetWeight BGR_Core/l10 10
createNetGroup group26
specifyNetWeight BGR_Core/l11 16
createNetGroup group27
specifyNetWeight BGR_Core/l1 10
createNetGroup group28
specifyNetWeight BGR_Core/l2 16
createNetGroup group29
specifyNetWeight BGR_Core/l4 7
createNetGroup group30
specifyNetWeight BGR_Core/l5 14
createNetGroup group31
specifyNetWeight BGR_Core/l12 15
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 13
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 5
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 12
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 6
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 10
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 7
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 12
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 16
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 4
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 13
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 13
createNetGroup group43
specifyNetWeight R17/l 10
createNetGroup group44
specifyNetWeight R18/l 13
createNetGroup group45
specifyNetWeight R19/l 6
createNetGroup group46
specifyNetWeight R20/l 15
createNetGroup group47
specifyNetWeight VDD 8
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 7
createNetGroup group1
specifyNetWeight va 20
createNetGroup group2
specifyNetWeight vb 16
createNetGroup group3
specifyNetWeight vbg 15
createNetGroup group4
specifyNetWeight VSS 9
createNetGroup group5
specifyNetWeight vc 20
createNetGroup group6
specifyNetWeight l17 9
createNetGroup group7
specifyNetWeight l18 2
createNetGroup group8
specifyNetWeight l19 13
createNetGroup group9
specifyNetWeight l20 6
createNetGroup group10
specifyNetWeight amp/vg 2
createNetGroup group11
specifyNetWeight amp/vq 16
createNetGroup group12
specifyNetWeight amp/vx 15
createNetGroup group13
specifyNetWeight VNW 20
createNetGroup group14
specifyNetWeight VDDPST 5
createNetGroup group15
specifyNetWeight POC 3
createNetGroup group16
specifyNetWeight VDDCE 14
createNetGroup group17
specifyNetWeight VDDPE 11
createNetGroup group18
specifyNetWeight VPW 8
createNetGroup group19
specifyNetWeight VSSPST 15
createNetGroup group20
specifyNetWeight VSSE 2
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 9
createNetGroup group22
specifyNetWeight BGR_Core/l6 14
createNetGroup group23
specifyNetWeight BGR_Core/l7 17
createNetGroup group24
specifyNetWeight BGR_Core/l8 17
createNetGroup group25
specifyNetWeight BGR_Core/l10 15
createNetGroup group26
specifyNetWeight BGR_Core/l11 14
createNetGroup group27
specifyNetWeight BGR_Core/l1 14
createNetGroup group28
specifyNetWeight BGR_Core/l2 3
createNetGroup group29
specifyNetWeight BGR_Core/l4 11
createNetGroup group30
specifyNetWeight BGR_Core/l5 7
createNetGroup group31
specifyNetWeight BGR_Core/l12 7
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 12
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 5
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 18
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 16
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 7
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 20
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 14
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 9
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 6
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 10
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 2
createNetGroup group43
specifyNetWeight R17/l 16
createNetGroup group44
specifyNetWeight R18/l 12
createNetGroup group45
specifyNetWeight R19/l 17
createNetGroup group46
specifyNetWeight R20/l 13
createNetGroup group47
specifyNetWeight VDD 18
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 11
createNetGroup group1
specifyNetWeight va 20
createNetGroup group2
specifyNetWeight vb 2
createNetGroup group3
specifyNetWeight vbg 17
createNetGroup group4
specifyNetWeight VSS 11
createNetGroup group5
specifyNetWeight vc 6
createNetGroup group6
specifyNetWeight l17 10
createNetGroup group7
specifyNetWeight l18 8
createNetGroup group8
specifyNetWeight l19 13
createNetGroup group9
specifyNetWeight l20 2
createNetGroup group10
specifyNetWeight amp/vg 11
createNetGroup group11
specifyNetWeight amp/vq 15
createNetGroup group12
specifyNetWeight amp/vx 9
createNetGroup group13
specifyNetWeight VNW 2
createNetGroup group14
specifyNetWeight VDDPST 9
createNetGroup group15
specifyNetWeight POC 14
createNetGroup group16
specifyNetWeight VDDCE 6
createNetGroup group17
specifyNetWeight VDDPE 10
createNetGroup group18
specifyNetWeight VPW 20
createNetGroup group19
specifyNetWeight VSSPST 19
createNetGroup group20
specifyNetWeight VSSE 8
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 6
createNetGroup group22
specifyNetWeight BGR_Core/l6 14
createNetGroup group23
specifyNetWeight BGR_Core/l7 20
createNetGroup group24
specifyNetWeight BGR_Core/l8 17
createNetGroup group25
specifyNetWeight BGR_Core/l10 13
createNetGroup group26
specifyNetWeight BGR_Core/l11 17
createNetGroup group27
specifyNetWeight BGR_Core/l1 6
createNetGroup group28
specifyNetWeight BGR_Core/l2 2
createNetGroup group29
specifyNetWeight BGR_Core/l4 14
createNetGroup group30
specifyNetWeight BGR_Core/l5 15
createNetGroup group31
specifyNetWeight BGR_Core/l12 13
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 11
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 6
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 11
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 17
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 10
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 14
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 9
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 16
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 8
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 7
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 17
createNetGroup group43
specifyNetWeight R17/l 16
createNetGroup group44
specifyNetWeight R18/l 3
createNetGroup group45
specifyNetWeight R19/l 15
createNetGroup group46
specifyNetWeight R20/l 8
createNetGroup group47
specifyNetWeight VDD 18
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 15
createNetGroup group1
specifyNetWeight va 5
createNetGroup group2
specifyNetWeight vb 11
createNetGroup group3
specifyNetWeight vbg 10
createNetGroup group4
specifyNetWeight VSS 15
createNetGroup group5
specifyNetWeight vc 7
createNetGroup group6
specifyNetWeight l17 6
createNetGroup group7
specifyNetWeight l18 8
createNetGroup group8
specifyNetWeight l19 11
createNetGroup group9
specifyNetWeight l20 6
createNetGroup group10
specifyNetWeight amp/vg 7
createNetGroup group11
specifyNetWeight amp/vq 13
createNetGroup group12
specifyNetWeight amp/vx 8
createNetGroup group13
specifyNetWeight VNW 20
createNetGroup group14
specifyNetWeight VDDPST 20
createNetGroup group15
specifyNetWeight POC 7
createNetGroup group16
specifyNetWeight VDDCE 3
createNetGroup group17
specifyNetWeight VDDPE 5
createNetGroup group18
specifyNetWeight VPW 6
createNetGroup group19
specifyNetWeight VSSPST 10
createNetGroup group20
specifyNetWeight VSSE 20
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 11
createNetGroup group22
specifyNetWeight BGR_Core/l6 11
createNetGroup group23
specifyNetWeight BGR_Core/l7 7
createNetGroup group24
specifyNetWeight BGR_Core/l8 3
createNetGroup group25
specifyNetWeight BGR_Core/l10 10
createNetGroup group26
specifyNetWeight BGR_Core/l11 20
createNetGroup group27
specifyNetWeight BGR_Core/l1 13
createNetGroup group28
specifyNetWeight BGR_Core/l2 5
createNetGroup group29
specifyNetWeight BGR_Core/l4 15
createNetGroup group30
specifyNetWeight BGR_Core/l5 10
createNetGroup group31
specifyNetWeight BGR_Core/l12 12
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 19
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 18
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 10
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 5
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 19
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 19
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 3
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 2
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 12
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 15
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 17
createNetGroup group43
specifyNetWeight R17/l 12
createNetGroup group44
specifyNetWeight R18/l 20
createNetGroup group45
specifyNetWeight R19/l 9
createNetGroup group46
specifyNetWeight R20/l 5
createNetGroup group47
specifyNetWeight VDD 15
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 4
createNetGroup group1
specifyNetWeight va 20
createNetGroup group2
specifyNetWeight vb 10
createNetGroup group3
specifyNetWeight vbg 19
createNetGroup group4
specifyNetWeight VSS 15
createNetGroup group5
specifyNetWeight vc 13
createNetGroup group6
specifyNetWeight l17 6
createNetGroup group7
specifyNetWeight l18 3
createNetGroup group8
specifyNetWeight l19 2
createNetGroup group9
specifyNetWeight l20 6
createNetGroup group10
specifyNetWeight amp/vg 14
createNetGroup group11
specifyNetWeight amp/vq 13
createNetGroup group12
specifyNetWeight amp/vx 2
createNetGroup group13
specifyNetWeight VNW 13
createNetGroup group14
specifyNetWeight VDDPST 12
createNetGroup group15
specifyNetWeight POC 18
createNetGroup group16
specifyNetWeight VDDCE 20
createNetGroup group17
specifyNetWeight VDDPE 20
createNetGroup group18
specifyNetWeight VPW 14
createNetGroup group19
specifyNetWeight VSSPST 19
createNetGroup group20
specifyNetWeight VSSE 5
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 5
createNetGroup group22
specifyNetWeight BGR_Core/l6 19
createNetGroup group23
specifyNetWeight BGR_Core/l7 8
createNetGroup group24
specifyNetWeight BGR_Core/l8 8
createNetGroup group25
specifyNetWeight BGR_Core/l10 12
createNetGroup group26
specifyNetWeight BGR_Core/l11 19
createNetGroup group27
specifyNetWeight BGR_Core/l1 14
createNetGroup group28
specifyNetWeight BGR_Core/l2 6
createNetGroup group29
specifyNetWeight BGR_Core/l4 3
createNetGroup group30
specifyNetWeight BGR_Core/l5 4
createNetGroup group31
specifyNetWeight BGR_Core/l12 3
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 13
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 8
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 15
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 20
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 5
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 15
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 8
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 12
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 4
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 5
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 6
createNetGroup group43
specifyNetWeight R17/l 10
createNetGroup group44
specifyNetWeight R18/l 9
createNetGroup group45
specifyNetWeight R19/l 7
createNetGroup group46
specifyNetWeight R20/l 8
createNetGroup group47
specifyNetWeight VDD 14
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 8
createNetGroup group1
specifyNetWeight va 8
createNetGroup group2
specifyNetWeight vb 2
createNetGroup group3
specifyNetWeight vbg 18
createNetGroup group4
specifyNetWeight VSS 16
createNetGroup group5
specifyNetWeight vc 10
createNetGroup group6
specifyNetWeight l17 15
createNetGroup group7
specifyNetWeight l18 8
createNetGroup group8
specifyNetWeight l19 18
createNetGroup group9
specifyNetWeight l20 5
createNetGroup group10
specifyNetWeight amp/vg 13
createNetGroup group11
specifyNetWeight amp/vq 12
createNetGroup group12
specifyNetWeight amp/vx 10
createNetGroup group13
specifyNetWeight VNW 18
createNetGroup group14
specifyNetWeight VDDPST 9
createNetGroup group15
specifyNetWeight POC 17
createNetGroup group16
specifyNetWeight VDDCE 20
createNetGroup group17
specifyNetWeight VDDPE 8
createNetGroup group18
specifyNetWeight VPW 20
createNetGroup group19
specifyNetWeight VSSPST 3
createNetGroup group20
specifyNetWeight VSSE 20
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 5
createNetGroup group22
specifyNetWeight BGR_Core/l6 10
createNetGroup group23
specifyNetWeight BGR_Core/l7 15
createNetGroup group24
specifyNetWeight BGR_Core/l8 5
createNetGroup group25
specifyNetWeight BGR_Core/l10 3
createNetGroup group26
specifyNetWeight BGR_Core/l11 5
createNetGroup group27
specifyNetWeight BGR_Core/l1 12
createNetGroup group28
specifyNetWeight BGR_Core/l2 12
createNetGroup group29
specifyNetWeight BGR_Core/l4 5
createNetGroup group30
specifyNetWeight BGR_Core/l5 11
createNetGroup group31
specifyNetWeight BGR_Core/l12 5
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 9
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 11
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 20
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 4
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 5
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 14
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 17
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 6
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 12
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 9
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 6
createNetGroup group43
specifyNetWeight R17/l 9
createNetGroup group44
specifyNetWeight R18/l 6
createNetGroup group45
specifyNetWeight R19/l 3
createNetGroup group46
specifyNetWeight R20/l 20
createNetGroup group47
specifyNetWeight VDD 3
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 17
createNetGroup group1
specifyNetWeight va 19
createNetGroup group2
specifyNetWeight vb 19
createNetGroup group3
specifyNetWeight vbg 9
createNetGroup group4
specifyNetWeight VSS 13
createNetGroup group5
specifyNetWeight vc 15
createNetGroup group6
specifyNetWeight l17 9
createNetGroup group7
specifyNetWeight l18 8
createNetGroup group8
specifyNetWeight l19 5
createNetGroup group9
specifyNetWeight l20 12
createNetGroup group10
specifyNetWeight amp/vg 7
createNetGroup group11
specifyNetWeight amp/vq 11
createNetGroup group12
specifyNetWeight amp/vx 5
createNetGroup group13
specifyNetWeight VNW 16
createNetGroup group14
specifyNetWeight VDDPST 16
createNetGroup group15
specifyNetWeight POC 8
createNetGroup group16
specifyNetWeight VDDCE 17
createNetGroup group17
specifyNetWeight VDDPE 10
createNetGroup group18
specifyNetWeight VPW 17
createNetGroup group19
specifyNetWeight VSSPST 8
createNetGroup group20
specifyNetWeight VSSE 16
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 7
createNetGroup group22
specifyNetWeight BGR_Core/l6 8
createNetGroup group23
specifyNetWeight BGR_Core/l7 20
createNetGroup group24
specifyNetWeight BGR_Core/l8 14
createNetGroup group25
specifyNetWeight BGR_Core/l10 13
createNetGroup group26
specifyNetWeight BGR_Core/l11 15
createNetGroup group27
specifyNetWeight BGR_Core/l1 10
createNetGroup group28
specifyNetWeight BGR_Core/l2 14
createNetGroup group29
specifyNetWeight BGR_Core/l4 7
createNetGroup group30
specifyNetWeight BGR_Core/l5 6
createNetGroup group31
specifyNetWeight BGR_Core/l12 19
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 17
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 5
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 9
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 13
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 20
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 10
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 2
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 11
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 16
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 8
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 14
createNetGroup group43
specifyNetWeight R17/l 9
createNetGroup group44
specifyNetWeight R18/l 11
createNetGroup group45
specifyNetWeight R19/l 20
createNetGroup group46
specifyNetWeight R20/l 12
createNetGroup group47
specifyNetWeight VDD 2
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 3
createNetGroup group1
specifyNetWeight va 15
createNetGroup group2
specifyNetWeight vb 2
createNetGroup group3
specifyNetWeight vbg 20
createNetGroup group4
specifyNetWeight VSS 3
createNetGroup group5
specifyNetWeight vc 19
createNetGroup group6
specifyNetWeight l17 2
createNetGroup group7
specifyNetWeight l18 3
createNetGroup group8
specifyNetWeight l19 3
createNetGroup group9
specifyNetWeight l20 15
createNetGroup group10
specifyNetWeight amp/vg 11
createNetGroup group11
specifyNetWeight amp/vq 16
createNetGroup group12
specifyNetWeight amp/vx 12
createNetGroup group13
specifyNetWeight VNW 2
createNetGroup group14
specifyNetWeight VDDPST 19
createNetGroup group15
specifyNetWeight POC 14
createNetGroup group16
specifyNetWeight VDDCE 5
createNetGroup group17
specifyNetWeight VDDPE 15
createNetGroup group18
specifyNetWeight VPW 10
createNetGroup group19
specifyNetWeight VSSPST 3
createNetGroup group20
specifyNetWeight VSSE 12
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 3
createNetGroup group22
specifyNetWeight BGR_Core/l6 3
createNetGroup group23
specifyNetWeight BGR_Core/l7 13
createNetGroup group24
specifyNetWeight BGR_Core/l8 5
createNetGroup group25
specifyNetWeight BGR_Core/l10 2
createNetGroup group26
specifyNetWeight BGR_Core/l11 18
createNetGroup group27
specifyNetWeight BGR_Core/l1 5
createNetGroup group28
specifyNetWeight BGR_Core/l2 20
createNetGroup group29
specifyNetWeight BGR_Core/l4 19
createNetGroup group30
specifyNetWeight BGR_Core/l5 3
createNetGroup group31
specifyNetWeight BGR_Core/l12 8
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 20
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 20
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 15
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 10
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 5
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 5
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 7
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 5
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 6
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 19
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 9
createNetGroup group43
specifyNetWeight R17/l 9
createNetGroup group44
specifyNetWeight R18/l 17
createNetGroup group45
specifyNetWeight R19/l 10
createNetGroup group46
specifyNetWeight R20/l 14
createNetGroup group47
specifyNetWeight VDD 8
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 18
createNetGroup group1
specifyNetWeight va 18
createNetGroup group2
specifyNetWeight vb 17
createNetGroup group3
specifyNetWeight vbg 4
createNetGroup group4
specifyNetWeight VSS 11
createNetGroup group5
specifyNetWeight vc 9
createNetGroup group6
specifyNetWeight l17 6
createNetGroup group7
specifyNetWeight l18 14
createNetGroup group8
specifyNetWeight l19 16
createNetGroup group9
specifyNetWeight l20 4
createNetGroup group10
specifyNetWeight amp/vg 9
createNetGroup group11
specifyNetWeight amp/vq 9
createNetGroup group12
specifyNetWeight amp/vx 5
createNetGroup group13
specifyNetWeight VNW 6
createNetGroup group14
specifyNetWeight VDDPST 15
createNetGroup group15
specifyNetWeight POC 17
createNetGroup group16
specifyNetWeight VDDCE 15
createNetGroup group17
specifyNetWeight VDDPE 10
createNetGroup group18
specifyNetWeight VPW 8
createNetGroup group19
specifyNetWeight VSSPST 19
createNetGroup group20
specifyNetWeight VSSE 3
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 19
createNetGroup group22
specifyNetWeight BGR_Core/l6 14
createNetGroup group23
specifyNetWeight BGR_Core/l7 6
createNetGroup group24
specifyNetWeight BGR_Core/l8 17
createNetGroup group25
specifyNetWeight BGR_Core/l10 20
createNetGroup group26
specifyNetWeight BGR_Core/l11 6
createNetGroup group27
specifyNetWeight BGR_Core/l1 3
createNetGroup group28
specifyNetWeight BGR_Core/l2 11
createNetGroup group29
specifyNetWeight BGR_Core/l4 14
createNetGroup group30
specifyNetWeight BGR_Core/l5 20
createNetGroup group31
specifyNetWeight BGR_Core/l12 17
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 16
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 15
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 12
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 19
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 9
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 4
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 11
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 19
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 18
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 9
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 12
createNetGroup group43
specifyNetWeight R17/l 11
createNetGroup group44
specifyNetWeight R18/l 9
createNetGroup group45
specifyNetWeight R19/l 18
createNetGroup group46
specifyNetWeight R20/l 15
createNetGroup group47
specifyNetWeight VDD 10
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 14
createNetGroup group1
specifyNetWeight va 12
createNetGroup group2
specifyNetWeight vb 12
createNetGroup group3
specifyNetWeight vbg 8
createNetGroup group4
specifyNetWeight VSS 20
createNetGroup group5
specifyNetWeight vc 5
createNetGroup group6
specifyNetWeight l17 11
createNetGroup group7
specifyNetWeight l18 11
createNetGroup group8
specifyNetWeight l19 8
createNetGroup group9
specifyNetWeight l20 5
createNetGroup group10
specifyNetWeight amp/vg 9
createNetGroup group11
specifyNetWeight amp/vq 15
createNetGroup group12
specifyNetWeight amp/vx 19
createNetGroup group13
specifyNetWeight VNW 7
createNetGroup group14
specifyNetWeight VDDPST 12
createNetGroup group15
specifyNetWeight POC 8
createNetGroup group16
specifyNetWeight VDDCE 15
createNetGroup group17
specifyNetWeight VDDPE 16
createNetGroup group18
specifyNetWeight VPW 9
createNetGroup group19
specifyNetWeight VSSPST 10
createNetGroup group20
specifyNetWeight VSSE 18
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 13
createNetGroup group22
specifyNetWeight BGR_Core/l6 14
createNetGroup group23
specifyNetWeight BGR_Core/l7 4
createNetGroup group24
specifyNetWeight BGR_Core/l8 20
createNetGroup group25
specifyNetWeight BGR_Core/l10 17
createNetGroup group26
specifyNetWeight BGR_Core/l11 16
createNetGroup group27
specifyNetWeight BGR_Core/l1 5
createNetGroup group28
specifyNetWeight BGR_Core/l2 7
createNetGroup group29
specifyNetWeight BGR_Core/l4 5
createNetGroup group30
specifyNetWeight BGR_Core/l5 18
createNetGroup group31
specifyNetWeight BGR_Core/l12 10
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 10
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 2
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 14
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 14
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 8
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 2
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 7
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 3
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 15
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 15
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 12
createNetGroup group43
specifyNetWeight R17/l 15
createNetGroup group44
specifyNetWeight R18/l 14
createNetGroup group45
specifyNetWeight R19/l 3
createNetGroup group46
specifyNetWeight R20/l 10
createNetGroup group47
specifyNetWeight VDD 17
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 20
createNetGroup group1
specifyNetWeight va 2
createNetGroup group2
specifyNetWeight vb 4
createNetGroup group3
specifyNetWeight vbg 3
createNetGroup group4
specifyNetWeight VSS 16
createNetGroup group5
specifyNetWeight vc 6
createNetGroup group6
specifyNetWeight l17 19
createNetGroup group7
specifyNetWeight l18 9
createNetGroup group8
specifyNetWeight l19 7
createNetGroup group9
specifyNetWeight l20 12
createNetGroup group10
specifyNetWeight amp/vg 15
createNetGroup group11
specifyNetWeight amp/vq 6
createNetGroup group12
specifyNetWeight amp/vx 18
createNetGroup group13
specifyNetWeight VNW 11
createNetGroup group14
specifyNetWeight VDDPST 17
createNetGroup group15
specifyNetWeight POC 9
createNetGroup group16
specifyNetWeight VDDCE 4
createNetGroup group17
specifyNetWeight VDDPE 10
createNetGroup group18
specifyNetWeight VPW 6
createNetGroup group19
specifyNetWeight VSSPST 8
createNetGroup group20
specifyNetWeight VSSE 9
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 6
createNetGroup group22
specifyNetWeight BGR_Core/l6 2
createNetGroup group23
specifyNetWeight BGR_Core/l7 2
createNetGroup group24
specifyNetWeight BGR_Core/l8 16
createNetGroup group25
specifyNetWeight BGR_Core/l10 10
createNetGroup group26
specifyNetWeight BGR_Core/l11 11
createNetGroup group27
specifyNetWeight BGR_Core/l1 18
createNetGroup group28
specifyNetWeight BGR_Core/l2 2
createNetGroup group29
specifyNetWeight BGR_Core/l4 14
createNetGroup group30
specifyNetWeight BGR_Core/l5 16
createNetGroup group31
specifyNetWeight BGR_Core/l12 7
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 3
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 7
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 2
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 18
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 14
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 13
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 4
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 12
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 2
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 16
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 18
createNetGroup group43
specifyNetWeight R17/l 9
createNetGroup group44
specifyNetWeight R18/l 10
createNetGroup group45
specifyNetWeight R19/l 14
createNetGroup group46
specifyNetWeight R20/l 3
createNetGroup group47
specifyNetWeight VDD 15
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 17
createNetGroup group1
specifyNetWeight va 7
createNetGroup group2
specifyNetWeight vb 8
createNetGroup group3
specifyNetWeight vbg 5
createNetGroup group4
specifyNetWeight VSS 18
createNetGroup group5
specifyNetWeight vc 19
createNetGroup group6
specifyNetWeight l17 18
createNetGroup group7
specifyNetWeight l18 5
createNetGroup group8
specifyNetWeight l19 18
createNetGroup group9
specifyNetWeight l20 8
createNetGroup group10
specifyNetWeight amp/vg 19
createNetGroup group11
specifyNetWeight amp/vq 14
createNetGroup group12
specifyNetWeight amp/vx 12
createNetGroup group13
specifyNetWeight VNW 10
createNetGroup group14
specifyNetWeight VDDPST 9
createNetGroup group15
specifyNetWeight POC 3
createNetGroup group16
specifyNetWeight VDDCE 12
createNetGroup group17
specifyNetWeight VDDPE 10
createNetGroup group18
specifyNetWeight VPW 4
createNetGroup group19
specifyNetWeight VSSPST 20
createNetGroup group20
specifyNetWeight VSSE 7
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 5
createNetGroup group22
specifyNetWeight BGR_Core/l6 16
createNetGroup group23
specifyNetWeight BGR_Core/l7 2
createNetGroup group24
specifyNetWeight BGR_Core/l8 17
createNetGroup group25
specifyNetWeight BGR_Core/l10 13
createNetGroup group26
specifyNetWeight BGR_Core/l11 10
createNetGroup group27
specifyNetWeight BGR_Core/l1 15
createNetGroup group28
specifyNetWeight BGR_Core/l2 7
createNetGroup group29
specifyNetWeight BGR_Core/l4 3
createNetGroup group30
specifyNetWeight BGR_Core/l5 18
createNetGroup group31
specifyNetWeight BGR_Core/l12 7
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 7
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 15
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 8
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 11
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 19
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 20
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 3
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 3
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 9
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 2
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 20
createNetGroup group43
specifyNetWeight R17/l 13
createNetGroup group44
specifyNetWeight R18/l 10
createNetGroup group45
specifyNetWeight R19/l 16
createNetGroup group46
specifyNetWeight R20/l 11
createNetGroup group47
specifyNetWeight VDD 10
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 12
createNetGroup group1
specifyNetWeight va 13
createNetGroup group2
specifyNetWeight vb 6
createNetGroup group3
specifyNetWeight vbg 4
createNetGroup group4
specifyNetWeight VSS 19
createNetGroup group5
specifyNetWeight vc 16
createNetGroup group6
specifyNetWeight l17 19
createNetGroup group7
specifyNetWeight l18 5
createNetGroup group8
specifyNetWeight l19 5
createNetGroup group9
specifyNetWeight l20 6
createNetGroup group10
specifyNetWeight amp/vg 7
createNetGroup group11
specifyNetWeight amp/vq 12
createNetGroup group12
specifyNetWeight amp/vx 15
createNetGroup group13
specifyNetWeight VNW 8
createNetGroup group14
specifyNetWeight VDDPST 19
createNetGroup group15
specifyNetWeight POC 10
createNetGroup group16
specifyNetWeight VDDCE 13
createNetGroup group17
specifyNetWeight VDDPE 13
createNetGroup group18
specifyNetWeight VPW 10
createNetGroup group19
specifyNetWeight VSSPST 18
createNetGroup group20
specifyNetWeight VSSE 2
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 18
createNetGroup group22
specifyNetWeight BGR_Core/l6 4
createNetGroup group23
specifyNetWeight BGR_Core/l7 15
createNetGroup group24
specifyNetWeight BGR_Core/l8 5
createNetGroup group25
specifyNetWeight BGR_Core/l10 20
createNetGroup group26
specifyNetWeight BGR_Core/l11 15
createNetGroup group27
specifyNetWeight BGR_Core/l1 16
createNetGroup group28
specifyNetWeight BGR_Core/l2 4
createNetGroup group29
specifyNetWeight BGR_Core/l4 5
createNetGroup group30
specifyNetWeight BGR_Core/l5 16
createNetGroup group31
specifyNetWeight BGR_Core/l12 6
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 14
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 7
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 15
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 19
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 3
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 13
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 15
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 10
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 11
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 6
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 4
createNetGroup group43
specifyNetWeight R17/l 20
createNetGroup group44
specifyNetWeight R18/l 16
createNetGroup group45
specifyNetWeight R19/l 19
createNetGroup group46
specifyNetWeight R20/l 12
createNetGroup group47
specifyNetWeight VDD 8
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 3
createNetGroup group1
specifyNetWeight va 9
createNetGroup group2
specifyNetWeight vb 16
createNetGroup group3
specifyNetWeight vbg 18
createNetGroup group4
specifyNetWeight VSS 14
createNetGroup group5
specifyNetWeight vc 15
createNetGroup group6
specifyNetWeight l17 6
createNetGroup group7
specifyNetWeight l18 19
createNetGroup group8
specifyNetWeight l19 19
createNetGroup group9
specifyNetWeight l20 3
createNetGroup group10
specifyNetWeight amp/vg 8
createNetGroup group11
specifyNetWeight amp/vq 11
createNetGroup group12
specifyNetWeight amp/vx 19
createNetGroup group13
specifyNetWeight VNW 8
createNetGroup group14
specifyNetWeight VDDPST 10
createNetGroup group15
specifyNetWeight POC 3
createNetGroup group16
specifyNetWeight VDDCE 18
createNetGroup group17
specifyNetWeight VDDPE 13
createNetGroup group18
specifyNetWeight VPW 11
createNetGroup group19
specifyNetWeight VSSPST 14
createNetGroup group20
specifyNetWeight VSSE 6
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 3
createNetGroup group22
specifyNetWeight BGR_Core/l6 8
createNetGroup group23
specifyNetWeight BGR_Core/l7 11
createNetGroup group24
specifyNetWeight BGR_Core/l8 8
createNetGroup group25
specifyNetWeight BGR_Core/l10 16
createNetGroup group26
specifyNetWeight BGR_Core/l11 11
createNetGroup group27
specifyNetWeight BGR_Core/l1 2
createNetGroup group28
specifyNetWeight BGR_Core/l2 3
createNetGroup group29
specifyNetWeight BGR_Core/l4 15
createNetGroup group30
specifyNetWeight BGR_Core/l5 15
createNetGroup group31
specifyNetWeight BGR_Core/l12 19
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 2
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 7
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 5
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 13
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 15
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 9
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 10
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 14
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 18
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 13
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 20
createNetGroup group43
specifyNetWeight R17/l 6
createNetGroup group44
specifyNetWeight R18/l 4
createNetGroup group45
specifyNetWeight R19/l 12
createNetGroup group46
specifyNetWeight R20/l 8
createNetGroup group47
specifyNetWeight VDD 3
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 14
createNetGroup group1
specifyNetWeight va 10
createNetGroup group2
specifyNetWeight vb 12
createNetGroup group3
specifyNetWeight vbg 8
createNetGroup group4
specifyNetWeight VSS 11
createNetGroup group5
specifyNetWeight vc 18
createNetGroup group6
specifyNetWeight l17 9
createNetGroup group7
specifyNetWeight l18 20
createNetGroup group8
specifyNetWeight l19 20
createNetGroup group9
specifyNetWeight l20 20
createNetGroup group10
specifyNetWeight amp/vg 3
createNetGroup group11
specifyNetWeight amp/vq 17
createNetGroup group12
specifyNetWeight amp/vx 9
createNetGroup group13
specifyNetWeight VNW 8
createNetGroup group14
specifyNetWeight VDDPST 10
createNetGroup group15
specifyNetWeight POC 7
createNetGroup group16
specifyNetWeight VDDCE 7
createNetGroup group17
specifyNetWeight VDDPE 16
createNetGroup group18
specifyNetWeight VPW 9
createNetGroup group19
specifyNetWeight VSSPST 3
createNetGroup group20
specifyNetWeight VSSE 4
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 9
createNetGroup group22
specifyNetWeight BGR_Core/l6 14
createNetGroup group23
specifyNetWeight BGR_Core/l7 14
createNetGroup group24
specifyNetWeight BGR_Core/l8 15
createNetGroup group25
specifyNetWeight BGR_Core/l10 2
createNetGroup group26
specifyNetWeight BGR_Core/l11 6
createNetGroup group27
specifyNetWeight BGR_Core/l1 11
createNetGroup group28
specifyNetWeight BGR_Core/l2 11
createNetGroup group29
specifyNetWeight BGR_Core/l4 3
createNetGroup group30
specifyNetWeight BGR_Core/l5 20
createNetGroup group31
specifyNetWeight BGR_Core/l12 8
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 11
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 17
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 14
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 5
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 13
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 4
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 16
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 13
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 9
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 20
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 3
createNetGroup group43
specifyNetWeight R17/l 5
createNetGroup group44
specifyNetWeight R18/l 13
createNetGroup group45
specifyNetWeight R19/l 16
createNetGroup group46
specifyNetWeight R20/l 8
createNetGroup group47
specifyNetWeight VDD 11
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 5
createNetGroup group1
specifyNetWeight va 2
createNetGroup group2
specifyNetWeight vb 4
createNetGroup group3
specifyNetWeight vbg 15
createNetGroup group4
specifyNetWeight VSS 8
createNetGroup group5
specifyNetWeight vc 8
createNetGroup group6
specifyNetWeight l17 17
createNetGroup group7
specifyNetWeight l18 8
createNetGroup group8
specifyNetWeight l19 17
createNetGroup group9
specifyNetWeight l20 19
createNetGroup group10
specifyNetWeight amp/vg 14
createNetGroup group11
specifyNetWeight amp/vq 18
createNetGroup group12
specifyNetWeight amp/vx 17
createNetGroup group13
specifyNetWeight VNW 7
createNetGroup group14
specifyNetWeight VDDPST 6
createNetGroup group15
specifyNetWeight POC 2
createNetGroup group16
specifyNetWeight VDDCE 18
createNetGroup group17
specifyNetWeight VDDPE 16
createNetGroup group18
specifyNetWeight VPW 4
createNetGroup group19
specifyNetWeight VSSPST 15
createNetGroup group20
specifyNetWeight VSSE 12
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 7
createNetGroup group22
specifyNetWeight BGR_Core/l6 4
createNetGroup group23
specifyNetWeight BGR_Core/l7 20
createNetGroup group24
specifyNetWeight BGR_Core/l8 12
createNetGroup group25
specifyNetWeight BGR_Core/l10 16
createNetGroup group26
specifyNetWeight BGR_Core/l11 8
createNetGroup group27
specifyNetWeight BGR_Core/l1 17
createNetGroup group28
specifyNetWeight BGR_Core/l2 15
createNetGroup group29
specifyNetWeight BGR_Core/l4 3
createNetGroup group30
specifyNetWeight BGR_Core/l5 7
createNetGroup group31
specifyNetWeight BGR_Core/l12 10
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 11
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 19
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 11
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 15
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 20
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 2
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 17
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 4
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 17
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 11
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 16
createNetGroup group43
specifyNetWeight R17/l 19
createNetGroup group44
specifyNetWeight R18/l 13
createNetGroup group45
specifyNetWeight R19/l 17
createNetGroup group46
specifyNetWeight R20/l 4
createNetGroup group47
specifyNetWeight VDD 11
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 15
createNetGroup group1
specifyNetWeight va 16
createNetGroup group2
specifyNetWeight vb 13
createNetGroup group3
specifyNetWeight vbg 16
createNetGroup group4
specifyNetWeight VSS 4
createNetGroup group5
specifyNetWeight vc 6
createNetGroup group6
specifyNetWeight l17 17
createNetGroup group7
specifyNetWeight l18 13
createNetGroup group8
specifyNetWeight l19 4
createNetGroup group9
specifyNetWeight l20 10
createNetGroup group10
specifyNetWeight amp/vg 20
createNetGroup group11
specifyNetWeight amp/vq 8
createNetGroup group12
specifyNetWeight amp/vx 20
createNetGroup group13
specifyNetWeight VNW 6
createNetGroup group14
specifyNetWeight VDDPST 18
createNetGroup group15
specifyNetWeight POC 11
createNetGroup group16
specifyNetWeight VDDCE 4
createNetGroup group17
specifyNetWeight VDDPE 7
createNetGroup group18
specifyNetWeight VPW 2
createNetGroup group19
specifyNetWeight VSSPST 19
createNetGroup group20
specifyNetWeight VSSE 20
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 19
createNetGroup group22
specifyNetWeight BGR_Core/l6 16
createNetGroup group23
specifyNetWeight BGR_Core/l7 19
createNetGroup group24
specifyNetWeight BGR_Core/l8 17
createNetGroup group25
specifyNetWeight BGR_Core/l10 10
createNetGroup group26
specifyNetWeight BGR_Core/l11 7
createNetGroup group27
specifyNetWeight BGR_Core/l1 2
createNetGroup group28
specifyNetWeight BGR_Core/l2 15
createNetGroup group29
specifyNetWeight BGR_Core/l4 13
createNetGroup group30
specifyNetWeight BGR_Core/l5 11
createNetGroup group31
specifyNetWeight BGR_Core/l12 15
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 3
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 3
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 3
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 9
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 15
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 4
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 3
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 14
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 17
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 8
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 5
createNetGroup group43
specifyNetWeight R17/l 10
createNetGroup group44
specifyNetWeight R18/l 2
createNetGroup group45
specifyNetWeight R19/l 7
createNetGroup group46
specifyNetWeight R20/l 17
createNetGroup group47
specifyNetWeight VDD 3
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 2
createNetGroup group1
specifyNetWeight va 10
createNetGroup group2
specifyNetWeight vb 6
createNetGroup group3
specifyNetWeight vbg 16
createNetGroup group4
specifyNetWeight VSS 15
createNetGroup group5
specifyNetWeight vc 7
createNetGroup group6
specifyNetWeight l17 8
createNetGroup group7
specifyNetWeight l18 9
createNetGroup group8
specifyNetWeight l19 9
createNetGroup group9
specifyNetWeight l20 19
createNetGroup group10
specifyNetWeight amp/vg 2
createNetGroup group11
specifyNetWeight amp/vq 3
createNetGroup group12
specifyNetWeight amp/vx 16
createNetGroup group13
specifyNetWeight VNW 17
createNetGroup group14
specifyNetWeight VDDPST 12
createNetGroup group15
specifyNetWeight POC 6
createNetGroup group16
specifyNetWeight VDDCE 4
createNetGroup group17
specifyNetWeight VDDPE 3
createNetGroup group18
specifyNetWeight VPW 3
createNetGroup group19
specifyNetWeight VSSPST 3
createNetGroup group20
specifyNetWeight VSSE 9
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 14
createNetGroup group22
specifyNetWeight BGR_Core/l6 10
createNetGroup group23
specifyNetWeight BGR_Core/l7 2
createNetGroup group24
specifyNetWeight BGR_Core/l8 17
createNetGroup group25
specifyNetWeight BGR_Core/l10 10
createNetGroup group26
specifyNetWeight BGR_Core/l11 5
createNetGroup group27
specifyNetWeight BGR_Core/l1 19
createNetGroup group28
specifyNetWeight BGR_Core/l2 6
createNetGroup group29
specifyNetWeight BGR_Core/l4 4
createNetGroup group30
specifyNetWeight BGR_Core/l5 13
createNetGroup group31
specifyNetWeight BGR_Core/l12 12
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 18
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 8
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 19
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 8
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 19
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 18
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 11
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 18
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 9
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 7
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 7
createNetGroup group43
specifyNetWeight R17/l 13
createNetGroup group44
specifyNetWeight R18/l 4
createNetGroup group45
specifyNetWeight R19/l 5
createNetGroup group46
specifyNetWeight R20/l 11
createNetGroup group47
specifyNetWeight VDD 15
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 18
createNetGroup group1
specifyNetWeight va 10
createNetGroup group2
specifyNetWeight vb 18
createNetGroup group3
specifyNetWeight vbg 6
createNetGroup group4
specifyNetWeight VSS 11
createNetGroup group5
specifyNetWeight vc 5
createNetGroup group6
specifyNetWeight l17 13
createNetGroup group7
specifyNetWeight l18 14
createNetGroup group8
specifyNetWeight l19 5
createNetGroup group9
specifyNetWeight l20 7
createNetGroup group10
specifyNetWeight amp/vg 3
createNetGroup group11
specifyNetWeight amp/vq 15
createNetGroup group12
specifyNetWeight amp/vx 19
createNetGroup group13
specifyNetWeight VNW 2
createNetGroup group14
specifyNetWeight VDDPST 20
createNetGroup group15
specifyNetWeight POC 10
createNetGroup group16
specifyNetWeight VDDCE 20
createNetGroup group17
specifyNetWeight VDDPE 12
createNetGroup group18
specifyNetWeight VPW 9
createNetGroup group19
specifyNetWeight VSSPST 2
createNetGroup group20
specifyNetWeight VSSE 3
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 3
createNetGroup group22
specifyNetWeight BGR_Core/l6 2
createNetGroup group23
specifyNetWeight BGR_Core/l7 9
createNetGroup group24
specifyNetWeight BGR_Core/l8 12
createNetGroup group25
specifyNetWeight BGR_Core/l10 5
createNetGroup group26
specifyNetWeight BGR_Core/l11 4
createNetGroup group27
specifyNetWeight BGR_Core/l1 11
createNetGroup group28
specifyNetWeight BGR_Core/l2 10
createNetGroup group29
specifyNetWeight BGR_Core/l4 16
createNetGroup group30
specifyNetWeight BGR_Core/l5 3
createNetGroup group31
specifyNetWeight BGR_Core/l12 5
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 15
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 9
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 10
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 10
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 20
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 5
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 6
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 19
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 5
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 13
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 13
createNetGroup group43
specifyNetWeight R17/l 10
createNetGroup group44
specifyNetWeight R18/l 13
createNetGroup group45
specifyNetWeight R19/l 3
createNetGroup group46
specifyNetWeight R20/l 4
createNetGroup group47
specifyNetWeight VDD 15
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 13
createNetGroup group1
specifyNetWeight va 10
createNetGroup group2
specifyNetWeight vb 2
createNetGroup group3
specifyNetWeight vbg 6
createNetGroup group4
specifyNetWeight VSS 14
createNetGroup group5
specifyNetWeight vc 17
createNetGroup group6
specifyNetWeight l17 12
createNetGroup group7
specifyNetWeight l18 9
createNetGroup group8
specifyNetWeight l19 8
createNetGroup group9
specifyNetWeight l20 4
createNetGroup group10
specifyNetWeight amp/vg 15
createNetGroup group11
specifyNetWeight amp/vq 13
createNetGroup group12
specifyNetWeight amp/vx 19
createNetGroup group13
specifyNetWeight VNW 4
createNetGroup group14
specifyNetWeight VDDPST 7
createNetGroup group15
specifyNetWeight POC 7
createNetGroup group16
specifyNetWeight VDDCE 9
createNetGroup group17
specifyNetWeight VDDPE 19
createNetGroup group18
specifyNetWeight VPW 4
createNetGroup group19
specifyNetWeight VSSPST 11
createNetGroup group20
specifyNetWeight VSSE 18
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 14
createNetGroup group22
specifyNetWeight BGR_Core/l6 3
createNetGroup group23
specifyNetWeight BGR_Core/l7 13
createNetGroup group24
specifyNetWeight BGR_Core/l8 8
createNetGroup group25
specifyNetWeight BGR_Core/l10 16
createNetGroup group26
specifyNetWeight BGR_Core/l11 20
createNetGroup group27
specifyNetWeight BGR_Core/l1 20
createNetGroup group28
specifyNetWeight BGR_Core/l2 8
createNetGroup group29
specifyNetWeight BGR_Core/l4 16
createNetGroup group30
specifyNetWeight BGR_Core/l5 18
createNetGroup group31
specifyNetWeight BGR_Core/l12 5
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 16
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 8
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 13
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 12
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 12
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 2
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 15
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 5
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 12
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 14
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 15
createNetGroup group43
specifyNetWeight R17/l 13
createNetGroup group44
specifyNetWeight R18/l 9
createNetGroup group45
specifyNetWeight R19/l 6
createNetGroup group46
specifyNetWeight R20/l 13
createNetGroup group47
specifyNetWeight VDD 14
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 19
createNetGroup group1
specifyNetWeight va 11
createNetGroup group2
specifyNetWeight vb 8
createNetGroup group3
specifyNetWeight vbg 8
createNetGroup group4
specifyNetWeight VSS 16
createNetGroup group5
specifyNetWeight vc 4
createNetGroup group6
specifyNetWeight l17 14
createNetGroup group7
specifyNetWeight l18 8
createNetGroup group8
specifyNetWeight l19 7
createNetGroup group9
specifyNetWeight l20 8
createNetGroup group10
specifyNetWeight amp/vg 3
createNetGroup group11
specifyNetWeight amp/vq 12
createNetGroup group12
specifyNetWeight amp/vx 14
createNetGroup group13
specifyNetWeight VNW 4
createNetGroup group14
specifyNetWeight VDDPST 5
createNetGroup group15
specifyNetWeight POC 19
createNetGroup group16
specifyNetWeight VDDCE 3
createNetGroup group17
specifyNetWeight VDDPE 13
createNetGroup group18
specifyNetWeight VPW 6
createNetGroup group19
specifyNetWeight VSSPST 7
createNetGroup group20
specifyNetWeight VSSE 13
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 16
createNetGroup group22
specifyNetWeight BGR_Core/l6 15
createNetGroup group23
specifyNetWeight BGR_Core/l7 12
createNetGroup group24
specifyNetWeight BGR_Core/l8 11
createNetGroup group25
specifyNetWeight BGR_Core/l10 11
createNetGroup group26
specifyNetWeight BGR_Core/l11 12
createNetGroup group27
specifyNetWeight BGR_Core/l1 15
createNetGroup group28
specifyNetWeight BGR_Core/l2 7
createNetGroup group29
specifyNetWeight BGR_Core/l4 16
createNetGroup group30
specifyNetWeight BGR_Core/l5 6
createNetGroup group31
specifyNetWeight BGR_Core/l12 16
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 6
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 15
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 19
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 13
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 12
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 5
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 2
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 6
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 13
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 12
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 8
createNetGroup group43
specifyNetWeight R17/l 5
createNetGroup group44
specifyNetWeight R18/l 11
createNetGroup group45
specifyNetWeight R19/l 13
createNetGroup group46
specifyNetWeight R20/l 3
createNetGroup group47
specifyNetWeight VDD 5
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 19
createNetGroup group1
specifyNetWeight va 9
createNetGroup group2
specifyNetWeight vb 2
createNetGroup group3
specifyNetWeight vbg 16
createNetGroup group4
specifyNetWeight VSS 20
createNetGroup group5
specifyNetWeight vc 17
createNetGroup group6
specifyNetWeight l17 4
createNetGroup group7
specifyNetWeight l18 9
createNetGroup group8
specifyNetWeight l19 4
createNetGroup group9
specifyNetWeight l20 8
createNetGroup group10
specifyNetWeight amp/vg 8
createNetGroup group11
specifyNetWeight amp/vq 8
createNetGroup group12
specifyNetWeight amp/vx 13
createNetGroup group13
specifyNetWeight VNW 13
createNetGroup group14
specifyNetWeight VDDPST 2
createNetGroup group15
specifyNetWeight POC 11
createNetGroup group16
specifyNetWeight VDDCE 10
createNetGroup group17
specifyNetWeight VDDPE 2
createNetGroup group18
specifyNetWeight VPW 12
createNetGroup group19
specifyNetWeight VSSPST 3
createNetGroup group20
specifyNetWeight VSSE 13
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 7
createNetGroup group22
specifyNetWeight BGR_Core/l6 15
createNetGroup group23
specifyNetWeight BGR_Core/l7 4
createNetGroup group24
specifyNetWeight BGR_Core/l8 15
createNetGroup group25
specifyNetWeight BGR_Core/l10 19
createNetGroup group26
specifyNetWeight BGR_Core/l11 6
createNetGroup group27
specifyNetWeight BGR_Core/l1 16
createNetGroup group28
specifyNetWeight BGR_Core/l2 17
createNetGroup group29
specifyNetWeight BGR_Core/l4 19
createNetGroup group30
specifyNetWeight BGR_Core/l5 12
createNetGroup group31
specifyNetWeight BGR_Core/l12 2
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 13
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 2
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 4
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 16
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 17
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 2
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 9
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 18
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 3
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 5
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 14
createNetGroup group43
specifyNetWeight R17/l 5
createNetGroup group44
specifyNetWeight R18/l 15
createNetGroup group45
specifyNetWeight R19/l 6
createNetGroup group46
specifyNetWeight R20/l 17
createNetGroup group47
specifyNetWeight VDD 20
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 11
createNetGroup group1
specifyNetWeight va 20
createNetGroup group2
specifyNetWeight vb 14
createNetGroup group3
specifyNetWeight vbg 2
createNetGroup group4
specifyNetWeight VSS 8
createNetGroup group5
specifyNetWeight vc 19
createNetGroup group6
specifyNetWeight l17 3
createNetGroup group7
specifyNetWeight l18 20
createNetGroup group8
specifyNetWeight l19 8
createNetGroup group9
specifyNetWeight l20 7
createNetGroup group10
specifyNetWeight amp/vg 7
createNetGroup group11
specifyNetWeight amp/vq 16
createNetGroup group12
specifyNetWeight amp/vx 7
createNetGroup group13
specifyNetWeight VNW 16
createNetGroup group14
specifyNetWeight VDDPST 8
createNetGroup group15
specifyNetWeight POC 2
createNetGroup group16
specifyNetWeight VDDCE 18
createNetGroup group17
specifyNetWeight VDDPE 3
createNetGroup group18
specifyNetWeight VPW 18
createNetGroup group19
specifyNetWeight VSSPST 17
createNetGroup group20
specifyNetWeight VSSE 17
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 14
createNetGroup group22
specifyNetWeight BGR_Core/l6 10
createNetGroup group23
specifyNetWeight BGR_Core/l7 16
createNetGroup group24
specifyNetWeight BGR_Core/l8 12
createNetGroup group25
specifyNetWeight BGR_Core/l10 19
createNetGroup group26
specifyNetWeight BGR_Core/l11 5
createNetGroup group27
specifyNetWeight BGR_Core/l1 7
createNetGroup group28
specifyNetWeight BGR_Core/l2 20
createNetGroup group29
specifyNetWeight BGR_Core/l4 3
createNetGroup group30
specifyNetWeight BGR_Core/l5 16
createNetGroup group31
specifyNetWeight BGR_Core/l12 17
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 17
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 10
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 15
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 9
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 3
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 3
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 12
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 14
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 17
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 9
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 20
createNetGroup group43
specifyNetWeight R17/l 2
createNetGroup group44
specifyNetWeight R18/l 19
createNetGroup group45
specifyNetWeight R19/l 8
createNetGroup group46
specifyNetWeight R20/l 20
createNetGroup group47
specifyNetWeight VDD 12
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 6
createNetGroup group1
specifyNetWeight va 11
createNetGroup group2
specifyNetWeight vb 19
createNetGroup group3
specifyNetWeight vbg 19
createNetGroup group4
specifyNetWeight VSS 8
createNetGroup group5
specifyNetWeight vc 7
createNetGroup group6
specifyNetWeight l17 15
createNetGroup group7
specifyNetWeight l18 5
createNetGroup group8
specifyNetWeight l19 10
createNetGroup group9
specifyNetWeight l20 14
createNetGroup group10
specifyNetWeight amp/vg 8
createNetGroup group11
specifyNetWeight amp/vq 4
createNetGroup group12
specifyNetWeight amp/vx 13
createNetGroup group13
specifyNetWeight VNW 14
createNetGroup group14
specifyNetWeight VDDPST 6
createNetGroup group15
specifyNetWeight POC 15
createNetGroup group16
specifyNetWeight VDDCE 19
createNetGroup group17
specifyNetWeight VDDPE 17
createNetGroup group18
specifyNetWeight VPW 5
createNetGroup group19
specifyNetWeight VSSPST 10
createNetGroup group20
specifyNetWeight VSSE 15
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 13
createNetGroup group22
specifyNetWeight BGR_Core/l6 13
createNetGroup group23
specifyNetWeight BGR_Core/l7 14
createNetGroup group24
specifyNetWeight BGR_Core/l8 13
createNetGroup group25
specifyNetWeight BGR_Core/l10 15
createNetGroup group26
specifyNetWeight BGR_Core/l11 10
createNetGroup group27
specifyNetWeight BGR_Core/l1 2
createNetGroup group28
specifyNetWeight BGR_Core/l2 8
createNetGroup group29
specifyNetWeight BGR_Core/l4 16
createNetGroup group30
specifyNetWeight BGR_Core/l5 13
createNetGroup group31
specifyNetWeight BGR_Core/l12 8
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 4
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 12
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 2
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 14
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 15
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 8
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 20
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 15
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 9
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 15
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 12
createNetGroup group43
specifyNetWeight R17/l 5
createNetGroup group44
specifyNetWeight R18/l 2
createNetGroup group45
specifyNetWeight R19/l 8
createNetGroup group46
specifyNetWeight R20/l 11
createNetGroup group47
specifyNetWeight VDD 4
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 4
createNetGroup group1
specifyNetWeight va 12
createNetGroup group2
specifyNetWeight vb 3
createNetGroup group3
specifyNetWeight vbg 19
createNetGroup group4
specifyNetWeight VSS 3
createNetGroup group5
specifyNetWeight vc 10
createNetGroup group6
specifyNetWeight l17 6
createNetGroup group7
specifyNetWeight l18 9
createNetGroup group8
specifyNetWeight l19 17
createNetGroup group9
specifyNetWeight l20 13
createNetGroup group10
specifyNetWeight amp/vg 11
createNetGroup group11
specifyNetWeight amp/vq 13
createNetGroup group12
specifyNetWeight amp/vx 20
createNetGroup group13
specifyNetWeight VNW 6
createNetGroup group14
specifyNetWeight VDDPST 11
createNetGroup group15
specifyNetWeight POC 14
createNetGroup group16
specifyNetWeight VDDCE 15
createNetGroup group17
specifyNetWeight VDDPE 4
createNetGroup group18
specifyNetWeight VPW 2
createNetGroup group19
specifyNetWeight VSSPST 8
createNetGroup group20
specifyNetWeight VSSE 12
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 7
createNetGroup group22
specifyNetWeight BGR_Core/l6 9
createNetGroup group23
specifyNetWeight BGR_Core/l7 9
createNetGroup group24
specifyNetWeight BGR_Core/l8 16
createNetGroup group25
specifyNetWeight BGR_Core/l10 14
createNetGroup group26
specifyNetWeight BGR_Core/l11 20
createNetGroup group27
specifyNetWeight BGR_Core/l1 15
createNetGroup group28
specifyNetWeight BGR_Core/l2 3
createNetGroup group29
specifyNetWeight BGR_Core/l4 14
createNetGroup group30
specifyNetWeight BGR_Core/l5 20
createNetGroup group31
specifyNetWeight BGR_Core/l12 15
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 3
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 7
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 16
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 4
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 10
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 7
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 16
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 18
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 17
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 19
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 2
createNetGroup group43
specifyNetWeight R17/l 3
createNetGroup group44
specifyNetWeight R18/l 17
createNetGroup group45
specifyNetWeight R19/l 12
createNetGroup group46
specifyNetWeight R20/l 11
createNetGroup group47
specifyNetWeight VDD 16
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 10
createNetGroup group1
specifyNetWeight va 8
createNetGroup group2
specifyNetWeight vb 5
createNetGroup group3
specifyNetWeight vbg 11
createNetGroup group4
specifyNetWeight VSS 5
createNetGroup group5
specifyNetWeight vc 12
createNetGroup group6
specifyNetWeight l17 9
createNetGroup group7
specifyNetWeight l18 20
createNetGroup group8
specifyNetWeight l19 19
createNetGroup group9
specifyNetWeight l20 13
createNetGroup group10
specifyNetWeight amp/vg 7
createNetGroup group11
specifyNetWeight amp/vq 6
createNetGroup group12
specifyNetWeight amp/vx 12
createNetGroup group13
specifyNetWeight VNW 2
createNetGroup group14
specifyNetWeight VDDPST 20
createNetGroup group15
specifyNetWeight POC 3
createNetGroup group16
specifyNetWeight VDDCE 20
createNetGroup group17
specifyNetWeight VDDPE 6
createNetGroup group18
specifyNetWeight VPW 13
createNetGroup group19
specifyNetWeight VSSPST 13
createNetGroup group20
specifyNetWeight VSSE 11
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 11
createNetGroup group22
specifyNetWeight BGR_Core/l6 12
createNetGroup group23
specifyNetWeight BGR_Core/l7 17
createNetGroup group24
specifyNetWeight BGR_Core/l8 14
createNetGroup group25
specifyNetWeight BGR_Core/l10 15
createNetGroup group26
specifyNetWeight BGR_Core/l11 7
createNetGroup group27
specifyNetWeight BGR_Core/l1 2
createNetGroup group28
specifyNetWeight BGR_Core/l2 6
createNetGroup group29
specifyNetWeight BGR_Core/l4 20
createNetGroup group30
specifyNetWeight BGR_Core/l5 3
createNetGroup group31
specifyNetWeight BGR_Core/l12 16
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 6
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 12
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 2
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 17
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 10
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 8
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 4
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 19
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 15
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 10
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 7
createNetGroup group43
specifyNetWeight R17/l 18
createNetGroup group44
specifyNetWeight R18/l 7
createNetGroup group45
specifyNetWeight R19/l 4
createNetGroup group46
specifyNetWeight R20/l 7
createNetGroup group47
specifyNetWeight VDD 20
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 6
createNetGroup group1
specifyNetWeight va 18
createNetGroup group2
specifyNetWeight vb 4
createNetGroup group3
specifyNetWeight vbg 8
createNetGroup group4
specifyNetWeight VSS 16
createNetGroup group5
specifyNetWeight vc 11
createNetGroup group6
specifyNetWeight l17 18
createNetGroup group7
specifyNetWeight l18 5
createNetGroup group8
specifyNetWeight l19 3
createNetGroup group9
specifyNetWeight l20 6
createNetGroup group10
specifyNetWeight amp/vg 12
createNetGroup group11
specifyNetWeight amp/vq 3
createNetGroup group12
specifyNetWeight amp/vx 12
createNetGroup group13
specifyNetWeight VNW 7
createNetGroup group14
specifyNetWeight VDDPST 16
createNetGroup group15
specifyNetWeight POC 14
createNetGroup group16
specifyNetWeight VDDCE 8
createNetGroup group17
specifyNetWeight VDDPE 15
createNetGroup group18
specifyNetWeight VPW 17
createNetGroup group19
specifyNetWeight VSSPST 8
createNetGroup group20
specifyNetWeight VSSE 7
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 14
createNetGroup group22
specifyNetWeight BGR_Core/l6 3
createNetGroup group23
specifyNetWeight BGR_Core/l7 12
createNetGroup group24
specifyNetWeight BGR_Core/l8 18
createNetGroup group25
specifyNetWeight BGR_Core/l10 8
createNetGroup group26
specifyNetWeight BGR_Core/l11 12
createNetGroup group27
specifyNetWeight BGR_Core/l1 7
createNetGroup group28
specifyNetWeight BGR_Core/l2 18
createNetGroup group29
specifyNetWeight BGR_Core/l4 19
createNetGroup group30
specifyNetWeight BGR_Core/l5 20
createNetGroup group31
specifyNetWeight BGR_Core/l12 15
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 6
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 17
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 20
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 8
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 16
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 3
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 9
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 17
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 12
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 19
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 8
createNetGroup group43
specifyNetWeight R17/l 2
createNetGroup group44
specifyNetWeight R18/l 2
createNetGroup group45
specifyNetWeight R19/l 3
createNetGroup group46
specifyNetWeight R20/l 6
createNetGroup group47
specifyNetWeight VDD 9
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 20
createNetGroup group1
specifyNetWeight va 19
createNetGroup group2
specifyNetWeight vb 14
createNetGroup group3
specifyNetWeight vbg 8
createNetGroup group4
specifyNetWeight VSS 2
createNetGroup group5
specifyNetWeight vc 11
createNetGroup group6
specifyNetWeight l17 5
createNetGroup group7
specifyNetWeight l18 16
createNetGroup group8
specifyNetWeight l19 10
createNetGroup group9
specifyNetWeight l20 9
createNetGroup group10
specifyNetWeight amp/vg 10
createNetGroup group11
specifyNetWeight amp/vq 11
createNetGroup group12
specifyNetWeight amp/vx 4
createNetGroup group13
specifyNetWeight VNW 13
createNetGroup group14
specifyNetWeight VDDPST 6
createNetGroup group15
specifyNetWeight POC 16
createNetGroup group16
specifyNetWeight VDDCE 2
createNetGroup group17
specifyNetWeight VDDPE 14
createNetGroup group18
specifyNetWeight VPW 16
createNetGroup group19
specifyNetWeight VSSPST 3
createNetGroup group20
specifyNetWeight VSSE 11
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 18
createNetGroup group22
specifyNetWeight BGR_Core/l6 15
createNetGroup group23
specifyNetWeight BGR_Core/l7 16
createNetGroup group24
specifyNetWeight BGR_Core/l8 20
createNetGroup group25
specifyNetWeight BGR_Core/l10 18
createNetGroup group26
specifyNetWeight BGR_Core/l11 8
createNetGroup group27
specifyNetWeight BGR_Core/l1 7
createNetGroup group28
specifyNetWeight BGR_Core/l2 2
createNetGroup group29
specifyNetWeight BGR_Core/l4 10
createNetGroup group30
specifyNetWeight BGR_Core/l5 5
createNetGroup group31
specifyNetWeight BGR_Core/l12 14
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 10
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 8
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 17
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 17
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 10
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 18
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 14
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 6
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 17
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 10
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 7
createNetGroup group43
specifyNetWeight R17/l 2
createNetGroup group44
specifyNetWeight R18/l 8
createNetGroup group45
specifyNetWeight R19/l 12
createNetGroup group46
specifyNetWeight R20/l 10
createNetGroup group47
specifyNetWeight VDD 5
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 10
createNetGroup group1
specifyNetWeight va 14
createNetGroup group2
specifyNetWeight vb 3
createNetGroup group3
specifyNetWeight vbg 16
createNetGroup group4
specifyNetWeight VSS 13
createNetGroup group5
specifyNetWeight vc 18
createNetGroup group6
specifyNetWeight l17 14
createNetGroup group7
specifyNetWeight l18 6
createNetGroup group8
specifyNetWeight l19 7
createNetGroup group9
specifyNetWeight l20 15
createNetGroup group10
specifyNetWeight amp/vg 3
createNetGroup group11
specifyNetWeight amp/vq 20
createNetGroup group12
specifyNetWeight amp/vx 14
createNetGroup group13
specifyNetWeight VNW 9
createNetGroup group14
specifyNetWeight VDDPST 11
createNetGroup group15
specifyNetWeight POC 13
createNetGroup group16
specifyNetWeight VDDCE 20
createNetGroup group17
specifyNetWeight VDDPE 12
createNetGroup group18
specifyNetWeight VPW 17
createNetGroup group19
specifyNetWeight VSSPST 17
createNetGroup group20
specifyNetWeight VSSE 10
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 13
createNetGroup group22
specifyNetWeight BGR_Core/l6 10
createNetGroup group23
specifyNetWeight BGR_Core/l7 17
createNetGroup group24
specifyNetWeight BGR_Core/l8 8
createNetGroup group25
specifyNetWeight BGR_Core/l10 9
createNetGroup group26
specifyNetWeight BGR_Core/l11 2
createNetGroup group27
specifyNetWeight BGR_Core/l1 12
createNetGroup group28
specifyNetWeight BGR_Core/l2 4
createNetGroup group29
specifyNetWeight BGR_Core/l4 13
createNetGroup group30
specifyNetWeight BGR_Core/l5 11
createNetGroup group31
specifyNetWeight BGR_Core/l12 11
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 9
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 2
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 5
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 16
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 18
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 14
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 8
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 12
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 12
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 19
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 6
createNetGroup group43
specifyNetWeight R17/l 3
createNetGroup group44
specifyNetWeight R18/l 17
createNetGroup group45
specifyNetWeight R19/l 15
createNetGroup group46
specifyNetWeight R20/l 16
createNetGroup group47
specifyNetWeight VDD 16
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 8
createNetGroup group1
specifyNetWeight va 8
createNetGroup group2
specifyNetWeight vb 9
createNetGroup group3
specifyNetWeight vbg 18
createNetGroup group4
specifyNetWeight VSS 16
createNetGroup group5
specifyNetWeight vc 10
createNetGroup group6
specifyNetWeight l17 19
createNetGroup group7
specifyNetWeight l18 16
createNetGroup group8
specifyNetWeight l19 18
createNetGroup group9
specifyNetWeight l20 5
createNetGroup group10
specifyNetWeight amp/vg 14
createNetGroup group11
specifyNetWeight amp/vq 12
createNetGroup group12
specifyNetWeight amp/vx 11
createNetGroup group13
specifyNetWeight VNW 18
createNetGroup group14
specifyNetWeight VDDPST 9
createNetGroup group15
specifyNetWeight POC 17
createNetGroup group16
specifyNetWeight VDDCE 17
createNetGroup group17
specifyNetWeight VDDPE 8
createNetGroup group18
specifyNetWeight VPW 20
createNetGroup group19
specifyNetWeight VSSPST 3
createNetGroup group20
specifyNetWeight VSSE 20
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 5
createNetGroup group22
specifyNetWeight BGR_Core/l6 10
createNetGroup group23
specifyNetWeight BGR_Core/l7 5
createNetGroup group24
specifyNetWeight BGR_Core/l8 4
createNetGroup group25
specifyNetWeight BGR_Core/l10 3
createNetGroup group26
specifyNetWeight BGR_Core/l11 19
createNetGroup group27
specifyNetWeight BGR_Core/l1 12
createNetGroup group28
specifyNetWeight BGR_Core/l2 11
createNetGroup group29
specifyNetWeight BGR_Core/l4 5
createNetGroup group30
specifyNetWeight BGR_Core/l5 17
createNetGroup group31
specifyNetWeight BGR_Core/l12 5
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 9
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 11
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 20
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 4
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 5
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 7
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 17
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 8
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 12
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 9
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 6
createNetGroup group43
specifyNetWeight R17/l 10
createNetGroup group44
specifyNetWeight R18/l 6
createNetGroup group45
specifyNetWeight R19/l 3
createNetGroup group46
specifyNetWeight R20/l 20
createNetGroup group47
specifyNetWeight VDD 3
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 3
createNetGroup group1
specifyNetWeight va 15
createNetGroup group2
specifyNetWeight vb 2
createNetGroup group3
specifyNetWeight vbg 20
createNetGroup group4
specifyNetWeight VSS 4
createNetGroup group5
specifyNetWeight vc 19
createNetGroup group6
specifyNetWeight l17 2
createNetGroup group7
specifyNetWeight l18 3
createNetGroup group8
specifyNetWeight l19 3
createNetGroup group9
specifyNetWeight l20 15
createNetGroup group10
specifyNetWeight amp/vg 11
createNetGroup group11
specifyNetWeight amp/vq 16
createNetGroup group12
specifyNetWeight amp/vx 12
createNetGroup group13
specifyNetWeight VNW 2
createNetGroup group14
specifyNetWeight VDDPST 19
createNetGroup group15
specifyNetWeight POC 14
createNetGroup group16
specifyNetWeight VDDCE 6
createNetGroup group17
specifyNetWeight VDDPE 15
createNetGroup group18
specifyNetWeight VPW 10
createNetGroup group19
specifyNetWeight VSSPST 18
createNetGroup group20
specifyNetWeight VSSE 12
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 3
createNetGroup group22
specifyNetWeight BGR_Core/l6 3
createNetGroup group23
specifyNetWeight BGR_Core/l7 13
createNetGroup group24
specifyNetWeight BGR_Core/l8 5
createNetGroup group25
specifyNetWeight BGR_Core/l10 2
createNetGroup group26
specifyNetWeight BGR_Core/l11 18
createNetGroup group27
specifyNetWeight BGR_Core/l1 5
createNetGroup group28
specifyNetWeight BGR_Core/l2 20
createNetGroup group29
specifyNetWeight BGR_Core/l4 16
createNetGroup group30
specifyNetWeight BGR_Core/l5 3
createNetGroup group31
specifyNetWeight BGR_Core/l12 8
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 20
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 20
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 16
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 20
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 4
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 5
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 7
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 2
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 4
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 18
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 3
createNetGroup group43
specifyNetWeight R17/l 10
createNetGroup group44
specifyNetWeight R18/l 17
createNetGroup group45
specifyNetWeight R19/l 10
createNetGroup group46
specifyNetWeight R20/l 13
createNetGroup group47
specifyNetWeight VDD 12
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 14
createNetGroup group1
specifyNetWeight va 15
createNetGroup group2
specifyNetWeight vb 3
createNetGroup group3
specifyNetWeight vbg 10
createNetGroup group4
specifyNetWeight VSS 8
createNetGroup group5
specifyNetWeight vc 18
createNetGroup group6
specifyNetWeight l17 17
createNetGroup group7
specifyNetWeight l18 14
createNetGroup group8
specifyNetWeight l19 11
createNetGroup group9
specifyNetWeight l20 17
createNetGroup group10
specifyNetWeight amp/vg 13
createNetGroup group11
specifyNetWeight amp/vq 20
createNetGroup group12
specifyNetWeight amp/vx 8
createNetGroup group13
specifyNetWeight VNW 18
createNetGroup group14
specifyNetWeight VDDPST 6
createNetGroup group15
specifyNetWeight POC 10
createNetGroup group16
specifyNetWeight VDDCE 5
createNetGroup group17
specifyNetWeight VDDPE 5
createNetGroup group18
specifyNetWeight VPW 10
createNetGroup group19
specifyNetWeight VSSPST 4
createNetGroup group20
specifyNetWeight VSSE 6
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 11
createNetGroup group22
specifyNetWeight BGR_Core/l6 5
createNetGroup group23
specifyNetWeight BGR_Core/l7 4
createNetGroup group24
specifyNetWeight BGR_Core/l8 12
createNetGroup group25
specifyNetWeight BGR_Core/l10 17
createNetGroup group26
specifyNetWeight BGR_Core/l11 19
createNetGroup group27
specifyNetWeight BGR_Core/l1 5
createNetGroup group28
specifyNetWeight BGR_Core/l2 7
createNetGroup group29
specifyNetWeight BGR_Core/l4 18
createNetGroup group30
specifyNetWeight BGR_Core/l5 12
createNetGroup group31
specifyNetWeight BGR_Core/l12 8
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 19
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 17
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 15
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 3
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 11
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 3
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 19
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 5
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 6
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 15
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 9
createNetGroup group43
specifyNetWeight R17/l 16
createNetGroup group44
specifyNetWeight R18/l 12
createNetGroup group45
specifyNetWeight R19/l 9
createNetGroup group46
specifyNetWeight R20/l 13
createNetGroup group47
specifyNetWeight VDD 3
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 8
createNetGroup group1
specifyNetWeight va 20
createNetGroup group2
specifyNetWeight vb 15
createNetGroup group3
specifyNetWeight vbg 20
createNetGroup group4
specifyNetWeight VSS 8
createNetGroup group5
specifyNetWeight vc 10
createNetGroup group6
specifyNetWeight l17 16
createNetGroup group7
specifyNetWeight l18 17
createNetGroup group8
specifyNetWeight l19 13
createNetGroup group9
specifyNetWeight l20 3
createNetGroup group10
specifyNetWeight amp/vg 12
createNetGroup group11
specifyNetWeight amp/vq 5
createNetGroup group12
specifyNetWeight amp/vx 17
createNetGroup group13
specifyNetWeight VNW 20
createNetGroup group14
specifyNetWeight VDDPST 12
createNetGroup group15
specifyNetWeight POC 8
createNetGroup group16
specifyNetWeight VDDCE 9
createNetGroup group17
specifyNetWeight VDDPE 2
createNetGroup group18
specifyNetWeight VPW 10
createNetGroup group19
specifyNetWeight VSSPST 5
createNetGroup group20
specifyNetWeight VSSE 9
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 13
createNetGroup group22
specifyNetWeight BGR_Core/l6 7
createNetGroup group23
specifyNetWeight BGR_Core/l7 12
createNetGroup group24
specifyNetWeight BGR_Core/l8 15
createNetGroup group25
specifyNetWeight BGR_Core/l10 3
createNetGroup group26
specifyNetWeight BGR_Core/l11 5
createNetGroup group27
specifyNetWeight BGR_Core/l1 6
createNetGroup group28
specifyNetWeight BGR_Core/l2 9
createNetGroup group29
specifyNetWeight BGR_Core/l4 3
createNetGroup group30
specifyNetWeight BGR_Core/l5 20
createNetGroup group31
specifyNetWeight BGR_Core/l12 19
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 4
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 2
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 5
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 8
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 20
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 5
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 14
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 4
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 13
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 5
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 3
createNetGroup group43
specifyNetWeight R17/l 2
createNetGroup group44
specifyNetWeight R18/l 8
createNetGroup group45
specifyNetWeight R19/l 7
createNetGroup group46
specifyNetWeight R20/l 5
createNetGroup group47
specifyNetWeight VDD 17
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 3
createNetGroup group1
specifyNetWeight va 13
createNetGroup group2
specifyNetWeight vb 15
createNetGroup group3
specifyNetWeight vbg 6
createNetGroup group4
specifyNetWeight VSS 12
createNetGroup group5
specifyNetWeight vc 8
createNetGroup group6
specifyNetWeight l17 16
createNetGroup group7
specifyNetWeight l18 15
createNetGroup group8
specifyNetWeight l19 6
createNetGroup group9
specifyNetWeight l20 13
createNetGroup group10
specifyNetWeight amp/vg 11
createNetGroup group11
specifyNetWeight amp/vq 7
createNetGroup group12
specifyNetWeight amp/vx 12
createNetGroup group13
specifyNetWeight VNW 15
createNetGroup group14
specifyNetWeight VDDPST 14
createNetGroup group15
specifyNetWeight POC 2
createNetGroup group16
specifyNetWeight VDDCE 15
createNetGroup group17
specifyNetWeight VDDPE 10
createNetGroup group18
specifyNetWeight VPW 19
createNetGroup group19
specifyNetWeight VSSPST 11
createNetGroup group20
specifyNetWeight VSSE 16
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 3
createNetGroup group22
specifyNetWeight BGR_Core/l6 20
createNetGroup group23
specifyNetWeight BGR_Core/l7 5
createNetGroup group24
specifyNetWeight BGR_Core/l8 15
createNetGroup group25
specifyNetWeight BGR_Core/l10 14
createNetGroup group26
specifyNetWeight BGR_Core/l11 7
createNetGroup group27
specifyNetWeight BGR_Core/l1 2
createNetGroup group28
specifyNetWeight BGR_Core/l2 18
createNetGroup group29
specifyNetWeight BGR_Core/l4 6
createNetGroup group30
specifyNetWeight BGR_Core/l5 18
createNetGroup group31
specifyNetWeight BGR_Core/l12 6
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 4
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 12
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 9
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 7
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 9
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 2
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 7
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 19
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 7
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 4
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 15
createNetGroup group43
specifyNetWeight R17/l 5
createNetGroup group44
specifyNetWeight R18/l 16
createNetGroup group45
specifyNetWeight R19/l 6
createNetGroup group46
specifyNetWeight R20/l 3
createNetGroup group47
specifyNetWeight VDD 10
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 10
createNetGroup group1
specifyNetWeight va 4
createNetGroup group2
specifyNetWeight vb 12
createNetGroup group3
specifyNetWeight vbg 12
createNetGroup group4
specifyNetWeight VSS 11
createNetGroup group5
specifyNetWeight vc 19
createNetGroup group6
specifyNetWeight l17 11
createNetGroup group7
specifyNetWeight l18 3
createNetGroup group8
specifyNetWeight l19 9
createNetGroup group9
specifyNetWeight l20 18
createNetGroup group10
specifyNetWeight amp/vg 6
createNetGroup group11
specifyNetWeight amp/vq 10
createNetGroup group12
specifyNetWeight amp/vx 3
createNetGroup group13
specifyNetWeight VNW 14
createNetGroup group14
specifyNetWeight VDDPST 15
createNetGroup group15
specifyNetWeight POC 10
createNetGroup group16
specifyNetWeight VDDCE 20
createNetGroup group17
specifyNetWeight VDDPE 9
createNetGroup group18
specifyNetWeight VPW 10
createNetGroup group19
specifyNetWeight VSSPST 12
createNetGroup group20
specifyNetWeight VSSE 19
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 17
createNetGroup group22
specifyNetWeight BGR_Core/l6 16
createNetGroup group23
specifyNetWeight BGR_Core/l7 5
createNetGroup group24
specifyNetWeight BGR_Core/l8 15
createNetGroup group25
specifyNetWeight BGR_Core/l10 13
createNetGroup group26
specifyNetWeight BGR_Core/l11 7
createNetGroup group27
specifyNetWeight BGR_Core/l1 18
createNetGroup group28
specifyNetWeight BGR_Core/l2 3
createNetGroup group29
specifyNetWeight BGR_Core/l4 9
createNetGroup group30
specifyNetWeight BGR_Core/l5 17
createNetGroup group31
specifyNetWeight BGR_Core/l12 14
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 2
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 9
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 4
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 11
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 5
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 7
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 6
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 16
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 2
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 13
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 15
createNetGroup group43
specifyNetWeight R17/l 15
createNetGroup group44
specifyNetWeight R18/l 5
createNetGroup group45
specifyNetWeight R19/l 18
createNetGroup group46
specifyNetWeight R20/l 9
createNetGroup group47
specifyNetWeight VDD 17
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 14
createNetGroup group1
specifyNetWeight va 2
createNetGroup group2
specifyNetWeight vb 19
createNetGroup group3
specifyNetWeight vbg 5
createNetGroup group4
specifyNetWeight VSS 12
createNetGroup group5
specifyNetWeight vc 12
createNetGroup group6
specifyNetWeight l17 2
createNetGroup group7
specifyNetWeight l18 15
createNetGroup group8
specifyNetWeight l19 6
createNetGroup group9
specifyNetWeight l20 4
createNetGroup group10
specifyNetWeight amp/vg 6
createNetGroup group11
specifyNetWeight amp/vq 3
createNetGroup group12
specifyNetWeight amp/vx 19
createNetGroup group13
specifyNetWeight VNW 11
createNetGroup group14
specifyNetWeight VDDPST 8
createNetGroup group15
specifyNetWeight POC 13
createNetGroup group16
specifyNetWeight VDDCE 9
createNetGroup group17
specifyNetWeight VDDPE 20
createNetGroup group18
specifyNetWeight VPW 4
createNetGroup group19
specifyNetWeight VSSPST 9
createNetGroup group20
specifyNetWeight VSSE 15
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 12
createNetGroup group22
specifyNetWeight BGR_Core/l6 11
createNetGroup group23
specifyNetWeight BGR_Core/l7 2
createNetGroup group24
specifyNetWeight BGR_Core/l8 4
createNetGroup group25
specifyNetWeight BGR_Core/l10 16
createNetGroup group26
specifyNetWeight BGR_Core/l11 10
createNetGroup group27
specifyNetWeight BGR_Core/l1 14
createNetGroup group28
specifyNetWeight BGR_Core/l2 8
createNetGroup group29
specifyNetWeight BGR_Core/l4 7
createNetGroup group30
specifyNetWeight BGR_Core/l5 16
createNetGroup group31
specifyNetWeight BGR_Core/l12 2
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 7
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 2
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 7
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 20
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 3
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 4
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 13
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 3
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 9
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 9
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 17
createNetGroup group43
specifyNetWeight R17/l 10
createNetGroup group44
specifyNetWeight R18/l 11
createNetGroup group45
specifyNetWeight R19/l 20
createNetGroup group46
specifyNetWeight R20/l 13
createNetGroup group47
specifyNetWeight VDD 19
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 16
createNetGroup group1
specifyNetWeight va 13
createNetGroup group2
specifyNetWeight vb 7
createNetGroup group3
specifyNetWeight vbg 10
createNetGroup group4
specifyNetWeight VSS 2
createNetGroup group5
specifyNetWeight vc 13
createNetGroup group6
specifyNetWeight l17 19
createNetGroup group7
specifyNetWeight l18 8
createNetGroup group8
specifyNetWeight l19 8
createNetGroup group9
specifyNetWeight l20 16
createNetGroup group10
specifyNetWeight amp/vg 12
createNetGroup group11
specifyNetWeight amp/vq 6
createNetGroup group12
specifyNetWeight amp/vx 10
createNetGroup group13
specifyNetWeight VNW 19
createNetGroup group14
specifyNetWeight VDDPST 2
createNetGroup group15
specifyNetWeight POC 4
createNetGroup group16
specifyNetWeight VDDCE 12
createNetGroup group17
specifyNetWeight VDDPE 11
createNetGroup group18
specifyNetWeight VPW 12
createNetGroup group19
specifyNetWeight VSSPST 3
createNetGroup group20
specifyNetWeight VSSE 4
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 2
createNetGroup group22
specifyNetWeight BGR_Core/l6 11
createNetGroup group23
specifyNetWeight BGR_Core/l7 5
createNetGroup group24
specifyNetWeight BGR_Core/l8 7
createNetGroup group25
specifyNetWeight BGR_Core/l10 10
createNetGroup group26
specifyNetWeight BGR_Core/l11 8
createNetGroup group27
specifyNetWeight BGR_Core/l1 18
createNetGroup group28
specifyNetWeight BGR_Core/l2 19
createNetGroup group29
specifyNetWeight BGR_Core/l4 13
createNetGroup group30
specifyNetWeight BGR_Core/l5 16
createNetGroup group31
specifyNetWeight BGR_Core/l12 4
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 15
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 18
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 19
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 15
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 5
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 4
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 20
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 16
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 12
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 7
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 11
createNetGroup group43
specifyNetWeight R17/l 9
createNetGroup group44
specifyNetWeight R18/l 15
createNetGroup group45
specifyNetWeight R19/l 11
createNetGroup group46
specifyNetWeight R20/l 3
createNetGroup group47
specifyNetWeight VDD 2
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 14
createNetGroup group1
specifyNetWeight va 12
createNetGroup group2
specifyNetWeight vb 12
createNetGroup group3
specifyNetWeight vbg 8
createNetGroup group4
specifyNetWeight VSS 20
createNetGroup group5
specifyNetWeight vc 5
createNetGroup group6
specifyNetWeight l17 11
createNetGroup group7
specifyNetWeight l18 11
createNetGroup group8
specifyNetWeight l19 8
createNetGroup group9
specifyNetWeight l20 5
createNetGroup group10
specifyNetWeight amp/vg 9
createNetGroup group11
specifyNetWeight amp/vq 15
createNetGroup group12
specifyNetWeight amp/vx 19
createNetGroup group13
specifyNetWeight VNW 7
createNetGroup group14
specifyNetWeight VDDPST 12
createNetGroup group15
specifyNetWeight POC 8
createNetGroup group16
specifyNetWeight VDDCE 15
createNetGroup group17
specifyNetWeight VDDPE 16
createNetGroup group18
specifyNetWeight VPW 9
createNetGroup group19
specifyNetWeight VSSPST 10
createNetGroup group20
specifyNetWeight VSSE 18
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 13
createNetGroup group22
specifyNetWeight BGR_Core/l6 14
createNetGroup group23
specifyNetWeight BGR_Core/l7 4
createNetGroup group24
specifyNetWeight BGR_Core/l8 20
createNetGroup group25
specifyNetWeight BGR_Core/l10 17
createNetGroup group26
specifyNetWeight BGR_Core/l11 16
createNetGroup group27
specifyNetWeight BGR_Core/l1 5
createNetGroup group28
specifyNetWeight BGR_Core/l2 7
createNetGroup group29
specifyNetWeight BGR_Core/l4 5
createNetGroup group30
specifyNetWeight BGR_Core/l5 18
createNetGroup group31
specifyNetWeight BGR_Core/l12 10
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 10
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 2
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 14
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 14
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 8
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 2
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 7
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 3
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 15
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 15
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 12
createNetGroup group43
specifyNetWeight R17/l 15
createNetGroup group44
specifyNetWeight R18/l 14
createNetGroup group45
specifyNetWeight R19/l 3
createNetGroup group46
specifyNetWeight R20/l 10
createNetGroup group47
specifyNetWeight VDD 17
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 6
createNetGroup group1
specifyNetWeight va 13
createNetGroup group2
specifyNetWeight vb 16
createNetGroup group3
specifyNetWeight vbg 3
createNetGroup group4
specifyNetWeight VSS 12
createNetGroup group5
specifyNetWeight vc 17
createNetGroup group6
specifyNetWeight l17 15
createNetGroup group7
specifyNetWeight l18 11
createNetGroup group8
specifyNetWeight l19 16
createNetGroup group9
specifyNetWeight l20 16
createNetGroup group10
specifyNetWeight amp/vg 16
createNetGroup group11
specifyNetWeight amp/vq 2
createNetGroup group12
specifyNetWeight amp/vx 8
createNetGroup group13
specifyNetWeight VNW 13
createNetGroup group14
specifyNetWeight VDDPST 5
createNetGroup group15
specifyNetWeight POC 11
createNetGroup group16
specifyNetWeight VDDCE 19
createNetGroup group17
specifyNetWeight VDDPE 2
createNetGroup group18
specifyNetWeight VPW 10
createNetGroup group19
specifyNetWeight VSSPST 17
createNetGroup group20
specifyNetWeight VSSE 6
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 17
createNetGroup group22
specifyNetWeight BGR_Core/l6 9
createNetGroup group23
specifyNetWeight BGR_Core/l7 11
createNetGroup group24
specifyNetWeight BGR_Core/l8 14
createNetGroup group25
specifyNetWeight BGR_Core/l10 19
createNetGroup group26
specifyNetWeight BGR_Core/l11 2
createNetGroup group27
specifyNetWeight BGR_Core/l1 10
createNetGroup group28
specifyNetWeight BGR_Core/l2 9
createNetGroup group29
specifyNetWeight BGR_Core/l4 2
createNetGroup group30
specifyNetWeight BGR_Core/l5 15
createNetGroup group31
specifyNetWeight BGR_Core/l12 12
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 14
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 18
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 20
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 14
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 16
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 5
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 10
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 13
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 11
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 16
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 4
createNetGroup group43
specifyNetWeight R17/l 11
createNetGroup group44
specifyNetWeight R18/l 4
createNetGroup group45
specifyNetWeight R19/l 10
createNetGroup group46
specifyNetWeight R20/l 14
createNetGroup group47
specifyNetWeight VDD 20
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 3
createNetGroup group1
specifyNetWeight va 9
createNetGroup group2
specifyNetWeight vb 2
createNetGroup group3
specifyNetWeight vbg 16
createNetGroup group4
specifyNetWeight VSS 8
createNetGroup group5
specifyNetWeight vc 17
createNetGroup group6
specifyNetWeight l17 7
createNetGroup group7
specifyNetWeight l18 2
createNetGroup group8
specifyNetWeight l19 5
createNetGroup group9
specifyNetWeight l20 5
createNetGroup group10
specifyNetWeight amp/vg 4
createNetGroup group11
specifyNetWeight amp/vq 14
createNetGroup group12
specifyNetWeight amp/vx 2
createNetGroup group13
specifyNetWeight VNW 11
createNetGroup group14
specifyNetWeight VDDPST 3
createNetGroup group15
specifyNetWeight POC 5
createNetGroup group16
specifyNetWeight VDDCE 2
createNetGroup group17
specifyNetWeight VDDPE 20
createNetGroup group18
specifyNetWeight VPW 16
createNetGroup group19
specifyNetWeight VSSPST 8
createNetGroup group20
specifyNetWeight VSSE 4
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 20
createNetGroup group22
specifyNetWeight BGR_Core/l6 11
createNetGroup group23
specifyNetWeight BGR_Core/l7 16
createNetGroup group24
specifyNetWeight BGR_Core/l8 5
createNetGroup group25
specifyNetWeight BGR_Core/l10 5
createNetGroup group26
specifyNetWeight BGR_Core/l11 16
createNetGroup group27
specifyNetWeight BGR_Core/l1 7
createNetGroup group28
specifyNetWeight BGR_Core/l2 15
createNetGroup group29
specifyNetWeight BGR_Core/l4 7
createNetGroup group30
specifyNetWeight BGR_Core/l5 2
createNetGroup group31
specifyNetWeight BGR_Core/l12 13
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 15
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 6
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 16
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 6
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 18
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 12
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 6
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 8
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 7
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 8
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 13
createNetGroup group43
specifyNetWeight R17/l 6
createNetGroup group44
specifyNetWeight R18/l 15
createNetGroup group45
specifyNetWeight R19/l 17
createNetGroup group46
specifyNetWeight R20/l 11
createNetGroup group47
specifyNetWeight VDD 3
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 15
createNetGroup group1
specifyNetWeight va 2
createNetGroup group2
specifyNetWeight vb 5
createNetGroup group3
specifyNetWeight vbg 3
createNetGroup group4
specifyNetWeight VSS 16
createNetGroup group5
specifyNetWeight vc 5
createNetGroup group6
specifyNetWeight l17 12
createNetGroup group7
specifyNetWeight l18 10
createNetGroup group8
specifyNetWeight l19 7
createNetGroup group9
specifyNetWeight l20 12
createNetGroup group10
specifyNetWeight amp/vg 15
createNetGroup group11
specifyNetWeight amp/vq 2
createNetGroup group12
specifyNetWeight amp/vx 18
createNetGroup group13
specifyNetWeight VNW 12
createNetGroup group14
specifyNetWeight VDDPST 9
createNetGroup group15
specifyNetWeight POC 9
createNetGroup group16
specifyNetWeight VDDCE 4
createNetGroup group17
specifyNetWeight VDDPE 8
createNetGroup group18
specifyNetWeight VPW 18
createNetGroup group19
specifyNetWeight VSSPST 10
createNetGroup group20
specifyNetWeight VSSE 9
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 6
createNetGroup group22
specifyNetWeight BGR_Core/l6 11
createNetGroup group23
specifyNetWeight BGR_Core/l7 9
createNetGroup group24
specifyNetWeight BGR_Core/l8 16
createNetGroup group25
specifyNetWeight BGR_Core/l10 16
createNetGroup group26
specifyNetWeight BGR_Core/l11 14
createNetGroup group27
specifyNetWeight BGR_Core/l1 18
createNetGroup group28
specifyNetWeight BGR_Core/l2 2
createNetGroup group29
specifyNetWeight BGR_Core/l4 13
createNetGroup group30
specifyNetWeight BGR_Core/l5 16
createNetGroup group31
specifyNetWeight BGR_Core/l12 10
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 4
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 18
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 2
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 18
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 16
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 13
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 4
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 12
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 2
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 16
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 17
createNetGroup group43
specifyNetWeight R17/l 15
createNetGroup group44
specifyNetWeight R18/l 12
createNetGroup group45
specifyNetWeight R19/l 7
createNetGroup group46
specifyNetWeight R20/l 3
createNetGroup group47
specifyNetWeight VDD 15
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 12
createNetGroup group1
specifyNetWeight va 12
createNetGroup group2
specifyNetWeight vb 4
createNetGroup group3
specifyNetWeight vbg 4
createNetGroup group4
specifyNetWeight VSS 5
createNetGroup group5
specifyNetWeight vc 14
createNetGroup group6
specifyNetWeight l17 18
createNetGroup group7
specifyNetWeight l18 17
createNetGroup group8
specifyNetWeight l19 16
createNetGroup group9
specifyNetWeight l20 12
createNetGroup group10
specifyNetWeight amp/vg 10
createNetGroup group11
specifyNetWeight amp/vq 12
createNetGroup group12
specifyNetWeight amp/vx 18
createNetGroup group13
specifyNetWeight VNW 3
createNetGroup group14
specifyNetWeight VDDPST 16
createNetGroup group15
specifyNetWeight POC 13
createNetGroup group16
specifyNetWeight VDDCE 4
createNetGroup group17
specifyNetWeight VDDPE 10
createNetGroup group18
specifyNetWeight VPW 5
createNetGroup group19
specifyNetWeight VSSPST 11
createNetGroup group20
specifyNetWeight VSSE 8
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 8
createNetGroup group22
specifyNetWeight BGR_Core/l6 3
createNetGroup group23
specifyNetWeight BGR_Core/l7 4
createNetGroup group24
specifyNetWeight BGR_Core/l8 11
createNetGroup group25
specifyNetWeight BGR_Core/l10 12
createNetGroup group26
specifyNetWeight BGR_Core/l11 11
createNetGroup group27
specifyNetWeight BGR_Core/l1 10
createNetGroup group28
specifyNetWeight BGR_Core/l2 17
createNetGroup group29
specifyNetWeight BGR_Core/l4 14
createNetGroup group30
specifyNetWeight BGR_Core/l5 9
createNetGroup group31
specifyNetWeight BGR_Core/l12 2
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 11
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 7
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 7
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 2
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 14
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 17
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 16
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 3
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 15
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 17
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 17
createNetGroup group43
specifyNetWeight R17/l 10
createNetGroup group44
specifyNetWeight R18/l 4
createNetGroup group45
specifyNetWeight R19/l 12
createNetGroup group46
specifyNetWeight R20/l 4
createNetGroup group47
specifyNetWeight VDD 9
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 14
createNetGroup group1
specifyNetWeight va 2
createNetGroup group2
specifyNetWeight vb 15
createNetGroup group3
specifyNetWeight vbg 15
createNetGroup group4
specifyNetWeight VSS 14
createNetGroup group5
specifyNetWeight vc 20
createNetGroup group6
specifyNetWeight l17 12
createNetGroup group7
specifyNetWeight l18 9
createNetGroup group8
specifyNetWeight l19 6
createNetGroup group9
specifyNetWeight l20 13
createNetGroup group10
specifyNetWeight amp/vg 18
createNetGroup group11
specifyNetWeight amp/vq 8
createNetGroup group12
specifyNetWeight amp/vx 19
createNetGroup group13
specifyNetWeight VNW 14
createNetGroup group14
specifyNetWeight VDDPST 4
createNetGroup group15
specifyNetWeight POC 6
createNetGroup group16
specifyNetWeight VDDCE 15
createNetGroup group17
specifyNetWeight VDDPE 20
createNetGroup group18
specifyNetWeight VPW 13
createNetGroup group19
specifyNetWeight VSSPST 5
createNetGroup group20
specifyNetWeight VSSE 15
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 15
createNetGroup group22
specifyNetWeight BGR_Core/l6 9
createNetGroup group23
specifyNetWeight BGR_Core/l7 17
createNetGroup group24
specifyNetWeight BGR_Core/l8 14
createNetGroup group25
specifyNetWeight BGR_Core/l10 9
createNetGroup group26
specifyNetWeight BGR_Core/l11 14
createNetGroup group27
specifyNetWeight BGR_Core/l1 9
createNetGroup group28
specifyNetWeight BGR_Core/l2 17
createNetGroup group29
specifyNetWeight BGR_Core/l4 14
createNetGroup group30
specifyNetWeight BGR_Core/l5 20
createNetGroup group31
specifyNetWeight BGR_Core/l12 4
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 10
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 10
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 18
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 13
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 19
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 2
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 17
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 9
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 10
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 3
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 12
createNetGroup group43
specifyNetWeight R17/l 14
createNetGroup group44
specifyNetWeight R18/l 5
createNetGroup group45
specifyNetWeight R19/l 19
createNetGroup group46
specifyNetWeight R20/l 3
createNetGroup group47
specifyNetWeight VDD 6
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 4
createNetGroup group1
specifyNetWeight va 20
createNetGroup group2
specifyNetWeight vb 10
createNetGroup group3
specifyNetWeight vbg 19
createNetGroup group4
specifyNetWeight VSS 15
createNetGroup group5
specifyNetWeight vc 13
createNetGroup group6
specifyNetWeight l17 6
createNetGroup group7
specifyNetWeight l18 3
createNetGroup group8
specifyNetWeight l19 2
createNetGroup group9
specifyNetWeight l20 6
createNetGroup group10
specifyNetWeight amp/vg 14
createNetGroup group11
specifyNetWeight amp/vq 13
createNetGroup group12
specifyNetWeight amp/vx 2
createNetGroup group13
specifyNetWeight VNW 13
createNetGroup group14
specifyNetWeight VDDPST 12
createNetGroup group15
specifyNetWeight POC 18
createNetGroup group16
specifyNetWeight VDDCE 20
createNetGroup group17
specifyNetWeight VDDPE 20
createNetGroup group18
specifyNetWeight VPW 14
createNetGroup group19
specifyNetWeight VSSPST 19
createNetGroup group20
specifyNetWeight VSSE 5
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 5
createNetGroup group22
specifyNetWeight BGR_Core/l6 19
createNetGroup group23
specifyNetWeight BGR_Core/l7 8
createNetGroup group24
specifyNetWeight BGR_Core/l8 8
createNetGroup group25
specifyNetWeight BGR_Core/l10 12
createNetGroup group26
specifyNetWeight BGR_Core/l11 19
createNetGroup group27
specifyNetWeight BGR_Core/l1 14
createNetGroup group28
specifyNetWeight BGR_Core/l2 6
createNetGroup group29
specifyNetWeight BGR_Core/l4 3
createNetGroup group30
specifyNetWeight BGR_Core/l5 4
createNetGroup group31
specifyNetWeight BGR_Core/l12 3
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 13
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 8
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 15
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 20
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 5
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 15
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 8
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 12
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 4
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 5
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 6
createNetGroup group43
specifyNetWeight R17/l 10
createNetGroup group44
specifyNetWeight R18/l 9
createNetGroup group45
specifyNetWeight R19/l 7
createNetGroup group46
specifyNetWeight R20/l 8
createNetGroup group47
specifyNetWeight VDD 14
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 12
createNetGroup group1
specifyNetWeight va 5
createNetGroup group2
specifyNetWeight vb 17
createNetGroup group3
specifyNetWeight vbg 5
createNetGroup group4
specifyNetWeight VSS 17
createNetGroup group5
specifyNetWeight vc 17
createNetGroup group6
specifyNetWeight l17 15
createNetGroup group7
specifyNetWeight l18 3
createNetGroup group8
specifyNetWeight l19 11
createNetGroup group9
specifyNetWeight l20 12
createNetGroup group10
specifyNetWeight amp/vg 6
createNetGroup group11
specifyNetWeight amp/vq 7
createNetGroup group12
specifyNetWeight amp/vx 20
createNetGroup group13
specifyNetWeight VNW 14
createNetGroup group14
specifyNetWeight VDDPST 4
createNetGroup group15
specifyNetWeight POC 4
createNetGroup group16
specifyNetWeight VDDCE 4
createNetGroup group17
specifyNetWeight VDDPE 8
createNetGroup group18
specifyNetWeight VPW 9
createNetGroup group19
specifyNetWeight VSSPST 3
createNetGroup group20
specifyNetWeight VSSE 14
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 2
createNetGroup group22
specifyNetWeight BGR_Core/l6 5
createNetGroup group23
specifyNetWeight BGR_Core/l7 14
createNetGroup group24
specifyNetWeight BGR_Core/l8 19
createNetGroup group25
specifyNetWeight BGR_Core/l10 18
createNetGroup group26
specifyNetWeight BGR_Core/l11 11
createNetGroup group27
specifyNetWeight BGR_Core/l1 16
createNetGroup group28
specifyNetWeight BGR_Core/l2 17
createNetGroup group29
specifyNetWeight BGR_Core/l4 20
createNetGroup group30
specifyNetWeight BGR_Core/l5 8
createNetGroup group31
specifyNetWeight BGR_Core/l12 15
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 4
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 13
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 9
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 10
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 20
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 7
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 15
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 8
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 13
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 5
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 4
createNetGroup group43
specifyNetWeight R17/l 2
createNetGroup group44
specifyNetWeight R18/l 18
createNetGroup group45
specifyNetWeight R19/l 16
createNetGroup group46
specifyNetWeight R20/l 8
createNetGroup group47
specifyNetWeight VDD 5
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 6
createNetGroup group1
specifyNetWeight va 19
createNetGroup group2
specifyNetWeight vb 11
createNetGroup group3
specifyNetWeight vbg 15
createNetGroup group4
specifyNetWeight VSS 17
createNetGroup group5
specifyNetWeight vc 15
createNetGroup group6
specifyNetWeight l17 19
createNetGroup group7
specifyNetWeight l18 3
createNetGroup group8
specifyNetWeight l19 16
createNetGroup group9
specifyNetWeight l20 19
createNetGroup group10
specifyNetWeight amp/vg 6
createNetGroup group11
specifyNetWeight amp/vq 19
createNetGroup group12
specifyNetWeight amp/vx 6
createNetGroup group13
specifyNetWeight VNW 8
createNetGroup group14
specifyNetWeight VDDPST 20
createNetGroup group15
specifyNetWeight POC 7
createNetGroup group16
specifyNetWeight VDDCE 4
createNetGroup group17
specifyNetWeight VDDPE 20
createNetGroup group18
specifyNetWeight VPW 17
createNetGroup group19
specifyNetWeight VSSPST 13
createNetGroup group20
specifyNetWeight VSSE 10
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 10
createNetGroup group22
specifyNetWeight BGR_Core/l6 8
createNetGroup group23
specifyNetWeight BGR_Core/l7 14
createNetGroup group24
specifyNetWeight BGR_Core/l8 2
createNetGroup group25
specifyNetWeight BGR_Core/l10 3
createNetGroup group26
specifyNetWeight BGR_Core/l11 18
createNetGroup group27
specifyNetWeight BGR_Core/l1 4
createNetGroup group28
specifyNetWeight BGR_Core/l2 2
createNetGroup group29
specifyNetWeight BGR_Core/l4 11
createNetGroup group30
specifyNetWeight BGR_Core/l5 6
createNetGroup group31
specifyNetWeight BGR_Core/l12 6
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 18
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 6
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 5
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 12
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 2
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 12
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 6
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 12
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 20
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 4
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 4
createNetGroup group43
specifyNetWeight R17/l 13
createNetGroup group44
specifyNetWeight R18/l 8
createNetGroup group45
specifyNetWeight R19/l 10
createNetGroup group46
specifyNetWeight R20/l 16
createNetGroup group47
specifyNetWeight VDD 12
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 3
createNetGroup group1
specifyNetWeight va 17
createNetGroup group2
specifyNetWeight vb 15
createNetGroup group3
specifyNetWeight vbg 6
createNetGroup group4
specifyNetWeight VSS 3
createNetGroup group5
specifyNetWeight vc 17
createNetGroup group6
specifyNetWeight l17 4
createNetGroup group7
specifyNetWeight l18 6
createNetGroup group8
specifyNetWeight l19 13
createNetGroup group9
specifyNetWeight l20 15
createNetGroup group10
specifyNetWeight amp/vg 3
createNetGroup group11
specifyNetWeight amp/vq 16
createNetGroup group12
specifyNetWeight amp/vx 14
createNetGroup group13
specifyNetWeight VNW 16
createNetGroup group14
specifyNetWeight VDDPST 3
createNetGroup group15
specifyNetWeight POC 5
createNetGroup group16
specifyNetWeight VDDCE 17
createNetGroup group17
specifyNetWeight VDDPE 6
createNetGroup group18
specifyNetWeight VPW 2
createNetGroup group19
specifyNetWeight VSSPST 3
createNetGroup group20
specifyNetWeight VSSE 6
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 12
createNetGroup group22
specifyNetWeight BGR_Core/l6 5
createNetGroup group23
specifyNetWeight BGR_Core/l7 19
createNetGroup group24
specifyNetWeight BGR_Core/l8 13
createNetGroup group25
specifyNetWeight BGR_Core/l10 8
createNetGroup group26
specifyNetWeight BGR_Core/l11 14
createNetGroup group27
specifyNetWeight BGR_Core/l1 17
createNetGroup group28
specifyNetWeight BGR_Core/l2 5
createNetGroup group29
specifyNetWeight BGR_Core/l4 3
createNetGroup group30
specifyNetWeight BGR_Core/l5 16
createNetGroup group31
specifyNetWeight BGR_Core/l12 12
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 5
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 11
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 6
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 14
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 11
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 5
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 18
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 8
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 3
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 14
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 16
createNetGroup group43
specifyNetWeight R17/l 13
createNetGroup group44
specifyNetWeight R18/l 8
createNetGroup group45
specifyNetWeight R19/l 16
createNetGroup group46
specifyNetWeight R20/l 13
createNetGroup group47
specifyNetWeight VDD 4
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 5
createNetGroup group1
specifyNetWeight va 2
createNetGroup group2
specifyNetWeight vb 4
createNetGroup group3
specifyNetWeight vbg 15
createNetGroup group4
specifyNetWeight VSS 8
createNetGroup group5
specifyNetWeight vc 8
createNetGroup group6
specifyNetWeight l17 17
createNetGroup group7
specifyNetWeight l18 8
createNetGroup group8
specifyNetWeight l19 17
createNetGroup group9
specifyNetWeight l20 19
createNetGroup group10
specifyNetWeight amp/vg 14
createNetGroup group11
specifyNetWeight amp/vq 18
createNetGroup group12
specifyNetWeight amp/vx 17
createNetGroup group13
specifyNetWeight VNW 7
createNetGroup group14
specifyNetWeight VDDPST 6
createNetGroup group15
specifyNetWeight POC 2
createNetGroup group16
specifyNetWeight VDDCE 18
createNetGroup group17
specifyNetWeight VDDPE 16
createNetGroup group18
specifyNetWeight VPW 4
createNetGroup group19
specifyNetWeight VSSPST 15
createNetGroup group20
specifyNetWeight VSSE 12
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 7
createNetGroup group22
specifyNetWeight BGR_Core/l6 4
createNetGroup group23
specifyNetWeight BGR_Core/l7 20
createNetGroup group24
specifyNetWeight BGR_Core/l8 12
createNetGroup group25
specifyNetWeight BGR_Core/l10 16
createNetGroup group26
specifyNetWeight BGR_Core/l11 8
createNetGroup group27
specifyNetWeight BGR_Core/l1 17
createNetGroup group28
specifyNetWeight BGR_Core/l2 15
createNetGroup group29
specifyNetWeight BGR_Core/l4 3
createNetGroup group30
specifyNetWeight BGR_Core/l5 7
createNetGroup group31
specifyNetWeight BGR_Core/l12 10
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 11
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 19
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 11
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 15
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 20
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 2
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 17
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 4
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 17
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 11
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 16
createNetGroup group43
specifyNetWeight R17/l 19
createNetGroup group44
specifyNetWeight R18/l 13
createNetGroup group45
specifyNetWeight R19/l 17
createNetGroup group46
specifyNetWeight R20/l 4
createNetGroup group47
specifyNetWeight VDD 11
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 19
createNetGroup group1
specifyNetWeight va 5
createNetGroup group2
specifyNetWeight vb 6
createNetGroup group3
specifyNetWeight vbg 7
createNetGroup group4
specifyNetWeight VSS 19
createNetGroup group5
specifyNetWeight vc 11
createNetGroup group6
specifyNetWeight l17 2
createNetGroup group7
specifyNetWeight l18 12
createNetGroup group8
specifyNetWeight l19 5
createNetGroup group9
specifyNetWeight l20 6
createNetGroup group10
specifyNetWeight amp/vg 18
createNetGroup group11
specifyNetWeight amp/vq 7
createNetGroup group12
specifyNetWeight amp/vx 19
createNetGroup group13
specifyNetWeight VNW 15
createNetGroup group14
specifyNetWeight VDDPST 10
createNetGroup group15
specifyNetWeight POC 2
createNetGroup group16
specifyNetWeight VDDCE 13
createNetGroup group17
specifyNetWeight VDDPE 6
createNetGroup group18
specifyNetWeight VPW 3
createNetGroup group19
specifyNetWeight VSSPST 18
createNetGroup group20
specifyNetWeight VSSE 8
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 16
createNetGroup group22
specifyNetWeight BGR_Core/l6 10
createNetGroup group23
specifyNetWeight BGR_Core/l7 15
createNetGroup group24
specifyNetWeight BGR_Core/l8 3
createNetGroup group25
specifyNetWeight BGR_Core/l10 9
createNetGroup group26
specifyNetWeight BGR_Core/l11 20
createNetGroup group27
specifyNetWeight BGR_Core/l1 10
createNetGroup group28
specifyNetWeight BGR_Core/l2 8
createNetGroup group29
specifyNetWeight BGR_Core/l4 12
createNetGroup group30
specifyNetWeight BGR_Core/l5 5
createNetGroup group31
specifyNetWeight BGR_Core/l12 10
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 17
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 13
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 11
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 3
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 10
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 5
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 13
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 11
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 8
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 12
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 9
createNetGroup group43
specifyNetWeight R17/l 9
createNetGroup group44
specifyNetWeight R18/l 8
createNetGroup group45
specifyNetWeight R19/l 8
createNetGroup group46
specifyNetWeight R20/l 14
createNetGroup group47
specifyNetWeight VDD 5
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 10
createNetGroup group1
specifyNetWeight va 11
createNetGroup group2
specifyNetWeight vb 7
createNetGroup group3
specifyNetWeight vbg 7
createNetGroup group4
specifyNetWeight VSS 16
createNetGroup group5
specifyNetWeight vc 20
createNetGroup group6
specifyNetWeight l17 9
createNetGroup group7
specifyNetWeight l18 6
createNetGroup group8
specifyNetWeight l19 6
createNetGroup group9
specifyNetWeight l20 9
createNetGroup group10
specifyNetWeight amp/vg 10
createNetGroup group11
specifyNetWeight amp/vq 17
createNetGroup group12
specifyNetWeight amp/vx 11
createNetGroup group13
specifyNetWeight VNW 6
createNetGroup group14
specifyNetWeight VDDPST 10
createNetGroup group15
specifyNetWeight POC 8
createNetGroup group16
specifyNetWeight VDDCE 4
createNetGroup group17
specifyNetWeight VDDPE 6
createNetGroup group18
specifyNetWeight VPW 15
createNetGroup group19
specifyNetWeight VSSPST 7
createNetGroup group20
specifyNetWeight VSSE 8
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 20
createNetGroup group22
specifyNetWeight BGR_Core/l6 2
createNetGroup group23
specifyNetWeight BGR_Core/l7 13
createNetGroup group24
specifyNetWeight BGR_Core/l8 19
createNetGroup group25
specifyNetWeight BGR_Core/l10 17
createNetGroup group26
specifyNetWeight BGR_Core/l11 6
createNetGroup group27
specifyNetWeight BGR_Core/l1 10
createNetGroup group28
specifyNetWeight BGR_Core/l2 4
createNetGroup group29
specifyNetWeight BGR_Core/l4 10
createNetGroup group30
specifyNetWeight BGR_Core/l5 9
createNetGroup group31
specifyNetWeight BGR_Core/l12 2
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 6
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 8
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 20
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 2
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 15
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 6
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 6
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 17
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 19
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 3
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 18
createNetGroup group43
specifyNetWeight R17/l 12
createNetGroup group44
specifyNetWeight R18/l 9
createNetGroup group45
specifyNetWeight R19/l 7
createNetGroup group46
specifyNetWeight R20/l 16
createNetGroup group47
specifyNetWeight VDD 12
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 7
createNetGroup group1
specifyNetWeight va 20
createNetGroup group2
specifyNetWeight vb 16
createNetGroup group3
specifyNetWeight vbg 15
createNetGroup group4
specifyNetWeight VSS 9
createNetGroup group5
specifyNetWeight vc 20
createNetGroup group6
specifyNetWeight l17 9
createNetGroup group7
specifyNetWeight l18 2
createNetGroup group8
specifyNetWeight l19 13
createNetGroup group9
specifyNetWeight l20 6
createNetGroup group10
specifyNetWeight amp/vg 2
createNetGroup group11
specifyNetWeight amp/vq 16
createNetGroup group12
specifyNetWeight amp/vx 15
createNetGroup group13
specifyNetWeight VNW 20
createNetGroup group14
specifyNetWeight VDDPST 5
createNetGroup group15
specifyNetWeight POC 3
createNetGroup group16
specifyNetWeight VDDCE 14
createNetGroup group17
specifyNetWeight VDDPE 11
createNetGroup group18
specifyNetWeight VPW 8
createNetGroup group19
specifyNetWeight VSSPST 15
createNetGroup group20
specifyNetWeight VSSE 2
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 9
createNetGroup group22
specifyNetWeight BGR_Core/l6 14
createNetGroup group23
specifyNetWeight BGR_Core/l7 17
createNetGroup group24
specifyNetWeight BGR_Core/l8 17
createNetGroup group25
specifyNetWeight BGR_Core/l10 15
createNetGroup group26
specifyNetWeight BGR_Core/l11 14
createNetGroup group27
specifyNetWeight BGR_Core/l1 14
createNetGroup group28
specifyNetWeight BGR_Core/l2 3
createNetGroup group29
specifyNetWeight BGR_Core/l4 11
createNetGroup group30
specifyNetWeight BGR_Core/l5 7
createNetGroup group31
specifyNetWeight BGR_Core/l12 7
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 12
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 5
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 18
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 16
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 7
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 20
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 14
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 9
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 6
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 10
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 2
createNetGroup group43
specifyNetWeight R17/l 16
createNetGroup group44
specifyNetWeight R18/l 12
createNetGroup group45
specifyNetWeight R19/l 17
createNetGroup group46
specifyNetWeight R20/l 13
createNetGroup group47
specifyNetWeight VDD 18
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_000.def
createNetGroup group0
specifyNetWeight porst 17
createNetGroup group1
specifyNetWeight va 19
createNetGroup group2
specifyNetWeight vb 19
createNetGroup group3
specifyNetWeight vbg 9
createNetGroup group4
specifyNetWeight VSS 13
createNetGroup group5
specifyNetWeight vc 15
createNetGroup group6
specifyNetWeight l17 9
createNetGroup group7
specifyNetWeight l18 8
createNetGroup group8
specifyNetWeight l19 5
createNetGroup group9
specifyNetWeight l20 12
createNetGroup group10
specifyNetWeight amp/vg 7
createNetGroup group11
specifyNetWeight amp/vq 11
createNetGroup group12
specifyNetWeight amp/vx 5
createNetGroup group13
specifyNetWeight VNW 16
createNetGroup group14
specifyNetWeight VDDPST 16
createNetGroup group15
specifyNetWeight POC 8
createNetGroup group16
specifyNetWeight VDDCE 17
createNetGroup group17
specifyNetWeight VDDPE 10
createNetGroup group18
specifyNetWeight VPW 17
createNetGroup group19
specifyNetWeight VSSPST 8
createNetGroup group20
specifyNetWeight VSSE 16
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 7
createNetGroup group22
specifyNetWeight BGR_Core/l6 8
createNetGroup group23
specifyNetWeight BGR_Core/l7 20
createNetGroup group24
specifyNetWeight BGR_Core/l8 14
createNetGroup group25
specifyNetWeight BGR_Core/l10 13
createNetGroup group26
specifyNetWeight BGR_Core/l11 15
createNetGroup group27
specifyNetWeight BGR_Core/l1 10
createNetGroup group28
specifyNetWeight BGR_Core/l2 14
createNetGroup group29
specifyNetWeight BGR_Core/l4 7
createNetGroup group30
specifyNetWeight BGR_Core/l5 6
createNetGroup group31
specifyNetWeight BGR_Core/l12 19
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 17
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 5
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 9
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 13
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 20
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 10
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 2
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 11
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 16
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 8
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 14
createNetGroup group43
specifyNetWeight R17/l 9
createNetGroup group44
specifyNetWeight R18/l 11
createNetGroup group45
specifyNetWeight R19/l 20
createNetGroup group46
specifyNetWeight R20/l 12
createNetGroup group47
specifyNetWeight VDD 2
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
