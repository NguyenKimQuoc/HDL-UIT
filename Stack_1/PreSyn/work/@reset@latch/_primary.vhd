library verilog;
use verilog.vl_types.all;
entity ResetLatch is
    port(
        R               : out    vl_logic;
        B               : out    vl_logic;
        Clr_n           : in     vl_logic;
        \In\            : in     vl_logic;
        Clk             : in     vl_logic;
        S               : in     vl_logic
    );
end ResetLatch;
