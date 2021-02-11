library verilog;
use verilog.vl_types.all;
entity MC_8bit is
    port(
        cout            : out    vl_logic_vector(7 downto 0);
        RS              : in     vl_logic;
        WE              : in     vl_logic;
        din             : in     vl_logic_vector(7 downto 0)
    );
end MC_8bit;
