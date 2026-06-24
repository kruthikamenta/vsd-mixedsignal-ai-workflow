# Experiment 09 - Error Identification and Fixes

## Objective

To document discrepancies identified during AI-assisted generation and analysis of mixed-signal design files, along with the verification and correction process used to resolve them.

---

## AI Tools Used

* ChatGPT
* Codex

---

## Error 1 - Clock Port Selection

### AI Output

The AI-generated OpenLane configuration initially used:

```tcl
set ::env(CLOCK_PORT) "SCK"
```

### Repository Verification

The reference repository configuration used:

```tcl
set ::env(CLOCK_PORT) "select"
```

### Analysis

The AI assumed that the SPI clock signal should be used as the design clock. Repository inspection revealed that the implementation flow was configured using the `select` signal.

### Fix

The clock configuration was manually reviewed and updated based on repository verification.

---

## Error 2 - Additional Routing Constraints

### AI Output

The generated configuration introduced:

```tcl
set ::env(RT_MIN_LAYER) "met1"
set ::env(RT_MAX_LAYER) "met5"
```

### Repository Verification

The repository configuration did not explicitly define these parameters.

### Analysis

The AI added optional routing constraints that were not required by the original implementation.

### Fix

The parameters were documented as optional enhancements rather than mandatory settings.

---

## Error 3 - Macro Integration Assumptions

### AI Output

The generated black-box wrapper assumed explicit power pins:

```verilog
inout wire VDD;
inout wire VSS;
```

### Repository Verification

Repository integration required verification of power connectivity through LEF, LIB, and OpenLane configuration files.

### Analysis

Although the generated wrapper was structurally correct, power connectivity assumptions required manual validation.

### Fix

Power pin definitions were verified against repository macro views before acceptance.

---

## Error 4 - Configuration Style Differences

### AI Output

The generated configuration contained extensive comments and additional documentation.

### Repository Verification

The repository configuration used a compact implementation style.

### Analysis

No functional error was present; however, style differences were observed.

### Fix

No correction required.

---

## Lessons Learned

1. AI-generated outputs should always be verified against reference implementations.
2. Small configuration differences can impact implementation results.
3. Consistency across Verilog, LEF, LIB, and OpenLane files is essential.
4. Manual engineering review remains necessary even when AI-generated outputs appear correct.

---

## Result

Several differences between AI-generated artifacts and repository implementations were identified and analyzed. Repository verification enabled corrections and improved understanding of mixed-signal OpenLane integration requirements.
