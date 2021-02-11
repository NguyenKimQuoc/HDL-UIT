library verilog;
use verilog.vl_types.all;
entity Decoder8to256 is
    port(
        \out\           : out    vl_logic_vector(255 downto 0);
        \in\            : in     vl_logic_vector(7 downto 0);
        En              : in     vl_logic
    );
end Decoder8to256;
