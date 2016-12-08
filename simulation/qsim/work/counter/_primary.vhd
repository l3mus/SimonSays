library verilog;
use verilog.vl_types.all;
entity counter is
    port(
        Q               : out    vl_logic_vector(1 downto 0);
        CLK             : in     vl_logic;
        ENABLE          : in     vl_logic;
        CLEAR           : in     vl_logic
    );
end counter;
