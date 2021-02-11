library verilog;
use verilog.vl_types.all;
entity LoopDivider10 is
    port(
        clk             : in     vl_logic;
        a               : in     vl_logic_vector(31 downto 0);
        i               : in     vl_logic_vector(2 downto 0);
        start           : in     vl_logic;
        done            : out    vl_logic;
        value           : out    vl_logic_vector(31 downto 0)
    );
end LoopDivider10;
