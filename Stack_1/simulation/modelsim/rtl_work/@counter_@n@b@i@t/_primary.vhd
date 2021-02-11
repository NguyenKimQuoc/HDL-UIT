library verilog;
use verilog.vl_types.all;
entity Counter_NBIT is
    generic(
        N               : integer := 10
    );
    port(
        Q               : out    vl_logic_vector;
        Cout            : out    vl_logic;
        Clk             : in     vl_logic;
        D               : in     vl_logic;
        E               : in     vl_logic;
        Load            : in     vl_logic;
        \In\            : in     vl_logic_vector;
        Set             : in     vl_logic;
        Reset           : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end Counter_NBIT;
