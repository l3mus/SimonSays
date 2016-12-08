library verilog;
use verilog.vl_types.all;
entity counter_vlg_sample_tst is
    port(
        CLEAR           : in     vl_logic;
        CLK             : in     vl_logic;
        ENABLE          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end counter_vlg_sample_tst;
