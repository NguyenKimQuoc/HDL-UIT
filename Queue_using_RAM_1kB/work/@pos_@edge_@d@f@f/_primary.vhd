library verilog;
use verilog.vl_types.all;
entity Pos_Edge_DFF is
    port(
        Q               : out    vl_logic;
        D               : in     vl_logic;
        Reset_n         : in     vl_logic;
        clk             : in     vl_logic
    );
end Pos_Edge_DFF;
