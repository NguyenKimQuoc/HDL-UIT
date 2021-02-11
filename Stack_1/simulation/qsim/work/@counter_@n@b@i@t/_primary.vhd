library verilog;
use verilog.vl_types.all;
entity Counter_NBIT is
    port(
        Q               : out    vl_logic_vector(9 downto 0);
        Cout            : out    vl_logic;
        Clk             : in     vl_logic;
        D               : in     vl_logic;
        E               : in     vl_logic;
        Load            : in     vl_logic;
        \In\            : in     vl_logic_vector(9 downto 0);
        Set             : in     vl_logic;
        Reset           : in     vl_logic
    );
end Counter_NBIT;
