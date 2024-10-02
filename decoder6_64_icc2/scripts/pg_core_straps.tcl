# Remove existing power/ground rules and strategies
remove_pg_via_master_rules -all
remove_pg_patterns -all
remove_pg_strategies -all
remove_pg_strategy_via_rules -all

# Create power and ground nets
create_net -ground VSS
create_net -power VDD

# Mark all supplies as power/ground pins
set_attribute -objects [get_nets VSS] -name net_type -value ground
set_attribute -objects [get_nets VDD] -name net_type -value power

# Connect power/ground nets to pins
connect_pg_net -net VSS [get_pins -physical_context */VSS]
connect_pg_net -net VDD [get_pins -physical_context */VDD]

# Define and set standard cell connection patterns
create_pg_std_cell_conn_pattern m0_rail_color \
    -layers {M1} \
    -rail_width {@wtop @wbottom} \
    -parameters {wtop wbottom} \
    -rail_mask {mask_two mask_one}

set_pg_strategy m0_rail_strategy_pwr \
    -core -pattern {{name: m0_rail_color} {nets: VDD} {parameters: {0.094 0.094}}}

set_pg_strategy m0_rail_strategy_gnd \
    -core -pattern {{name: m0_rail_color} {nets: VSS} {parameters: {0.094 0.094}}}

# Define mesh pattern for power/ground
set cpp 0.057
set rowh 0.240
set fix 0.001

set M1_offst [expr $cpp * 15]
set M1_wdth 0.034
set M1_stp 0.74

create_pg_mesh_pattern m1_color2_mesh \
    -parameters {w1 s1 M1_stp f1} \
    -layers {vertical_layer: M3 width: @w1 spacing: @s1 pitch: $M1_stp offset: @f1 mask: mask_two}

set_pg_strategy m1_color2_strategy_gnd \
    -core -pattern {{name: m1_color2_mesh} {nets: VSS} {parameters: {$M1_wdth minimum M1_stp 0.148}}} \
    -extension {{stop: core_boundary}}

set_pg_strategy m1_color2_strategy_pwr \
    -core -pattern {{name: m1_color2_mesh} {nets: VDD} {parameters: {$M1_wdth minimum M1_stp 0.075}}} \
    -extension {{stop: core_boundary}}

# Define via rules
set_pg_via_master_rule vias \
    -via_array_dimension {1 1} \
    -orient R90 \
    -contact_code {VIA12BAR1_C} \
    -track_alignment track \
    -cut_mask mask_one

# Set via rules for power and ground
set_pg_strategy_via_rule vias_rule_pwr \
    -via_rule { \
        {{{existing: all} {layers: {M5 M6}}} {strategies: {m0_rail_strategy_pwr m1_color2_strategy_pwr}} {via_master: NIL}} \
        {{{macro_pins: all} {layers: {M4 M6}}} {strategies: {m0_rail_strategy_pwr m1_color2_strategy_pwr}} {via_master: NIL}} \
        {{{terminals: all} {layers: {M4 M6}}} {strategies: {m0_rail_strategy_pwr m1_color2_strategy_pwr}} {via_master: NIL}} \
        {{intersection: undefined} {via_master: vias}} \
    }

set_pg_strategy_via_rule vias_rule_gnd \
    -via_rule { \
        {{{existing: all} {layers: {M5 M6}}} {strategies: {m0_rail_strategy_gnd m1_color2_strategy_gnd}} {via_master: NIL}} \
        {{{macro_pins: all} {layers: {M4 M6}}} {strategies: {m0_rail_strategy_gnd m1_color2_strategy_gnd}} {via_master: NIL}} \
        {{{terminals: all} {layers: {M4 M6}}} {strategies: {m0_rail_strategy_gnd m1_color2_strategy_gnd}} {via_master: NIL}} \
        {{intersection: undefined} {via_master: vias}} \
    }

# Compile power/ground strategies
compile_pg -strategies {m0_rail_strategy_gnd m1_color2_strategy_gnd} -via_rule vias_rule_gnd -ignore_drc
compile_pg -strategies {m0_rail_strategy_pwr m1_color2_strategy_pwr} -via_rule vias_rule_pwr -ignore_drc
