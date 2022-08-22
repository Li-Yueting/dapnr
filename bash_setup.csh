export MFLOWGEN_PATH="/farmshare/home/classes/ee/372/PDKs"
# setenv PDKPATH /farmshare/classes/ee/272/PDKs/share/pdk/sky130A
export PDK_ROOT="/farmshare/home/classes/ee/372/PDKs/volare_pdk"
export PDKPATH="/farmshare/home/classes/ee/372/PDKs/volare_pdk/sky130A"
export PATH="/cad/mentor/2019.11/Catapult_Synthesis_10.4b-841621/Mgc_home/bin:$PATH"
export PATH="/cad/iverilog/bin:$PATH"
export MGLS_LICENSE_FILE=1717@cadlic0.stanford.edu
export LD_LIBRARY_PATH="/cad/cadence/INNOVUS20.13.000.lnx86/tools.lnx86/lib/64bit:/cad/cadence/INNOVUS20.13.000.lnx86/share/oa/lib/linux_rhel60_64/opt:/.singularity.d/libs:/cad/common/Linux/x86_64/lib:/cad/synopsys/syn/P-2019.03/lib"
export PATH="/cad/ngspice/36/bin:$PATH"
export PATH="/cad/gaw3/bin:$PATH"
export PATH="/cad/xschem/3.0/bin:$PATH"
export REPO=$(pwd)
export ALOE_HOME="$(pwd)/aloe"
source /etc/profile.d/modules.sh
module load base
module load vcs
module load lc
module load syn
module load xcelium
module load genus
module load innovus/20.13.000
module load calibre/2019.1
module load prime
module load magic/latest
module load netgen/latest

# export PATH=/cad/openlane/build/bin:$PATH

# Autocomplete for make
complete make \
    'n/-f/f/' \
    'c/*=/f/' \
    'n@*@`cat -s GNUmakefile Makefile makefile |& sed -n -e "/No such file/d" -e "/^[^     #].*:/s/:.*//p"`@'

