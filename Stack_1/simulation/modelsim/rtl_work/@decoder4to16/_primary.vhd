library verilog;
use verilog.vl_types.all;
entity Decoder4to16 is
    port(
        \out\           : out    vl_logic_vector(15 downto 0);
        \in\            : in     vl_logic_vector(3 downto 0);
        En              : in     vl_logic
    );
end Decoder4to16;
