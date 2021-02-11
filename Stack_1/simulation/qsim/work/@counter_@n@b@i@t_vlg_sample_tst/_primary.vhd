library verilog;
use verilog.vl_types.all;
entity Counter_NBIT_vlg_sample_tst is
    port(
        Clk             : in     vl_logic;
        D               : in     vl_logic;
        E               : in     vl_logic;
        \In\            : in     vl_logic_vector(9 downto 0);
        Load            : in     vl_logic;
        Reset           : in     vl_logic;
        Set             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Counter_NBIT_vlg_sample_tst;
