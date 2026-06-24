# Experiment 10 - AI Prompt Log

## Objective

To maintain a record of the major prompts used during the AI-assisted exploration, analysis, and documentation of the mixed-signal RTL-to-GDSII flow.

---

## AI Tools Used

### ChatGPT

Used for:

* Repository analysis
* RTL understanding
* LEF interpretation
* OpenLane flow explanation
* Verification planning
* Documentation support

### Codex

Used for:

* Black-box Verilog generation
* OpenLane configuration generation
* LEF engineering analysis
* OpenLane script analysis

---

## Prompt Log

| Prompt ID | AI Tool | Purpose                                                           |
| --------- | ------- | ----------------------------------------------------------------- |
| P01       | ChatGPT | Identify the top-level module in the repository                   |
| P02       | ChatGPT | Identify RTL, LEF, LIB, and OpenLane files                        |
| P03       | ChatGPT | Explain the complete RTL-to-GDSII flow                            |
| P04       | Codex   | Generate AMUX2_3V black-box Verilog wrapper                       |
| P05       | Codex   | Generate OpenLane config.tcl                                      |
| P06       | Codex   | Analyze the AMUX2_3V LEF file                                     |
| P07       | Codex   | Explain the OpenLane script.tcl flow                              |
| P08       | ChatGPT | Compare AI-generated configuration with repository implementation |
| P09       | ChatGPT | Identify discrepancies and required corrections                   |
| P10       | ChatGPT | Assist in documentation and experiment preparation                |

---

## Observations

AI tools significantly reduced the time required to understand the repository structure and generate supporting design artifacts. However, all generated outputs required manual verification against the reference implementation before acceptance.

---

## Result

A complete record of the major prompts, AI tools, and generated outputs was maintained throughout the project to ensure traceability and reproducibility of the AI-assisted workflow.
