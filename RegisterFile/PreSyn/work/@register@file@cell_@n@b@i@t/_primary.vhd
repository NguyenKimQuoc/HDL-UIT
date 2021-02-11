library verilog;
use verilog.vl_types.all;
entity RegisterFileCell_NBIT is
    generic(
        N               : integer := 32
    );
    port(
        OutA            : out    vl_logic_vector;
        OutB            : out    vl_logic_vector;
        Clk             : in     vl_logic;
        ReadA           : in     vl_logic;
        ReadB           : in     vl_logic;
        WS              : in     vl_logic;
        \In\            : in     vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end RegisterFileCell_NBIT;
