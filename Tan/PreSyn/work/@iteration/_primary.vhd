library verilog;
use verilog.vl_types.all;
entity Iteration is
    port(
        operand_1       : in     vl_logic_vector(31 downto 0);
        operand_2       : in     vl_logic_vector(31 downto 0);
        solution        : out    vl_logic_vector(31 downto 0)
    );
end Iteration;
