#! /usr/bin/env python
#=========================================================================
# construct.py
#=========================================================================
# Demo with 16-bit GcdUnit
#
# Author      : Priyanka Raina
# Date        : December 4, 2020
# Modified by : Allen Pan
# Date        : March 15, 2022
from email.policy import default
import os
import sys
from mflowgen.components import Graph, Step
def construct():
  g = Graph()
  g.sys_path.append('/home/users/lyt1314/Courses/ee372/aloe-sky130')
  #-----------------------------------------------------------------------
  # Parameters
  #-----------------------------------------------------------------------
  adk_name = 'skywater-130nm-analog-adk'
  adk_view = 'view-standard'
  parameters = {
    'construct_path' : __file__,
    'design_name'    : 'bgr_top',
    'clock_period'   : 10.0,
    'adk'            : adk_name,
    'adk_view'       : adk_view,
    'topographical'  : True,
    # 'dut_name'       : 'GcdUnit_inst'
  }
  #-----------------------------------------------------------------------
  # Create nodes
  #-----------------------------------------------------------------------
  this_dir = os.path.dirname( os.path.abspath( __file__ ) )
  # ADK step
  g.set_adk( adk_name )
  adk = g.get_adk_step()
  # Custom steps
  dummy_dc        = Step( this_dir + '/dummy_dc'                        )
  rtl             = Step( this_dir + '/rtl'                             )
  init            = Step( this_dir + '/cadence-innovus-init'            )
  pnr           = Step( this_dir + '/aloe-PnR'           )
  magic_drc       = Step( this_dir + '/open-magic-drc'                  )
  magic_def2spice = Step( this_dir + '/open-magic-def2spice'            )
  magic_gds2spice = Step( this_dir + '/open-magic-gds2spice'            )
  netgen_lvs_gds  = Step( this_dir + '/netgen-lvs-gds'                  )
  netgen_lvs_gds_device = Step( this_dir + '/netgen-lvs-gds-device'     )
  netgen_lvs_def  = Step( this_dir + '/netgen-lvs-def'                  )
  magic_antenna   = Step( this_dir + '/open-magic-antenna'              )
  calibre_lvs     = Step( this_dir + '/mentor-calibre-comparison'       )
  pointer         = Step( this_dir + '/pointer')
  post_sim        = Step( this_dir + '/post-sim')
  info            = Step( 'info',                          default=True )
  iflow           = Step( 'cadence-innovus-flowsetup',     default=True )
  gdsmerge        = Step( 'mentor-calibre-gdsmerge',       default=True )
  #-----------------------------------------------------------------------
  # Graph -- Add nodes
  #-----------------------------------------------------------------------
  g.add_step( info            )
  g.add_step( dummy_dc        )
  g.add_step( rtl             )
  # g.add_step( constraints     )
  # g.add_step( dc              )
  g.add_step( iflow           )
  g.add_step( init            )
  # g.add_step( power           )
  g.add_step( pnr           )
  # g.add_step( route           )
  # g.add_step( postroute       )
  # g.add_step( signoff         )
  g.add_step( gdsmerge        )
  # g.add_step( pt_timing       )
  # g.add_step( pt_power_rtl    )
  # g.add_step( pt_power_gl     )
  g.add_step( magic_drc       )
  g.add_step( magic_antenna   )
  g.add_step( magic_def2spice )
  g.add_step( netgen_lvs_def  )
  g.add_step( magic_gds2spice )
  g.add_step( netgen_lvs_gds  )
  g.add_step( netgen_lvs_gds_device  )
  g.add_step( calibre_lvs     )
  # g.add_step( macro)
  g.add_step( pointer)
  g.add_step( post_sim)
  #g.add_step( klayout)
  #g.add_step( klayout_drc_gds )
  #-----------------------------------------------------------------------
  # Graph -- Add edges
  #-----------------------------------------------------------------------
  # Connect by name
  g.connect_by_name( adk,             iflow           )
  g.connect_by_name( adk,             init            )
  g.connect_by_name( adk,             pnr           )
  g.connect_by_name(adk,              pointer         )
  g.connect_by_name( adk,             gdsmerge        )
  g.connect_by_name( adk,             magic_drc       )
  g.connect_by_name( adk,             magic_antenna   )
  g.connect_by_name( adk,             magic_def2spice )
  g.connect_by_name( adk,             magic_gds2spice )
  g.connect_by_name( adk,             netgen_lvs_def  )
  g.connect_by_name( adk,             netgen_lvs_gds  )
  g.connect_by_name( adk,             netgen_lvs_gds_device  )
  g.connect_by_name( adk,             calibre_lvs     )
  g.connect_by_name( rtl,             dummy_dc        )
  g.connect_by_name( dummy_dc,          iflow           )
  g.connect_by_name( dummy_dc,          init            )
  g.connect_by_name( dummy_dc,          pnr           )
  g.connect_by_name( iflow,           init            )
  g.connect_by_name( iflow,           pnr               )
  g.connect_by_name( iflow,           pointer           )
  g.connect_by_name( init,            pnr               )
  g.connect_by_name(  pointer,        gdsmerge        )
  g.connect_by_name( gdsmerge,        magic_drc       )
  g.connect_by_name( gdsmerge,        magic_antenna   )
  g.connect_by_name( pointer,         magic_def2spice)
  g.connect_by_name( pointer,         netgen_lvs_def )
  g.connect_by_name( magic_def2spice, netgen_lvs_def  )
  g.connect_by_name( gdsmerge,        magic_gds2spice )
  g.connect_by_name( pointer,         netgen_lvs_gds  )
  g.connect_by_name( pointer,         netgen_lvs_gds_device)
  g.connect_by_name( magic_gds2spice, netgen_lvs_gds  )
  g.connect_by_name( magic_gds2spice, netgen_lvs_gds_device  )
  # LVS comparision using Calibre
  g.connect_by_name( pointer,         calibre_lvs     )
  g.connect_by_name( magic_gds2spice, calibre_lvs     )
  g.connect_by_name( adk,             post_sim        )
  #-----------------------------------------------------------------------
  # Parameterize
  #-----------------------------------------------------------------------
  g.update_params( parameters )
  return g
if __name__ == '__main__':
  g = construct()
  g.plot()
