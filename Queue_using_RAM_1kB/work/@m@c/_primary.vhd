library verilog;
use verilog.vl_types.all;
entity MC is
    port(
        cout            : out    vl_logic;
        RS              : in     vl_logic;
        WE              : in     vl_logic;
        din             : in     vl_logic
    );
end MC;
