library verilog;
use verilog.vl_types.all;
entity OutputLatch is
    port(
        Q               : out    vl_logic;
        Pre_n           : in     vl_logic;
        Clr_n           : in     vl_logic;
        S               : in     vl_logic;
        R               : in     vl_logic
    );
end OutputLatch;
