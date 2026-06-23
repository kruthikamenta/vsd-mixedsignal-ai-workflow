# Experiment 1 - Repository Structure Analysis

## Objective

Understand the structure of the reference repository and identify the files required for a mixed-signal RTL-to-GDSII implementation flow.

## AI Tool Used

- ChatGPT

## Activities Performed

The repository was cloned and explored using Linux commands.

Commands used:

```bash
tree -L 3
```

```bash
cat README.md
```

## Repository Structure Identified

### RTL Files

- Verilog/design_mux.v
- Verilog/AMUX2_3V.v
- Verilog/raven_spi.v
- Verilog/spi_slave.v

### LEF Files

- LEF/AMUX2_3V.lef

### LIB Files

- LIB/AMUX2_3V.lib

### Layout Files

- IP Layout/AMUX2_3V.mag
- IP Layout/21muxlayout.mag

### OpenLane Files

- openlane/config.tcl
- openlane/script.tcl

## Key Findings

The repository demonstrates a mixed-signal design flow where the analog macro AMUX2_3V is integrated with digital SPI control logic.

The OpenLane flow uses:

- Verilog for logical connectivity
- LEF for physical abstraction
- LIB for timing abstraction
- Magic layout for physical implementation

## Result

Successfully identified all major files involved in the mixed-signal RTL-to-GDSII flow.
