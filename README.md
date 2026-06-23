# vsd-mixedsignal-ai-workflow


# AI-Assisted Mixed-Signal WorkFlow Documentation

## Overview

This repository documents an AI-assisted study of the mixed-signal RTL-to-GDSII implementation flow demonstrated in the **vsdmixedsignalflow** reference repository.

The objective of this work was to understand how an analog hard macro can be integrated into a predominantly digital physical design flow using OpenLane and the SKY130 Process Design Kit (PDK). AI tools were used to assist in repository analysis, RTL understanding, LEF/LIB interpretation, OpenLane configuration generation, flow script generation, debugging support, and documentation.

All AI-generated outputs were manually verified against the reference repository before being accepted.

---

## Reference Repository

Reference design studied during this task:

https://github.com/praharshapm/vsdmixedsignalflow

The repository demonstrates a mixed-signal physical design flow integrating an analog 2:1 multiplexer macro (AMUX2_3V) with digital SPI control logic using OpenLane and SKY130.

---

## Task Objective

The primary objectives of this task were:

* Understand the structure of a mixed-signal RTL-to-GDSII flow.
* Study analog macro integration using Verilog, LEF, and LIB views.
* Analyze OpenLane configuration and execution scripts.
* Use AI tools to generate and verify design files and flow configurations.
* Compare AI-generated outputs against the reference implementation.
* Document prompts, generated files, verification steps, observations, and results.

---

## AI Tools Used

### ChatGPT

Used for:

* Repository understanding
* RTL analysis
* LEF/LIB interpretation
* OpenLane flow explanation
* Verification planning
* Documentation support

### OpenAI Codex

Used for:

* Verilog black-box generation
* OpenLane configuration generation
* LEF analysis
* OpenLane script generation
* Engineering documentation assistance

---

## Experiments Performed

### Experiment 1 – Repository Structure Analysis

Studied the repository hierarchy and identified RTL, LEF, LIB, layout, and OpenLane configuration files.

### Experiment 2 – RTL Analysis

Analyzed the top-level design hierarchy and analog macro integration within the design_mux module.

### Experiment 3 – Physical Design Output Verification

Examined generated synthesis, floorplan, placement, routing, and layout outputs available in the repository.

### Experiment 4 – OpenLane Configuration Generation

Generated an OpenLane configuration file using AI and compared it with the repository implementation.

### Experiment 5 – LEF Macro Analysis

Analyzed the AMUX2_3V LEF file to understand macro dimensions, pin definitions, placement information, routing access, and power connectivity.

### Experiment 6 – OpenLane Flow Script Generation

Generated an OpenLane execution script using AI and compared it with the repository script.tcl flow.

---

## Generated Files

The following files were generated using AI tools during the study:

* AMUX2_3V Black-Box Verilog Wrapper
* OpenLane Configuration File (config.tcl)
* OpenLane Execution Script (script.tcl)
* LEF Engineering Analysis Report
* Repository Analysis Documentation

All generated files were compared against the reference repository and manually verified.

---

## Repository Structure

```text
docs/
    experiment_01_repo_analysis.md
    experiment_02_rtl_analysis.md
    experiment_03_physical_flow_verification.md
    experiment_04_config_generation.md
    experiment_05_lef_analysis.md
    experiment_06_script_generation.md
    final_observations.md

prompts/
    prompt_01_repo_analysis.md
    prompt_02_rtl_analysis.md
    prompt_03_macro_analysis.md
    prompt_04_config_generation.md
    prompt_05_lef_analysis.md
    prompt_06_flow_script.md

generated_files/
    codex_amux_blackbox.v
    codex_config.tcl
    codex_script.tcl

screenshots/
    repository_analysis/
    rtl_analysis/
    floorplan/
    placement/
    routing/
    drc/
    magic_layout/

report/
    final_report.pdf
```

---

## Key Observations

* LEF and LIB files enable physical and timing abstraction of analog macros.
* OpenLane integrates analog hard macros through black-box Verilog and LEF representations.
* AI tools can successfully generate OpenLane configuration and execution scripts when provided with sufficient design context.
* AI-generated outputs require manual engineering verification before use.
* Mixed-signal integration depends heavily on consistency across Verilog, LEF, LIB, and layout views.

---

## Conclusion

This study demonstrated how AI tools can assist engineers in understanding, documenting, generating, and verifying components of a mixed-signal RTL-to-GDSII flow. The combination of AI-assisted analysis and manual validation significantly reduced the effort required to understand the OpenLane-based mixed-signal design flow while maintaining engineering accuracy.
