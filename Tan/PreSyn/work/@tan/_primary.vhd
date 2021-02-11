library verilog;
use verilog.vl_types.all;
entity Tan is
    port(
        clk             : in     vl_logic;
        degree_angle    : in     vl_logic_vector(31 downto 0);
        done            : out    vl_logic;
        result          : out    vl_logic_vector(31 downto 0);
        a_wire          : out    vl_logic_vector(31 downto 0);
        radian_angle    : out    vl_logic_vector(31 downto 0);
        start           : out    vl_logic;
        startLoop       : out    vl_logic;
        Y_signal        : out    vl_logic;
        X_signal        : out    vl_logic;
        angle_signal    : out    vl_logic;
        t1_signal       : out    vl_logic;
        t2_signal       : out    vl_logic;
        verify_angleGreaterA: out    vl_logic;
        angleGreaterA   : out    vl_logic;
        doneLoop        : out    vl_logic
    );
end Tan;
