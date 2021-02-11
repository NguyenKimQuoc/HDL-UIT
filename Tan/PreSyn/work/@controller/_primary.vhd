library verilog;
use verilog.vl_types.all;
entity Controller is
    port(
        clk             : in     vl_logic;
        angleGreaterA   : in     vl_logic;
        doneLoop        : in     vl_logic;
        done            : in     vl_logic;
        start           : out    vl_logic;
        startLoop       : out    vl_logic;
        Y_signal        : out    vl_logic;
        X_signal        : out    vl_logic;
        angle_signal    : out    vl_logic;
        t1_signal       : out    vl_logic;
        t2_signal       : out    vl_logic;
        verify_angleGreaterA: out    vl_logic
    );
end Controller;
