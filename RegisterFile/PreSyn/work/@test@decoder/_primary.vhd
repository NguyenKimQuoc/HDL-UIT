library verilog;
use verilog.vl_types.all;
entity TestDecoder is
    generic(
        t               : integer := 50
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of t : constant is 1;
end TestDecoder;
