# Experiment 08 - AI Generated Configuration Validation

## Objective

To validate the AI-generated OpenLane configuration file by comparing it against the configuration used in the reference repository and identifying any differences that required manual verification or correction.

---

## AI Tool Used

* Codex
* ChatGPT

---

## Generated File

The AI-generated configuration file is available here:

[config.tcl](../generated_files/config.tcl)

---

## Validation Method

The generated configuration was compared against the repository OpenLane configuration and verified parameter-by-parameter.

The comparison focused on:

* Design settings
* RTL source integration
* Analog macro integration
* Clock configuration
* Floorplanning parameters
* Placement settings
* PDN configuration
* Routing configuration

---

## Differences Identified

### Issue 1 – Clock Port Assumption

AI-generated configuration:

```tcl
set ::env(CLOCK_PORT) "SCK"
```

Repository configuration:

```tcl
set ::env(CLOCK_PORT) "select"
```

Observation:

The AI initially assumed that the SPI clock (SCK) should be used as the design clock. Repository analysis showed that the implementation flow uses the `select` signal as the configured clock source.

Correction:

The configuration was manually reviewed and updated based on repository verification.

---

### Issue 2 – Additional Routing Constraints

AI-generated configuration included:

```tcl
set ::env(RT_MIN_LAYER) "met1"
set ::env(RT_MAX_LAYER) "met5"
```

Repository configuration:

These parameters were not explicitly specified.

Observation:

The AI introduced additional routing constraints that were not present in the original implementation.

Result:

The parameters were identified as optional enhancements rather than required settings.

---

### Issue 3 – Configuration Style

Observation:

The AI-generated configuration used a more verbose and heavily documented style compared to the repository implementation.

Result:

No functional issue was observed. The generated configuration remained compatible with OpenLane conventions.

---

## Key Findings

1. AI successfully generated a largely correct OpenLane configuration.
2. Repository verification was necessary to identify configuration differences.
3. Manual review remains important even when AI-generated outputs appear correct.
4. Small parameter differences can affect implementation behavior.

---

## Result

Successfully validated the AI-generated OpenLane configuration and identified the key differences requiring manual verification before deployment.
