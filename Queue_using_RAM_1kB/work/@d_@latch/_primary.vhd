library verilog;
use verilog.vl_types.all;
entity D_Latch is
    port(
        Q               : out    vl_logic;
        D               : in     vl_logic;
        E               : in     vl_logic
    );
end D_Latch;
