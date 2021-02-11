library verilog;
use verilog.vl_types.all;
entity Counter is
    generic(
        N               : integer := 11
    );
    port(
        qout            : out    vl_logic_vector;
        D               : in     vl_logic;
        E               : in     vl_logic;
        reset_n         : in     vl_logic;
        clk             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end Counter;
