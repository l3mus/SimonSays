library verilog;
use verilog.vl_types.all;
entity top_vlg_sample_tst is
    port(
        block0          : in     vl_logic;
        block1          : in     vl_logic;
        block2          : in     vl_logic;
        block3          : in     vl_logic;
        clk_50          : in     vl_logic;
        newGame         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end top_vlg_sample_tst;
