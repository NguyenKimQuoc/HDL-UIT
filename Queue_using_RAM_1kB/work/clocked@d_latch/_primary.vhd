library verilog;
use verilog.vl_types.all;
entity clockedD_latch is
    port(
        Q               : out    vl_logic;
        Qbar            : out    vl_logic;
        D               : in     vl_logic;
        Reset           : in     vl_logic;
        clk             : in     vl_logic
    );
end clockedD_latch;
