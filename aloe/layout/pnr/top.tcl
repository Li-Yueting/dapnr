########## Input Setting Begin ############
set ngen 3
set pop_size 5
set nout 2
global stemcells_gds stemcells_lef stemcells_tlef

set ::env(layout_dir) [pwd]/aloe/layout
set stemcells_gds $env(layout_dir)/input/stdcells.gds
set stemcells_lef $env(layout_dir)/input/stdcells.lef
set stemcells_tlef $env(layout_dir)/input/rtk-tech.lef
set stemcells_map $env(layout_dir)/input/rtk-stream-out.map
set netlist $env(layout_dir)/input/bgr_top.v
########## Input Setting End ###########
set time_start_all [clock seconds]
setDistributeHost -local
set plot true
set ::env(pnr_dir) [pwd]/aloe/layout/pnr
set ::env(gen) 0
set ::env(tcllib) aloe/layout/tcllib
set ::env(lef_dir) aloe/layout/output/lef_final
set ::env(gds_dir) aloe/layout/output/gds_final
set ::env(lvs_dir) aloe/layout/output/lvs_final
set ::env(def_dir) aloe/layout/output/def_final
source $env(tcllib)/cal_nl.tcl
source $env(tcllib)/areaRatio.tcl
source $env(tcllib)/swap_cells.tcl
source $env(tcllib)/pnr.tcl
source $env(tcllib)/save_lvs_netlist.tcl
source $env(pnr_dir)/suppr_msg.tcl
python -m aloe.layout.pylib.write_tech
python -m aloe.layout.pylib.write_pins

# Create initial population: lucy (generate the net weights for the first generation, write file to cstr_old)
python -m aloe.layout.pylib.create_lucy -type_cstr_out old
source $env(pnr_dir)/ini.tcl

# Do pnr for lucy. (write file to engine/def_hof and engine/expr_hof)
pnr -g lucy -gennum 0 -n $pop_size -pnr_dir $env(pnr_dir) -t
pnr -g old -gennum 0 -n $pop_size -pnr_dir $env(pnr_dir) -t

# examine, calculate performance (objectives)
python -m aloe.layout.pylib.examine -gen $env(gen) -type_cstr_in old -type_pop_out old
# save cstr file (net weight), perf file
python -m aloe.layout.pnr.save -gen $env(gen) -type_pop_out old

while {$env(gen)<$ngen} {
  incr env(gen)
  puts "                           "
  puts "                           "
  puts "==========================="
  puts " Current generation is: $env(gen) " 
  puts "---------------------------"
  puts "                           "
  puts "                           "
  python -m aloe.layout.pylib.evolve -gen $env(gen) -type_pop_in old -type_cstr_out new
  pnr -g new -gennum $env(gen) -n $pop_size -pnr_dir $env(pnr_dir) -t
  python -m aloe.layout.pylib.examine -gen $env(gen) -type_cstr_in new -type_pop_out new
  python -m aloe.layout.pylib.choose -gen $env(gen) -type_pop_in both -type_pop_out old
  python -m aloe.layout.pnr.save -gen $env(gen) -type_pop_out old
  write_lef_abstract -5.8 -extractBlockObs $env(lef_dir)/bgr-gen-$env(gen).lef
  streamOut $env(gds_dir)/bgr-gen-$env(gen)-merged.gds -units 1000 -mapFile $stemcells_map -merge $stemcells_gds
}

# Calculate total time spent. This is the pnr time for ngen-1
set time_taken_all [expr [clock seconds] - $time_start_all]
puts [join [concat "Running $ngen generations with $pop_size layouts per generation took " $time_taken_all " seconds." ] " "]
set filePtr [open [file join $env(pnr_dir) "time_pnr.txt"] "w"]
puts $filePtr "$time_taken_all"
close $filePtr

#python -m aloe.layout.pylib.dominators
python -m aloe.layout.pylib.uniquify -gen $env(gen) -type_pop_in old -type_pop_out final > $env(pnr_dir)/n_unique

set filePtr [open [file join $env(pnr_dir) "n_unique"] r]
set n_unique [string trimright [read $filePtr]]
close $filePtr

# Final generation are the unique individuals, and the out generation consists of 
# ip.nout individuals chosen by the group objective
python -m aloe.layout.pylib.choose -gen $env(gen) -type_pop_in final -type_pop_out out
python -m aloe.layout.pnr.save -gen $env(gen) -type_pop_out out

# TODO: move the output to new in the final generation
set time_start_strout [clock seconds]
pnr -g out -gennum $env(gen) -n [expr min($n_unique, $nout)] -pnr_dir $env(pnr_dir) -t
set time_taken_strout [expr [clock seconds] - $time_start_strout]
set filePtr [open [file join $env(pnr_dir) "time_strout_pnr.txt"] "w"]
puts $filePtr "$time_taken_strout"
close $filePtr

# # Unset all variables
unset ngen
unset ::env(gen)
unset plot
unset pop_size
unset nout
unset ::env(pnr_dir)
unset ::env(tcllib)
unset time_taken_all
unset time_taken_strout
