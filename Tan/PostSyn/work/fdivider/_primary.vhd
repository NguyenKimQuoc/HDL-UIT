library verilog;
use verilog.vl_types.all;
entity fdivider is
    port(
        a_operand       : in     vl_logic_vector(31 downto 0);
        b_operand       : in     vl_logic_vector(31 downto 0);
        Exception       : out    vl_logic;
        result          : out    vl_logic_vector(31 downto 0)
    );
end fdivider;
