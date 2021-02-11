library verilog;
use verilog.vl_types.all;
entity Mux_2to1 is
    port(
        \out\           : out    vl_logic;
        in0             : in     vl_logic;
        in1             : in     vl_logic;
        s               : in     vl_logic
    );
end Mux_2to1;
