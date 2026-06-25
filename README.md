# AI-Assisted Mixed-Signal Workflow

> **AI-assisted exploration, analysis, validation, and documentation of a mixed-signal RTL-to-GDSII implementation flow using OpenLane and the SKY130 Process Design Kit (PDK).**

---

## Project Overview

This repository documents an AI-assisted study of the **vsdmixedsignalflow** reference repository to understand how an analog hard macro can be integrated into a digital RTL-to-GDSII physical design flow.

The project combines **ChatGPT** and **OpenAI Codex** with manual engineering verification to analyze the repository, generate supporting design artifacts, validate AI-generated outputs, and document the complete workflow.

> **Note:** This repository focuses on AI-assisted analysis, artifact generation, validation, and documentation of the reference implementation. All AI-generated outputs were manually verified before acceptance.

---

## Reference Repository

This work is based on the following mixed-signal reference design:

**https://github.com/praharshapm/vsdmixedsignalflow**

The reference repository demonstrates the integration of an **AMUX2_3V analog hard macro** with digital SPI control logic using **OpenLane** and the **SKY130 PDK**.

---

# Project Objectives

The objectives of this work were to:

* Study a complete mixed-signal RTL-to-GDSII implementation flow.
* Understand analog hard macro integration using Verilog, LEF, and LIB views.
* Analyze OpenLane configuration and execution scripts.
* Generate design artifacts using AI assistance.
* Validate AI-generated outputs against the reference implementation.
* Document prompts, observations, corrections, and engineering findings.

---

# AI Tools Used

| Tool             | Purpose                                                                                                                           |
| ---------------- | --------------------------------------------------------------------------------------------------------------------------------- |
| **ChatGPT**      | Repository exploration, RTL analysis, LEF/LIB interpretation, OpenLane workflow explanation, verification planning, documentation |
| **OpenAI Codex** | Black-box Verilog generation, OpenLane configuration generation, LEF engineering analysis, OpenLane script analysis               |

---

# Workflow

```text
Reference Repository
        │
        ▼
Repository Analysis
        │
        ▼
RTL & LEF Analysis
        │
        ▼
AI Artifact Generation
        │
        ▼
Configuration Validation
        │
        ▼
Error Identification
        │
        ▼
Documentation & Observations
```

---

# Repository Highlights

* AI-assisted mixed-signal repository analysis
* RTL hierarchy exploration
* Analog macro (AMUX2_3V) integration study
* OpenLane configuration generation
* LEF engineering analysis
* OpenLane flow script analysis
* AI-generated Verilog black-box wrapper
* Configuration validation against the reference repository
* Error identification and correction tracking
* Complete AI prompt log
* Final observations and conclusions

---

# Experiments

| Experiment                                                            | Description                            |
| --------------------------------------------------------------------- | -------------------------------------- |
| [Experiment 01](docs/experiment_01_repo_analysis.md)                  | Repository Structure Analysis          |
| [Experiment 02](docs/experiment_02_rtl_analysis.md)                   | RTL Hierarchy and Macro Analysis       |
| [Experiment 03](docs/experiment_03_physical_flow_verification.md)     | Physical Design Output Verification    |
| [Experiment 04](docs/experiment_04_openlane_config_generation.md)     | AI-Generated OpenLane Configuration    |
| [Experiment 05](docs/experiment_05_lef_analysis.md)                   | AI-Assisted LEF Macro Analysis         |
| [Experiment 06](docs/experiment_06_openlane_script_analysis.md)       | OpenLane Script Analysis               |
| [Experiment 07](docs/experiment_07_blackbox_generation.md)            | AI-Generated Black-Box Verilog Wrapper |
| [Experiment 08](docs/experiment_08_config_validation.md)              | OpenLane Configuration Validation      |
| [Experiment 09](docs/experiment_09_error_identification_and_fixes.md) | Error Identification and Fixes         |
| [Experiment 10](docs/experiment_10_prompt_log.md)                     | AI Prompt Log                          |
| [Final Observations](docs/final_observations.md)                      | Project Summary and Conclusions        |

---

# AI-Generated Artifacts

The following files were generated using AI tools during this study.

| File                                                                         | Description                            |
| ---------------------------------------------------------------------------- | -------------------------------------- |
| [`generated_files/config.tcl`](generated_files/config.tcl)                   | AI-generated OpenLane configuration    |
| [`generated_files/AMUX2_3V_blackbox.v`](generated_files/AMUX2_3V_blackbox.v) | AI-generated Verilog black-box wrapper |

All generated artifacts were manually compared against the reference repository before acceptance.

---

# Repository Structure

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

# Key Learnings

* OpenLane enables mixed-signal integration using LEF-based hard macro abstraction.
* Analog macros require consistent Verilog, LEF, LIB, and physical layout representations.
* AI tools significantly accelerate repository exploration and documentation.
* AI-generated design artifacts should always be validated before use.
* Manual engineering verification remains essential for reliable physical design workflows.

---

# Conclusion

This repository demonstrates an AI-assisted methodology for studying and documenting a mixed-signal RTL-to-GDSII implementation flow. AI tools were successfully used to analyze the reference repository, generate supporting design artifacts, validate configuration files, and produce structured engineering documentation.

The project highlights how AI can improve engineering productivity while reinforcing the importance of manual verification to ensure technical correctness.


