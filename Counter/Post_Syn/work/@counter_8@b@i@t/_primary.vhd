library verilog;
use verilog.vl_types.all;
entity Counter_8BIT is
    port(
        Q               : out    vl_logic_vector(7 downto 0);
        Cout            : out    vl_logic;
        Clk             : in     vl_logic;
        D               : in     vl_logic;
        E               : in     vl_logic;
        Load            : in     vl_logic;
        \In\            : in     vl_logic_vector(7 downto 0)
    );
end Counter_8BIT;
