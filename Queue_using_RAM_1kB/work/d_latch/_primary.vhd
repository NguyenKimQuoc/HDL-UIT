library verilog;
use verilog.vl_types.all;
entity d_latch is
    port(
        q               : out    vl_logic;
        q_n             : out    vl_logic;
        en              : in     vl_logic;
        d               : in     vl_logic
    );
end d_latch;
