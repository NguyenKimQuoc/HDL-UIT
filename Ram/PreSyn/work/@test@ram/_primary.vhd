library verilog;
use verilog.vl_types.all;
entity TestRam is
    generic(
        k               : integer := 50
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of k : constant is 1;
end TestRam;
