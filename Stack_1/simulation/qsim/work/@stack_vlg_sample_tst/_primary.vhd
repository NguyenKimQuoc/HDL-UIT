library verilog;
use verilog.vl_types.all;
entity Stack_vlg_sample_tst is
    port(
        Clk             : in     vl_logic;
        Enable          : in     vl_logic;
        IO              : in     vl_logic_vector(7 downto 0);
        Push_Pop        : in     vl_logic;
        Reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Stack_vlg_sample_tst;
