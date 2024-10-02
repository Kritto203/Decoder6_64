
# these can be also set in .synopsys_dc.setup file in working directory
# always keep the asterisk in link_library
set target_library  {../ref/db_nldm/saed14rvt_tt0p8v25c.db   }
set link_library    {* ../ref/db_nldm/saed14rvt_tt0p8v25c.db }



read_verilog  ../source/decoder3_8.v
read_verilog  ../source/decoder6_64.v

## read command can be replaced with:
#analyze -library WORK -format verilog {../source/decoder3_8.v}
#analyze -library WORK -format verilog {../source/decoder6_64.v}
#elaborate decoder6_64_count -architecture verilog -library DEFAULT

link
check_design

read_sdc ../source/decoder6_64.sdc		
compile -exact_map

report_area  > ../results/rpt.area.report
report_constraint > ../results/rpt.constraints.report
report_timing > ../results/rpt.timing.report
report_qor > ../results/rpt.qor.report

change_names -rule verilog
write -hierarchy -format verilog -output ../results/decoder6_64_compiled.v
write -hierarchy -format ddc  -output ../results/decoder6_64_compiled.ddc


