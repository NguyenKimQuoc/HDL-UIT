library verilog;
use verilog.vl_types.all;
entity \Register\ is
    generic(
        N               : integer := 0
    );
    port(
        \Out\           : out    vl_logic_vector;
        Clk             : in     vl_logic;
        \In\            : in     vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end \Register\;
