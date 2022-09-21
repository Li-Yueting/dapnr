gds read design_merged.gds
load bgr_top
select top cell
extract no all
extract do local
extract unique
extract
ext2spice lvs
ext2spice -o design_extracted.spice
exit
