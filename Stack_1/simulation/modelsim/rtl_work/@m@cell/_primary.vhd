library verilog;
use verilog.vl_types.all;
entity MCell is
    generic(
        N               : integer := 8
    );
    port(
        \Out\           : out    vl_logic_vector;
        \In\            : in     vl_logic_vector;
        RowSel          : in     vl_logic;
        WriteEn         : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end MCell;
