library verilog;
use verilog.vl_types.all;
entity tb_Counter_8BIT is
    generic(
        k               : integer := 10
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of k : constant is 1;
end tb_Counter_8BIT;
