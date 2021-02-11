library verilog;
use verilog.vl_types.all;
entity ShiftParallel_NBIT is
    port(
        \Out\           : out    vl_logic_vector(7 downto 0);
        Clk             : in     vl_logic;
        \In\            : in     vl_logic_vector(7 downto 0);
        IL              : in     vl_logic;
        IR              : in     vl_logic;
        Sel0            : in     vl_logic;
        Sel1            : in     vl_logic
    );
end ShiftParallel_NBIT;
