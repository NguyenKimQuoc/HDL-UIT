library verilog;
use verilog.vl_types.all;
entity ShiftParallel_NBIT is
    generic(
        N               : integer := 8
    );
    port(
        \Out\           : out    vl_logic_vector;
        Clk             : in     vl_logic;
        \In\            : in     vl_logic_vector;
        IL              : in     vl_logic;
        IR              : in     vl_logic;
        Sel0            : in     vl_logic;
        Sel1            : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end ShiftParallel_NBIT;
