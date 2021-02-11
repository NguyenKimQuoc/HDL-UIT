library verilog;
use verilog.vl_types.all;
entity decoder_10to1024 is
    port(
        Y               : out    vl_logic_vector(1023 downto 0);
        en              : in     vl_logic;
        addr            : in     vl_logic_vector(9 downto 0)
    );
end decoder_10to1024;
