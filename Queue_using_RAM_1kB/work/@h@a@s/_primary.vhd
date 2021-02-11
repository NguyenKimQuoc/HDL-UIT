library verilog;
use verilog.vl_types.all;
entity HAS is
    port(
        Ci_next         : out    vl_logic;
        Di              : out    vl_logic;
        E               : in     vl_logic;
        D               : in     vl_logic;
        Qi              : in     vl_logic;
        Ci              : in     vl_logic
    );
end HAS;
