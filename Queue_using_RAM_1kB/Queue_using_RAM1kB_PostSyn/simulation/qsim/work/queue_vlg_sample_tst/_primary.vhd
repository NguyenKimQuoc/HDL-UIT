library verilog;
use verilog.vl_types.all;
entity queue_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        en              : in     vl_logic;
        io              : in     vl_logic_vector(7 downto 0);
        rest_n          : in     vl_logic;
        rw              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end queue_vlg_sample_tst;
