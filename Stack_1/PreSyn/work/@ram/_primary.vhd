library verilog;
use verilog.vl_types.all;
entity Ram is
    port(
        IO              : inout  vl_logic_vector(7 downto 0);
        Address         : in     vl_logic_vector(9 downto 0);
        RWS             : in     vl_logic;
        CS              : in     vl_logic
    );
end Ram;
