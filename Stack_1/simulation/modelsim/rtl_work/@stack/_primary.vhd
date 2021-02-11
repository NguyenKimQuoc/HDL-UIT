library verilog;
use verilog.vl_types.all;
entity Stack is
    port(
        IO              : inout  vl_logic_vector(7 downto 0);
        Full            : out    vl_logic;
        Empty           : out    vl_logic;
        Reset           : in     vl_logic;
        Push_Pop        : in     vl_logic;
        Enable          : in     vl_logic;
        Clk             : in     vl_logic
    );
end Stack;
