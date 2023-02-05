## PARAMETERS ##
set design_name "bgr_top"
set ::env(base_dir) "/home/users/lyt1314/SUMMER/dapnr/interface"
set ::env(min_netweight) 0
set ::env(max_netweight) 30
set ::env(pop_size) 30
set ::env(gen) 0
set ::env(num_of_net) 40
set ::env(mutate_prob) 0.3
set ::env(alpha) 0.95
set ::env(correlation_distance) 1000
set ::env(ngen) 10
#----------------------------------------------------------
source scripts/interface.tcl
source scripts/ini.tcl
source scripts/tech.tcl
source scripts/ndr.tcl
################### MAIN BEGIN HERE ########################
python scripts/initial_genes.py ;# random initial genes
while {$env(gen)<$env(ngen)} {
    puts "**************************************"
    puts "current generation is --> $env(gen)"
    puts "**************************************"
    set fitness [population_pnr $env(base_dir) $env(gen) $design_name $env(pop_size)] ;# fitness (objective function) 
    python scripts/ga.py ;# genes evolve 
    incr env(gen)
}
set last_best [tcl::mathfunc::max {*}$fitness]
puts "best fitness of the last genes is: $last_best"
python scripts/last_best.py
exit
################# MAIN END HERE ############################
