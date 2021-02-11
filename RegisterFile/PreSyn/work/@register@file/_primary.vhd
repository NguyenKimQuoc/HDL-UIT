library verilog;
use verilog.vl_types.all;
entity RegisterFile is
    port(
        OutA            : out    vl_logic_vector(31 downto 0);
        OutB            : out    vl_logic_vector(31 downto 0);
        Clk             : in     vl_logic;
        WriteEn         : in     vl_logic;
        WriteAddr       : in     vl_logic_vector(4 downto 0);
        ReadEnA         : in     vl_logic;
        ReadEnB         : in     vl_logic;
        ReadAddrA       : in     vl_logic_vector(4 downto 0);
        ReadAddrB       : in     vl_logic_vector(4 downto 0);
        \In\            : in     vl_logic_vector(31 downto 0)
    );
end RegisterFile;
