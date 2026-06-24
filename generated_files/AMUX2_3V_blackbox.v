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

    // Intentionally empty: AMUX2_3V is implemented as a hard analog macro.

endmodule

`default_nettype wire
