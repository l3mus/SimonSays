library verilog;
use verilog.vl_types.all;
entity top is
    port(
        red_out         : out    vl_logic_vector(7 downto 0);
        green_out       : out    vl_logic_vector(7 downto 0);
        blue_out        : out    vl_logic_vector(7 downto 0);
        hs_out          : out    vl_logic;
        clk25_out       : out    vl_logic;
        sync            : out    vl_logic;
        blank           : out    vl_logic;
        vs_out          : out    vl_logic;
        clk_50          : in     vl_logic;
        newGame         : in     vl_logic;
        block0          : in     vl_logic;
        block1          : in     vl_logic;
        block2          : in     vl_logic;
        block3          : in     vl_logic
    );
end top;
