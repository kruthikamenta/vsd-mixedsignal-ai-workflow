# ============================================================
# design_mux mixed-signal OpenLane configuration
# PDK: SKY130A
# Standard-cell library: sky130_fd_sc_hd
# Analog hard macro: AMUX2_3V
# ============================================================

# ------------------------------------------------------------
# Design and technology
# ------------------------------------------------------------

set ::env(DESIGN_NAME) "design_mux"

set ::env(PDK) "sky130A"
set ::env(STD_CELL_LIBRARY) "sky130_fd_sc_hd"


# ------------------------------------------------------------
# RTL and macro logical views
# ------------------------------------------------------------

# design_mux.v includes raven_spi.v, which includes spi_slave.v.
set ::env(VERILOG_FILES) [list \
    $::env(DESIGN_DIR)/src/design_mux.v \
]

# Preserve AMUX2_3V as a hard macro during synthesis.
set ::env(VERILOG_FILES_BLACKBOX) [list \
    $::env(DESIGN_DIR)/src/AMUX2_3V.v \
]


# ------------------------------------------------------------
# Macro physical views
# ------------------------------------------------------------

# Placement-and-routing abstraction.
set ::env(EXTRA_LEFS) [list \
    $::env(DESIGN_DIR)/src/lef/AMUX2_3V.lef \
]

# Full physical view used when generating the final GDS.
# Uncomment when a matching macro GDS is available.
#
# set ::env(EXTRA_GDS_FILES) [list \
#     $::env(DESIGN_DIR)/src/gds/AMUX2_3V.gds \
# ]


# ------------------------------------------------------------
# Clock constraints
# ------------------------------------------------------------

# The SPI controller's sequential logic is clocked by SCK.
set ::env(CLOCK_PORT) "SCK"

# 10 ns corresponds to a nominal frequency of 100 MHz.
set ::env(CLOCK_PERIOD) "10.0"

# Permit clock-tree synthesis for the SCK clock network.
set ::env(RUN_CTS) 1


# ------------------------------------------------------------
# Floorplan
# ------------------------------------------------------------

# Let OpenLane calculate die/core dimensions from cell area.
set ::env(FP_SIZING) "relative"

# Reserve substantial whitespace around the analog macro.
set ::env(FP_CORE_UTIL) 30

# Core-to-die margins as multiples of the placement site.
set ::env(FP_CORE_MARGIN) 4

# Random I/O placement is disabled for reproducibility.
set ::env(FP_IO_MODE) 0


# ------------------------------------------------------------
# Placement
# ------------------------------------------------------------

# Moderate density reduces congestion near macro pins.
set ::env(PL_TARGET_DENSITY) 0.45

# Allow OpenROAD global and detailed placement.
set ::env(PL_OPENPHYSYN_OPTIMIZATIONS) 1
set ::env(PL_RESIZER_DESIGN_OPTIMIZATIONS) 1
set ::env(PL_RESIZER_TIMING_OPTIMIZATIONS) 1


# ------------------------------------------------------------
# Power and ground
# ------------------------------------------------------------

# Top-level power-net names.
set ::env(VDD_NETS) [list "VDD"]
set ::env(GND_NETS) [list "VSS"]

# Connect the AMUX2_3V instance to the top-level supply nets.
# Format:
# "instance vdd_net gnd_net macro_vdd_pin macro_gnd_pin"
#
# This assumes the instance in design_mux is named u_amux.
set ::env(FP_PDN_MACRO_HOOKS) \
    "u_amux VDD VSS VDD VSS"

# PDN offsets from the core boundary, in micrometres.
set ::env(FP_PDN_VOFFSET) 4
set ::env(FP_PDN_HOFFSET) 4

# PDN strap pitch, in micrometres.
set ::env(FP_PDN_VPITCH) 15
set ::env(FP_PDN_HPITCH) 15

# Enable top-level power-grid generation.
set ::env(FP_PDN_ENABLE_RAILS) 1
set ::env(FP_PDN_ENABLE_MACROS_GRID) 1


# ------------------------------------------------------------
# Routing and physical verification
# ------------------------------------------------------------

set ::env(RUN_ROUTING) 1

# Repair antenna violations using diodes where required.
set ::env(DIODE_INSERTION_STRATEGY) 3

# Generate the final layout with Magic.
set ::env(RUN_MAGIC) 1
set ::env(RUN_MAGIC_DRC) 1

# Enable final physical verification stages when their required
# macro SPICE/CDL and layout views are available.
set ::env(RUN_LVS) 1


# ------------------------------------------------------------
# Optional PDK/library-specific overrides
# ------------------------------------------------------------

set pdk_config \
    "$::env(DESIGN_DIR)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl"

if {[file exists $pdk_config]} {
    source $pdk_config
}
