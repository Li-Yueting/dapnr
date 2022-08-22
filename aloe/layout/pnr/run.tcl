loadFPlan aloe/layout/input/bgr_top.fp
defIn /home/users/lyt1314/SUMMER/dapnr/aloe/layout/engine/def_hof/BGR_V1_00.def
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
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
cal_nl -n 1 -l 2 -d /home/users/lyt1314/SUMMER/dapnr/aloe/layout/engine/expr_hof/ -b BGR_V1_
