
set target_library  {../ref/db_nldm/saed14rvt_tt0p8v25c.db   }
set link_library    {* ../ref/db_nldm/saed14rvt_tt0p8v25c.db }

remove_design -all
set test_default_scan_style
read_verilog ../source/decoder3_8_dft.v
read_verilog ../source/decoder6_64_dft.v

read_sdc ../source/decoder6_64.sdc

set_dft_signal -view exist -type ScanEnable -active 1 -port SE
report_dft_signal -view exist

create_test_protocol
dft_drc
write_test_protocol -out ../results/decoder6_64_dft.spf


compile -scan
link

read_test_protocol ../results/decoder6_64_dft.spf

set_dft_signal -view exist -port SE  -type ScanEnable  -active_state 1
set_dft_insertion_configuration -preserve_design_name true
set_dft_signal -view spec -port SCANINPORT -type ScanDataIn
set_dft_signal -view spec -port SCANOUTPORT -type ScanDataOut
set_scan_configuration -chain_count 1
preview_dft
insert_dft

set_fix_multiple_port_nets -all -buffer_constants
compile -scan -incremental

dft_drc -coverage_estimate > ../results/rpt.dft.drc_coverage
report_area > ../results/rpt.dft.area.report
report_timing > ../results/rpt.dft.timing.report
report_qor > ../results/rpt.dft.qor.report



write -format ddc -h  -o ../results/decoder6_64_dft_compiled.ddc
write -format verilog -h  -o ../results/decoder6_64_dft_compiled.v
write_sdf  ../results/decoder6_64_dft.sdf

exit

