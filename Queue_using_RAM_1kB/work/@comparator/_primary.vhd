library verilog;
use verilog.vl_types.all;
entity Comparator is
    generic(
        N               : integer := 10
    );
    port(
        \out\           : out    vl_logic;
        in1             : in     vl_logic_vector;
        in2             : in     vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end Comparator;
