library verilog;
use verilog.vl_types.all;
entity Mux21_1BIT is
    port(
        \Out\           : out    vl_logic;
        Sel             : in     vl_logic;
        Value0          : in     vl_logic;
        Value1          : in     vl_logic
    );
end Mux21_1BIT;
