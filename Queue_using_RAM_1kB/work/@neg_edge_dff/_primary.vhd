library verilog;
use verilog.vl_types.all;
entity Neg_edge_dff is
    port(
        Q               : out    vl_logic;
        D               : in     vl_logic;
        Reset           : in     vl_logic;
        clk             : in     vl_logic
    );
end Neg_edge_dff;
