#=========================================================================
# Makefile
#=========================================================================
# Generator : /home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/backends/make_backend.py

SHELL=/usr/bin/env bash -euo pipefail

# $1 -- $dst
# $2 -- $src
# $3 -- $stamp

define cpdir
	rm -rf ./$1
	cp -aL $2 $1 || true
	chmod -R +w $1
	touch $3
endef

# $1 -- $dst
# $2 -- $src
# $3 -- $stamp

define cpdir-and-parameterize
	rm -rf ./$1
	cp -aL $2 $1 || true
	chmod -R +w $1
	cp .mflowgen/$1/configure.yml $1
	touch $3
endef

# $1 -- $dst
# $2 -- $src
# $3 -- $stamp

define mkdir-and-symlink
	rm -rf ./$1
	mkdir -p $1
	cd $1 && ln -sf ../$2/* . && cd ..
	rm $1/configure.yml && cp .mflowgen/$1/configure.yml $1
	touch $3
endef

# $1 -- $dst_dir
# $2 -- $dst
# $3 -- $src
# $4 -- $stamp

define symlink
	mkdir -p $1
	cd $1 && ln -sf $3 $2 && touch $4
endef

# $1 -- $stamp

define stamp
	touch $1
endef

# Default

default: analog-skywater-130nm info rtl dummy_dc post-sim cadence-innovus-flowsetup cadence-innovus-init pointer aloe-PnR mentor-calibre-gdsmerge open-magic-def2spice netgen-lvs-def open-magic-antenna open-magic-drc open-magic-gds2spice mentor-calibre-comparison netgen-lvs-gds netgen-lvs-gds-device

# ------------------------------------------------------------------------
# analog-skywater-130nm
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 0-analog-skywater-130nm/.prebuilt)","")
0-analog-skywater-130nm/.stamp:
	$(call cpdir-and-parameterize,0-analog-skywater-130nm,skywater-130nm-analog-adk,0-analog-skywater-130nm/.stamp)
endif

# collect inputs

# execute

ifeq ("$(wildcard 0-analog-skywater-130nm/.prebuilt)","")

define 0_analog_skywater_130nm_commands_rule
	mkdir -p 0-analog-skywater-130nm/outputs && set -o pipefail && /home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t analog-skywater-130nm && chmod +x .mflowgen/0-analog-skywater-130nm/mflowgen-run && cp -f .mflowgen/0-analog-skywater-130nm/mflowgen-run 0-analog-skywater-130nm && if [[ -e .mflowgen/0-analog-skywater-130nm/mflowgen-debug ]]; then chmod +x .mflowgen/0-analog-skywater-130nm/mflowgen-debug && cp -f .mflowgen/0-analog-skywater-130nm/mflowgen-debug 0-analog-skywater-130nm; fi && if [[ -e .mflowgen/0-analog-skywater-130nm/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/0-analog-skywater-130nm/mflowgen-check-preconditions.py && cp -f .mflowgen/0-analog-skywater-130nm/mflowgen-check-preconditions.py 0-analog-skywater-130nm; fi && if [[ -e .mflowgen/0-analog-skywater-130nm/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/0-analog-skywater-130nm/mflowgen-check-postconditions.py && cp -f .mflowgen/0-analog-skywater-130nm/mflowgen-check-postconditions.py 0-analog-skywater-130nm; fi && cd 0-analog-skywater-130nm && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 0-analog-skywater-130nm/outputs/*
endef

0-analog-skywater-130nm/.execstamp: 0-analog-skywater-130nm/.stamp
	$(call 0_analog_skywater_130nm_commands_rule)
	touch $@

0-analog-skywater-130nm/outputs/.execstamp.adk: 0-analog-skywater-130nm/.execstamp
	touch $@

endif

# collect outputs

0-analog-skywater-130nm/outputs/.stamp.adk: 0-analog-skywater-130nm/.execstamp 0-analog-skywater-130nm/outputs/.execstamp.adk
	$(call stamp,0-analog-skywater-130nm/outputs/.stamp.adk)

# post-conditions

define 0_analog_skywater_130nm_post_conditions_commands_rule
	cd 0-analog-skywater-130nm && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

0-analog-skywater-130nm/.postconditions.stamp: 0-analog-skywater-130nm/.execstamp 0-analog-skywater-130nm/outputs/.execstamp.adk 0-analog-skywater-130nm/outputs/.stamp.adk
	$(call 0_analog_skywater_130nm_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: analog-skywater-130nm

analog-skywater-130nm: 0-analog-skywater-130nm/.execstamp 0-analog-skywater-130nm/.postconditions.stamp 0-analog-skywater-130nm/outputs/.execstamp.adk 0-analog-skywater-130nm/outputs/.stamp.adk

.PHONY: 0

0: 0-analog-skywater-130nm/.execstamp 0-analog-skywater-130nm/.postconditions.stamp 0-analog-skywater-130nm/outputs/.execstamp.adk 0-analog-skywater-130nm/outputs/.stamp.adk

# debug

# ------------------------------------------------------------------------
# info
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 1-info/.prebuilt)","")
1-info/.stamp:
	$(call cpdir-and-parameterize,1-info,../../Courses/ee372/aloe-sky130/mflowgen/steps/info,1-info/.stamp)
endif

# collect inputs

# execute

ifeq ("$(wildcard 1-info/.prebuilt)","")

define 1_info_commands_rule
	mkdir -p 1-info/outputs && set -o pipefail && /home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t info && chmod +x .mflowgen/1-info/mflowgen-run && cp -f .mflowgen/1-info/mflowgen-run 1-info && if [[ -e .mflowgen/1-info/mflowgen-debug ]]; then chmod +x .mflowgen/1-info/mflowgen-debug && cp -f .mflowgen/1-info/mflowgen-debug 1-info; fi && if [[ -e .mflowgen/1-info/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/1-info/mflowgen-check-preconditions.py && cp -f .mflowgen/1-info/mflowgen-check-preconditions.py 1-info; fi && if [[ -e .mflowgen/1-info/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/1-info/mflowgen-check-postconditions.py && cp -f .mflowgen/1-info/mflowgen-check-postconditions.py 1-info; fi && cd 1-info && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 1-info/outputs/*
endef

1-info/.execstamp: 1-info/.stamp
	$(call 1_info_commands_rule)

1-info/.execstamp.execute-phony: 1-info/.execstamp
	touch $@

endif

# collect outputs

# post-conditions

define 1_info_post_conditions_commands_rule
	cd 1-info && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

1-info/.postconditions.stamp: 1-info/.execstamp 1-info/.execstamp.execute-phony
	$(call 1_info_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: info

info: 1-info/.execstamp 1-info/.execstamp.execute-phony 1-info/.postconditions.stamp

.PHONY: 1

1: 1-info/.execstamp 1-info/.execstamp.execute-phony 1-info/.postconditions.stamp

# debug

# ------------------------------------------------------------------------
# rtl
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 2-rtl/.prebuilt)","")
2-rtl/.stamp:
	$(call cpdir-and-parameterize,2-rtl,design/rtl,2-rtl/.stamp)
endif

# collect inputs

# execute

ifeq ("$(wildcard 2-rtl/.prebuilt)","")

define 2_rtl_commands_rule
	mkdir -p 2-rtl/outputs && set -o pipefail && /home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t rtl && chmod +x .mflowgen/2-rtl/mflowgen-run && cp -f .mflowgen/2-rtl/mflowgen-run 2-rtl && if [[ -e .mflowgen/2-rtl/mflowgen-debug ]]; then chmod +x .mflowgen/2-rtl/mflowgen-debug && cp -f .mflowgen/2-rtl/mflowgen-debug 2-rtl; fi && if [[ -e .mflowgen/2-rtl/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/2-rtl/mflowgen-check-preconditions.py && cp -f .mflowgen/2-rtl/mflowgen-check-preconditions.py 2-rtl; fi && if [[ -e .mflowgen/2-rtl/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/2-rtl/mflowgen-check-postconditions.py && cp -f .mflowgen/2-rtl/mflowgen-check-postconditions.py 2-rtl; fi && cd 2-rtl && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 2-rtl/outputs/*
endef

2-rtl/.execstamp: 2-rtl/.stamp
	$(call 2_rtl_commands_rule)
	touch $@

2-rtl/outputs/.execstamp.design_rtl.v: 2-rtl/.execstamp
	touch $@

endif

# collect outputs

2-rtl/outputs/.stamp.design_rtl.v: 2-rtl/.execstamp 2-rtl/outputs/.execstamp.design_rtl.v
	$(call stamp,2-rtl/outputs/.stamp.design_rtl.v)

# post-conditions

define 2_rtl_post_conditions_commands_rule
	cd 2-rtl && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

2-rtl/.postconditions.stamp: 2-rtl/.execstamp 2-rtl/outputs/.execstamp.design_rtl.v 2-rtl/outputs/.stamp.design_rtl.v
	$(call 2_rtl_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: rtl

rtl: 2-rtl/.execstamp 2-rtl/.postconditions.stamp 2-rtl/outputs/.execstamp.design_rtl.v 2-rtl/outputs/.stamp.design_rtl.v

.PHONY: 2

2: 2-rtl/.execstamp 2-rtl/.postconditions.stamp 2-rtl/outputs/.execstamp.design_rtl.v 2-rtl/outputs/.stamp.design_rtl.v

# debug

# ------------------------------------------------------------------------
# dummy_dc
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 3-dummy_dc/.prebuilt)","")
3-dummy_dc/.stamp: 2-rtl/.execstamp 2-rtl/.postconditions.stamp 2-rtl/outputs/.execstamp.design_rtl.v 2-rtl/outputs/.stamp.design_rtl.v
3-dummy_dc/.stamp:
	$(call cpdir-and-parameterize,3-dummy_dc,design/dummy_dc,3-dummy_dc/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 3-dummy_dc/.prebuilt)","")
3-dummy_dc/inputs/.stamp.design_rtl.v: 3-dummy_dc/.stamp 2-rtl/outputs/.stamp.design_rtl.v
	$(call symlink,3-dummy_dc/inputs,design_rtl.v,../../2-rtl/outputs/design_rtl.v,.stamp.design_rtl.v)
endif

# execute

ifeq ("$(wildcard 3-dummy_dc/.prebuilt)","")

define 3_dummy_dc_commands_rule
	mkdir -p 3-dummy_dc/outputs && set -o pipefail && /home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t dummy_dc && chmod +x .mflowgen/3-dummy_dc/mflowgen-run && cp -f .mflowgen/3-dummy_dc/mflowgen-run 3-dummy_dc && if [[ -e .mflowgen/3-dummy_dc/mflowgen-debug ]]; then chmod +x .mflowgen/3-dummy_dc/mflowgen-debug && cp -f .mflowgen/3-dummy_dc/mflowgen-debug 3-dummy_dc; fi && if [[ -e .mflowgen/3-dummy_dc/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/3-dummy_dc/mflowgen-check-preconditions.py && cp -f .mflowgen/3-dummy_dc/mflowgen-check-preconditions.py 3-dummy_dc; fi && if [[ -e .mflowgen/3-dummy_dc/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/3-dummy_dc/mflowgen-check-postconditions.py && cp -f .mflowgen/3-dummy_dc/mflowgen-check-postconditions.py 3-dummy_dc; fi && cd 3-dummy_dc && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 3-dummy_dc/outputs/*
endef

3-dummy_dc/.execstamp: 3-dummy_dc/.stamp 3-dummy_dc/inputs/.stamp.design_rtl.v
	$(call 3_dummy_dc_commands_rule)
	touch $@

3-dummy_dc/outputs/.execstamp.design.sdc: 3-dummy_dc/.execstamp
	touch $@
3-dummy_dc/outputs/.execstamp.design.v: 3-dummy_dc/.execstamp
	touch $@

endif

# collect outputs

3-dummy_dc/outputs/.stamp.design.sdc: 3-dummy_dc/.execstamp 3-dummy_dc/outputs/.execstamp.design.sdc 3-dummy_dc/outputs/.execstamp.design.v
	$(call stamp,3-dummy_dc/outputs/.stamp.design.sdc)

3-dummy_dc/outputs/.stamp.design.v: 3-dummy_dc/.execstamp 3-dummy_dc/outputs/.execstamp.design.sdc 3-dummy_dc/outputs/.execstamp.design.v
	$(call stamp,3-dummy_dc/outputs/.stamp.design.v)

# post-conditions

define 3_dummy_dc_post_conditions_commands_rule
	cd 3-dummy_dc && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

3-dummy_dc/.postconditions.stamp: 3-dummy_dc/.execstamp 3-dummy_dc/outputs/.execstamp.design.sdc 3-dummy_dc/outputs/.execstamp.design.v 3-dummy_dc/outputs/.stamp.design.sdc 3-dummy_dc/outputs/.stamp.design.v
	$(call 3_dummy_dc_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: dummy_dc

dummy_dc: 3-dummy_dc/.execstamp 3-dummy_dc/.postconditions.stamp 3-dummy_dc/outputs/.execstamp.design.sdc 3-dummy_dc/outputs/.execstamp.design.v 3-dummy_dc/outputs/.stamp.design.sdc 3-dummy_dc/outputs/.stamp.design.v

.PHONY: 3

3: 3-dummy_dc/.execstamp 3-dummy_dc/.postconditions.stamp 3-dummy_dc/outputs/.execstamp.design.sdc 3-dummy_dc/outputs/.execstamp.design.v 3-dummy_dc/outputs/.stamp.design.sdc 3-dummy_dc/outputs/.stamp.design.v

# debug

# ------------------------------------------------------------------------
# post-sim
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 4-post-sim/.prebuilt)","")
4-post-sim/.stamp: 0-analog-skywater-130nm/.execstamp 0-analog-skywater-130nm/.postconditions.stamp 0-analog-skywater-130nm/outputs/.execstamp.adk 0-analog-skywater-130nm/outputs/.stamp.adk
4-post-sim/.stamp:
	$(call cpdir-and-parameterize,4-post-sim,design/post-sim,4-post-sim/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 4-post-sim/.prebuilt)","")
4-post-sim/inputs/.stamp.adk: 4-post-sim/.stamp 0-analog-skywater-130nm/outputs/.stamp.adk
	$(call symlink,4-post-sim/inputs,adk,../../0-analog-skywater-130nm/outputs/adk,.stamp.adk)
endif

# execute

ifeq ("$(wildcard 4-post-sim/.prebuilt)","")

define 4_post_sim_commands_rule
	mkdir -p 4-post-sim/outputs && set -o pipefail && /home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t post-sim && chmod +x .mflowgen/4-post-sim/mflowgen-run && cp -f .mflowgen/4-post-sim/mflowgen-run 4-post-sim && if [[ -e .mflowgen/4-post-sim/mflowgen-debug ]]; then chmod +x .mflowgen/4-post-sim/mflowgen-debug && cp -f .mflowgen/4-post-sim/mflowgen-debug 4-post-sim; fi && if [[ -e .mflowgen/4-post-sim/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/4-post-sim/mflowgen-check-preconditions.py && cp -f .mflowgen/4-post-sim/mflowgen-check-preconditions.py 4-post-sim; fi && if [[ -e .mflowgen/4-post-sim/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/4-post-sim/mflowgen-check-postconditions.py && cp -f .mflowgen/4-post-sim/mflowgen-check-postconditions.py 4-post-sim; fi && cd 4-post-sim && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 4-post-sim/outputs/*
endef

4-post-sim/.execstamp: 4-post-sim/.stamp 4-post-sim/inputs/.stamp.adk
	$(call 4_post_sim_commands_rule)
	touch $@

4-post-sim/outputs/.execstamp.design_extracted_parasitic.spice: 4-post-sim/.execstamp
	touch $@

endif

# collect outputs

4-post-sim/outputs/.stamp.design_extracted_parasitic.spice: 4-post-sim/.execstamp 4-post-sim/outputs/.execstamp.design_extracted_parasitic.spice
	$(call stamp,4-post-sim/outputs/.stamp.design_extracted_parasitic.spice)

# post-conditions

define 4_post_sim_post_conditions_commands_rule
	cd 4-post-sim && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

4-post-sim/.postconditions.stamp: 4-post-sim/.execstamp 4-post-sim/outputs/.execstamp.design_extracted_parasitic.spice 4-post-sim/outputs/.stamp.design_extracted_parasitic.spice
	$(call 4_post_sim_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: post-sim

post-sim: 4-post-sim/.execstamp 4-post-sim/.postconditions.stamp 4-post-sim/outputs/.execstamp.design_extracted_parasitic.spice 4-post-sim/outputs/.stamp.design_extracted_parasitic.spice

.PHONY: 4

4: 4-post-sim/.execstamp 4-post-sim/.postconditions.stamp 4-post-sim/outputs/.execstamp.design_extracted_parasitic.spice 4-post-sim/outputs/.stamp.design_extracted_parasitic.spice

# debug

# ------------------------------------------------------------------------
# cadence-innovus-flowsetup
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 5-cadence-innovus-flowsetup/.prebuilt)","")
5-cadence-innovus-flowsetup/.stamp: 0-analog-skywater-130nm/.execstamp 0-analog-skywater-130nm/.postconditions.stamp 0-analog-skywater-130nm/outputs/.execstamp.adk 0-analog-skywater-130nm/outputs/.stamp.adk
5-cadence-innovus-flowsetup/.stamp: 3-dummy_dc/.execstamp 3-dummy_dc/.postconditions.stamp 3-dummy_dc/outputs/.execstamp.design.sdc 3-dummy_dc/outputs/.execstamp.design.v 3-dummy_dc/outputs/.stamp.design.sdc 3-dummy_dc/outputs/.stamp.design.v
5-cadence-innovus-flowsetup/.stamp:
	$(call cpdir-and-parameterize,5-cadence-innovus-flowsetup,../../Courses/ee372/aloe-sky130/mflowgen/steps/cadence-innovus-flowsetup,5-cadence-innovus-flowsetup/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 5-cadence-innovus-flowsetup/.prebuilt)","")
5-cadence-innovus-flowsetup/inputs/.stamp.adk: 5-cadence-innovus-flowsetup/.stamp 0-analog-skywater-130nm/outputs/.stamp.adk
	$(call symlink,5-cadence-innovus-flowsetup/inputs,adk,../../0-analog-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 5-cadence-innovus-flowsetup/.prebuilt)","")
5-cadence-innovus-flowsetup/inputs/.stamp.design.sdc: 5-cadence-innovus-flowsetup/.stamp 3-dummy_dc/outputs/.stamp.design.sdc
	$(call symlink,5-cadence-innovus-flowsetup/inputs,design.sdc,../../3-dummy_dc/outputs/design.sdc,.stamp.design.sdc)
endif

ifeq ("$(wildcard 5-cadence-innovus-flowsetup/.prebuilt)","")
5-cadence-innovus-flowsetup/inputs/.stamp.design.v: 5-cadence-innovus-flowsetup/.stamp 3-dummy_dc/outputs/.stamp.design.v
	$(call symlink,5-cadence-innovus-flowsetup/inputs,design.v,../../3-dummy_dc/outputs/design.v,.stamp.design.v)
endif

# execute

ifeq ("$(wildcard 5-cadence-innovus-flowsetup/.prebuilt)","")

define 5_cadence_innovus_flowsetup_commands_rule
	mkdir -p 5-cadence-innovus-flowsetup/outputs && set -o pipefail && /home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-flowsetup && chmod +x .mflowgen/5-cadence-innovus-flowsetup/mflowgen-run && cp -f .mflowgen/5-cadence-innovus-flowsetup/mflowgen-run 5-cadence-innovus-flowsetup && if [[ -e .mflowgen/5-cadence-innovus-flowsetup/mflowgen-debug ]]; then chmod +x .mflowgen/5-cadence-innovus-flowsetup/mflowgen-debug && cp -f .mflowgen/5-cadence-innovus-flowsetup/mflowgen-debug 5-cadence-innovus-flowsetup; fi && if [[ -e .mflowgen/5-cadence-innovus-flowsetup/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/5-cadence-innovus-flowsetup/mflowgen-check-preconditions.py && cp -f .mflowgen/5-cadence-innovus-flowsetup/mflowgen-check-preconditions.py 5-cadence-innovus-flowsetup; fi && if [[ -e .mflowgen/5-cadence-innovus-flowsetup/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/5-cadence-innovus-flowsetup/mflowgen-check-postconditions.py && cp -f .mflowgen/5-cadence-innovus-flowsetup/mflowgen-check-postconditions.py 5-cadence-innovus-flowsetup; fi && cd 5-cadence-innovus-flowsetup && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 5-cadence-innovus-flowsetup/outputs/*
endef

5-cadence-innovus-flowsetup/.execstamp: 5-cadence-innovus-flowsetup/.stamp 5-cadence-innovus-flowsetup/inputs/.stamp.adk 5-cadence-innovus-flowsetup/inputs/.stamp.design.sdc 5-cadence-innovus-flowsetup/inputs/.stamp.design.v
	$(call 5_cadence_innovus_flowsetup_commands_rule)
	touch $@

5-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow: 5-cadence-innovus-flowsetup/.execstamp
	touch $@

endif

# collect outputs

5-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow: 5-cadence-innovus-flowsetup/.execstamp 5-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow
	$(call stamp,5-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow)

# post-conditions

define 5_cadence_innovus_flowsetup_post_conditions_commands_rule
	cd 5-cadence-innovus-flowsetup && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

5-cadence-innovus-flowsetup/.postconditions.stamp: 5-cadence-innovus-flowsetup/.execstamp 5-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 5-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
	$(call 5_cadence_innovus_flowsetup_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: cadence-innovus-flowsetup

cadence-innovus-flowsetup: 5-cadence-innovus-flowsetup/.execstamp 5-cadence-innovus-flowsetup/.postconditions.stamp 5-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 5-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow

.PHONY: 5

5: 5-cadence-innovus-flowsetup/.execstamp 5-cadence-innovus-flowsetup/.postconditions.stamp 5-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 5-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow

# debug

# ------------------------------------------------------------------------
# cadence-innovus-init
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 6-cadence-innovus-init/.prebuilt)","")
6-cadence-innovus-init/.stamp: 0-analog-skywater-130nm/.execstamp 0-analog-skywater-130nm/.postconditions.stamp 0-analog-skywater-130nm/outputs/.execstamp.adk 0-analog-skywater-130nm/outputs/.stamp.adk
6-cadence-innovus-init/.stamp: 3-dummy_dc/.execstamp 3-dummy_dc/.postconditions.stamp 3-dummy_dc/outputs/.execstamp.design.sdc 3-dummy_dc/outputs/.execstamp.design.v 3-dummy_dc/outputs/.stamp.design.sdc 3-dummy_dc/outputs/.stamp.design.v
6-cadence-innovus-init/.stamp: 5-cadence-innovus-flowsetup/.execstamp 5-cadence-innovus-flowsetup/.postconditions.stamp 5-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 5-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
6-cadence-innovus-init/.stamp:
	$(call cpdir-and-parameterize,6-cadence-innovus-init,design/cadence-innovus-init,6-cadence-innovus-init/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 6-cadence-innovus-init/.prebuilt)","")
6-cadence-innovus-init/inputs/.stamp.adk: 6-cadence-innovus-init/.stamp 0-analog-skywater-130nm/outputs/.stamp.adk
	$(call symlink,6-cadence-innovus-init/inputs,adk,../../0-analog-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 6-cadence-innovus-init/.prebuilt)","")
6-cadence-innovus-init/inputs/.stamp.design.sdc: 6-cadence-innovus-init/.stamp 3-dummy_dc/outputs/.stamp.design.sdc
	$(call symlink,6-cadence-innovus-init/inputs,design.sdc,../../3-dummy_dc/outputs/design.sdc,.stamp.design.sdc)
endif

ifeq ("$(wildcard 6-cadence-innovus-init/.prebuilt)","")
6-cadence-innovus-init/inputs/.stamp.design.v: 6-cadence-innovus-init/.stamp 3-dummy_dc/outputs/.stamp.design.v
	$(call symlink,6-cadence-innovus-init/inputs,design.v,../../3-dummy_dc/outputs/design.v,.stamp.design.v)
endif

ifeq ("$(wildcard 6-cadence-innovus-init/.prebuilt)","")
6-cadence-innovus-init/inputs/.stamp.innovus-foundation-flow: 6-cadence-innovus-init/.stamp 5-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
	$(call symlink,6-cadence-innovus-init/inputs,innovus-foundation-flow,../../5-cadence-innovus-flowsetup/outputs/innovus-foundation-flow,.stamp.innovus-foundation-flow)
endif

# execute

ifeq ("$(wildcard 6-cadence-innovus-init/.prebuilt)","")

define 6_cadence_innovus_init_commands_rule
	mkdir -p 6-cadence-innovus-init/outputs && set -o pipefail && /home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-init && chmod +x .mflowgen/6-cadence-innovus-init/mflowgen-run && cp -f .mflowgen/6-cadence-innovus-init/mflowgen-run 6-cadence-innovus-init && if [[ -e .mflowgen/6-cadence-innovus-init/mflowgen-debug ]]; then chmod +x .mflowgen/6-cadence-innovus-init/mflowgen-debug && cp -f .mflowgen/6-cadence-innovus-init/mflowgen-debug 6-cadence-innovus-init; fi && if [[ -e .mflowgen/6-cadence-innovus-init/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/6-cadence-innovus-init/mflowgen-check-preconditions.py && cp -f .mflowgen/6-cadence-innovus-init/mflowgen-check-preconditions.py 6-cadence-innovus-init; fi && if [[ -e .mflowgen/6-cadence-innovus-init/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/6-cadence-innovus-init/mflowgen-check-postconditions.py && cp -f .mflowgen/6-cadence-innovus-init/mflowgen-check-postconditions.py 6-cadence-innovus-init; fi && cd 6-cadence-innovus-init && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 6-cadence-innovus-init/outputs/*
endef

6-cadence-innovus-init/.execstamp: 6-cadence-innovus-init/.stamp 6-cadence-innovus-init/inputs/.stamp.adk 6-cadence-innovus-init/inputs/.stamp.design.sdc 6-cadence-innovus-init/inputs/.stamp.design.v 6-cadence-innovus-init/inputs/.stamp.innovus-foundation-flow
	$(call 6_cadence_innovus_init_commands_rule)
	touch $@

6-cadence-innovus-init/outputs/.execstamp.design.checkpoint: 6-cadence-innovus-init/.execstamp
	touch $@
6-cadence-innovus-init/outputs/.execstamp.design.fp: 6-cadence-innovus-init/.execstamp
	touch $@
6-cadence-innovus-init/outputs/.execstamp.design.fp.spr: 6-cadence-innovus-init/.execstamp
	touch $@
6-cadence-innovus-init/outputs/.execstamp.design.def: 6-cadence-innovus-init/.execstamp
	touch $@
6-cadence-innovus-init/outputs/.execstamp.design.v: 6-cadence-innovus-init/.execstamp
	touch $@

endif

# collect outputs

6-cadence-innovus-init/outputs/.stamp.design.checkpoint: 6-cadence-innovus-init/.execstamp 6-cadence-innovus-init/outputs/.execstamp.design.checkpoint 6-cadence-innovus-init/outputs/.execstamp.design.def 6-cadence-innovus-init/outputs/.execstamp.design.fp 6-cadence-innovus-init/outputs/.execstamp.design.fp.spr 6-cadence-innovus-init/outputs/.execstamp.design.v
	$(call stamp,6-cadence-innovus-init/outputs/.stamp.design.checkpoint)

6-cadence-innovus-init/outputs/.stamp.design.fp: 6-cadence-innovus-init/.execstamp 6-cadence-innovus-init/outputs/.execstamp.design.checkpoint 6-cadence-innovus-init/outputs/.execstamp.design.def 6-cadence-innovus-init/outputs/.execstamp.design.fp 6-cadence-innovus-init/outputs/.execstamp.design.fp.spr 6-cadence-innovus-init/outputs/.execstamp.design.v
	$(call stamp,6-cadence-innovus-init/outputs/.stamp.design.fp)

6-cadence-innovus-init/outputs/.stamp.design.fp.spr: 6-cadence-innovus-init/.execstamp 6-cadence-innovus-init/outputs/.execstamp.design.checkpoint 6-cadence-innovus-init/outputs/.execstamp.design.def 6-cadence-innovus-init/outputs/.execstamp.design.fp 6-cadence-innovus-init/outputs/.execstamp.design.fp.spr 6-cadence-innovus-init/outputs/.execstamp.design.v
	$(call stamp,6-cadence-innovus-init/outputs/.stamp.design.fp.spr)

6-cadence-innovus-init/outputs/.stamp.design.def: 6-cadence-innovus-init/.execstamp 6-cadence-innovus-init/outputs/.execstamp.design.checkpoint 6-cadence-innovus-init/outputs/.execstamp.design.def 6-cadence-innovus-init/outputs/.execstamp.design.fp 6-cadence-innovus-init/outputs/.execstamp.design.fp.spr 6-cadence-innovus-init/outputs/.execstamp.design.v
	$(call stamp,6-cadence-innovus-init/outputs/.stamp.design.def)

6-cadence-innovus-init/outputs/.stamp.design.v: 6-cadence-innovus-init/.execstamp 6-cadence-innovus-init/outputs/.execstamp.design.checkpoint 6-cadence-innovus-init/outputs/.execstamp.design.def 6-cadence-innovus-init/outputs/.execstamp.design.fp 6-cadence-innovus-init/outputs/.execstamp.design.fp.spr 6-cadence-innovus-init/outputs/.execstamp.design.v
	$(call stamp,6-cadence-innovus-init/outputs/.stamp.design.v)

# post-conditions

define 6_cadence_innovus_init_post_conditions_commands_rule
	cd 6-cadence-innovus-init && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

6-cadence-innovus-init/.postconditions.stamp: 6-cadence-innovus-init/.execstamp 6-cadence-innovus-init/outputs/.execstamp.design.checkpoint 6-cadence-innovus-init/outputs/.execstamp.design.def 6-cadence-innovus-init/outputs/.execstamp.design.fp 6-cadence-innovus-init/outputs/.execstamp.design.fp.spr 6-cadence-innovus-init/outputs/.execstamp.design.v 6-cadence-innovus-init/outputs/.stamp.design.checkpoint 6-cadence-innovus-init/outputs/.stamp.design.def 6-cadence-innovus-init/outputs/.stamp.design.fp 6-cadence-innovus-init/outputs/.stamp.design.fp.spr 6-cadence-innovus-init/outputs/.stamp.design.v
	$(call 6_cadence_innovus_init_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: cadence-innovus-init

cadence-innovus-init: 6-cadence-innovus-init/.execstamp 6-cadence-innovus-init/.postconditions.stamp 6-cadence-innovus-init/outputs/.execstamp.design.checkpoint 6-cadence-innovus-init/outputs/.execstamp.design.def 6-cadence-innovus-init/outputs/.execstamp.design.fp 6-cadence-innovus-init/outputs/.execstamp.design.fp.spr 6-cadence-innovus-init/outputs/.execstamp.design.v 6-cadence-innovus-init/outputs/.stamp.design.checkpoint 6-cadence-innovus-init/outputs/.stamp.design.def 6-cadence-innovus-init/outputs/.stamp.design.fp 6-cadence-innovus-init/outputs/.stamp.design.fp.spr 6-cadence-innovus-init/outputs/.stamp.design.v

.PHONY: 6

6: 6-cadence-innovus-init/.execstamp 6-cadence-innovus-init/.postconditions.stamp 6-cadence-innovus-init/outputs/.execstamp.design.checkpoint 6-cadence-innovus-init/outputs/.execstamp.design.def 6-cadence-innovus-init/outputs/.execstamp.design.fp 6-cadence-innovus-init/outputs/.execstamp.design.fp.spr 6-cadence-innovus-init/outputs/.execstamp.design.v 6-cadence-innovus-init/outputs/.stamp.design.checkpoint 6-cadence-innovus-init/outputs/.stamp.design.def 6-cadence-innovus-init/outputs/.stamp.design.fp 6-cadence-innovus-init/outputs/.stamp.design.fp.spr 6-cadence-innovus-init/outputs/.stamp.design.v

# debug

define 6_debug_rule
	cd 6-cadence-innovus-init && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-cadence-innovus-init: 
	$(call 6_debug_rule)

.PHONY: debug-6

debug-6: debug-cadence-innovus-init

# ------------------------------------------------------------------------
# pointer
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 7-pointer/.prebuilt)","")
7-pointer/.stamp: 0-analog-skywater-130nm/.execstamp 0-analog-skywater-130nm/.postconditions.stamp 0-analog-skywater-130nm/outputs/.execstamp.adk 0-analog-skywater-130nm/outputs/.stamp.adk
7-pointer/.stamp: 5-cadence-innovus-flowsetup/.execstamp 5-cadence-innovus-flowsetup/.postconditions.stamp 5-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 5-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
7-pointer/.stamp:
	$(call cpdir-and-parameterize,7-pointer,design/pointer,7-pointer/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 7-pointer/.prebuilt)","")
7-pointer/inputs/.stamp.adk: 7-pointer/.stamp 0-analog-skywater-130nm/outputs/.stamp.adk
	$(call symlink,7-pointer/inputs,adk,../../0-analog-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 7-pointer/.prebuilt)","")
7-pointer/inputs/.stamp.innovus-foundation-flow: 7-pointer/.stamp 5-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
	$(call symlink,7-pointer/inputs,innovus-foundation-flow,../../5-cadence-innovus-flowsetup/outputs/innovus-foundation-flow,.stamp.innovus-foundation-flow)
endif

# execute

ifeq ("$(wildcard 7-pointer/.prebuilt)","")

define 7_pointer_commands_rule
	mkdir -p 7-pointer/outputs && set -o pipefail && /home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t pointer && chmod +x .mflowgen/7-pointer/mflowgen-run && cp -f .mflowgen/7-pointer/mflowgen-run 7-pointer && if [[ -e .mflowgen/7-pointer/mflowgen-debug ]]; then chmod +x .mflowgen/7-pointer/mflowgen-debug && cp -f .mflowgen/7-pointer/mflowgen-debug 7-pointer; fi && if [[ -e .mflowgen/7-pointer/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/7-pointer/mflowgen-check-preconditions.py && cp -f .mflowgen/7-pointer/mflowgen-check-preconditions.py 7-pointer; fi && if [[ -e .mflowgen/7-pointer/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/7-pointer/mflowgen-check-postconditions.py && cp -f .mflowgen/7-pointer/mflowgen-check-postconditions.py 7-pointer; fi && cd 7-pointer && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 7-pointer/outputs/*
endef

7-pointer/.execstamp: 7-pointer/.stamp 7-pointer/inputs/.stamp.adk 7-pointer/inputs/.stamp.innovus-foundation-flow
	$(call 7_pointer_commands_rule)
	touch $@

7-pointer/outputs/.execstamp.design.checkpoint: 7-pointer/.execstamp
	touch $@
7-pointer/outputs/.execstamp.design_merged.gds: 7-pointer/.execstamp
	touch $@
7-pointer/outputs/.execstamp.design.gds.gz: 7-pointer/.execstamp
	touch $@
7-pointer/outputs/.execstamp.design.lvs.v: 7-pointer/.execstamp
	touch $@
7-pointer/outputs/.execstamp.design.lef: 7-pointer/.execstamp
	touch $@
7-pointer/outputs/.execstamp.design.def.gz: 7-pointer/.execstamp
	touch $@

endif

# collect outputs

7-pointer/outputs/.stamp.design.checkpoint: 7-pointer/.execstamp 7-pointer/outputs/.execstamp.design.checkpoint 7-pointer/outputs/.execstamp.design.def.gz 7-pointer/outputs/.execstamp.design.gds.gz 7-pointer/outputs/.execstamp.design.lef 7-pointer/outputs/.execstamp.design.lvs.v 7-pointer/outputs/.execstamp.design_merged.gds
	$(call stamp,7-pointer/outputs/.stamp.design.checkpoint)

7-pointer/outputs/.stamp.design_merged.gds: 7-pointer/.execstamp 7-pointer/outputs/.execstamp.design.checkpoint 7-pointer/outputs/.execstamp.design.def.gz 7-pointer/outputs/.execstamp.design.gds.gz 7-pointer/outputs/.execstamp.design.lef 7-pointer/outputs/.execstamp.design.lvs.v 7-pointer/outputs/.execstamp.design_merged.gds
	$(call stamp,7-pointer/outputs/.stamp.design_merged.gds)

7-pointer/outputs/.stamp.design.gds.gz: 7-pointer/.execstamp 7-pointer/outputs/.execstamp.design.checkpoint 7-pointer/outputs/.execstamp.design.def.gz 7-pointer/outputs/.execstamp.design.gds.gz 7-pointer/outputs/.execstamp.design.lef 7-pointer/outputs/.execstamp.design.lvs.v 7-pointer/outputs/.execstamp.design_merged.gds
	$(call stamp,7-pointer/outputs/.stamp.design.gds.gz)

7-pointer/outputs/.stamp.design.lvs.v: 7-pointer/.execstamp 7-pointer/outputs/.execstamp.design.checkpoint 7-pointer/outputs/.execstamp.design.def.gz 7-pointer/outputs/.execstamp.design.gds.gz 7-pointer/outputs/.execstamp.design.lef 7-pointer/outputs/.execstamp.design.lvs.v 7-pointer/outputs/.execstamp.design_merged.gds
	$(call stamp,7-pointer/outputs/.stamp.design.lvs.v)

7-pointer/outputs/.stamp.design.lef: 7-pointer/.execstamp 7-pointer/outputs/.execstamp.design.checkpoint 7-pointer/outputs/.execstamp.design.def.gz 7-pointer/outputs/.execstamp.design.gds.gz 7-pointer/outputs/.execstamp.design.lef 7-pointer/outputs/.execstamp.design.lvs.v 7-pointer/outputs/.execstamp.design_merged.gds
	$(call stamp,7-pointer/outputs/.stamp.design.lef)

7-pointer/outputs/.stamp.design.def.gz: 7-pointer/.execstamp 7-pointer/outputs/.execstamp.design.checkpoint 7-pointer/outputs/.execstamp.design.def.gz 7-pointer/outputs/.execstamp.design.gds.gz 7-pointer/outputs/.execstamp.design.lef 7-pointer/outputs/.execstamp.design.lvs.v 7-pointer/outputs/.execstamp.design_merged.gds
	$(call stamp,7-pointer/outputs/.stamp.design.def.gz)

# post-conditions

define 7_pointer_post_conditions_commands_rule
	cd 7-pointer && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

7-pointer/.postconditions.stamp: 7-pointer/.execstamp 7-pointer/outputs/.execstamp.design.checkpoint 7-pointer/outputs/.execstamp.design.def.gz 7-pointer/outputs/.execstamp.design.gds.gz 7-pointer/outputs/.execstamp.design.lef 7-pointer/outputs/.execstamp.design.lvs.v 7-pointer/outputs/.execstamp.design_merged.gds 7-pointer/outputs/.stamp.design.checkpoint 7-pointer/outputs/.stamp.design.def.gz 7-pointer/outputs/.stamp.design.gds.gz 7-pointer/outputs/.stamp.design.lef 7-pointer/outputs/.stamp.design.lvs.v 7-pointer/outputs/.stamp.design_merged.gds
	$(call 7_pointer_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: pointer

pointer: 7-pointer/.execstamp 7-pointer/.postconditions.stamp 7-pointer/outputs/.execstamp.design.checkpoint 7-pointer/outputs/.execstamp.design.def.gz 7-pointer/outputs/.execstamp.design.gds.gz 7-pointer/outputs/.execstamp.design.lef 7-pointer/outputs/.execstamp.design.lvs.v 7-pointer/outputs/.execstamp.design_merged.gds 7-pointer/outputs/.stamp.design.checkpoint 7-pointer/outputs/.stamp.design.def.gz 7-pointer/outputs/.stamp.design.gds.gz 7-pointer/outputs/.stamp.design.lef 7-pointer/outputs/.stamp.design.lvs.v 7-pointer/outputs/.stamp.design_merged.gds

.PHONY: 7

7: 7-pointer/.execstamp 7-pointer/.postconditions.stamp 7-pointer/outputs/.execstamp.design.checkpoint 7-pointer/outputs/.execstamp.design.def.gz 7-pointer/outputs/.execstamp.design.gds.gz 7-pointer/outputs/.execstamp.design.lef 7-pointer/outputs/.execstamp.design.lvs.v 7-pointer/outputs/.execstamp.design_merged.gds 7-pointer/outputs/.stamp.design.checkpoint 7-pointer/outputs/.stamp.design.def.gz 7-pointer/outputs/.stamp.design.gds.gz 7-pointer/outputs/.stamp.design.lef 7-pointer/outputs/.stamp.design.lvs.v 7-pointer/outputs/.stamp.design_merged.gds

# debug

define 7_debug_rule
	cd 7-pointer && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-pointer: 
	$(call 7_debug_rule)

.PHONY: debug-7

debug-7: debug-pointer

# ------------------------------------------------------------------------
# aloe-PnR
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 8-aloe-PnR/.prebuilt)","")
8-aloe-PnR/.stamp: 0-analog-skywater-130nm/.execstamp 0-analog-skywater-130nm/.postconditions.stamp 0-analog-skywater-130nm/outputs/.execstamp.adk 0-analog-skywater-130nm/outputs/.stamp.adk
8-aloe-PnR/.stamp: 3-dummy_dc/.execstamp 3-dummy_dc/.postconditions.stamp 3-dummy_dc/outputs/.execstamp.design.sdc 3-dummy_dc/outputs/.execstamp.design.v 3-dummy_dc/outputs/.stamp.design.sdc 3-dummy_dc/outputs/.stamp.design.v
8-aloe-PnR/.stamp: 5-cadence-innovus-flowsetup/.execstamp 5-cadence-innovus-flowsetup/.postconditions.stamp 5-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 5-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
8-aloe-PnR/.stamp: 6-cadence-innovus-init/.execstamp 6-cadence-innovus-init/.postconditions.stamp 6-cadence-innovus-init/outputs/.execstamp.design.checkpoint 6-cadence-innovus-init/outputs/.execstamp.design.def 6-cadence-innovus-init/outputs/.execstamp.design.fp 6-cadence-innovus-init/outputs/.execstamp.design.fp.spr 6-cadence-innovus-init/outputs/.execstamp.design.v 6-cadence-innovus-init/outputs/.stamp.design.checkpoint 6-cadence-innovus-init/outputs/.stamp.design.def 6-cadence-innovus-init/outputs/.stamp.design.fp 6-cadence-innovus-init/outputs/.stamp.design.fp.spr 6-cadence-innovus-init/outputs/.stamp.design.v
8-aloe-PnR/.stamp:
	$(call cpdir-and-parameterize,8-aloe-PnR,design/aloe-PnR,8-aloe-PnR/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 8-aloe-PnR/.prebuilt)","")
8-aloe-PnR/inputs/.stamp.adk: 8-aloe-PnR/.stamp 0-analog-skywater-130nm/outputs/.stamp.adk
	$(call symlink,8-aloe-PnR/inputs,adk,../../0-analog-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 8-aloe-PnR/.prebuilt)","")
8-aloe-PnR/inputs/.stamp.design.checkpoint: 8-aloe-PnR/.stamp 6-cadence-innovus-init/outputs/.stamp.design.checkpoint
	$(call symlink,8-aloe-PnR/inputs,design.checkpoint,../../6-cadence-innovus-init/outputs/design.checkpoint,.stamp.design.checkpoint)
endif

ifeq ("$(wildcard 8-aloe-PnR/.prebuilt)","")
8-aloe-PnR/inputs/.stamp.design.def: 8-aloe-PnR/.stamp 6-cadence-innovus-init/outputs/.stamp.design.def
	$(call symlink,8-aloe-PnR/inputs,design.def,../../6-cadence-innovus-init/outputs/design.def,.stamp.design.def)
endif

ifeq ("$(wildcard 8-aloe-PnR/.prebuilt)","")
8-aloe-PnR/inputs/.stamp.design.fp: 8-aloe-PnR/.stamp 6-cadence-innovus-init/outputs/.stamp.design.fp
	$(call symlink,8-aloe-PnR/inputs,design.fp,../../6-cadence-innovus-init/outputs/design.fp,.stamp.design.fp)
endif

ifeq ("$(wildcard 8-aloe-PnR/.prebuilt)","")
8-aloe-PnR/inputs/.stamp.design.fp.spr: 8-aloe-PnR/.stamp 6-cadence-innovus-init/outputs/.stamp.design.fp.spr
	$(call symlink,8-aloe-PnR/inputs,design.fp.spr,../../6-cadence-innovus-init/outputs/design.fp.spr,.stamp.design.fp.spr)
endif

ifeq ("$(wildcard 8-aloe-PnR/.prebuilt)","")
8-aloe-PnR/inputs/.stamp.design.sdc: 8-aloe-PnR/.stamp 3-dummy_dc/outputs/.stamp.design.sdc
	$(call symlink,8-aloe-PnR/inputs,design.sdc,../../3-dummy_dc/outputs/design.sdc,.stamp.design.sdc)
endif

ifeq ("$(wildcard 8-aloe-PnR/.prebuilt)","")
8-aloe-PnR/inputs/.stamp.design.v: 8-aloe-PnR/.stamp 3-dummy_dc/outputs/.stamp.design.v
	$(call symlink,8-aloe-PnR/inputs,design.v,../../3-dummy_dc/outputs/design.v,.stamp.design.v)
endif

ifeq ("$(wildcard 8-aloe-PnR/.prebuilt)","")
8-aloe-PnR/inputs/.stamp.design.v: 8-aloe-PnR/.stamp 6-cadence-innovus-init/outputs/.stamp.design.v
	$(call symlink,8-aloe-PnR/inputs,design.v,../../6-cadence-innovus-init/outputs/design.v,.stamp.design.v)
endif

ifeq ("$(wildcard 8-aloe-PnR/.prebuilt)","")
8-aloe-PnR/inputs/.stamp.innovus-foundation-flow: 8-aloe-PnR/.stamp 5-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
	$(call symlink,8-aloe-PnR/inputs,innovus-foundation-flow,../../5-cadence-innovus-flowsetup/outputs/innovus-foundation-flow,.stamp.innovus-foundation-flow)
endif

# execute

ifeq ("$(wildcard 8-aloe-PnR/.prebuilt)","")

define 8_aloe_PnR_commands_rule
	mkdir -p 8-aloe-PnR/outputs && set -o pipefail && /home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t aloe-PnR && chmod +x .mflowgen/8-aloe-PnR/mflowgen-run && cp -f .mflowgen/8-aloe-PnR/mflowgen-run 8-aloe-PnR && if [[ -e .mflowgen/8-aloe-PnR/mflowgen-debug ]]; then chmod +x .mflowgen/8-aloe-PnR/mflowgen-debug && cp -f .mflowgen/8-aloe-PnR/mflowgen-debug 8-aloe-PnR; fi && if [[ -e .mflowgen/8-aloe-PnR/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/8-aloe-PnR/mflowgen-check-preconditions.py && cp -f .mflowgen/8-aloe-PnR/mflowgen-check-preconditions.py 8-aloe-PnR; fi && if [[ -e .mflowgen/8-aloe-PnR/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/8-aloe-PnR/mflowgen-check-postconditions.py && cp -f .mflowgen/8-aloe-PnR/mflowgen-check-postconditions.py 8-aloe-PnR; fi && cd 8-aloe-PnR && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 8-aloe-PnR/outputs/*
endef

8-aloe-PnR/.execstamp: 8-aloe-PnR/.stamp 8-aloe-PnR/inputs/.stamp.adk 8-aloe-PnR/inputs/.stamp.design.checkpoint 8-aloe-PnR/inputs/.stamp.design.def 8-aloe-PnR/inputs/.stamp.design.fp 8-aloe-PnR/inputs/.stamp.design.fp.spr 8-aloe-PnR/inputs/.stamp.design.sdc 8-aloe-PnR/inputs/.stamp.design.v 8-aloe-PnR/inputs/.stamp.innovus-foundation-flow
	$(call 8_aloe_PnR_commands_rule)
	touch $@

8-aloe-PnR/outputs/.execstamp.design.checkpoint: 8-aloe-PnR/.execstamp
	touch $@

endif

# collect outputs

8-aloe-PnR/outputs/.stamp.design.checkpoint: 8-aloe-PnR/.execstamp 8-aloe-PnR/outputs/.execstamp.design.checkpoint
	$(call stamp,8-aloe-PnR/outputs/.stamp.design.checkpoint)

# post-conditions

define 8_aloe_PnR_post_conditions_commands_rule
	cd 8-aloe-PnR && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

8-aloe-PnR/.postconditions.stamp: 8-aloe-PnR/.execstamp 8-aloe-PnR/outputs/.execstamp.design.checkpoint 8-aloe-PnR/outputs/.stamp.design.checkpoint
	$(call 8_aloe_PnR_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: aloe-PnR

aloe-PnR: 8-aloe-PnR/.execstamp 8-aloe-PnR/.postconditions.stamp 8-aloe-PnR/outputs/.execstamp.design.checkpoint 8-aloe-PnR/outputs/.stamp.design.checkpoint

.PHONY: 8

8: 8-aloe-PnR/.execstamp 8-aloe-PnR/.postconditions.stamp 8-aloe-PnR/outputs/.execstamp.design.checkpoint 8-aloe-PnR/outputs/.stamp.design.checkpoint

# debug

define 8_debug_rule
	cd 8-aloe-PnR && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-aloe-PnR: 
	$(call 8_debug_rule)

.PHONY: debug-8

debug-8: debug-aloe-PnR

# ------------------------------------------------------------------------
# mentor-calibre-gdsmerge
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 9-mentor-calibre-gdsmerge/.prebuilt)","")
9-mentor-calibre-gdsmerge/.stamp: 0-analog-skywater-130nm/.execstamp 0-analog-skywater-130nm/.postconditions.stamp 0-analog-skywater-130nm/outputs/.execstamp.adk 0-analog-skywater-130nm/outputs/.stamp.adk
9-mentor-calibre-gdsmerge/.stamp: 7-pointer/.execstamp 7-pointer/.postconditions.stamp 7-pointer/outputs/.execstamp.design.checkpoint 7-pointer/outputs/.execstamp.design.def.gz 7-pointer/outputs/.execstamp.design.gds.gz 7-pointer/outputs/.execstamp.design.lef 7-pointer/outputs/.execstamp.design.lvs.v 7-pointer/outputs/.execstamp.design_merged.gds 7-pointer/outputs/.stamp.design.checkpoint 7-pointer/outputs/.stamp.design.def.gz 7-pointer/outputs/.stamp.design.gds.gz 7-pointer/outputs/.stamp.design.lef 7-pointer/outputs/.stamp.design.lvs.v 7-pointer/outputs/.stamp.design_merged.gds
9-mentor-calibre-gdsmerge/.stamp:
	$(call cpdir-and-parameterize,9-mentor-calibre-gdsmerge,../../Courses/ee372/aloe-sky130/mflowgen/steps/mentor-calibre-gdsmerge,9-mentor-calibre-gdsmerge/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 9-mentor-calibre-gdsmerge/.prebuilt)","")
9-mentor-calibre-gdsmerge/inputs/.stamp.adk: 9-mentor-calibre-gdsmerge/.stamp 0-analog-skywater-130nm/outputs/.stamp.adk
	$(call symlink,9-mentor-calibre-gdsmerge/inputs,adk,../../0-analog-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 9-mentor-calibre-gdsmerge/.prebuilt)","")
9-mentor-calibre-gdsmerge/inputs/.stamp.design.gds.gz: 9-mentor-calibre-gdsmerge/.stamp 7-pointer/outputs/.stamp.design.gds.gz
	$(call symlink,9-mentor-calibre-gdsmerge/inputs,design.gds.gz,../../7-pointer/outputs/design.gds.gz,.stamp.design.gds.gz)
endif

# execute

ifeq ("$(wildcard 9-mentor-calibre-gdsmerge/.prebuilt)","")

define 9_mentor_calibre_gdsmerge_commands_rule
	mkdir -p 9-mentor-calibre-gdsmerge/outputs && set -o pipefail && /home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t mentor-calibre-gdsmerge && chmod +x .mflowgen/9-mentor-calibre-gdsmerge/mflowgen-run && cp -f .mflowgen/9-mentor-calibre-gdsmerge/mflowgen-run 9-mentor-calibre-gdsmerge && if [[ -e .mflowgen/9-mentor-calibre-gdsmerge/mflowgen-debug ]]; then chmod +x .mflowgen/9-mentor-calibre-gdsmerge/mflowgen-debug && cp -f .mflowgen/9-mentor-calibre-gdsmerge/mflowgen-debug 9-mentor-calibre-gdsmerge; fi && if [[ -e .mflowgen/9-mentor-calibre-gdsmerge/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/9-mentor-calibre-gdsmerge/mflowgen-check-preconditions.py && cp -f .mflowgen/9-mentor-calibre-gdsmerge/mflowgen-check-preconditions.py 9-mentor-calibre-gdsmerge; fi && if [[ -e .mflowgen/9-mentor-calibre-gdsmerge/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/9-mentor-calibre-gdsmerge/mflowgen-check-postconditions.py && cp -f .mflowgen/9-mentor-calibre-gdsmerge/mflowgen-check-postconditions.py 9-mentor-calibre-gdsmerge; fi && cd 9-mentor-calibre-gdsmerge && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 9-mentor-calibre-gdsmerge/outputs/*
endef

9-mentor-calibre-gdsmerge/.execstamp: 9-mentor-calibre-gdsmerge/.stamp 9-mentor-calibre-gdsmerge/inputs/.stamp.adk 9-mentor-calibre-gdsmerge/inputs/.stamp.design.gds.gz
	$(call 9_mentor_calibre_gdsmerge_commands_rule)
	touch $@

9-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds: 9-mentor-calibre-gdsmerge/.execstamp
	touch $@

endif

# collect outputs

9-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds: 9-mentor-calibre-gdsmerge/.execstamp 9-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds
	$(call stamp,9-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds)

# post-conditions

define 9_mentor_calibre_gdsmerge_post_conditions_commands_rule
	cd 9-mentor-calibre-gdsmerge && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

9-mentor-calibre-gdsmerge/.postconditions.stamp: 9-mentor-calibre-gdsmerge/.execstamp 9-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds 9-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds
	$(call 9_mentor_calibre_gdsmerge_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: mentor-calibre-gdsmerge

mentor-calibre-gdsmerge: 9-mentor-calibre-gdsmerge/.execstamp 9-mentor-calibre-gdsmerge/.postconditions.stamp 9-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds 9-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds

.PHONY: 9

9: 9-mentor-calibre-gdsmerge/.execstamp 9-mentor-calibre-gdsmerge/.postconditions.stamp 9-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds 9-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds

# debug

define 9_debug_rule
	cd 9-mentor-calibre-gdsmerge && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-mentor-calibre-gdsmerge: 
	$(call 9_debug_rule)

.PHONY: debug-9

debug-9: debug-mentor-calibre-gdsmerge

# ------------------------------------------------------------------------
# open-magic-def2spice
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 10-open-magic-def2spice/.prebuilt)","")
10-open-magic-def2spice/.stamp: 0-analog-skywater-130nm/.execstamp 0-analog-skywater-130nm/.postconditions.stamp 0-analog-skywater-130nm/outputs/.execstamp.adk 0-analog-skywater-130nm/outputs/.stamp.adk
10-open-magic-def2spice/.stamp: 7-pointer/.execstamp 7-pointer/.postconditions.stamp 7-pointer/outputs/.execstamp.design.checkpoint 7-pointer/outputs/.execstamp.design.def.gz 7-pointer/outputs/.execstamp.design.gds.gz 7-pointer/outputs/.execstamp.design.lef 7-pointer/outputs/.execstamp.design.lvs.v 7-pointer/outputs/.execstamp.design_merged.gds 7-pointer/outputs/.stamp.design.checkpoint 7-pointer/outputs/.stamp.design.def.gz 7-pointer/outputs/.stamp.design.gds.gz 7-pointer/outputs/.stamp.design.lef 7-pointer/outputs/.stamp.design.lvs.v 7-pointer/outputs/.stamp.design_merged.gds
10-open-magic-def2spice/.stamp:
	$(call cpdir-and-parameterize,10-open-magic-def2spice,design/open-magic-def2spice,10-open-magic-def2spice/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 10-open-magic-def2spice/.prebuilt)","")
10-open-magic-def2spice/inputs/.stamp.adk: 10-open-magic-def2spice/.stamp 0-analog-skywater-130nm/outputs/.stamp.adk
	$(call symlink,10-open-magic-def2spice/inputs,adk,../../0-analog-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 10-open-magic-def2spice/.prebuilt)","")
10-open-magic-def2spice/inputs/.stamp.design.def.gz: 10-open-magic-def2spice/.stamp 7-pointer/outputs/.stamp.design.def.gz
	$(call symlink,10-open-magic-def2spice/inputs,design.def.gz,../../7-pointer/outputs/design.def.gz,.stamp.design.def.gz)
endif

# execute

ifeq ("$(wildcard 10-open-magic-def2spice/.prebuilt)","")

define 10_open_magic_def2spice_commands_rule
	mkdir -p 10-open-magic-def2spice/outputs && set -o pipefail && /home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t open-magic-def2spice && chmod +x .mflowgen/10-open-magic-def2spice/mflowgen-run && cp -f .mflowgen/10-open-magic-def2spice/mflowgen-run 10-open-magic-def2spice && if [[ -e .mflowgen/10-open-magic-def2spice/mflowgen-debug ]]; then chmod +x .mflowgen/10-open-magic-def2spice/mflowgen-debug && cp -f .mflowgen/10-open-magic-def2spice/mflowgen-debug 10-open-magic-def2spice; fi && if [[ -e .mflowgen/10-open-magic-def2spice/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/10-open-magic-def2spice/mflowgen-check-preconditions.py && cp -f .mflowgen/10-open-magic-def2spice/mflowgen-check-preconditions.py 10-open-magic-def2spice; fi && if [[ -e .mflowgen/10-open-magic-def2spice/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/10-open-magic-def2spice/mflowgen-check-postconditions.py && cp -f .mflowgen/10-open-magic-def2spice/mflowgen-check-postconditions.py 10-open-magic-def2spice; fi && cd 10-open-magic-def2spice && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 10-open-magic-def2spice/outputs/*
endef

10-open-magic-def2spice/.execstamp: 10-open-magic-def2spice/.stamp 10-open-magic-def2spice/inputs/.stamp.adk 10-open-magic-def2spice/inputs/.stamp.design.def.gz
	$(call 10_open_magic_def2spice_commands_rule)
	touch $@

10-open-magic-def2spice/outputs/.execstamp.design_extracted.spice: 10-open-magic-def2spice/.execstamp
	touch $@

endif

# collect outputs

10-open-magic-def2spice/outputs/.stamp.design_extracted.spice: 10-open-magic-def2spice/.execstamp 10-open-magic-def2spice/outputs/.execstamp.design_extracted.spice
	$(call stamp,10-open-magic-def2spice/outputs/.stamp.design_extracted.spice)

# post-conditions

define 10_open_magic_def2spice_post_conditions_commands_rule
	cd 10-open-magic-def2spice && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

10-open-magic-def2spice/.postconditions.stamp: 10-open-magic-def2spice/.execstamp 10-open-magic-def2spice/outputs/.execstamp.design_extracted.spice 10-open-magic-def2spice/outputs/.stamp.design_extracted.spice
	$(call 10_open_magic_def2spice_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: open-magic-def2spice

open-magic-def2spice: 10-open-magic-def2spice/.execstamp 10-open-magic-def2spice/.postconditions.stamp 10-open-magic-def2spice/outputs/.execstamp.design_extracted.spice 10-open-magic-def2spice/outputs/.stamp.design_extracted.spice

.PHONY: 10

10: 10-open-magic-def2spice/.execstamp 10-open-magic-def2spice/.postconditions.stamp 10-open-magic-def2spice/outputs/.execstamp.design_extracted.spice 10-open-magic-def2spice/outputs/.stamp.design_extracted.spice

# debug

# ------------------------------------------------------------------------
# netgen-lvs-def
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 11-netgen-lvs-def/.prebuilt)","")
11-netgen-lvs-def/.stamp: 0-analog-skywater-130nm/.execstamp 0-analog-skywater-130nm/.postconditions.stamp 0-analog-skywater-130nm/outputs/.execstamp.adk 0-analog-skywater-130nm/outputs/.stamp.adk
11-netgen-lvs-def/.stamp: 10-open-magic-def2spice/.execstamp 10-open-magic-def2spice/.postconditions.stamp 10-open-magic-def2spice/outputs/.execstamp.design_extracted.spice 10-open-magic-def2spice/outputs/.stamp.design_extracted.spice
11-netgen-lvs-def/.stamp: 7-pointer/.execstamp 7-pointer/.postconditions.stamp 7-pointer/outputs/.execstamp.design.checkpoint 7-pointer/outputs/.execstamp.design.def.gz 7-pointer/outputs/.execstamp.design.gds.gz 7-pointer/outputs/.execstamp.design.lef 7-pointer/outputs/.execstamp.design.lvs.v 7-pointer/outputs/.execstamp.design_merged.gds 7-pointer/outputs/.stamp.design.checkpoint 7-pointer/outputs/.stamp.design.def.gz 7-pointer/outputs/.stamp.design.gds.gz 7-pointer/outputs/.stamp.design.lef 7-pointer/outputs/.stamp.design.lvs.v 7-pointer/outputs/.stamp.design_merged.gds
11-netgen-lvs-def/.stamp:
	$(call cpdir-and-parameterize,11-netgen-lvs-def,design/netgen-lvs-def,11-netgen-lvs-def/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 11-netgen-lvs-def/.prebuilt)","")
11-netgen-lvs-def/inputs/.stamp.adk: 11-netgen-lvs-def/.stamp 0-analog-skywater-130nm/outputs/.stamp.adk
	$(call symlink,11-netgen-lvs-def/inputs,adk,../../0-analog-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 11-netgen-lvs-def/.prebuilt)","")
11-netgen-lvs-def/inputs/.stamp.design.lvs.v: 11-netgen-lvs-def/.stamp 7-pointer/outputs/.stamp.design.lvs.v
	$(call symlink,11-netgen-lvs-def/inputs,design.lvs.v,../../7-pointer/outputs/design.lvs.v,.stamp.design.lvs.v)
endif

ifeq ("$(wildcard 11-netgen-lvs-def/.prebuilt)","")
11-netgen-lvs-def/inputs/.stamp.design_extracted.spice: 11-netgen-lvs-def/.stamp 10-open-magic-def2spice/outputs/.stamp.design_extracted.spice
	$(call symlink,11-netgen-lvs-def/inputs,design_extracted.spice,../../10-open-magic-def2spice/outputs/design_extracted.spice,.stamp.design_extracted.spice)
endif

# execute

ifeq ("$(wildcard 11-netgen-lvs-def/.prebuilt)","")

define 11_netgen_lvs_def_commands_rule
	mkdir -p 11-netgen-lvs-def/outputs && set -o pipefail && /home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t netgen-lvs-def && chmod +x .mflowgen/11-netgen-lvs-def/mflowgen-run && cp -f .mflowgen/11-netgen-lvs-def/mflowgen-run 11-netgen-lvs-def && if [[ -e .mflowgen/11-netgen-lvs-def/mflowgen-debug ]]; then chmod +x .mflowgen/11-netgen-lvs-def/mflowgen-debug && cp -f .mflowgen/11-netgen-lvs-def/mflowgen-debug 11-netgen-lvs-def; fi && if [[ -e .mflowgen/11-netgen-lvs-def/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/11-netgen-lvs-def/mflowgen-check-preconditions.py && cp -f .mflowgen/11-netgen-lvs-def/mflowgen-check-preconditions.py 11-netgen-lvs-def; fi && if [[ -e .mflowgen/11-netgen-lvs-def/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/11-netgen-lvs-def/mflowgen-check-postconditions.py && cp -f .mflowgen/11-netgen-lvs-def/mflowgen-check-postconditions.py 11-netgen-lvs-def; fi && cd 11-netgen-lvs-def && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 11-netgen-lvs-def/outputs/*
endef

11-netgen-lvs-def/.execstamp: 11-netgen-lvs-def/.stamp 11-netgen-lvs-def/inputs/.stamp.adk 11-netgen-lvs-def/inputs/.stamp.design.lvs.v 11-netgen-lvs-def/inputs/.stamp.design_extracted.spice
	$(call 11_netgen_lvs_def_commands_rule)
	touch $@

11-netgen-lvs-def/outputs/.execstamp.lvs_results.log: 11-netgen-lvs-def/.execstamp
	touch $@

endif

# collect outputs

11-netgen-lvs-def/outputs/.stamp.lvs_results.log: 11-netgen-lvs-def/.execstamp 11-netgen-lvs-def/outputs/.execstamp.lvs_results.log
	$(call stamp,11-netgen-lvs-def/outputs/.stamp.lvs_results.log)

# post-conditions

define 11_netgen_lvs_def_post_conditions_commands_rule
	cd 11-netgen-lvs-def && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

11-netgen-lvs-def/.postconditions.stamp: 11-netgen-lvs-def/.execstamp 11-netgen-lvs-def/outputs/.execstamp.lvs_results.log 11-netgen-lvs-def/outputs/.stamp.lvs_results.log
	$(call 11_netgen_lvs_def_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: netgen-lvs-def

netgen-lvs-def: 11-netgen-lvs-def/.execstamp 11-netgen-lvs-def/.postconditions.stamp 11-netgen-lvs-def/outputs/.execstamp.lvs_results.log 11-netgen-lvs-def/outputs/.stamp.lvs_results.log

.PHONY: 11

11: 11-netgen-lvs-def/.execstamp 11-netgen-lvs-def/.postconditions.stamp 11-netgen-lvs-def/outputs/.execstamp.lvs_results.log 11-netgen-lvs-def/outputs/.stamp.lvs_results.log

# debug

# ------------------------------------------------------------------------
# open-magic-antenna
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 12-open-magic-antenna/.prebuilt)","")
12-open-magic-antenna/.stamp: 0-analog-skywater-130nm/.execstamp 0-analog-skywater-130nm/.postconditions.stamp 0-analog-skywater-130nm/outputs/.execstamp.adk 0-analog-skywater-130nm/outputs/.stamp.adk
12-open-magic-antenna/.stamp: 9-mentor-calibre-gdsmerge/.execstamp 9-mentor-calibre-gdsmerge/.postconditions.stamp 9-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds 9-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds
12-open-magic-antenna/.stamp:
	$(call cpdir-and-parameterize,12-open-magic-antenna,design/open-magic-antenna,12-open-magic-antenna/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 12-open-magic-antenna/.prebuilt)","")
12-open-magic-antenna/inputs/.stamp.adk: 12-open-magic-antenna/.stamp 0-analog-skywater-130nm/outputs/.stamp.adk
	$(call symlink,12-open-magic-antenna/inputs,adk,../../0-analog-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 12-open-magic-antenna/.prebuilt)","")
12-open-magic-antenna/inputs/.stamp.design_merged.gds: 12-open-magic-antenna/.stamp 9-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds
	$(call symlink,12-open-magic-antenna/inputs,design_merged.gds,../../9-mentor-calibre-gdsmerge/outputs/design_merged.gds,.stamp.design_merged.gds)
endif

# execute

ifeq ("$(wildcard 12-open-magic-antenna/.prebuilt)","")

define 12_open_magic_antenna_commands_rule
	mkdir -p 12-open-magic-antenna/outputs && set -o pipefail && /home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t open-magic-antenna && chmod +x .mflowgen/12-open-magic-antenna/mflowgen-run && cp -f .mflowgen/12-open-magic-antenna/mflowgen-run 12-open-magic-antenna && if [[ -e .mflowgen/12-open-magic-antenna/mflowgen-debug ]]; then chmod +x .mflowgen/12-open-magic-antenna/mflowgen-debug && cp -f .mflowgen/12-open-magic-antenna/mflowgen-debug 12-open-magic-antenna; fi && if [[ -e .mflowgen/12-open-magic-antenna/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/12-open-magic-antenna/mflowgen-check-preconditions.py && cp -f .mflowgen/12-open-magic-antenna/mflowgen-check-preconditions.py 12-open-magic-antenna; fi && if [[ -e .mflowgen/12-open-magic-antenna/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/12-open-magic-antenna/mflowgen-check-postconditions.py && cp -f .mflowgen/12-open-magic-antenna/mflowgen-check-postconditions.py 12-open-magic-antenna; fi && cd 12-open-magic-antenna && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 12-open-magic-antenna/outputs/*
endef

12-open-magic-antenna/.execstamp: 12-open-magic-antenna/.stamp 12-open-magic-antenna/inputs/.stamp.adk 12-open-magic-antenna/inputs/.stamp.design_merged.gds
	$(call 12_open_magic_antenna_commands_rule)
	touch $@

12-open-magic-antenna/outputs/.execstamp.antenna_check.log: 12-open-magic-antenna/.execstamp
	touch $@

endif

# collect outputs

12-open-magic-antenna/outputs/.stamp.antenna_check.log: 12-open-magic-antenna/.execstamp 12-open-magic-antenna/outputs/.execstamp.antenna_check.log
	$(call stamp,12-open-magic-antenna/outputs/.stamp.antenna_check.log)

# post-conditions

define 12_open_magic_antenna_post_conditions_commands_rule
	cd 12-open-magic-antenna && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

12-open-magic-antenna/.postconditions.stamp: 12-open-magic-antenna/.execstamp 12-open-magic-antenna/outputs/.execstamp.antenna_check.log 12-open-magic-antenna/outputs/.stamp.antenna_check.log
	$(call 12_open_magic_antenna_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: open-magic-antenna

open-magic-antenna: 12-open-magic-antenna/.execstamp 12-open-magic-antenna/.postconditions.stamp 12-open-magic-antenna/outputs/.execstamp.antenna_check.log 12-open-magic-antenna/outputs/.stamp.antenna_check.log

.PHONY: 12

12: 12-open-magic-antenna/.execstamp 12-open-magic-antenna/.postconditions.stamp 12-open-magic-antenna/outputs/.execstamp.antenna_check.log 12-open-magic-antenna/outputs/.stamp.antenna_check.log

# debug

# ------------------------------------------------------------------------
# open-magic-drc
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 13-open-magic-drc/.prebuilt)","")
13-open-magic-drc/.stamp: 0-analog-skywater-130nm/.execstamp 0-analog-skywater-130nm/.postconditions.stamp 0-analog-skywater-130nm/outputs/.execstamp.adk 0-analog-skywater-130nm/outputs/.stamp.adk
13-open-magic-drc/.stamp: 9-mentor-calibre-gdsmerge/.execstamp 9-mentor-calibre-gdsmerge/.postconditions.stamp 9-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds 9-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds
13-open-magic-drc/.stamp:
	$(call cpdir-and-parameterize,13-open-magic-drc,design/open-magic-drc,13-open-magic-drc/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 13-open-magic-drc/.prebuilt)","")
13-open-magic-drc/inputs/.stamp.adk: 13-open-magic-drc/.stamp 0-analog-skywater-130nm/outputs/.stamp.adk
	$(call symlink,13-open-magic-drc/inputs,adk,../../0-analog-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 13-open-magic-drc/.prebuilt)","")
13-open-magic-drc/inputs/.stamp.design_merged.gds: 13-open-magic-drc/.stamp 9-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds
	$(call symlink,13-open-magic-drc/inputs,design_merged.gds,../../9-mentor-calibre-gdsmerge/outputs/design_merged.gds,.stamp.design_merged.gds)
endif

# execute

ifeq ("$(wildcard 13-open-magic-drc/.prebuilt)","")

define 13_open_magic_drc_commands_rule
	mkdir -p 13-open-magic-drc/outputs && set -o pipefail && /home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t open-magic-drc && chmod +x .mflowgen/13-open-magic-drc/mflowgen-run && cp -f .mflowgen/13-open-magic-drc/mflowgen-run 13-open-magic-drc && if [[ -e .mflowgen/13-open-magic-drc/mflowgen-debug ]]; then chmod +x .mflowgen/13-open-magic-drc/mflowgen-debug && cp -f .mflowgen/13-open-magic-drc/mflowgen-debug 13-open-magic-drc; fi && if [[ -e .mflowgen/13-open-magic-drc/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/13-open-magic-drc/mflowgen-check-preconditions.py && cp -f .mflowgen/13-open-magic-drc/mflowgen-check-preconditions.py 13-open-magic-drc; fi && if [[ -e .mflowgen/13-open-magic-drc/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/13-open-magic-drc/mflowgen-check-postconditions.py && cp -f .mflowgen/13-open-magic-drc/mflowgen-check-postconditions.py 13-open-magic-drc; fi && cd 13-open-magic-drc && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 13-open-magic-drc/outputs/*
endef

13-open-magic-drc/.execstamp: 13-open-magic-drc/.stamp 13-open-magic-drc/inputs/.stamp.adk 13-open-magic-drc/inputs/.stamp.design_merged.gds
	$(call 13_open_magic_drc_commands_rule)
	touch $@

13-open-magic-drc/outputs/.execstamp.drc_results.log: 13-open-magic-drc/.execstamp
	touch $@

endif

# collect outputs

13-open-magic-drc/outputs/.stamp.drc_results.log: 13-open-magic-drc/.execstamp 13-open-magic-drc/outputs/.execstamp.drc_results.log
	$(call stamp,13-open-magic-drc/outputs/.stamp.drc_results.log)

# post-conditions

define 13_open_magic_drc_post_conditions_commands_rule
	cd 13-open-magic-drc && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

13-open-magic-drc/.postconditions.stamp: 13-open-magic-drc/.execstamp 13-open-magic-drc/outputs/.execstamp.drc_results.log 13-open-magic-drc/outputs/.stamp.drc_results.log
	$(call 13_open_magic_drc_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: open-magic-drc

open-magic-drc: 13-open-magic-drc/.execstamp 13-open-magic-drc/.postconditions.stamp 13-open-magic-drc/outputs/.execstamp.drc_results.log 13-open-magic-drc/outputs/.stamp.drc_results.log

.PHONY: 13

13: 13-open-magic-drc/.execstamp 13-open-magic-drc/.postconditions.stamp 13-open-magic-drc/outputs/.execstamp.drc_results.log 13-open-magic-drc/outputs/.stamp.drc_results.log

# debug

# ------------------------------------------------------------------------
# open-magic-gds2spice
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 14-open-magic-gds2spice/.prebuilt)","")
14-open-magic-gds2spice/.stamp: 0-analog-skywater-130nm/.execstamp 0-analog-skywater-130nm/.postconditions.stamp 0-analog-skywater-130nm/outputs/.execstamp.adk 0-analog-skywater-130nm/outputs/.stamp.adk
14-open-magic-gds2spice/.stamp: 9-mentor-calibre-gdsmerge/.execstamp 9-mentor-calibre-gdsmerge/.postconditions.stamp 9-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds 9-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds
14-open-magic-gds2spice/.stamp:
	$(call cpdir-and-parameterize,14-open-magic-gds2spice,design/open-magic-gds2spice,14-open-magic-gds2spice/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 14-open-magic-gds2spice/.prebuilt)","")
14-open-magic-gds2spice/inputs/.stamp.adk: 14-open-magic-gds2spice/.stamp 0-analog-skywater-130nm/outputs/.stamp.adk
	$(call symlink,14-open-magic-gds2spice/inputs,adk,../../0-analog-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 14-open-magic-gds2spice/.prebuilt)","")
14-open-magic-gds2spice/inputs/.stamp.design_merged.gds: 14-open-magic-gds2spice/.stamp 9-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds
	$(call symlink,14-open-magic-gds2spice/inputs,design_merged.gds,../../9-mentor-calibre-gdsmerge/outputs/design_merged.gds,.stamp.design_merged.gds)
endif

# execute

ifeq ("$(wildcard 14-open-magic-gds2spice/.prebuilt)","")

define 14_open_magic_gds2spice_commands_rule
	mkdir -p 14-open-magic-gds2spice/outputs && set -o pipefail && /home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t open-magic-gds2spice && chmod +x .mflowgen/14-open-magic-gds2spice/mflowgen-run && cp -f .mflowgen/14-open-magic-gds2spice/mflowgen-run 14-open-magic-gds2spice && if [[ -e .mflowgen/14-open-magic-gds2spice/mflowgen-debug ]]; then chmod +x .mflowgen/14-open-magic-gds2spice/mflowgen-debug && cp -f .mflowgen/14-open-magic-gds2spice/mflowgen-debug 14-open-magic-gds2spice; fi && if [[ -e .mflowgen/14-open-magic-gds2spice/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/14-open-magic-gds2spice/mflowgen-check-preconditions.py && cp -f .mflowgen/14-open-magic-gds2spice/mflowgen-check-preconditions.py 14-open-magic-gds2spice; fi && if [[ -e .mflowgen/14-open-magic-gds2spice/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/14-open-magic-gds2spice/mflowgen-check-postconditions.py && cp -f .mflowgen/14-open-magic-gds2spice/mflowgen-check-postconditions.py 14-open-magic-gds2spice; fi && cd 14-open-magic-gds2spice && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 14-open-magic-gds2spice/outputs/*
endef

14-open-magic-gds2spice/.execstamp: 14-open-magic-gds2spice/.stamp 14-open-magic-gds2spice/inputs/.stamp.adk 14-open-magic-gds2spice/inputs/.stamp.design_merged.gds
	$(call 14_open_magic_gds2spice_commands_rule)
	touch $@

14-open-magic-gds2spice/outputs/.execstamp.design_extracted.spice: 14-open-magic-gds2spice/.execstamp
	touch $@

endif

# collect outputs

14-open-magic-gds2spice/outputs/.stamp.design_extracted.spice: 14-open-magic-gds2spice/.execstamp 14-open-magic-gds2spice/outputs/.execstamp.design_extracted.spice
	$(call stamp,14-open-magic-gds2spice/outputs/.stamp.design_extracted.spice)

# post-conditions

define 14_open_magic_gds2spice_post_conditions_commands_rule
	cd 14-open-magic-gds2spice && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

14-open-magic-gds2spice/.postconditions.stamp: 14-open-magic-gds2spice/.execstamp 14-open-magic-gds2spice/outputs/.execstamp.design_extracted.spice 14-open-magic-gds2spice/outputs/.stamp.design_extracted.spice
	$(call 14_open_magic_gds2spice_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: open-magic-gds2spice

open-magic-gds2spice: 14-open-magic-gds2spice/.execstamp 14-open-magic-gds2spice/.postconditions.stamp 14-open-magic-gds2spice/outputs/.execstamp.design_extracted.spice 14-open-magic-gds2spice/outputs/.stamp.design_extracted.spice

.PHONY: 14

14: 14-open-magic-gds2spice/.execstamp 14-open-magic-gds2spice/.postconditions.stamp 14-open-magic-gds2spice/outputs/.execstamp.design_extracted.spice 14-open-magic-gds2spice/outputs/.stamp.design_extracted.spice

# debug

# ------------------------------------------------------------------------
# mentor-calibre-comparison
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 15-mentor-calibre-comparison/.prebuilt)","")
15-mentor-calibre-comparison/.stamp: 0-analog-skywater-130nm/.execstamp 0-analog-skywater-130nm/.postconditions.stamp 0-analog-skywater-130nm/outputs/.execstamp.adk 0-analog-skywater-130nm/outputs/.stamp.adk
15-mentor-calibre-comparison/.stamp: 14-open-magic-gds2spice/.execstamp 14-open-magic-gds2spice/.postconditions.stamp 14-open-magic-gds2spice/outputs/.execstamp.design_extracted.spice 14-open-magic-gds2spice/outputs/.stamp.design_extracted.spice
15-mentor-calibre-comparison/.stamp: 7-pointer/.execstamp 7-pointer/.postconditions.stamp 7-pointer/outputs/.execstamp.design.checkpoint 7-pointer/outputs/.execstamp.design.def.gz 7-pointer/outputs/.execstamp.design.gds.gz 7-pointer/outputs/.execstamp.design.lef 7-pointer/outputs/.execstamp.design.lvs.v 7-pointer/outputs/.execstamp.design_merged.gds 7-pointer/outputs/.stamp.design.checkpoint 7-pointer/outputs/.stamp.design.def.gz 7-pointer/outputs/.stamp.design.gds.gz 7-pointer/outputs/.stamp.design.lef 7-pointer/outputs/.stamp.design.lvs.v 7-pointer/outputs/.stamp.design_merged.gds
15-mentor-calibre-comparison/.stamp:
	$(call cpdir-and-parameterize,15-mentor-calibre-comparison,design/mentor-calibre-comparison,15-mentor-calibre-comparison/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 15-mentor-calibre-comparison/.prebuilt)","")
15-mentor-calibre-comparison/inputs/.stamp.adk: 15-mentor-calibre-comparison/.stamp 0-analog-skywater-130nm/outputs/.stamp.adk
	$(call symlink,15-mentor-calibre-comparison/inputs,adk,../../0-analog-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 15-mentor-calibre-comparison/.prebuilt)","")
15-mentor-calibre-comparison/inputs/.stamp.design.lvs.v: 15-mentor-calibre-comparison/.stamp 7-pointer/outputs/.stamp.design.lvs.v
	$(call symlink,15-mentor-calibre-comparison/inputs,design.lvs.v,../../7-pointer/outputs/design.lvs.v,.stamp.design.lvs.v)
endif

ifeq ("$(wildcard 15-mentor-calibre-comparison/.prebuilt)","")
15-mentor-calibre-comparison/inputs/.stamp.design_extracted.spice: 15-mentor-calibre-comparison/.stamp 14-open-magic-gds2spice/outputs/.stamp.design_extracted.spice
	$(call symlink,15-mentor-calibre-comparison/inputs,design_extracted.spice,../../14-open-magic-gds2spice/outputs/design_extracted.spice,.stamp.design_extracted.spice)
endif

# execute

ifeq ("$(wildcard 15-mentor-calibre-comparison/.prebuilt)","")

define 15_mentor_calibre_comparison_commands_rule
	mkdir -p 15-mentor-calibre-comparison/outputs && set -o pipefail && /home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t mentor-calibre-comparison && chmod +x .mflowgen/15-mentor-calibre-comparison/mflowgen-run && cp -f .mflowgen/15-mentor-calibre-comparison/mflowgen-run 15-mentor-calibre-comparison && if [[ -e .mflowgen/15-mentor-calibre-comparison/mflowgen-debug ]]; then chmod +x .mflowgen/15-mentor-calibre-comparison/mflowgen-debug && cp -f .mflowgen/15-mentor-calibre-comparison/mflowgen-debug 15-mentor-calibre-comparison; fi && if [[ -e .mflowgen/15-mentor-calibre-comparison/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/15-mentor-calibre-comparison/mflowgen-check-preconditions.py && cp -f .mflowgen/15-mentor-calibre-comparison/mflowgen-check-preconditions.py 15-mentor-calibre-comparison; fi && if [[ -e .mflowgen/15-mentor-calibre-comparison/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/15-mentor-calibre-comparison/mflowgen-check-postconditions.py && cp -f .mflowgen/15-mentor-calibre-comparison/mflowgen-check-postconditions.py 15-mentor-calibre-comparison; fi && cd 15-mentor-calibre-comparison && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 15-mentor-calibre-comparison/outputs/*
endef

15-mentor-calibre-comparison/.execstamp: 15-mentor-calibre-comparison/.stamp 15-mentor-calibre-comparison/inputs/.stamp.adk 15-mentor-calibre-comparison/inputs/.stamp.design.lvs.v 15-mentor-calibre-comparison/inputs/.stamp.design_extracted.spice
	$(call 15_mentor_calibre_comparison_commands_rule)
	touch $@

15-mentor-calibre-comparison/outputs/.execstamp.lvs.report: 15-mentor-calibre-comparison/.execstamp
	touch $@

endif

# collect outputs

15-mentor-calibre-comparison/outputs/.stamp.lvs.report: 15-mentor-calibre-comparison/.execstamp 15-mentor-calibre-comparison/outputs/.execstamp.lvs.report
	$(call stamp,15-mentor-calibre-comparison/outputs/.stamp.lvs.report)

# post-conditions

define 15_mentor_calibre_comparison_post_conditions_commands_rule
	cd 15-mentor-calibre-comparison && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

15-mentor-calibre-comparison/.postconditions.stamp: 15-mentor-calibre-comparison/.execstamp 15-mentor-calibre-comparison/outputs/.execstamp.lvs.report 15-mentor-calibre-comparison/outputs/.stamp.lvs.report
	$(call 15_mentor_calibre_comparison_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: mentor-calibre-comparison

mentor-calibre-comparison: 15-mentor-calibre-comparison/.execstamp 15-mentor-calibre-comparison/.postconditions.stamp 15-mentor-calibre-comparison/outputs/.execstamp.lvs.report 15-mentor-calibre-comparison/outputs/.stamp.lvs.report

.PHONY: 15

15: 15-mentor-calibre-comparison/.execstamp 15-mentor-calibre-comparison/.postconditions.stamp 15-mentor-calibre-comparison/outputs/.execstamp.lvs.report 15-mentor-calibre-comparison/outputs/.stamp.lvs.report

# debug

define 15_debug_rule
	cd 15-mentor-calibre-comparison && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-mentor-calibre-comparison: 
	$(call 15_debug_rule)

.PHONY: debug-15

debug-15: debug-mentor-calibre-comparison

# ------------------------------------------------------------------------
# netgen-lvs-gds
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 16-netgen-lvs-gds/.prebuilt)","")
16-netgen-lvs-gds/.stamp: 0-analog-skywater-130nm/.execstamp 0-analog-skywater-130nm/.postconditions.stamp 0-analog-skywater-130nm/outputs/.execstamp.adk 0-analog-skywater-130nm/outputs/.stamp.adk
16-netgen-lvs-gds/.stamp: 14-open-magic-gds2spice/.execstamp 14-open-magic-gds2spice/.postconditions.stamp 14-open-magic-gds2spice/outputs/.execstamp.design_extracted.spice 14-open-magic-gds2spice/outputs/.stamp.design_extracted.spice
16-netgen-lvs-gds/.stamp: 7-pointer/.execstamp 7-pointer/.postconditions.stamp 7-pointer/outputs/.execstamp.design.checkpoint 7-pointer/outputs/.execstamp.design.def.gz 7-pointer/outputs/.execstamp.design.gds.gz 7-pointer/outputs/.execstamp.design.lef 7-pointer/outputs/.execstamp.design.lvs.v 7-pointer/outputs/.execstamp.design_merged.gds 7-pointer/outputs/.stamp.design.checkpoint 7-pointer/outputs/.stamp.design.def.gz 7-pointer/outputs/.stamp.design.gds.gz 7-pointer/outputs/.stamp.design.lef 7-pointer/outputs/.stamp.design.lvs.v 7-pointer/outputs/.stamp.design_merged.gds
16-netgen-lvs-gds/.stamp:
	$(call cpdir-and-parameterize,16-netgen-lvs-gds,design/netgen-lvs-gds,16-netgen-lvs-gds/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 16-netgen-lvs-gds/.prebuilt)","")
16-netgen-lvs-gds/inputs/.stamp.adk: 16-netgen-lvs-gds/.stamp 0-analog-skywater-130nm/outputs/.stamp.adk
	$(call symlink,16-netgen-lvs-gds/inputs,adk,../../0-analog-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 16-netgen-lvs-gds/.prebuilt)","")
16-netgen-lvs-gds/inputs/.stamp.design.lvs.v: 16-netgen-lvs-gds/.stamp 7-pointer/outputs/.stamp.design.lvs.v
	$(call symlink,16-netgen-lvs-gds/inputs,design.lvs.v,../../7-pointer/outputs/design.lvs.v,.stamp.design.lvs.v)
endif

ifeq ("$(wildcard 16-netgen-lvs-gds/.prebuilt)","")
16-netgen-lvs-gds/inputs/.stamp.design_extracted.spice: 16-netgen-lvs-gds/.stamp 14-open-magic-gds2spice/outputs/.stamp.design_extracted.spice
	$(call symlink,16-netgen-lvs-gds/inputs,design_extracted.spice,../../14-open-magic-gds2spice/outputs/design_extracted.spice,.stamp.design_extracted.spice)
endif

# execute

ifeq ("$(wildcard 16-netgen-lvs-gds/.prebuilt)","")

define 16_netgen_lvs_gds_commands_rule
	mkdir -p 16-netgen-lvs-gds/outputs && set -o pipefail && /home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t netgen-lvs-gds && chmod +x .mflowgen/16-netgen-lvs-gds/mflowgen-run && cp -f .mflowgen/16-netgen-lvs-gds/mflowgen-run 16-netgen-lvs-gds && if [[ -e .mflowgen/16-netgen-lvs-gds/mflowgen-debug ]]; then chmod +x .mflowgen/16-netgen-lvs-gds/mflowgen-debug && cp -f .mflowgen/16-netgen-lvs-gds/mflowgen-debug 16-netgen-lvs-gds; fi && if [[ -e .mflowgen/16-netgen-lvs-gds/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/16-netgen-lvs-gds/mflowgen-check-preconditions.py && cp -f .mflowgen/16-netgen-lvs-gds/mflowgen-check-preconditions.py 16-netgen-lvs-gds; fi && if [[ -e .mflowgen/16-netgen-lvs-gds/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/16-netgen-lvs-gds/mflowgen-check-postconditions.py && cp -f .mflowgen/16-netgen-lvs-gds/mflowgen-check-postconditions.py 16-netgen-lvs-gds; fi && cd 16-netgen-lvs-gds && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 16-netgen-lvs-gds/outputs/*
endef

16-netgen-lvs-gds/.execstamp: 16-netgen-lvs-gds/.stamp 16-netgen-lvs-gds/inputs/.stamp.adk 16-netgen-lvs-gds/inputs/.stamp.design.lvs.v 16-netgen-lvs-gds/inputs/.stamp.design_extracted.spice
	$(call 16_netgen_lvs_gds_commands_rule)
	touch $@

16-netgen-lvs-gds/outputs/.execstamp.lvs_results.log: 16-netgen-lvs-gds/.execstamp
	touch $@

endif

# collect outputs

16-netgen-lvs-gds/outputs/.stamp.lvs_results.log: 16-netgen-lvs-gds/.execstamp 16-netgen-lvs-gds/outputs/.execstamp.lvs_results.log
	$(call stamp,16-netgen-lvs-gds/outputs/.stamp.lvs_results.log)

# post-conditions

define 16_netgen_lvs_gds_post_conditions_commands_rule
	cd 16-netgen-lvs-gds && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

16-netgen-lvs-gds/.postconditions.stamp: 16-netgen-lvs-gds/.execstamp 16-netgen-lvs-gds/outputs/.execstamp.lvs_results.log 16-netgen-lvs-gds/outputs/.stamp.lvs_results.log
	$(call 16_netgen_lvs_gds_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: netgen-lvs-gds

netgen-lvs-gds: 16-netgen-lvs-gds/.execstamp 16-netgen-lvs-gds/.postconditions.stamp 16-netgen-lvs-gds/outputs/.execstamp.lvs_results.log 16-netgen-lvs-gds/outputs/.stamp.lvs_results.log

.PHONY: 16

16: 16-netgen-lvs-gds/.execstamp 16-netgen-lvs-gds/.postconditions.stamp 16-netgen-lvs-gds/outputs/.execstamp.lvs_results.log 16-netgen-lvs-gds/outputs/.stamp.lvs_results.log

# debug

# ------------------------------------------------------------------------
# netgen-lvs-gds-device
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 17-netgen-lvs-gds-device/.prebuilt)","")
17-netgen-lvs-gds-device/.stamp: 0-analog-skywater-130nm/.execstamp 0-analog-skywater-130nm/.postconditions.stamp 0-analog-skywater-130nm/outputs/.execstamp.adk 0-analog-skywater-130nm/outputs/.stamp.adk
17-netgen-lvs-gds-device/.stamp: 14-open-magic-gds2spice/.execstamp 14-open-magic-gds2spice/.postconditions.stamp 14-open-magic-gds2spice/outputs/.execstamp.design_extracted.spice 14-open-magic-gds2spice/outputs/.stamp.design_extracted.spice
17-netgen-lvs-gds-device/.stamp: 7-pointer/.execstamp 7-pointer/.postconditions.stamp 7-pointer/outputs/.execstamp.design.checkpoint 7-pointer/outputs/.execstamp.design.def.gz 7-pointer/outputs/.execstamp.design.gds.gz 7-pointer/outputs/.execstamp.design.lef 7-pointer/outputs/.execstamp.design.lvs.v 7-pointer/outputs/.execstamp.design_merged.gds 7-pointer/outputs/.stamp.design.checkpoint 7-pointer/outputs/.stamp.design.def.gz 7-pointer/outputs/.stamp.design.gds.gz 7-pointer/outputs/.stamp.design.lef 7-pointer/outputs/.stamp.design.lvs.v 7-pointer/outputs/.stamp.design_merged.gds
17-netgen-lvs-gds-device/.stamp:
	$(call cpdir-and-parameterize,17-netgen-lvs-gds-device,design/netgen-lvs-gds-device,17-netgen-lvs-gds-device/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 17-netgen-lvs-gds-device/.prebuilt)","")
17-netgen-lvs-gds-device/inputs/.stamp.adk: 17-netgen-lvs-gds-device/.stamp 0-analog-skywater-130nm/outputs/.stamp.adk
	$(call symlink,17-netgen-lvs-gds-device/inputs,adk,../../0-analog-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 17-netgen-lvs-gds-device/.prebuilt)","")
17-netgen-lvs-gds-device/inputs/.stamp.design.lvs.v: 17-netgen-lvs-gds-device/.stamp 7-pointer/outputs/.stamp.design.lvs.v
	$(call symlink,17-netgen-lvs-gds-device/inputs,design.lvs.v,../../7-pointer/outputs/design.lvs.v,.stamp.design.lvs.v)
endif

ifeq ("$(wildcard 17-netgen-lvs-gds-device/.prebuilt)","")
17-netgen-lvs-gds-device/inputs/.stamp.design_extracted.spice: 17-netgen-lvs-gds-device/.stamp 14-open-magic-gds2spice/outputs/.stamp.design_extracted.spice
	$(call symlink,17-netgen-lvs-gds-device/inputs,design_extracted.spice,../../14-open-magic-gds2spice/outputs/design_extracted.spice,.stamp.design_extracted.spice)
endif

# execute

ifeq ("$(wildcard 17-netgen-lvs-gds-device/.prebuilt)","")

define 17_netgen_lvs_gds_device_commands_rule
	mkdir -p 17-netgen-lvs-gds-device/outputs && set -o pipefail && /home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t netgen-lvs-gds-device && chmod +x .mflowgen/17-netgen-lvs-gds-device/mflowgen-run && cp -f .mflowgen/17-netgen-lvs-gds-device/mflowgen-run 17-netgen-lvs-gds-device && if [[ -e .mflowgen/17-netgen-lvs-gds-device/mflowgen-debug ]]; then chmod +x .mflowgen/17-netgen-lvs-gds-device/mflowgen-debug && cp -f .mflowgen/17-netgen-lvs-gds-device/mflowgen-debug 17-netgen-lvs-gds-device; fi && if [[ -e .mflowgen/17-netgen-lvs-gds-device/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/17-netgen-lvs-gds-device/mflowgen-check-preconditions.py && cp -f .mflowgen/17-netgen-lvs-gds-device/mflowgen-check-preconditions.py 17-netgen-lvs-gds-device; fi && if [[ -e .mflowgen/17-netgen-lvs-gds-device/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/17-netgen-lvs-gds-device/mflowgen-check-postconditions.py && cp -f .mflowgen/17-netgen-lvs-gds-device/mflowgen-check-postconditions.py 17-netgen-lvs-gds-device; fi && cd 17-netgen-lvs-gds-device && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 17-netgen-lvs-gds-device/outputs/*
endef

17-netgen-lvs-gds-device/.execstamp: 17-netgen-lvs-gds-device/.stamp 17-netgen-lvs-gds-device/inputs/.stamp.adk 17-netgen-lvs-gds-device/inputs/.stamp.design.lvs.v 17-netgen-lvs-gds-device/inputs/.stamp.design_extracted.spice
	$(call 17_netgen_lvs_gds_device_commands_rule)
	touch $@

17-netgen-lvs-gds-device/outputs/.execstamp.lvs_results.log: 17-netgen-lvs-gds-device/.execstamp
	touch $@

endif

# collect outputs

17-netgen-lvs-gds-device/outputs/.stamp.lvs_results.log: 17-netgen-lvs-gds-device/.execstamp 17-netgen-lvs-gds-device/outputs/.execstamp.lvs_results.log
	$(call stamp,17-netgen-lvs-gds-device/outputs/.stamp.lvs_results.log)

# post-conditions

define 17_netgen_lvs_gds_device_post_conditions_commands_rule
	cd 17-netgen-lvs-gds-device && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

17-netgen-lvs-gds-device/.postconditions.stamp: 17-netgen-lvs-gds-device/.execstamp 17-netgen-lvs-gds-device/outputs/.execstamp.lvs_results.log 17-netgen-lvs-gds-device/outputs/.stamp.lvs_results.log
	$(call 17_netgen_lvs_gds_device_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: netgen-lvs-gds-device

netgen-lvs-gds-device: 17-netgen-lvs-gds-device/.execstamp 17-netgen-lvs-gds-device/.postconditions.stamp 17-netgen-lvs-gds-device/outputs/.execstamp.lvs_results.log 17-netgen-lvs-gds-device/outputs/.stamp.lvs_results.log

.PHONY: 17

17: 17-netgen-lvs-gds-device/.execstamp 17-netgen-lvs-gds-device/.postconditions.stamp 17-netgen-lvs-gds-device/outputs/.execstamp.lvs_results.log 17-netgen-lvs-gds-device/outputs/.stamp.lvs_results.log

# debug

# ------------------------------------------------------------------------
# Misc
# ------------------------------------------------------------------------

# Clean

.PHONY: clean-all

clean-all:
	@find . -maxdepth 1 ! -name Makefile ! -name .mflowgen\* ! -name \. ! -name \.\. -exec rm -rf {} +

.PHONY: clean-0

clean-0:
	rm -rf ./0-analog-skywater-130nm

.PHONY: clean-analog-skywater-130nm

clean-analog-skywater-130nm: clean-0

.PHONY: clean-1

clean-1:
	rm -rf ./1-info

.PHONY: clean-info

clean-info: clean-1

.PHONY: clean-10

clean-10:
	rm -rf ./10-open-magic-def2spice

.PHONY: clean-open-magic-def2spice

clean-open-magic-def2spice: clean-10

.PHONY: clean-11

clean-11:
	rm -rf ./11-netgen-lvs-def

.PHONY: clean-netgen-lvs-def

clean-netgen-lvs-def: clean-11

.PHONY: clean-12

clean-12:
	rm -rf ./12-open-magic-antenna

.PHONY: clean-open-magic-antenna

clean-open-magic-antenna: clean-12

.PHONY: clean-13

clean-13:
	rm -rf ./13-open-magic-drc

.PHONY: clean-open-magic-drc

clean-open-magic-drc: clean-13

.PHONY: clean-14

clean-14:
	rm -rf ./14-open-magic-gds2spice

.PHONY: clean-open-magic-gds2spice

clean-open-magic-gds2spice: clean-14

.PHONY: clean-15

clean-15:
	rm -rf ./15-mentor-calibre-comparison

.PHONY: clean-mentor-calibre-comparison

clean-mentor-calibre-comparison: clean-15

.PHONY: clean-16

clean-16:
	rm -rf ./16-netgen-lvs-gds

.PHONY: clean-netgen-lvs-gds

clean-netgen-lvs-gds: clean-16

.PHONY: clean-17

clean-17:
	rm -rf ./17-netgen-lvs-gds-device

.PHONY: clean-netgen-lvs-gds-device

clean-netgen-lvs-gds-device: clean-17

.PHONY: clean-2

clean-2:
	rm -rf ./2-rtl

.PHONY: clean-rtl

clean-rtl: clean-2

.PHONY: clean-3

clean-3:
	rm -rf ./3-dummy_dc

.PHONY: clean-dummy_dc

clean-dummy_dc: clean-3

.PHONY: clean-4

clean-4:
	rm -rf ./4-post-sim

.PHONY: clean-post-sim

clean-post-sim: clean-4

.PHONY: clean-5

clean-5:
	rm -rf ./5-cadence-innovus-flowsetup

.PHONY: clean-cadence-innovus-flowsetup

clean-cadence-innovus-flowsetup: clean-5

.PHONY: clean-6

clean-6:
	rm -rf ./6-cadence-innovus-init

.PHONY: clean-cadence-innovus-init

clean-cadence-innovus-init: clean-6

.PHONY: clean-7

clean-7:
	rm -rf ./7-pointer

.PHONY: clean-pointer

clean-pointer: clean-7

.PHONY: clean-8

clean-8:
	rm -rf ./8-aloe-PnR

.PHONY: clean-aloe-PnR

clean-aloe-PnR: clean-8

.PHONY: clean-9

clean-9:
	rm -rf ./9-mentor-calibre-gdsmerge

.PHONY: clean-mentor-calibre-gdsmerge

clean-mentor-calibre-gdsmerge: clean-9

# Diff

.PHONY: diff-0

diff-0:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} skywater-130nm-analog-adk 0-analog-skywater-130nm | grep --color=always -e '^-.*' -e '$$' -e 'Only in skywater-130nm-analog-adk.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 0-analog-skywater-130nm.*' && echo || true

.PHONY: diff-1

diff-1:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../../Courses/ee372/aloe-sky130/mflowgen/steps/info 1-info | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../../Courses/ee372/aloe-sky130/mflowgen/steps/info.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 1-info.*' && echo || true

.PHONY: diff-2

diff-2:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} design/rtl 2-rtl | grep --color=always -e '^-.*' -e '$$' -e 'Only in design/rtl.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 2-rtl.*' && echo || true

.PHONY: diff-3

diff-3:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} design/dummy_dc 3-dummy_dc | grep --color=always -e '^-.*' -e '$$' -e 'Only in design/dummy_dc.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 3-dummy_dc.*' && echo || true

.PHONY: diff-4

diff-4:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} design/post-sim 4-post-sim | grep --color=always -e '^-.*' -e '$$' -e 'Only in design/post-sim.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 4-post-sim.*' && echo || true

.PHONY: diff-5

diff-5:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../../Courses/ee372/aloe-sky130/mflowgen/steps/cadence-innovus-flowsetup 5-cadence-innovus-flowsetup | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../../Courses/ee372/aloe-sky130/mflowgen/steps/cadence-innovus-flowsetup.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 5-cadence-innovus-flowsetup.*' && echo || true

.PHONY: diff-6

diff-6:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} design/cadence-innovus-init 6-cadence-innovus-init | grep --color=always -e '^-.*' -e '$$' -e 'Only in design/cadence-innovus-init.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 6-cadence-innovus-init.*' && echo || true

.PHONY: diff-7

diff-7:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} design/pointer 7-pointer | grep --color=always -e '^-.*' -e '$$' -e 'Only in design/pointer.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 7-pointer.*' && echo || true

.PHONY: diff-8

diff-8:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} design/aloe-PnR 8-aloe-PnR | grep --color=always -e '^-.*' -e '$$' -e 'Only in design/aloe-PnR.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 8-aloe-PnR.*' && echo || true

.PHONY: diff-9

diff-9:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../../Courses/ee372/aloe-sky130/mflowgen/steps/mentor-calibre-gdsmerge 9-mentor-calibre-gdsmerge | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../../Courses/ee372/aloe-sky130/mflowgen/steps/mentor-calibre-gdsmerge.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 9-mentor-calibre-gdsmerge.*' && echo || true

.PHONY: diff-10

diff-10:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} design/open-magic-def2spice 10-open-magic-def2spice | grep --color=always -e '^-.*' -e '$$' -e 'Only in design/open-magic-def2spice.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 10-open-magic-def2spice.*' && echo || true

.PHONY: diff-11

diff-11:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} design/netgen-lvs-def 11-netgen-lvs-def | grep --color=always -e '^-.*' -e '$$' -e 'Only in design/netgen-lvs-def.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 11-netgen-lvs-def.*' && echo || true

.PHONY: diff-12

diff-12:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} design/open-magic-antenna 12-open-magic-antenna | grep --color=always -e '^-.*' -e '$$' -e 'Only in design/open-magic-antenna.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 12-open-magic-antenna.*' && echo || true

.PHONY: diff-13

diff-13:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} design/open-magic-drc 13-open-magic-drc | grep --color=always -e '^-.*' -e '$$' -e 'Only in design/open-magic-drc.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 13-open-magic-drc.*' && echo || true

.PHONY: diff-14

diff-14:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} design/open-magic-gds2spice 14-open-magic-gds2spice | grep --color=always -e '^-.*' -e '$$' -e 'Only in design/open-magic-gds2spice.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 14-open-magic-gds2spice.*' && echo || true

.PHONY: diff-15

diff-15:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} design/mentor-calibre-comparison 15-mentor-calibre-comparison | grep --color=always -e '^-.*' -e '$$' -e 'Only in design/mentor-calibre-comparison.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 15-mentor-calibre-comparison.*' && echo || true

.PHONY: diff-16

diff-16:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} design/netgen-lvs-gds 16-netgen-lvs-gds | grep --color=always -e '^-.*' -e '$$' -e 'Only in design/netgen-lvs-gds.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 16-netgen-lvs-gds.*' && echo || true

.PHONY: diff-17

diff-17:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} design/netgen-lvs-gds-device 17-netgen-lvs-gds-device | grep --color=always -e '^-.*' -e '$$' -e 'Only in design/netgen-lvs-gds-device.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 17-netgen-lvs-gds-device.*' && echo || true

# Info

.PHONY: info-0

info-0:
	@/home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t analog-skywater-130nm && /home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/0-analog-skywater-130nm/configure.yml

.PHONY: info-1

info-1:
	@/home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t info && /home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/1-info/configure.yml

.PHONY: info-2

info-2:
	@/home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t rtl && /home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/2-rtl/configure.yml

.PHONY: info-3

info-3:
	@/home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t dummy_dc && /home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/3-dummy_dc/configure.yml

.PHONY: info-4

info-4:
	@/home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t post-sim && /home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/4-post-sim/configure.yml

.PHONY: info-5

info-5:
	@/home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-flowsetup && /home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/5-cadence-innovus-flowsetup/configure.yml

.PHONY: info-6

info-6:
	@/home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-init && /home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/6-cadence-innovus-init/configure.yml

.PHONY: info-7

info-7:
	@/home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t pointer && /home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/7-pointer/configure.yml

.PHONY: info-8

info-8:
	@/home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t aloe-PnR && /home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/8-aloe-PnR/configure.yml

.PHONY: info-9

info-9:
	@/home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t mentor-calibre-gdsmerge && /home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/9-mentor-calibre-gdsmerge/configure.yml

.PHONY: info-10

info-10:
	@/home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t open-magic-def2spice && /home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/10-open-magic-def2spice/configure.yml

.PHONY: info-11

info-11:
	@/home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t netgen-lvs-def && /home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/11-netgen-lvs-def/configure.yml

.PHONY: info-12

info-12:
	@/home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t open-magic-antenna && /home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/12-open-magic-antenna/configure.yml

.PHONY: info-13

info-13:
	@/home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t open-magic-drc && /home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/13-open-magic-drc/configure.yml

.PHONY: info-14

info-14:
	@/home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t open-magic-gds2spice && /home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/14-open-magic-gds2spice/configure.yml

.PHONY: info-15

info-15:
	@/home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t mentor-calibre-comparison && /home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/15-mentor-calibre-comparison/configure.yml

.PHONY: info-16

info-16:
	@/home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t netgen-lvs-gds && /home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/16-netgen-lvs-gds/configure.yml

.PHONY: info-17

info-17:
	@/home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t netgen-lvs-gds-device && /home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/17-netgen-lvs-gds-device/configure.yml

# Runtimes

.PHONY: runtimes

runtimes:
	@/home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-runtimes

# List

.PHONY: list

list:
	@echo && echo Generic Targets: && echo && printf " - %s\\n" "list      -- List all steps" "status    -- Print build status for each step" "runtimes  -- Print runtimes for each step" "graph     -- Generate a PDF of the step dependency graph" "clean-all -- Remove all build directories" "clean-N   -- Clean target N" "info-N    -- Print configured info for step N" "diff-N    -- Diff target N" && echo && echo Targets: && echo && printf " - %s\\n" "  0 : analog-skywater-130nm" "  1 : info" "  2 : rtl" "  3 : dummy_dc" "  4 : post-sim" "  5 : cadence-innovus-flowsetup" "  6 : cadence-innovus-init" "  7 : pointer" "  8 : aloe-PnR" "  9 : mentor-calibre-gdsmerge" " 10 : open-magic-def2spice" " 11 : netgen-lvs-def" " 12 : open-magic-antenna" " 13 : open-magic-drc" " 14 : open-magic-gds2spice" " 15 : mentor-calibre-comparison" " 16 : netgen-lvs-gds" " 17 : netgen-lvs-gds-device" && echo && echo Debug Targets: && echo && printf " - %s\\n" "debug-6  : debug-cadence-innovus-init" "debug-7  : debug-pointer" "debug-8  : debug-aloe-PnR" "debug-9  : debug-mentor-calibre-gdsmerge" "debug-15 : debug-mentor-calibre-comparison" && echo

# Graph

.PHONY: graph

graph:
	dot -Tpdf .mflowgen/graph.dot > graph.pdf

# Status

.PHONY: status

status:
	@/home/users/lyt1314/Courses/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-status --backend make -s 0-analog-skywater-130nm,1-info,2-rtl,3-dummy_dc,4-post-sim,5-cadence-innovus-flowsetup,6-cadence-innovus-init,7-pointer,8-aloe-PnR,9-mentor-calibre-gdsmerge,10-open-magic-def2spice,11-netgen-lvs-def,12-open-magic-antenna,13-open-magic-drc,14-open-magic-gds2spice,15-mentor-calibre-comparison,16-netgen-lvs-gds,17-netgen-lvs-gds-device

