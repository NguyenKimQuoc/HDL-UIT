library verilog;
use verilog.vl_types.all;
entity D_FlipFlop is
    port(
        Q               : out    vl_logic;
        D               : in     vl_logic;
        Clk             : in     vl_logic
    );
end D_FlipFlop;
