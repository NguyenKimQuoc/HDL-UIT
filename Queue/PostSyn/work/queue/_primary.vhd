library verilog;
use verilog.vl_types.all;
entity queue is
    port(
        io              : inout  vl_logic_vector(7 downto 0);
        empty           : out    vl_logic;
        full            : out    vl_logic;
        reset_n         : in     vl_logic;
        en              : in     vl_logic;
        rw              : in     vl_logic;
        clk             : in     vl_logic
    );
end queue;
