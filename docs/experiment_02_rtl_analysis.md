# Experiment 2 - RTL Analysis

## Objective

Understand the RTL hierarchy and analog macro integration.

## AI Tool Used

- ChatGPT

## Questions Investigated

1. What is the top-level design?
2. What analog macro is used?
3. Which files are RTL?
4. How is the analog macro instantiated?

## Findings

### Top-Level Module

design_mux

### Analog Macro

AMUX2_3V

### RTL Files

- design_mux.v
- AMUX2_3V.v
- raven_spi.v
- spi_slave.v

### Design Hierarchy

design_mux
├── AMUX2_3V
└── raven_spi
└── spi_slave

### Observations

The analog multiplexer AMUX2_3V is instantiated as a hard macro while the SPI logic is synthesized as digital logic.

## Result

Successfully understood the RTL hierarchy and analog macro integration methodology.
