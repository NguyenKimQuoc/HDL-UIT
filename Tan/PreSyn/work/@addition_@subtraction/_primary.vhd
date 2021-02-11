library verilog;
use verilog.vl_types.all;
entity Addition_Subtraction is
    port(
        a_operand       : in     vl_logic_vector(31 downto 0);
        b_operand       : in     vl_logic_vector(31 downto 0);
        AddBar_Sub      : in     vl_logic;
        Exception       : out    vl_logic;
        result          : out    vl_logic_vector(31 downto 0)
    );
end Addition_Subtraction;
