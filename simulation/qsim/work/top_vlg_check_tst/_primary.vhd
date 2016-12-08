library verilog;
use verilog.vl_types.all;
entity top_vlg_check_tst is
    port(
        blank           : in     vl_logic;
        blue_out        : in     vl_logic_vector(9 downto 0);
        clk25_out       : in     vl_logic;
        green_out       : in     vl_logic_vector(9 downto 0);
        hs_out          : in     vl_logic;
        red_out         : in     vl_logic_vector(9 downto 0);
        sync            : in     vl_logic;
        vs_out          : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end top_vlg_check_tst;
