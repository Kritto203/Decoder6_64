set NDM_LIBS {}
set FRAME_LIBS {/home/sv1/K21_CLC/thai/decoder6_64/decoder6_64_icc2/ref/lib/NDM/saed14rvt_frame_only.ndm}
set LEF_FILES {}
set DB_FILES {/home/sv1/K21_CLC/thai/decoder6_64/decoder6_64_icc2/ref/lib/db_nldm/saed14rvt_tt0p8v25c.db}
set TECH_FILE "/home/sv1/K21_CLC/thai/decoder6_64/decoder6_64_icc2/ref/tech/NDM/saed14rvt_1p9m.tf"

set_app_options -name lib.workspace.create_cached_lib -value true
#suppress_messages

set_app_options -name lib.workspace.allow_read_aggregate_lib -value true
create_workspace saed14rvt_tt0p8v25c -scale_factor 10000
foreach frame $FRAME_LIBS {
  read_ndm $frame
}
read_db $DB_FILES
process_workspaces -check_options {-allow_missing} -force -directory CLIBs -output saed14rvt_tt0p8v25c.ndm
