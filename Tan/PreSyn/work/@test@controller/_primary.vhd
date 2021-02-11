library verilog;
use verilog.vl_types.all;
entity TestController is
    generic(
        k               : integer := 500
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of k : constant is 1;
end TestController;
