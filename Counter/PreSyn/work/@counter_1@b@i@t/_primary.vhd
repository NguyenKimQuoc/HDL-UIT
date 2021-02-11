library verilog;
use verilog.vl_types.all;
entity Counter_1BIT is
    port(
        Q               : out    vl_logic;
        Cout            : out    vl_logic;
        Clk             : in     vl_logic;
        D               : in     vl_logic;
        Load            : in     vl_logic;
        Cin             : in     vl_logic;
        \In\            : in     vl_logic
    );
end Counter_1BIT;
