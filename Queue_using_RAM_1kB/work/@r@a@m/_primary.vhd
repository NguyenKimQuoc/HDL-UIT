library verilog;
use verilog.vl_types.all;
entity RAM is
    port(
        io              : inout  vl_logic_vector(7 downto 0);
        addr            : in     vl_logic_vector(9 downto 0);
        rws             : in     vl_logic;
        cs              : in     vl_logic;
        en_decoder      : in     vl_logic
    );
end RAM;
