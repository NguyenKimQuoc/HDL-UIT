library verilog;
use verilog.vl_types.all;
entity RegisterFileCell is
    port(
        OutA            : out    vl_logic;
        OutB            : out    vl_logic;
        Clk             : in     vl_logic;
        ReadA           : in     vl_logic;
        ReadB           : in     vl_logic;
        WS              : in     vl_logic;
        \In\            : in     vl_logic
    );
end RegisterFileCell;
