# Experiment 07 - AI Generated Black-Box Verilog Wrapper

## Objective

To generate a Verilog black-box wrapper for the AMUX2_3V analog macro using AI assistance and understand how analog hard macros are represented during digital synthesis and physical design.

---

## AI Tool Used

- Codex
- ChatGPT

---

## Prompt Used

Generate a synthesizable black-box Verilog wrapper for the AMUX2_3V analog multiplexer macro.

Requirements:

- Preserve the macro as a hard analog block
- Use proper Verilog syntax
- Include power pins
- Match LEF pin names
- Prevent synthesis of internal analog circuitry

---

## Generated File

The AI-generated file is available here:

[AMUX2_3V_blackbox.v](../generated_files/AMUX2_3V_blackbox.v)

---

## Generated Verilog

```verilog
`default_nettype none

(* blackbox *)
module AMUX2_3V (
    input  wire I0,
    input  wire I1,
    input  wire select,
    output wire out,
    inout  wire VDD,
    inout  wire VSS
);

endmodule

`default_nettype wire
```

---

## Analysis

The generated module contains only the external interface of the analog macro and intentionally omits internal implementation details.

Key observations:

- The module name matches the macro name used throughout the repository.
- Input, output, and power pins are explicitly defined.
- The `(* blackbox *)` attribute instructs synthesis tools to preserve the macro instance.
- No behavioral implementation is provided.
- The macro is treated as a hard block during synthesis and physical design.

---

## Verification

The generated wrapper was compared against the repository implementation and verified for:

- Module name consistency
- Pin name consistency
- Power pin definitions
- Compatibility with LEF-based macro integration

The generated wrapper successfully matched the logical interface required for mixed-signal integration.

---

## Key Findings

1. Analog hard macros require a logical Verilog interface for synthesis.
2. Internal analog functionality is not synthesized.
3. Black-box wrappers allow digital tools to preserve analog blocks.
4. Consistency between Verilog, LEF, LIB, and layout views is critical.

---

## Result

Successfully generated and documented a black-box Verilog wrapper for the AMUX2_3V analog macro using AI-assisted design exploration.
