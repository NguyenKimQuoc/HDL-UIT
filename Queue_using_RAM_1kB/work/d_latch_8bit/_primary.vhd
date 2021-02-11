library verilog;
use verilog.vl_types.all;
entity d_latch_8bit is
    port(
        Q               : out    vl_logic_vector(7 downto 0);
        Q_n             : out    vl_logic_vector(7 downto 0);
        E               : in     vl_logic;
        D               : in     vl_logic_vector(7 downto 0)
    );
end d_latch_8bit;
