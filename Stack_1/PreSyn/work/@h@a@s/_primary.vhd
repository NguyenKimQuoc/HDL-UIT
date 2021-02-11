library verilog;
use verilog.vl_types.all;
entity HAS is
    port(
        C               : out    vl_logic;
        Qnext           : out    vl_logic;
        D               : in     vl_logic;
        Q               : in     vl_logic;
        Cin             : in     vl_logic
    );
end HAS;
