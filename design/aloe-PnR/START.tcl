#=========================================================================
# START.tcl
#=========================================================================
# Runs the scripts for this step.
#
# This script does the following:
#
# 1. Setup   -- Restore from an Innovus checkpoint and set up variables
# 2. Execute -- Execute scripts from "scripts" or "inputs" dir
# 3. Cleanup -- Save a new Innovus checkpoint and clean up
#
# The order of the scripts can specified from an mflowgen parameter. This
# creates a highly flexible node where you can rearrange the internal
# scripts or add new scripts. For example, with a default order of:
#
#     order = step1.tcl step2.tcl step3.tcl
#
# After adding a new input called "new.tcl", you can re-parameterize as:
#
#     order = step1.tcl new.tcl step2.tcl step3.tcl
#
# and the scripts will execute in that order.
#
# Author : Christopher Torng
# Date   : January 14, 2020

#-------------------------------------------------------------------------
# Setup
#-------------------------------------------------------------------------
# Restore from checkpoint and set up variables

source innovus-foundation-flow/custom-scripts/restore-design.tcl
source innovus-foundation-flow/custom-scripts/setup-session.tcl

#-------------------------------------------------------------------------
# Execute
#-------------------------------------------------------------------------

# Order is a comma-separated string containing scripts to run

set order [split $::env(order) ","]

# # Run the scripts in order (inputs take priority)
# foreach tcl $order {
#   # Try to find the script in the "inputs" directory first
#   if {[ file exists inputs/$tcl ]} {
#     puts "\n  > Info: Sourcing \"inputs/$tcl\"\n"
#     source -verbose inputs/$tcl
#   # Try to find the script in the "scripts" directory
#   } elseif {[ file exists scripts/$tcl ]} {
#     puts "\n  > Info: Sourcing \"scripts/$tcl\"\n"
#     source -verbose scripts/$tcl
#     if { $tcl == "interface.tcl"} {
#       puts "*****************"
#       interface "/home/users/lyt1314/ee372/aloe-sky130/bgr_top/interface/gen-0-id-0/layoutSum.txt"
#     }
#   # Failed to find the script anywhere...
#   } else {
#     echo "Warn: Did not find $tcl"
#     exit 1
#   }
# }

# puts "I am working on $env(DIR)"
# set dir $env(DIR)

set dirs [glob -directory ../../interface -type d *]
set design_name "amplifier_self_bias"
# puts $dirs 

# source -verbose [file join $dir "netweight.tcl"]
# source -verbose scripts/pnr.tcl
# source -verbose scripts/interface.tcl
# interface $dir $design_name
# source -verbose scripts/reporting.tcl


foreach dir $dirs {
  source -verbose [file join $dir "netweight.tcl"]
  source -verbose scripts/pnr.tcl
  source -verbose scripts/interface.tcl
  interface $dir $design_name
  source -verbose scripts/reporting.tcl
}
#-------------------------------------------------------------------------
# Clean up
#-------------------------------------------------------------------------
# Save a new checkpoint and clean up

source innovus-foundation-flow/custom-scripts/save-design.tcl

exit


