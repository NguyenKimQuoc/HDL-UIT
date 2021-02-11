library verilog;
use verilog.vl_types.all;
entity DegtoRad is
    port(
        Deg             : in     vl_logic_vector(31 downto 0);
        Rad             : out    vl_logic_vector(31 downto 0);
        Exception       : out    vl_logic;
        Exception1      : out    vl_logic;
        w               : out    vl_logic_vector(31 downto 0)
    );
end DegtoRad;
