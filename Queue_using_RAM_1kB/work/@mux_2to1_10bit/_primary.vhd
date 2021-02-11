library verilog;
use verilog.vl_types.all;
entity Mux_2to1_10bit is
    generic(
        N               : integer := 10
    );
    port(
        o               : out    vl_logic_vector;
        i0              : in     vl_logic_vector;
        i1              : in     vl_logic_vector;
        s               : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end Mux_2to1_10bit;
