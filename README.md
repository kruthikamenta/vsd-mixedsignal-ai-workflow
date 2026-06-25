# AI-Assisted Mixed-Signal Workflow

## Overview

This repository documents an AI-assisted exploration of the **vsdmixedsignalflow** reference repository to understand a mixed-signal RTL-to-GDSII implementation flow using **OpenLane** and the **SKY130 Process Design Kit (PDK)**.

The project demonstrates how AI tools can assist in repository exploration, RTL analysis, analog macro understanding, OpenLane configuration generation, physical design flow analysis, and technical documentation while emphasizing the importance of manual engineering verification.

All AI-generated artifacts were reviewed against the reference implementation before acceptance.

---

## Reference Repository

Reference repository studied during this project:

**https://github.com/praharshapm/vsdmixedsignalflow**

The reference design demonstrates the integration of an **AMUX2_3V analog hard macro** with digital SPI control logic using the OpenLane RTL-to-GDSII flow.

---

## Project Objectives

The objectives of this work were to:

* Understand the architecture of a mixed-signal RTL-to-GDSII implementation flow.
* Study analog hard macro integration using Verilog, LEF, and LIB views.
* Analyze OpenLane configuration files and automation scripts.
* Generate supporting design artifacts using AI tools.
* Validate AI-generated outputs against the reference implementation.
* Document prompts, generated files, verification steps, observations, corrections, and conclusions.

---

## AI Tools Used

### ChatGPT

Used for:

* Repository exploration
* RTL hierarchy analysis
* LEF and LIB interpretation
* Physical design flow explanation
* Verification planning
* Documentation preparation

### OpenAI Codex

Used for:

* Black-box Verilog generation
* OpenLane configuration generation
* LEF engineering analysis
* OpenLane script analysis
* Engineering report generation

---

## Experiments Conducted

| Experiment    | Description                            |
| ------------- | -------------------------------------- |
| Experiment 01 | Repository Structure Analysis          |
| Experiment 02 | RTL Hierarchy and Macro Analysis       |
| Experiment 03 | Physical Design Output Verification    |
| Experiment 04 | AI-Generated OpenLane Configuration    |
| Experiment 05 | AI-Assisted LEF Macro Analysis         |
| Experiment 06 | OpenLane Script Analysis               |
| Experiment 07 | AI-Generated Black-Box Verilog Wrapper |
| Experiment 08 | OpenLane Configuration Validation      |
| Experiment 09 | Error Identification and Fixes         |
| Experiment 10 | AI Prompt Log                          |

---

## Generated Files

The following AI-generated artifacts are included in this repository:

* AMUX2_3V Black-Box Verilog Wrapper
* OpenLane Configuration File (`config.tcl`)

Each generated file was manually compared with the reference implementation to verify correctness.

---

## Repository Structure

```text
vsd-mixedsignal-ai-workflow/
│
├── README.md
│
├── docs/
│   ├── experiment_01_repo_analysis.md
│   ├── experiment_02_rtl_analysis.md
│   ├── experiment_03_physical_flow_verification.md
│   ├── experiment_04_openlane_config_generation.md
│   ├── experiment_05_lef_analysis.md
│   ├── experiment_06_openlane_script_analysis.md
│   ├── experiment_07_blackbox_generation.md
│   ├── experiment_08_config_validation.md
│   ├── experiment_09_error_identification_and_fixes.md
│   ├── experiment_10_prompt_log.md
│   └── final_observations.md
│
├── generated_files/
│   ├── AMUX2_3V_blackbox.v
│   └── config.tcl
│
└── screenshots/
    ├── experiment_03/
    ├── experiment_04/
    ├── experiment_05/
    └── experiment_06/
```

---

## Key Outcomes

* Studied the complete mixed-signal RTL-to-GDSII implementation flow.
* Understood analog hard macro integration using LEF, LIB, and Verilog abstractions.
* Generated OpenLane configuration and black-box Verilog files using AI assistance.
* Verified physical design outputs available in the reference repository.
* Compared AI-generated artifacts with the original implementation.
* Identified configuration differences and documented required corrections.
* Maintained a complete prompt log and engineering documentation for reproducibility.

---

## Key Learnings

* AI can significantly accelerate the understanding of complex VLSI repositories.
* OpenLane supports mixed-signal integration through LEF-based hard macro abstraction.
* Consistency between Verilog, LEF, LIB, and physical layout is essential.
* AI-generated design artifacts should always undergo manual engineering verification.
* Systematic documentation improves reproducibility and traceability of AI-assisted engineering workflows.

---

## Conclusion

This repository demonstrates an AI-assisted methodology for studying and documenting a mixed-signal RTL-to-GDSII implementation flow. By combining AI-generated artifacts with manual validation and structured documentation, the project provides a reproducible workflow for understanding mixed-signal physical design using OpenLane and the SKY130 PDK.

The study highlights both the strengths of AI in accelerating engineering tasks and the continued importance of human verification for ensuring technical correctness.
