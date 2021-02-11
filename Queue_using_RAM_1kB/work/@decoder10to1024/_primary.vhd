library verilog;
use verilog.vl_types.all;
entity Decoder10to1024 is
    port(
        \out\           : out    vl_logic_vector(1023 downto 0);
        \in\            : in     vl_logic_vector(9 downto 0);
        En              : in     vl_logic
    );
end Decoder10to1024;
