library verilog;
use verilog.vl_types.all;
entity Counter_NBIT_vlg_check_tst is
    port(
        Cout            : in     vl_logic;
        Q               : in     vl_logic_vector(9 downto 0);
        sampler_rx      : in     vl_logic
    );
end Counter_NBIT_vlg_check_tst;
