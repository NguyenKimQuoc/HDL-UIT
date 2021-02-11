library verilog;
use verilog.vl_types.all;
entity Tan is
    port(
        clk             : in     vl_logic;
        angle           : in     vl_logic_vector(31 downto 0);
        start_restart   : in     vl_logic;
        done            : out    vl_logic;
        result          : out    vl_logic_vector(31 downto 0);
        start           : out    vl_logic;
        startLoop       : out    vl_logic;
        Y_signal        : out    vl_logic;
        X_signal        : out    vl_logic;
        angle_signal    : out    vl_logic;
        tp_signal       : out    vl_logic;
        verify_angleGreaterA: out    vl_logic;
        angleGreaterA   : out    vl_logic;
        doneLoop        : out    vl_logic;
        a_wire          : out    vl_logic_vector(31 downto 0);
        radian_angle    : out    vl_logic_vector(31 downto 0);
        X               : out    vl_logic_vector(31 downto 0);
        Y               : out    vl_logic_vector(31 downto 0);
        i               : out    vl_logic_vector(3 downto 0);
        t1              : out    vl_logic_vector(31 downto 0);
        t2              : out    vl_logic_vector(31 downto 0);
        K_wire          : out    vl_logic_vector(31 downto 0);
        X_Y_mul_signal  : out    vl_logic;
        X_Y_add_signal  : out    vl_logic
    );
end Tan;
