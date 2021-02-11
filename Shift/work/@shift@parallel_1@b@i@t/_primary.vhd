library verilog;
use verilog.vl_types.all;
entity ShiftParallel_1BIT is
    port(
        \Out\           : out    vl_logic;
        Clk             : in     vl_logic;
        Sel0            : in     vl_logic;
        Sel1            : in     vl_logic;
        Value1          : in     vl_logic;
        Value2          : in     vl_logic;
        Value3          : in     vl_logic
    );
end ShiftParallel_1BIT;
