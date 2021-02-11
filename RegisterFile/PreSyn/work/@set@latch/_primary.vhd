library verilog;
use verilog.vl_types.all;
entity SetLatch is
    port(
        S               : out    vl_logic;
        Pre_n           : in     vl_logic;
        Clr_n           : in     vl_logic;
        \In\            : in     vl_logic;
        Clk             : in     vl_logic
    );
end SetLatch;
