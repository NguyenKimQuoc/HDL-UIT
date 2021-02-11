library verilog;
use verilog.vl_types.all;
entity queue is
    generic(
        N               : integer := 11;
        M               : integer := 8
    );
    port(
        io              : inout  vl_logic_vector(7 downto 0);
        empty           : out    vl_logic;
        full            : out    vl_logic;
        reset_n         : in     vl_logic;
        en              : in     vl_logic;
        rw              : in     vl_logic;
        clk             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
    attribute mti_svvh_generic_type of M : constant is 1;
end queue;
