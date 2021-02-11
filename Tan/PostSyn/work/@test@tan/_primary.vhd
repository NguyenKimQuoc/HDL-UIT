library verilog;
use verilog.vl_types.all;
entity TestTan is
    generic(
        k               : integer := 20
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of k : constant is 1;
end TestTan;
