library verilog;
use verilog.vl_types.all;
entity MCell_1BIT is
    port(
        \Out\           : out    vl_logic;
        \In\            : in     vl_logic;
        RowSel          : in     vl_logic;
        WriteEn         : in     vl_logic
    );
end MCell_1BIT;
