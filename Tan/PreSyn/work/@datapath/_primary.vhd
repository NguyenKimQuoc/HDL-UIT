library verilog;
use verilog.vl_types.all;
entity Datapath is
    port(
        clk             : in     vl_logic;
        start           : in     vl_logic;
        startLoop       : in     vl_logic;
        Y_signal        : in     vl_logic;
        X_signal        : in     vl_logic;
        angle_signal    : in     vl_logic;
        t1_signal       : in     vl_logic;
        t2_signal       : in     vl_logic;
        verify_angleGreaterA: in     vl_logic;
        degree_angle    : in     vl_logic_vector(31 downto 0);
        angleGreaterA   : out    vl_logic;
        doneLoop        : out    vl_logic;
        done            : out    vl_logic;
        result          : out    vl_logic_vector(31 downto 0);
        a_wire          : out    vl_logic_vector(31 downto 0);
        radian_angle    : out    vl_logic_vector(31 downto 0)
    );
end Datapath;
