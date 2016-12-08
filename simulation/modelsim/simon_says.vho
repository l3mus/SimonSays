-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "12/02/2016 20:51:40"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top IS
    PORT (
	q : OUT std_logic_vector(2 DOWNTO 0);
	clk : IN std_logic;
	newGame : IN std_logic
	);
END top;

-- Design Ports Information
-- q[0]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newGame	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_q : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_newGame : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \q[2]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \regASel[0]~5_combout\ : std_logic;
SIGNAL \newGame~input_o\ : std_logic;
SIGNAL \regASel[3]~13\ : std_logic;
SIGNAL \regASel[4]~14_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \regASel[0]~11_combout\ : std_logic;
SIGNAL \regASel[0]~6\ : std_logic;
SIGNAL \regASel[1]~7_combout\ : std_logic;
SIGNAL \regASel[1]~8\ : std_logic;
SIGNAL \regASel[2]~9_combout\ : std_logic;
SIGNAL \regASel[2]~10\ : std_logic;
SIGNAL \regASel[3]~12_combout\ : std_logic;
SIGNAL \Rand|Pre_Q~1_combout\ : std_logic;
SIGNAL \Rand|Pre_Q~2_combout\ : std_logic;
SIGNAL \Rand|Pre_Q~0_combout\ : std_logic;
SIGNAL \input[0]~1_combout\ : std_logic;
SIGNAL \input[0]~0_combout\ : std_logic;
SIGNAL \Reg|registers~248_combout\ : std_logic;
SIGNAL \writeEnable~0_combout\ : std_logic;
SIGNAL \writeEnable~q\ : std_logic;
SIGNAL \Reg|registers~199_combout\ : std_logic;
SIGNAL \Reg|registers~216_combout\ : std_logic;
SIGNAL \Reg|registers~55_q\ : std_logic;
SIGNAL \Reg|registers~245_combout\ : std_logic;
SIGNAL \Reg|registers~183_combout\ : std_logic;
SIGNAL \Reg|registers~213_combout\ : std_logic;
SIGNAL \Reg|registers~49_q\ : std_logic;
SIGNAL \Reg|registers~246_combout\ : std_logic;
SIGNAL \Reg|registers~175_combout\ : std_logic;
SIGNAL \Reg|registers~214_combout\ : std_logic;
SIGNAL \Reg|registers~52_q\ : std_logic;
SIGNAL \Reg|registers~247_combout\ : std_logic;
SIGNAL \Reg|registers~191_combout\ : std_logic;
SIGNAL \Reg|registers~215_combout\ : std_logic;
SIGNAL \Reg|registers~46_q\ : std_logic;
SIGNAL \Reg|registers~123_combout\ : std_logic;
SIGNAL \Reg|registers~124_combout\ : std_logic;
SIGNAL \Reg|registers~237_combout\ : std_logic;
SIGNAL \Reg|registers~179_combout\ : std_logic;
SIGNAL \Reg|registers~205_combout\ : std_logic;
SIGNAL \Reg|registers~25_q\ : std_logic;
SIGNAL \Reg|registers~240_combout\ : std_logic;
SIGNAL \Reg|registers~195_combout\ : std_logic;
SIGNAL \Reg|registers~208_combout\ : std_logic;
SIGNAL \Reg|registers~31_q\ : std_logic;
SIGNAL \Reg|registers~239_combout\ : std_logic;
SIGNAL \Reg|registers~185_combout\ : std_logic;
SIGNAL \Reg|registers~207_combout\ : std_logic;
SIGNAL \Reg|registers~22_q\ : std_logic;
SIGNAL \Reg|registers~238_combout\ : std_logic;
SIGNAL \Reg|registers~169_combout\ : std_logic;
SIGNAL \Reg|registers~206_combout\ : std_logic;
SIGNAL \Reg|registers~28_q\ : std_logic;
SIGNAL \Reg|registers~118_combout\ : std_logic;
SIGNAL \Reg|registers~119_combout\ : std_logic;
SIGNAL \Reg|registers~244_combout\ : std_logic;
SIGNAL \Reg|registers~197_combout\ : std_logic;
SIGNAL \Reg|registers~212_combout\ : std_logic;
SIGNAL \Reg|registers~19_q\ : std_logic;
SIGNAL \Reg|registers~241_combout\ : std_logic;
SIGNAL \Reg|registers~173_combout\ : std_logic;
SIGNAL \Reg|registers~209_combout\ : std_logic;
SIGNAL \Reg|registers~16_q\ : std_logic;
SIGNAL \Reg|registers~243_combout\ : std_logic;
SIGNAL \Reg|registers~189_combout\ : std_logic;
SIGNAL \Reg|registers~211_combout\ : std_logic;
SIGNAL \Reg|registers~10_q\ : std_logic;
SIGNAL \Reg|registers~242_combout\ : std_logic;
SIGNAL \Reg|registers~181_combout\ : std_logic;
SIGNAL \Reg|registers~210_combout\ : std_logic;
SIGNAL \Reg|registers~13_q\ : std_logic;
SIGNAL \Reg|registers~120_combout\ : std_logic;
SIGNAL \Reg|registers~121_combout\ : std_logic;
SIGNAL \Reg|registers~122_combout\ : std_logic;
SIGNAL \Reg|registers~233_combout\ : std_logic;
SIGNAL \Reg|registers~171_combout\ : std_logic;
SIGNAL \Reg|registers~201_combout\ : std_logic;
SIGNAL \Reg|registers~40_q\ : std_logic;
SIGNAL \Reg|registers~236_combout\ : std_logic;
SIGNAL \Reg|registers~193_combout\ : std_logic;
SIGNAL \Reg|registers~204_combout\ : std_logic;
SIGNAL \Reg|registers~43_q\ : std_logic;
SIGNAL \Reg|registers~234_combout\ : std_logic;
SIGNAL \Reg|registers~177_combout\ : std_logic;
SIGNAL \Reg|registers~202_combout\ : std_logic;
SIGNAL \Reg|registers~37_q\ : std_logic;
SIGNAL \Reg|registers~235_combout\ : std_logic;
SIGNAL \Reg|registers~187_combout\ : std_logic;
SIGNAL \Reg|registers~203_combout\ : std_logic;
SIGNAL \Reg|registers~34_q\ : std_logic;
SIGNAL \Reg|registers~116_combout\ : std_logic;
SIGNAL \Reg|registers~117_combout\ : std_logic;
SIGNAL \Reg|registers~125_combout\ : std_logic;
SIGNAL \Reg|registers~229_combout\ : std_logic;
SIGNAL \Reg|registers~194_combout\ : std_logic;
SIGNAL \Reg|registers~91_q\ : std_logic;
SIGNAL \Reg|registers~232_combout\ : std_logic;
SIGNAL \Reg|registers~200_combout\ : std_logic;
SIGNAL \Reg|registers~103_q\ : std_logic;
SIGNAL \Reg|registers~231_combout\ : std_logic;
SIGNAL \Reg|registers~198_combout\ : std_logic;
SIGNAL \Reg|registers~67_q\ : std_logic;
SIGNAL \Reg|registers~230_combout\ : std_logic;
SIGNAL \Reg|registers~196_combout\ : std_logic;
SIGNAL \Reg|registers~79_q\ : std_logic;
SIGNAL \Reg|registers~113_combout\ : std_logic;
SIGNAL \Reg|registers~114_combout\ : std_logic;
SIGNAL \Reg|registers~220_combout\ : std_logic;
SIGNAL \Reg|registers~176_combout\ : std_logic;
SIGNAL \Reg|registers~100_q\ : std_logic;
SIGNAL \Reg|registers~217_combout\ : std_logic;
SIGNAL \Reg|registers~170_combout\ : std_logic;
SIGNAL \Reg|registers~76_q\ : std_logic;
SIGNAL \Reg|registers~218_combout\ : std_logic;
SIGNAL \Reg|registers~172_combout\ : std_logic;
SIGNAL \Reg|registers~88_q\ : std_logic;
SIGNAL \Reg|registers~219_combout\ : std_logic;
SIGNAL \Reg|registers~174_combout\ : std_logic;
SIGNAL \Reg|registers~64_q\ : std_logic;
SIGNAL \Reg|registers~106_combout\ : std_logic;
SIGNAL \Reg|registers~107_combout\ : std_logic;
SIGNAL \Reg|registers~224_combout\ : std_logic;
SIGNAL \Reg|registers~184_combout\ : std_logic;
SIGNAL \Reg|registers~97_q\ : std_logic;
SIGNAL \Reg|registers~221_combout\ : std_logic;
SIGNAL \Reg|registers~178_combout\ : std_logic;
SIGNAL \Reg|registers~85_q\ : std_logic;
SIGNAL \Reg|registers~222_combout\ : std_logic;
SIGNAL \Reg|registers~180_combout\ : std_logic;
SIGNAL \Reg|registers~73_q\ : std_logic;
SIGNAL \Reg|registers~223_combout\ : std_logic;
SIGNAL \Reg|registers~182_combout\ : std_logic;
SIGNAL \Reg|registers~61_q\ : std_logic;
SIGNAL \Reg|registers~108_combout\ : std_logic;
SIGNAL \Reg|registers~109_combout\ : std_logic;
SIGNAL \Reg|registers~228_combout\ : std_logic;
SIGNAL \Reg|registers~192_combout\ : std_logic;
SIGNAL \Reg|registers~94_q\ : std_logic;
SIGNAL \Reg|registers~225_combout\ : std_logic;
SIGNAL \Reg|registers~186_combout\ : std_logic;
SIGNAL \Reg|registers~70_q\ : std_logic;
SIGNAL \Reg|registers~227_combout\ : std_logic;
SIGNAL \Reg|registers~190_combout\ : std_logic;
SIGNAL \Reg|registers~58_q\ : std_logic;
SIGNAL \Reg|registers~226_combout\ : std_logic;
SIGNAL \Reg|registers~188_combout\ : std_logic;
SIGNAL \Reg|registers~82_q\ : std_logic;
SIGNAL \Reg|registers~110_combout\ : std_logic;
SIGNAL \Reg|registers~111_combout\ : std_logic;
SIGNAL \Reg|registers~112_combout\ : std_logic;
SIGNAL \Reg|registers~115_combout\ : std_logic;
SIGNAL \Reg|registers~126_combout\ : std_logic;
SIGNAL \input[0]~_wirecell_combout\ : std_logic;
SIGNAL \input[1]~2_combout\ : std_logic;
SIGNAL \Reg|registers~252_combout\ : std_logic;
SIGNAL \Reg|registers~98_q\ : std_logic;
SIGNAL \Reg|registers~249_combout\ : std_logic;
SIGNAL \Reg|registers~74_q\ : std_logic;
SIGNAL \Reg|registers~250_combout\ : std_logic;
SIGNAL \Reg|registers~86_q\ : std_logic;
SIGNAL \Reg|registers~251_combout\ : std_logic;
SIGNAL \Reg|registers~62_q\ : std_logic;
SIGNAL \Reg|registers~127_combout\ : std_logic;
SIGNAL \Reg|registers~128_combout\ : std_logic;
SIGNAL \Reg|registers~261_combout\ : std_logic;
SIGNAL \Reg|registers~80_q\ : std_logic;
SIGNAL \Reg|registers~264_combout\ : std_logic;
SIGNAL \Reg|registers~104_q\ : std_logic;
SIGNAL \Reg|registers~263_combout\ : std_logic;
SIGNAL \Reg|registers~68_q\ : std_logic;
SIGNAL \Reg|registers~262_combout\ : std_logic;
SIGNAL \Reg|registers~92_q\ : std_logic;
SIGNAL \Reg|registers~134_combout\ : std_logic;
SIGNAL \Reg|registers~135_combout\ : std_logic;
SIGNAL \Reg|registers~260_combout\ : std_logic;
SIGNAL \Reg|registers~95_q\ : std_logic;
SIGNAL \Reg|registers~257_combout\ : std_logic;
SIGNAL \Reg|registers~83_q\ : std_logic;
SIGNAL \Reg|registers~259_combout\ : std_logic;
SIGNAL \Reg|registers~59_q\ : std_logic;
SIGNAL \Reg|registers~258_combout\ : std_logic;
SIGNAL \Reg|registers~71_q\ : std_logic;
SIGNAL \Reg|registers~131_combout\ : std_logic;
SIGNAL \Reg|registers~132_combout\ : std_logic;
SIGNAL \Reg|registers~256_combout\ : std_logic;
SIGNAL \Reg|registers~101_q\ : std_logic;
SIGNAL \Reg|registers~253_combout\ : std_logic;
SIGNAL \Reg|registers~89_q\ : std_logic;
SIGNAL \Reg|registers~254_combout\ : std_logic;
SIGNAL \Reg|registers~77_q\ : std_logic;
SIGNAL \Reg|registers~255_combout\ : std_logic;
SIGNAL \Reg|registers~65_q\ : std_logic;
SIGNAL \Reg|registers~129_combout\ : std_logic;
SIGNAL \Reg|registers~130_combout\ : std_logic;
SIGNAL \Reg|registers~133_combout\ : std_logic;
SIGNAL \Reg|registers~136_combout\ : std_logic;
SIGNAL \Reg|registers~280_combout\ : std_logic;
SIGNAL \Reg|registers~56_q\ : std_logic;
SIGNAL \Reg|registers~277_combout\ : std_logic;
SIGNAL \Reg|registers~53_q\ : std_logic;
SIGNAL \Reg|registers~278_combout\ : std_logic;
SIGNAL \Reg|registers~50_q\ : std_logic;
SIGNAL \Reg|registers~279_combout\ : std_logic;
SIGNAL \Reg|registers~47_q\ : std_logic;
SIGNAL \Reg|registers~144_combout\ : std_logic;
SIGNAL \Reg|registers~145_combout\ : std_logic;
SIGNAL \Reg|registers~276_combout\ : std_logic;
SIGNAL \Reg|registers~20feeder_combout\ : std_logic;
SIGNAL \Reg|registers~20_q\ : std_logic;
SIGNAL \Reg|registers~273_combout\ : std_logic;
SIGNAL \Reg|registers~14_q\ : std_logic;
SIGNAL \Reg|registers~274_combout\ : std_logic;
SIGNAL \Reg|registers~17_q\ : std_logic;
SIGNAL \Reg|registers~275_combout\ : std_logic;
SIGNAL \Reg|registers~11_q\ : std_logic;
SIGNAL \Reg|registers~141_combout\ : std_logic;
SIGNAL \Reg|registers~142_combout\ : std_logic;
SIGNAL \Reg|registers~272_combout\ : std_logic;
SIGNAL \Reg|registers~44_q\ : std_logic;
SIGNAL \Reg|registers~269_combout\ : std_logic;
SIGNAL \Reg|registers~38_q\ : std_logic;
SIGNAL \Reg|registers~270_combout\ : std_logic;
SIGNAL \Reg|registers~41_q\ : std_logic;
SIGNAL \Reg|registers~271_combout\ : std_logic;
SIGNAL \Reg|registers~35_q\ : std_logic;
SIGNAL \Reg|registers~139_combout\ : std_logic;
SIGNAL \Reg|registers~140_combout\ : std_logic;
SIGNAL \Reg|registers~143_combout\ : std_logic;
SIGNAL \Reg|registers~265_combout\ : std_logic;
SIGNAL \Reg|registers~29_q\ : std_logic;
SIGNAL \Reg|registers~268_combout\ : std_logic;
SIGNAL \Reg|registers~32_q\ : std_logic;
SIGNAL \Reg|registers~266_combout\ : std_logic;
SIGNAL \Reg|registers~26_q\ : std_logic;
SIGNAL \Reg|registers~267_combout\ : std_logic;
SIGNAL \Reg|registers~23_q\ : std_logic;
SIGNAL \Reg|registers~137_combout\ : std_logic;
SIGNAL \Reg|registers~138_combout\ : std_logic;
SIGNAL \Reg|registers~146_combout\ : std_logic;
SIGNAL \Reg|registers~147_combout\ : std_logic;
SIGNAL \input[1]~_wirecell_combout\ : std_logic;
SIGNAL \input[2]~3_combout\ : std_logic;
SIGNAL \Reg|registers~309_combout\ : std_logic;
SIGNAL \Reg|registers~51_q\ : std_logic;
SIGNAL \Reg|registers~312_combout\ : std_logic;
SIGNAL \Reg|registers~57_q\ : std_logic;
SIGNAL \Reg|registers~310_combout\ : std_logic;
SIGNAL \Reg|registers~54_q\ : std_logic;
SIGNAL \Reg|registers~311_combout\ : std_logic;
SIGNAL \Reg|registers~48_q\ : std_logic;
SIGNAL \Reg|registers~165_combout\ : std_logic;
SIGNAL \Reg|registers~166_combout\ : std_logic;
SIGNAL \Reg|registers~300_combout\ : std_logic;
SIGNAL \Reg|registers~45_q\ : std_logic;
SIGNAL \Reg|registers~297_combout\ : std_logic;
SIGNAL \Reg|registers~42_q\ : std_logic;
SIGNAL \Reg|registers~299_combout\ : std_logic;
SIGNAL \Reg|registers~36_q\ : std_logic;
SIGNAL \Reg|registers~298_combout\ : std_logic;
SIGNAL \Reg|registers~39_q\ : std_logic;
SIGNAL \Reg|registers~158_combout\ : std_logic;
SIGNAL \Reg|registers~159_combout\ : std_logic;
SIGNAL \Reg|registers~308_combout\ : std_logic;
SIGNAL \Reg|registers~21_q\ : std_logic;
SIGNAL \Reg|registers~305_combout\ : std_logic;
SIGNAL \Reg|registers~18_q\ : std_logic;
SIGNAL \Reg|registers~306_combout\ : std_logic;
SIGNAL \Reg|registers~15_q\ : std_logic;
SIGNAL \Reg|registers~307_combout\ : std_logic;
SIGNAL \Reg|registers~12_q\ : std_logic;
SIGNAL \Reg|registers~162_combout\ : std_logic;
SIGNAL \Reg|registers~163_combout\ : std_logic;
SIGNAL \Reg|registers~304_combout\ : std_logic;
SIGNAL \Reg|registers~33_q\ : std_logic;
SIGNAL \Reg|registers~301_combout\ : std_logic;
SIGNAL \Reg|registers~27feeder_combout\ : std_logic;
SIGNAL \Reg|registers~27_q\ : std_logic;
SIGNAL \Reg|registers~302_combout\ : std_logic;
SIGNAL \Reg|registers~30_q\ : std_logic;
SIGNAL \Reg|registers~303_combout\ : std_logic;
SIGNAL \Reg|registers~24_q\ : std_logic;
SIGNAL \Reg|registers~160_combout\ : std_logic;
SIGNAL \Reg|registers~161_combout\ : std_logic;
SIGNAL \Reg|registers~164_combout\ : std_logic;
SIGNAL \Reg|registers~167_combout\ : std_logic;
SIGNAL \Reg|registers~292_combout\ : std_logic;
SIGNAL \Reg|registers~96_q\ : std_logic;
SIGNAL \Reg|registers~289_combout\ : std_logic;
SIGNAL \Reg|registers~72_q\ : std_logic;
SIGNAL \Reg|registers~290_combout\ : std_logic;
SIGNAL \Reg|registers~84_q\ : std_logic;
SIGNAL \Reg|registers~291_combout\ : std_logic;
SIGNAL \Reg|registers~60_q\ : std_logic;
SIGNAL \Reg|registers~152_combout\ : std_logic;
SIGNAL \Reg|registers~153_combout\ : std_logic;
SIGNAL \Reg|registers~288_combout\ : std_logic;
SIGNAL \Reg|registers~99_q\ : std_logic;
SIGNAL \Reg|registers~285_combout\ : std_logic;
SIGNAL \Reg|registers~87_q\ : std_logic;
SIGNAL \Reg|registers~287_combout\ : std_logic;
SIGNAL \Reg|registers~63_q\ : std_logic;
SIGNAL \Reg|registers~286_combout\ : std_logic;
SIGNAL \Reg|registers~75_q\ : std_logic;
SIGNAL \Reg|registers~150_combout\ : std_logic;
SIGNAL \Reg|registers~151_combout\ : std_logic;
SIGNAL \Reg|registers~154_combout\ : std_logic;
SIGNAL \Reg|registers~296_combout\ : std_logic;
SIGNAL \Reg|registers~105_q\ : std_logic;
SIGNAL \Reg|registers~293_combout\ : std_logic;
SIGNAL \Reg|registers~93_q\ : std_logic;
SIGNAL \Reg|registers~295_combout\ : std_logic;
SIGNAL \Reg|registers~69_q\ : std_logic;
SIGNAL \Reg|registers~294_combout\ : std_logic;
SIGNAL \Reg|registers~81_q\ : std_logic;
SIGNAL \Reg|registers~155_combout\ : std_logic;
SIGNAL \Reg|registers~156_combout\ : std_logic;
SIGNAL \Reg|registers~284_combout\ : std_logic;
SIGNAL \Reg|registers~102_q\ : std_logic;
SIGNAL \Reg|registers~281_combout\ : std_logic;
SIGNAL \Reg|registers~78_q\ : std_logic;
SIGNAL \Reg|registers~283_combout\ : std_logic;
SIGNAL \Reg|registers~66_q\ : std_logic;
SIGNAL \Reg|registers~282_combout\ : std_logic;
SIGNAL \Reg|registers~90_q\ : std_logic;
SIGNAL \Reg|registers~148_combout\ : std_logic;
SIGNAL \Reg|registers~149_combout\ : std_logic;
SIGNAL \Reg|registers~157_combout\ : std_logic;
SIGNAL \Reg|registers~168_combout\ : std_logic;
SIGNAL \input[2]~_wirecell_combout\ : std_logic;
SIGNAL regASel : std_logic_vector(4 DOWNTO 0);
SIGNAL input : std_logic_vector(2 DOWNTO 0);
SIGNAL \Rand|Pre_Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Reg|outA\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_writeEnable~q\ : std_logic;

BEGIN

q <= ww_q;
ww_clk <= clk;
ww_newGame <= newGame;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_writeEnable~q\ <= NOT \writeEnable~q\;

-- Location: IOOBUF_X83_Y0_N2
\q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg|outA\(0),
	devoe => ww_devoe,
	o => \q[0]~output_o\);

-- Location: IOOBUF_X115_Y24_N2
\q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg|outA\(1),
	devoe => ww_devoe,
	o => \q[1]~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg|outA\(2),
	devoe => ww_devoe,
	o => \q[2]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X82_Y28_N10
\regASel[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \regASel[0]~5_combout\ = regASel(0) $ (VCC)
-- \regASel[0]~6\ = CARRY(regASel(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(0),
	datad => VCC,
	combout => \regASel[0]~5_combout\,
	cout => \regASel[0]~6\);

-- Location: IOIBUF_X83_Y0_N8
\newGame~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_newGame,
	o => \newGame~input_o\);

-- Location: LCCOMB_X82_Y28_N16
\regASel[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \regASel[3]~12_combout\ = (regASel(3) & (!\regASel[2]~10\)) # (!regASel(3) & ((\regASel[2]~10\) # (GND)))
-- \regASel[3]~13\ = CARRY((!\regASel[2]~10\) # (!regASel(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => regASel(3),
	datad => VCC,
	cin => \regASel[2]~10\,
	combout => \regASel[3]~12_combout\,
	cout => \regASel[3]~13\);

-- Location: LCCOMB_X82_Y28_N18
\regASel[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \regASel[4]~14_combout\ = \regASel[3]~13\ $ (!regASel(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => regASel(4),
	cin => \regASel[3]~13\,
	combout => \regASel[4]~14_combout\);

-- Location: FF_X82_Y28_N19
\regASel[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regASel[4]~14_combout\,
	sclr => \newGame~input_o\,
	ena => \regASel[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regASel(4));

-- Location: LCCOMB_X82_Y28_N2
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (regASel(0)) # ((regASel(3)) # ((regASel(2)) # (regASel(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(0),
	datab => regASel(3),
	datac => regASel(2),
	datad => regASel(1),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X83_Y28_N18
\regASel[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \regASel[0]~11_combout\ = (\newGame~input_o\) # ((!regASel(4) & !\LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \newGame~input_o\,
	datab => regASel(4),
	datad => \LessThan0~0_combout\,
	combout => \regASel[0]~11_combout\);

-- Location: FF_X82_Y28_N11
\regASel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regASel[0]~5_combout\,
	sclr => \newGame~input_o\,
	ena => \regASel[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regASel(0));

-- Location: LCCOMB_X82_Y28_N12
\regASel[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \regASel[1]~7_combout\ = (regASel(1) & (!\regASel[0]~6\)) # (!regASel(1) & ((\regASel[0]~6\) # (GND)))
-- \regASel[1]~8\ = CARRY((!\regASel[0]~6\) # (!regASel(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regASel(1),
	datad => VCC,
	cin => \regASel[0]~6\,
	combout => \regASel[1]~7_combout\,
	cout => \regASel[1]~8\);

-- Location: FF_X82_Y28_N13
\regASel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regASel[1]~7_combout\,
	sclr => \newGame~input_o\,
	ena => \regASel[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regASel(1));

-- Location: LCCOMB_X82_Y28_N14
\regASel[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \regASel[2]~9_combout\ = (regASel(2) & (\regASel[1]~8\ $ (GND))) # (!regASel(2) & (!\regASel[1]~8\ & VCC))
-- \regASel[2]~10\ = CARRY((regASel(2) & !\regASel[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => regASel(2),
	datad => VCC,
	cin => \regASel[1]~8\,
	combout => \regASel[2]~9_combout\,
	cout => \regASel[2]~10\);

-- Location: FF_X82_Y28_N15
\regASel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regASel[2]~9_combout\,
	sclr => \newGame~input_o\,
	ena => \regASel[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regASel(2));

-- Location: FF_X82_Y28_N17
\regASel[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regASel[3]~12_combout\,
	sclr => \newGame~input_o\,
	ena => \regASel[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regASel(3));

-- Location: LCCOMB_X83_Y24_N26
\Rand|Pre_Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Rand|Pre_Q~1_combout\ = (!\Rand|Pre_Q\(2) & (\Rand|Pre_Q\(0) $ (\Rand|Pre_Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Rand|Pre_Q\(0),
	datac => \Rand|Pre_Q\(1),
	datad => \Rand|Pre_Q\(2),
	combout => \Rand|Pre_Q~1_combout\);

-- Location: FF_X83_Y24_N27
\Rand|Pre_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Rand|Pre_Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Rand|Pre_Q\(1));

-- Location: LCCOMB_X83_Y24_N0
\Rand|Pre_Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Rand|Pre_Q~2_combout\ = (\Rand|Pre_Q\(1) & (!\Rand|Pre_Q\(2) & \Rand|Pre_Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rand|Pre_Q\(1),
	datac => \Rand|Pre_Q\(2),
	datad => \Rand|Pre_Q\(0),
	combout => \Rand|Pre_Q~2_combout\);

-- Location: FF_X83_Y24_N1
\Rand|Pre_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Rand|Pre_Q~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Rand|Pre_Q\(2));

-- Location: LCCOMB_X83_Y24_N24
\Rand|Pre_Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Rand|Pre_Q~0_combout\ = (!\Rand|Pre_Q\(0) & !\Rand|Pre_Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Rand|Pre_Q\(0),
	datad => \Rand|Pre_Q\(2),
	combout => \Rand|Pre_Q~0_combout\);

-- Location: FF_X83_Y24_N25
\Rand|Pre_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Rand|Pre_Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Rand|Pre_Q\(0));

-- Location: LCCOMB_X83_Y24_N18
\input[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \input[0]~1_combout\ = !\Rand|Pre_Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Rand|Pre_Q\(0),
	combout => \input[0]~1_combout\);

-- Location: LCCOMB_X83_Y28_N14
\input[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \input[0]~0_combout\ = (!\newGame~input_o\ & (!regASel(4) & !\LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \newGame~input_o\,
	datab => regASel(4),
	datad => \LessThan0~0_combout\,
	combout => \input[0]~0_combout\);

-- Location: FF_X83_Y24_N19
\input[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \input[0]~1_combout\,
	ena => \input[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => input(0));

-- Location: LCCOMB_X84_Y28_N18
\Reg|registers~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~248_combout\ = !input(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(0),
	combout => \Reg|registers~248_combout\);

-- Location: LCCOMB_X80_Y28_N26
\writeEnable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \writeEnable~0_combout\ = (\writeEnable~q\) # ((!\newGame~input_o\ & ((regASel(4)) # (\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(4),
	datab => \newGame~input_o\,
	datac => \writeEnable~q\,
	datad => \LessThan0~0_combout\,
	combout => \writeEnable~0_combout\);

-- Location: FF_X80_Y28_N27
writeEnable : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \writeEnable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \writeEnable~q\);

-- Location: LCCOMB_X83_Y28_N30
\Reg|registers~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~199_combout\ = (regASel(0) & (regASel(1) & (regASel(3) & regASel(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(0),
	datab => regASel(1),
	datac => regASel(3),
	datad => regASel(2),
	combout => \Reg|registers~199_combout\);

-- Location: LCCOMB_X84_Y28_N2
\Reg|registers~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~216_combout\ = (!\writeEnable~q\ & (!regASel(4) & \Reg|registers~199_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \writeEnable~q\,
	datac => regASel(4),
	datad => \Reg|registers~199_combout\,
	combout => \Reg|registers~216_combout\);

-- Location: FF_X84_Y28_N19
\Reg|registers~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~248_combout\,
	ena => \Reg|registers~216_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~55_q\);

-- Location: LCCOMB_X84_Y28_N20
\Reg|registers~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~245_combout\ = !input(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(0),
	combout => \Reg|registers~245_combout\);

-- Location: LCCOMB_X81_Y28_N22
\Reg|registers~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~183_combout\ = (regASel(0) & (!regASel(1) & (regASel(2) & regASel(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(0),
	datab => regASel(1),
	datac => regASel(2),
	datad => regASel(3),
	combout => \Reg|registers~183_combout\);

-- Location: LCCOMB_X84_Y28_N24
\Reg|registers~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~213_combout\ = (!\writeEnable~q\ & (!regASel(4) & \Reg|registers~183_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \writeEnable~q\,
	datac => regASel(4),
	datad => \Reg|registers~183_combout\,
	combout => \Reg|registers~213_combout\);

-- Location: FF_X84_Y28_N21
\Reg|registers~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~245_combout\,
	ena => \Reg|registers~213_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~49_q\);

-- Location: LCCOMB_X83_Y28_N8
\Reg|registers~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~246_combout\ = !input(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => input(0),
	combout => \Reg|registers~246_combout\);

-- Location: LCCOMB_X81_Y28_N10
\Reg|registers~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~175_combout\ = (regASel(3) & (regASel(1) & (regASel(2) & !regASel(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(3),
	datab => regASel(1),
	datac => regASel(2),
	datad => regASel(0),
	combout => \Reg|registers~175_combout\);

-- Location: LCCOMB_X83_Y28_N28
\Reg|registers~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~214_combout\ = (!\writeEnable~q\ & (!regASel(4) & \Reg|registers~175_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~q\,
	datab => regASel(4),
	datad => \Reg|registers~175_combout\,
	combout => \Reg|registers~214_combout\);

-- Location: FF_X83_Y28_N9
\Reg|registers~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~246_combout\,
	ena => \Reg|registers~214_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~52_q\);

-- Location: LCCOMB_X84_Y28_N0
\Reg|registers~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~247_combout\ = !input(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(0),
	combout => \Reg|registers~247_combout\);

-- Location: LCCOMB_X82_Y28_N22
\Reg|registers~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~191_combout\ = (!regASel(0) & (regASel(3) & (regASel(2) & !regASel(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(0),
	datab => regASel(3),
	datac => regASel(2),
	datad => regASel(1),
	combout => \Reg|registers~191_combout\);

-- Location: LCCOMB_X83_Y28_N2
\Reg|registers~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~215_combout\ = (!\writeEnable~q\ & (!regASel(4) & \Reg|registers~191_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~q\,
	datab => regASel(4),
	datad => \Reg|registers~191_combout\,
	combout => \Reg|registers~215_combout\);

-- Location: FF_X83_Y28_N3
\Reg|registers~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Reg|registers~247_combout\,
	sload => VCC,
	ena => \Reg|registers~215_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~46_q\);

-- Location: LCCOMB_X83_Y28_N16
\Reg|registers~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~123_combout\ = (regASel(0) & (((regASel(1))))) # (!regASel(0) & ((regASel(1) & (\Reg|registers~52_q\)) # (!regASel(1) & ((\Reg|registers~46_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(0),
	datab => \Reg|registers~52_q\,
	datac => \Reg|registers~46_q\,
	datad => regASel(1),
	combout => \Reg|registers~123_combout\);

-- Location: LCCOMB_X83_Y28_N26
\Reg|registers~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~124_combout\ = (regASel(0) & ((\Reg|registers~123_combout\ & (\Reg|registers~55_q\)) # (!\Reg|registers~123_combout\ & ((\Reg|registers~49_q\))))) # (!regASel(0) & (((\Reg|registers~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(0),
	datab => \Reg|registers~55_q\,
	datac => \Reg|registers~49_q\,
	datad => \Reg|registers~123_combout\,
	combout => \Reg|registers~124_combout\);

-- Location: LCCOMB_X80_Y27_N20
\Reg|registers~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~237_combout\ = !input(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(0),
	combout => \Reg|registers~237_combout\);

-- Location: LCCOMB_X82_Y28_N8
\Reg|registers~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~179_combout\ = (regASel(0) & (!regASel(3) & (regASel(2) & !regASel(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(0),
	datab => regASel(3),
	datac => regASel(2),
	datad => regASel(1),
	combout => \Reg|registers~179_combout\);

-- Location: LCCOMB_X80_Y27_N4
\Reg|registers~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~205_combout\ = (!regASel(4) & (!\writeEnable~q\ & \Reg|registers~179_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => regASel(4),
	datac => \writeEnable~q\,
	datad => \Reg|registers~179_combout\,
	combout => \Reg|registers~205_combout\);

-- Location: FF_X80_Y27_N21
\Reg|registers~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~237_combout\,
	ena => \Reg|registers~205_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~25_q\);

-- Location: LCCOMB_X80_Y27_N26
\Reg|registers~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~240_combout\ = !input(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(0),
	combout => \Reg|registers~240_combout\);

-- Location: LCCOMB_X82_Y28_N30
\Reg|registers~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~195_combout\ = (regASel(1) & (!regASel(3) & (regASel(2) & regASel(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(1),
	datab => regASel(3),
	datac => regASel(2),
	datad => regASel(0),
	combout => \Reg|registers~195_combout\);

-- Location: LCCOMB_X80_Y27_N18
\Reg|registers~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~208_combout\ = (!\writeEnable~q\ & (\Reg|registers~195_combout\ & !regASel(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~q\,
	datac => \Reg|registers~195_combout\,
	datad => regASel(4),
	combout => \Reg|registers~208_combout\);

-- Location: FF_X80_Y27_N27
\Reg|registers~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~240_combout\,
	ena => \Reg|registers~208_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~31_q\);

-- Location: LCCOMB_X83_Y27_N2
\Reg|registers~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~239_combout\ = !input(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(0),
	combout => \Reg|registers~239_combout\);

-- Location: LCCOMB_X82_Y28_N6
\Reg|registers~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~185_combout\ = (!regASel(0) & (!regASel(3) & (regASel(2) & !regASel(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(0),
	datab => regASel(3),
	datac => regASel(2),
	datad => regASel(1),
	combout => \Reg|registers~185_combout\);

-- Location: LCCOMB_X83_Y27_N14
\Reg|registers~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~207_combout\ = (!\writeEnable~q\ & (!regASel(4) & \Reg|registers~185_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~q\,
	datac => regASel(4),
	datad => \Reg|registers~185_combout\,
	combout => \Reg|registers~207_combout\);

-- Location: FF_X83_Y27_N3
\Reg|registers~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~239_combout\,
	ena => \Reg|registers~207_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~22_q\);

-- Location: LCCOMB_X83_Y26_N6
\Reg|registers~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~238_combout\ = !input(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => input(0),
	combout => \Reg|registers~238_combout\);

-- Location: LCCOMB_X83_Y26_N16
\Reg|registers~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~169_combout\ = (!regASel(0) & (regASel(1) & (!regASel(3) & regASel(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(0),
	datab => regASel(1),
	datac => regASel(3),
	datad => regASel(2),
	combout => \Reg|registers~169_combout\);

-- Location: LCCOMB_X83_Y26_N12
\Reg|registers~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~206_combout\ = (!regASel(4) & (!\writeEnable~q\ & \Reg|registers~169_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => regASel(4),
	datac => \writeEnable~q\,
	datad => \Reg|registers~169_combout\,
	combout => \Reg|registers~206_combout\);

-- Location: FF_X83_Y26_N7
\Reg|registers~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~238_combout\,
	ena => \Reg|registers~206_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~28_q\);

-- Location: LCCOMB_X83_Y24_N10
\Reg|registers~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~118_combout\ = (regASel(0) & (((regASel(1))))) # (!regASel(0) & ((regASel(1) & ((\Reg|registers~28_q\))) # (!regASel(1) & (\Reg|registers~22_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(0),
	datab => \Reg|registers~22_q\,
	datac => \Reg|registers~28_q\,
	datad => regASel(1),
	combout => \Reg|registers~118_combout\);

-- Location: LCCOMB_X83_Y24_N8
\Reg|registers~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~119_combout\ = (regASel(0) & ((\Reg|registers~118_combout\ & ((\Reg|registers~31_q\))) # (!\Reg|registers~118_combout\ & (\Reg|registers~25_q\)))) # (!regASel(0) & (((\Reg|registers~118_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(0),
	datab => \Reg|registers~25_q\,
	datac => \Reg|registers~31_q\,
	datad => \Reg|registers~118_combout\,
	combout => \Reg|registers~119_combout\);

-- Location: LCCOMB_X81_Y26_N24
\Reg|registers~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~244_combout\ = !input(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => input(0),
	combout => \Reg|registers~244_combout\);

-- Location: LCCOMB_X81_Y28_N30
\Reg|registers~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~197_combout\ = (!regASel(3) & (regASel(1) & (!regASel(2) & regASel(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(3),
	datab => regASel(1),
	datac => regASel(2),
	datad => regASel(0),
	combout => \Reg|registers~197_combout\);

-- Location: LCCOMB_X81_Y26_N14
\Reg|registers~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~212_combout\ = (!\writeEnable~q\ & (!regASel(4) & \Reg|registers~197_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~q\,
	datac => regASel(4),
	datad => \Reg|registers~197_combout\,
	combout => \Reg|registers~212_combout\);

-- Location: FF_X81_Y26_N25
\Reg|registers~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~244_combout\,
	ena => \Reg|registers~212_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~19_q\);

-- Location: LCCOMB_X81_Y28_N4
\Reg|registers~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~241_combout\ = !input(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(0),
	combout => \Reg|registers~241_combout\);

-- Location: LCCOMB_X82_Y28_N0
\Reg|registers~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~173_combout\ = (regASel(1) & (!regASel(3) & (!regASel(2) & !regASel(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(1),
	datab => regASel(3),
	datac => regASel(2),
	datad => regASel(0),
	combout => \Reg|registers~173_combout\);

-- Location: LCCOMB_X81_Y28_N12
\Reg|registers~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~209_combout\ = (!\writeEnable~q\ & (!regASel(4) & \Reg|registers~173_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~q\,
	datab => regASel(4),
	datac => \Reg|registers~173_combout\,
	combout => \Reg|registers~209_combout\);

-- Location: FF_X81_Y28_N5
\Reg|registers~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~241_combout\,
	ena => \Reg|registers~209_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~16_q\);

-- Location: LCCOMB_X80_Y24_N6
\Reg|registers~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~243_combout\ = !input(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(0),
	combout => \Reg|registers~243_combout\);

-- Location: LCCOMB_X81_Y28_N26
\Reg|registers~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~189_combout\ = (!regASel(3) & (!regASel(1) & (!regASel(2) & !regASel(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(3),
	datab => regASel(1),
	datac => regASel(2),
	datad => regASel(0),
	combout => \Reg|registers~189_combout\);

-- Location: LCCOMB_X80_Y24_N14
\Reg|registers~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~211_combout\ = (!regASel(4) & (!\writeEnable~q\ & \Reg|registers~189_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => regASel(4),
	datac => \writeEnable~q\,
	datad => \Reg|registers~189_combout\,
	combout => \Reg|registers~211_combout\);

-- Location: FF_X80_Y24_N7
\Reg|registers~10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~243_combout\,
	ena => \Reg|registers~211_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~10_q\);

-- Location: LCCOMB_X79_Y28_N12
\Reg|registers~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~242_combout\ = !input(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => input(0),
	combout => \Reg|registers~242_combout\);

-- Location: LCCOMB_X81_Y28_N20
\Reg|registers~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~181_combout\ = (!regASel(3) & (!regASel(2) & (!regASel(1) & regASel(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(3),
	datab => regASel(2),
	datac => regASel(1),
	datad => regASel(0),
	combout => \Reg|registers~181_combout\);

-- Location: LCCOMB_X79_Y28_N14
\Reg|registers~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~210_combout\ = (!\writeEnable~q\ & (\Reg|registers~181_combout\ & !regASel(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~q\,
	datac => \Reg|registers~181_combout\,
	datad => regASel(4),
	combout => \Reg|registers~210_combout\);

-- Location: FF_X79_Y28_N13
\Reg|registers~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~242_combout\,
	ena => \Reg|registers~210_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~13_q\);

-- Location: LCCOMB_X83_Y24_N2
\Reg|registers~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~120_combout\ = (regASel(1) & (((regASel(0))))) # (!regASel(1) & ((regASel(0) & ((\Reg|registers~13_q\))) # (!regASel(0) & (\Reg|registers~10_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(1),
	datab => \Reg|registers~10_q\,
	datac => \Reg|registers~13_q\,
	datad => regASel(0),
	combout => \Reg|registers~120_combout\);

-- Location: LCCOMB_X83_Y24_N20
\Reg|registers~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~121_combout\ = (regASel(1) & ((\Reg|registers~120_combout\ & (\Reg|registers~19_q\)) # (!\Reg|registers~120_combout\ & ((\Reg|registers~16_q\))))) # (!regASel(1) & (((\Reg|registers~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(1),
	datab => \Reg|registers~19_q\,
	datac => \Reg|registers~16_q\,
	datad => \Reg|registers~120_combout\,
	combout => \Reg|registers~121_combout\);

-- Location: LCCOMB_X83_Y24_N22
\Reg|registers~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~122_combout\ = (regASel(3) & (regASel(2))) # (!regASel(3) & ((regASel(2) & (\Reg|registers~119_combout\)) # (!regASel(2) & ((\Reg|registers~121_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(3),
	datab => regASel(2),
	datac => \Reg|registers~119_combout\,
	datad => \Reg|registers~121_combout\,
	combout => \Reg|registers~122_combout\);

-- Location: LCCOMB_X82_Y28_N20
\Reg|registers~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~233_combout\ = !input(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(0),
	combout => \Reg|registers~233_combout\);

-- Location: LCCOMB_X83_Y28_N0
\Reg|registers~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~171_combout\ = (!regASel(0) & (regASel(1) & (regASel(3) & !regASel(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(0),
	datab => regASel(1),
	datac => regASel(3),
	datad => regASel(2),
	combout => \Reg|registers~171_combout\);

-- Location: LCCOMB_X83_Y28_N20
\Reg|registers~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~201_combout\ = (!regASel(4) & (!\writeEnable~q\ & \Reg|registers~171_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => regASel(4),
	datac => \writeEnable~q\,
	datad => \Reg|registers~171_combout\,
	combout => \Reg|registers~201_combout\);

-- Location: FF_X82_Y28_N21
\Reg|registers~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~233_combout\,
	ena => \Reg|registers~201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~40_q\);

-- Location: LCCOMB_X83_Y25_N4
\Reg|registers~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~236_combout\ = !input(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => input(0),
	combout => \Reg|registers~236_combout\);

-- Location: LCCOMB_X82_Y28_N28
\Reg|registers~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~193_combout\ = (regASel(1) & (regASel(3) & (!regASel(2) & regASel(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(1),
	datab => regASel(3),
	datac => regASel(2),
	datad => regASel(0),
	combout => \Reg|registers~193_combout\);

-- Location: LCCOMB_X83_Y25_N12
\Reg|registers~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~204_combout\ = (!\writeEnable~q\ & (!regASel(4) & \Reg|registers~193_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~q\,
	datab => regASel(4),
	datad => \Reg|registers~193_combout\,
	combout => \Reg|registers~204_combout\);

-- Location: FF_X83_Y25_N5
\Reg|registers~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~236_combout\,
	ena => \Reg|registers~204_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~43_q\);

-- Location: LCCOMB_X81_Y25_N16
\Reg|registers~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~234_combout\ = !input(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => input(0),
	combout => \Reg|registers~234_combout\);

-- Location: LCCOMB_X81_Y25_N12
\Reg|registers~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~177_combout\ = (regASel(0) & (regASel(3) & (!regASel(2) & !regASel(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(0),
	datab => regASel(3),
	datac => regASel(2),
	datad => regASel(1),
	combout => \Reg|registers~177_combout\);

-- Location: LCCOMB_X81_Y25_N2
\Reg|registers~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~202_combout\ = (!\writeEnable~q\ & (!regASel(4) & \Reg|registers~177_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~q\,
	datac => regASel(4),
	datad => \Reg|registers~177_combout\,
	combout => \Reg|registers~202_combout\);

-- Location: FF_X81_Y25_N17
\Reg|registers~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~234_combout\,
	ena => \Reg|registers~202_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~37_q\);

-- Location: LCCOMB_X81_Y25_N22
\Reg|registers~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~235_combout\ = !input(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => input(0),
	combout => \Reg|registers~235_combout\);

-- Location: LCCOMB_X82_Y28_N4
\Reg|registers~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~187_combout\ = (!regASel(1) & (regASel(3) & (!regASel(2) & !regASel(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(1),
	datab => regASel(3),
	datac => regASel(2),
	datad => regASel(0),
	combout => \Reg|registers~187_combout\);

-- Location: LCCOMB_X81_Y25_N0
\Reg|registers~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~203_combout\ = (!\writeEnable~q\ & (!regASel(4) & \Reg|registers~187_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~q\,
	datac => regASel(4),
	datad => \Reg|registers~187_combout\,
	combout => \Reg|registers~203_combout\);

-- Location: FF_X81_Y25_N23
\Reg|registers~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~235_combout\,
	ena => \Reg|registers~203_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~34_q\);

-- Location: LCCOMB_X82_Y28_N26
\Reg|registers~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~116_combout\ = (regASel(1) & (regASel(0))) # (!regASel(1) & ((regASel(0) & (\Reg|registers~37_q\)) # (!regASel(0) & ((\Reg|registers~34_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(1),
	datab => regASel(0),
	datac => \Reg|registers~37_q\,
	datad => \Reg|registers~34_q\,
	combout => \Reg|registers~116_combout\);

-- Location: LCCOMB_X83_Y24_N28
\Reg|registers~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~117_combout\ = (regASel(1) & ((\Reg|registers~116_combout\ & ((\Reg|registers~43_q\))) # (!\Reg|registers~116_combout\ & (\Reg|registers~40_q\)))) # (!regASel(1) & (((\Reg|registers~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(1),
	datab => \Reg|registers~40_q\,
	datac => \Reg|registers~43_q\,
	datad => \Reg|registers~116_combout\,
	combout => \Reg|registers~117_combout\);

-- Location: LCCOMB_X83_Y24_N12
\Reg|registers~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~125_combout\ = (regASel(3) & ((\Reg|registers~122_combout\ & (\Reg|registers~124_combout\)) # (!\Reg|registers~122_combout\ & ((\Reg|registers~117_combout\))))) # (!regASel(3) & (((\Reg|registers~122_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(3),
	datab => \Reg|registers~124_combout\,
	datac => \Reg|registers~122_combout\,
	datad => \Reg|registers~117_combout\,
	combout => \Reg|registers~125_combout\);

-- Location: LCCOMB_X82_Y27_N24
\Reg|registers~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~229_combout\ = !input(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(0),
	combout => \Reg|registers~229_combout\);

-- Location: LCCOMB_X82_Y27_N0
\Reg|registers~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~194_combout\ = (regASel(4) & (!\writeEnable~q\ & \Reg|registers~193_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(4),
	datac => \writeEnable~q\,
	datad => \Reg|registers~193_combout\,
	combout => \Reg|registers~194_combout\);

-- Location: FF_X82_Y27_N25
\Reg|registers~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~229_combout\,
	ena => \Reg|registers~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~91_q\);

-- Location: LCCOMB_X82_Y27_N4
\Reg|registers~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~232_combout\ = !input(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(0),
	combout => \Reg|registers~232_combout\);

-- Location: LCCOMB_X82_Y27_N26
\Reg|registers~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~200_combout\ = (regASel(4) & (\Reg|registers~199_combout\ & !\writeEnable~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(4),
	datac => \Reg|registers~199_combout\,
	datad => \writeEnable~q\,
	combout => \Reg|registers~200_combout\);

-- Location: FF_X82_Y27_N5
\Reg|registers~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~232_combout\,
	ena => \Reg|registers~200_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~103_q\);

-- Location: LCCOMB_X81_Y27_N26
\Reg|registers~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~231_combout\ = !input(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(0),
	combout => \Reg|registers~231_combout\);

-- Location: LCCOMB_X81_Y27_N22
\Reg|registers~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~198_combout\ = (regASel(4) & (\Reg|registers~197_combout\ & !\writeEnable~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(4),
	datac => \Reg|registers~197_combout\,
	datad => \writeEnable~q\,
	combout => \Reg|registers~198_combout\);

-- Location: FF_X81_Y27_N27
\Reg|registers~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~231_combout\,
	ena => \Reg|registers~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~67_q\);

-- Location: LCCOMB_X81_Y27_N24
\Reg|registers~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~230_combout\ = !input(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(0),
	combout => \Reg|registers~230_combout\);

-- Location: LCCOMB_X81_Y27_N0
\Reg|registers~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~196_combout\ = (regASel(4) & (\Reg|registers~195_combout\ & !\writeEnable~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(4),
	datac => \Reg|registers~195_combout\,
	datad => \writeEnable~q\,
	combout => \Reg|registers~196_combout\);

-- Location: FF_X81_Y27_N25
\Reg|registers~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~230_combout\,
	ena => \Reg|registers~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~79_q\);

-- Location: LCCOMB_X82_Y27_N6
\Reg|registers~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~113_combout\ = (regASel(2) & (((\Reg|registers~79_q\) # (regASel(3))))) # (!regASel(2) & (\Reg|registers~67_q\ & ((!regASel(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg|registers~67_q\,
	datab => \Reg|registers~79_q\,
	datac => regASel(2),
	datad => regASel(3),
	combout => \Reg|registers~113_combout\);

-- Location: LCCOMB_X82_Y27_N14
\Reg|registers~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~114_combout\ = (regASel(3) & ((\Reg|registers~113_combout\ & ((\Reg|registers~103_q\))) # (!\Reg|registers~113_combout\ & (\Reg|registers~91_q\)))) # (!regASel(3) & (((\Reg|registers~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(3),
	datab => \Reg|registers~91_q\,
	datac => \Reg|registers~103_q\,
	datad => \Reg|registers~113_combout\,
	combout => \Reg|registers~114_combout\);

-- Location: LCCOMB_X82_Y26_N16
\Reg|registers~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~220_combout\ = !input(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(0),
	combout => \Reg|registers~220_combout\);

-- Location: LCCOMB_X82_Y26_N4
\Reg|registers~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~176_combout\ = (!\writeEnable~q\ & (regASel(4) & \Reg|registers~175_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~q\,
	datac => regASel(4),
	datad => \Reg|registers~175_combout\,
	combout => \Reg|registers~176_combout\);

-- Location: FF_X82_Y26_N17
\Reg|registers~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~220_combout\,
	ena => \Reg|registers~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~100_q\);

-- Location: LCCOMB_X84_Y26_N12
\Reg|registers~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~217_combout\ = !input(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(0),
	combout => \Reg|registers~217_combout\);

-- Location: LCCOMB_X84_Y26_N4
\Reg|registers~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~170_combout\ = (!\writeEnable~q\ & (\Reg|registers~169_combout\ & regASel(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~q\,
	datac => \Reg|registers~169_combout\,
	datad => regASel(4),
	combout => \Reg|registers~170_combout\);

-- Location: FF_X84_Y26_N13
\Reg|registers~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~217_combout\,
	ena => \Reg|registers~170_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~76_q\);

-- Location: LCCOMB_X84_Y26_N30
\Reg|registers~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~218_combout\ = !input(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(0),
	combout => \Reg|registers~218_combout\);

-- Location: LCCOMB_X84_Y26_N14
\Reg|registers~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~172_combout\ = (!\writeEnable~q\ & (\Reg|registers~171_combout\ & regASel(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~q\,
	datac => \Reg|registers~171_combout\,
	datad => regASel(4),
	combout => \Reg|registers~172_combout\);

-- Location: FF_X84_Y26_N31
\Reg|registers~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~218_combout\,
	ena => \Reg|registers~172_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~88_q\);

-- Location: LCCOMB_X83_Y26_N24
\Reg|registers~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~219_combout\ = !input(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => input(0),
	combout => \Reg|registers~219_combout\);

-- Location: LCCOMB_X83_Y26_N10
\Reg|registers~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~174_combout\ = (regASel(4) & (!\writeEnable~q\ & \Reg|registers~173_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => regASel(4),
	datac => \writeEnable~q\,
	datad => \Reg|registers~173_combout\,
	combout => \Reg|registers~174_combout\);

-- Location: FF_X83_Y26_N25
\Reg|registers~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~219_combout\,
	ena => \Reg|registers~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~64_q\);

-- Location: LCCOMB_X83_Y26_N18
\Reg|registers~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~106_combout\ = (regASel(3) & ((\Reg|registers~88_q\) # ((regASel(2))))) # (!regASel(3) & (((\Reg|registers~64_q\ & !regASel(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg|registers~88_q\,
	datab => \Reg|registers~64_q\,
	datac => regASel(3),
	datad => regASel(2),
	combout => \Reg|registers~106_combout\);

-- Location: LCCOMB_X83_Y26_N8
\Reg|registers~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~107_combout\ = (regASel(2) & ((\Reg|registers~106_combout\ & (\Reg|registers~100_q\)) # (!\Reg|registers~106_combout\ & ((\Reg|registers~76_q\))))) # (!regASel(2) & (((\Reg|registers~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg|registers~100_q\,
	datab => regASel(2),
	datac => \Reg|registers~76_q\,
	datad => \Reg|registers~106_combout\,
	combout => \Reg|registers~107_combout\);

-- Location: LCCOMB_X80_Y26_N12
\Reg|registers~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~224_combout\ = !input(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => input(0),
	combout => \Reg|registers~224_combout\);

-- Location: LCCOMB_X80_Y26_N2
\Reg|registers~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~184_combout\ = (regASel(4) & (!\writeEnable~q\ & \Reg|registers~183_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => regASel(4),
	datac => \writeEnable~q\,
	datad => \Reg|registers~183_combout\,
	combout => \Reg|registers~184_combout\);

-- Location: FF_X80_Y26_N13
\Reg|registers~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~224_combout\,
	ena => \Reg|registers~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~97_q\);

-- Location: LCCOMB_X82_Y25_N16
\Reg|registers~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~221_combout\ = !input(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(0),
	combout => \Reg|registers~221_combout\);

-- Location: LCCOMB_X82_Y25_N4
\Reg|registers~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~178_combout\ = (regASel(4) & (!\writeEnable~q\ & \Reg|registers~177_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => regASel(4),
	datac => \writeEnable~q\,
	datad => \Reg|registers~177_combout\,
	combout => \Reg|registers~178_combout\);

-- Location: FF_X82_Y25_N17
\Reg|registers~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~221_combout\,
	ena => \Reg|registers~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~85_q\);

-- Location: LCCOMB_X83_Y27_N20
\Reg|registers~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~222_combout\ = !input(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(0),
	combout => \Reg|registers~222_combout\);

-- Location: LCCOMB_X83_Y27_N12
\Reg|registers~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~180_combout\ = (regASel(4) & (!\writeEnable~q\ & \Reg|registers~179_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(4),
	datac => \writeEnable~q\,
	datad => \Reg|registers~179_combout\,
	combout => \Reg|registers~180_combout\);

-- Location: FF_X83_Y27_N21
\Reg|registers~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~222_combout\,
	ena => \Reg|registers~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~73_q\);

-- Location: LCCOMB_X82_Y25_N30
\Reg|registers~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~223_combout\ = !input(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(0),
	combout => \Reg|registers~223_combout\);

-- Location: LCCOMB_X82_Y25_N26
\Reg|registers~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~182_combout\ = (regASel(4) & (!\writeEnable~q\ & \Reg|registers~181_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => regASel(4),
	datac => \writeEnable~q\,
	datad => \Reg|registers~181_combout\,
	combout => \Reg|registers~182_combout\);

-- Location: FF_X82_Y25_N31
\Reg|registers~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~223_combout\,
	ena => \Reg|registers~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~61_q\);

-- Location: LCCOMB_X82_Y24_N16
\Reg|registers~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~108_combout\ = (regASel(2) & ((\Reg|registers~73_q\) # ((regASel(3))))) # (!regASel(2) & (((\Reg|registers~61_q\ & !regASel(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg|registers~73_q\,
	datab => \Reg|registers~61_q\,
	datac => regASel(2),
	datad => regASel(3),
	combout => \Reg|registers~108_combout\);

-- Location: LCCOMB_X82_Y24_N22
\Reg|registers~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~109_combout\ = (regASel(3) & ((\Reg|registers~108_combout\ & (\Reg|registers~97_q\)) # (!\Reg|registers~108_combout\ & ((\Reg|registers~85_q\))))) # (!regASel(3) & (((\Reg|registers~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg|registers~97_q\,
	datab => regASel(3),
	datac => \Reg|registers~85_q\,
	datad => \Reg|registers~108_combout\,
	combout => \Reg|registers~109_combout\);

-- Location: LCCOMB_X79_Y24_N28
\Reg|registers~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~228_combout\ = !input(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(0),
	combout => \Reg|registers~228_combout\);

-- Location: LCCOMB_X79_Y24_N14
\Reg|registers~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~192_combout\ = (!\writeEnable~q\ & (regASel(4) & \Reg|registers~191_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \writeEnable~q\,
	datac => regASel(4),
	datad => \Reg|registers~191_combout\,
	combout => \Reg|registers~192_combout\);

-- Location: FF_X79_Y24_N29
\Reg|registers~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~228_combout\,
	ena => \Reg|registers~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~94_q\);

-- Location: LCCOMB_X80_Y24_N24
\Reg|registers~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~225_combout\ = !input(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(0),
	combout => \Reg|registers~225_combout\);

-- Location: LCCOMB_X80_Y24_N0
\Reg|registers~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~186_combout\ = (regASel(4) & (!\writeEnable~q\ & \Reg|registers~185_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => regASel(4),
	datac => \writeEnable~q\,
	datad => \Reg|registers~185_combout\,
	combout => \Reg|registers~186_combout\);

-- Location: FF_X80_Y24_N25
\Reg|registers~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~225_combout\,
	ena => \Reg|registers~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~70_q\);

-- Location: LCCOMB_X81_Y24_N14
\Reg|registers~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~227_combout\ = !input(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => input(0),
	combout => \Reg|registers~227_combout\);

-- Location: LCCOMB_X81_Y28_N24
\Reg|registers~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~190_combout\ = (!\writeEnable~q\ & (\Reg|registers~189_combout\ & regASel(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~q\,
	datac => \Reg|registers~189_combout\,
	datad => regASel(4),
	combout => \Reg|registers~190_combout\);

-- Location: FF_X81_Y24_N15
\Reg|registers~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~227_combout\,
	ena => \Reg|registers~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~58_q\);

-- Location: LCCOMB_X82_Y24_N4
\Reg|registers~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~226_combout\ = !input(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(0),
	combout => \Reg|registers~226_combout\);

-- Location: LCCOMB_X81_Y28_N28
\Reg|registers~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~188_combout\ = (!\writeEnable~q\ & (regASel(4) & \Reg|registers~187_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~q\,
	datab => regASel(4),
	datad => \Reg|registers~187_combout\,
	combout => \Reg|registers~188_combout\);

-- Location: FF_X82_Y24_N5
\Reg|registers~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~226_combout\,
	ena => \Reg|registers~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~82_q\);

-- Location: LCCOMB_X82_Y24_N2
\Reg|registers~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~110_combout\ = (regASel(2) & (((regASel(3))))) # (!regASel(2) & ((regASel(3) & ((\Reg|registers~82_q\))) # (!regASel(3) & (\Reg|registers~58_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg|registers~58_q\,
	datab => \Reg|registers~82_q\,
	datac => regASel(2),
	datad => regASel(3),
	combout => \Reg|registers~110_combout\);

-- Location: LCCOMB_X82_Y24_N12
\Reg|registers~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~111_combout\ = (regASel(2) & ((\Reg|registers~110_combout\ & (\Reg|registers~94_q\)) # (!\Reg|registers~110_combout\ & ((\Reg|registers~70_q\))))) # (!regASel(2) & (((\Reg|registers~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg|registers~94_q\,
	datab => regASel(2),
	datac => \Reg|registers~70_q\,
	datad => \Reg|registers~110_combout\,
	combout => \Reg|registers~111_combout\);

-- Location: LCCOMB_X82_Y24_N14
\Reg|registers~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~112_combout\ = (regASel(0) & ((regASel(1)) # ((\Reg|registers~109_combout\)))) # (!regASel(0) & (!regASel(1) & ((\Reg|registers~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(0),
	datab => regASel(1),
	datac => \Reg|registers~109_combout\,
	datad => \Reg|registers~111_combout\,
	combout => \Reg|registers~112_combout\);

-- Location: LCCOMB_X83_Y24_N6
\Reg|registers~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~115_combout\ = (regASel(1) & ((\Reg|registers~112_combout\ & (\Reg|registers~114_combout\)) # (!\Reg|registers~112_combout\ & ((\Reg|registers~107_combout\))))) # (!regASel(1) & (((\Reg|registers~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(1),
	datab => \Reg|registers~114_combout\,
	datac => \Reg|registers~107_combout\,
	datad => \Reg|registers~112_combout\,
	combout => \Reg|registers~115_combout\);

-- Location: LCCOMB_X83_Y24_N16
\Reg|registers~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~126_combout\ = (regASel(4) & ((\Reg|registers~115_combout\))) # (!regASel(4) & (\Reg|registers~125_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg|registers~125_combout\,
	datab => regASel(4),
	datad => \Reg|registers~115_combout\,
	combout => \Reg|registers~126_combout\);

-- Location: LCCOMB_X83_Y24_N30
\input[0]~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \input[0]~_wirecell_combout\ = !input(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(0),
	combout => \input[0]~_wirecell_combout\);

-- Location: FF_X83_Y24_N17
\Reg|outA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~126_combout\,
	asdata => \input[0]~_wirecell_combout\,
	sload => \ALT_INV_writeEnable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|outA\(0));

-- Location: LCCOMB_X83_Y24_N4
\input[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \input[1]~2_combout\ = !\Rand|Pre_Q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Rand|Pre_Q\(1),
	combout => \input[1]~2_combout\);

-- Location: FF_X83_Y24_N5
\input[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \input[1]~2_combout\,
	ena => \input[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => input(1));

-- Location: LCCOMB_X80_Y26_N14
\Reg|registers~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~252_combout\ = !input(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(1),
	combout => \Reg|registers~252_combout\);

-- Location: FF_X80_Y26_N15
\Reg|registers~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~252_combout\,
	ena => \Reg|registers~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~98_q\);

-- Location: LCCOMB_X83_Y27_N4
\Reg|registers~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~249_combout\ = !input(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(1),
	combout => \Reg|registers~249_combout\);

-- Location: FF_X83_Y27_N5
\Reg|registers~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~249_combout\,
	ena => \Reg|registers~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~74_q\);

-- Location: LCCOMB_X82_Y25_N28
\Reg|registers~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~250_combout\ = !input(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(1),
	combout => \Reg|registers~250_combout\);

-- Location: FF_X82_Y25_N29
\Reg|registers~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~250_combout\,
	ena => \Reg|registers~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~86_q\);

-- Location: LCCOMB_X82_Y25_N2
\Reg|registers~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~251_combout\ = !input(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(1),
	combout => \Reg|registers~251_combout\);

-- Location: FF_X82_Y25_N3
\Reg|registers~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~251_combout\,
	ena => \Reg|registers~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~62_q\);

-- Location: LCCOMB_X81_Y24_N0
\Reg|registers~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~127_combout\ = (regASel(2) & (((regASel(3))))) # (!regASel(2) & ((regASel(3) & (\Reg|registers~86_q\)) # (!regASel(3) & ((\Reg|registers~62_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg|registers~86_q\,
	datab => regASel(2),
	datac => \Reg|registers~62_q\,
	datad => regASel(3),
	combout => \Reg|registers~127_combout\);

-- Location: LCCOMB_X81_Y24_N6
\Reg|registers~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~128_combout\ = (regASel(2) & ((\Reg|registers~127_combout\ & (\Reg|registers~98_q\)) # (!\Reg|registers~127_combout\ & ((\Reg|registers~74_q\))))) # (!regASel(2) & (((\Reg|registers~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg|registers~98_q\,
	datab => regASel(2),
	datac => \Reg|registers~74_q\,
	datad => \Reg|registers~127_combout\,
	combout => \Reg|registers~128_combout\);

-- Location: LCCOMB_X81_Y27_N16
\Reg|registers~261\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~261_combout\ = !input(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(1),
	combout => \Reg|registers~261_combout\);

-- Location: FF_X81_Y27_N17
\Reg|registers~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~261_combout\,
	ena => \Reg|registers~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~80_q\);

-- Location: LCCOMB_X82_Y27_N8
\Reg|registers~264\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~264_combout\ = !input(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => input(1),
	combout => \Reg|registers~264_combout\);

-- Location: FF_X82_Y27_N9
\Reg|registers~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~264_combout\,
	ena => \Reg|registers~200_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~104_q\);

-- Location: LCCOMB_X81_Y27_N10
\Reg|registers~263\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~263_combout\ = !input(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(1),
	combout => \Reg|registers~263_combout\);

-- Location: FF_X81_Y27_N11
\Reg|registers~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~263_combout\,
	ena => \Reg|registers~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~68_q\);

-- Location: LCCOMB_X82_Y27_N28
\Reg|registers~262\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~262_combout\ = !input(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => input(1),
	combout => \Reg|registers~262_combout\);

-- Location: FF_X82_Y27_N29
\Reg|registers~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~262_combout\,
	ena => \Reg|registers~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~92_q\);

-- Location: LCCOMB_X82_Y27_N18
\Reg|registers~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~134_combout\ = (regASel(2) & (((regASel(3))))) # (!regASel(2) & ((regASel(3) & ((\Reg|registers~92_q\))) # (!regASel(3) & (\Reg|registers~68_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg|registers~68_q\,
	datab => \Reg|registers~92_q\,
	datac => regASel(2),
	datad => regASel(3),
	combout => \Reg|registers~134_combout\);

-- Location: LCCOMB_X82_Y27_N22
\Reg|registers~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~135_combout\ = (regASel(2) & ((\Reg|registers~134_combout\ & ((\Reg|registers~104_q\))) # (!\Reg|registers~134_combout\ & (\Reg|registers~80_q\)))) # (!regASel(2) & (((\Reg|registers~134_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg|registers~80_q\,
	datab => \Reg|registers~104_q\,
	datac => regASel(2),
	datad => \Reg|registers~134_combout\,
	combout => \Reg|registers~135_combout\);

-- Location: LCCOMB_X79_Y24_N26
\Reg|registers~260\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~260_combout\ = !input(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(1),
	combout => \Reg|registers~260_combout\);

-- Location: FF_X79_Y24_N27
\Reg|registers~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~260_combout\,
	ena => \Reg|registers~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~95_q\);

-- Location: LCCOMB_X82_Y24_N0
\Reg|registers~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~257_combout\ = !input(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(1),
	combout => \Reg|registers~257_combout\);

-- Location: FF_X82_Y24_N1
\Reg|registers~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~257_combout\,
	ena => \Reg|registers~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~83_q\);

-- Location: LCCOMB_X81_Y24_N12
\Reg|registers~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~259_combout\ = !input(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(1),
	combout => \Reg|registers~259_combout\);

-- Location: FF_X81_Y24_N13
\Reg|registers~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~259_combout\,
	ena => \Reg|registers~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~59_q\);

-- Location: LCCOMB_X80_Y24_N20
\Reg|registers~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~258_combout\ = !input(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => input(1),
	combout => \Reg|registers~258_combout\);

-- Location: FF_X80_Y24_N21
\Reg|registers~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~258_combout\,
	ena => \Reg|registers~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~71_q\);

-- Location: LCCOMB_X81_Y24_N2
\Reg|registers~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~131_combout\ = (regASel(2) & (((\Reg|registers~71_q\) # (regASel(3))))) # (!regASel(2) & (\Reg|registers~59_q\ & ((!regASel(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg|registers~59_q\,
	datab => \Reg|registers~71_q\,
	datac => regASel(2),
	datad => regASel(3),
	combout => \Reg|registers~131_combout\);

-- Location: LCCOMB_X81_Y24_N4
\Reg|registers~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~132_combout\ = (regASel(3) & ((\Reg|registers~131_combout\ & (\Reg|registers~95_q\)) # (!\Reg|registers~131_combout\ & ((\Reg|registers~83_q\))))) # (!regASel(3) & (((\Reg|registers~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg|registers~95_q\,
	datab => regASel(3),
	datac => \Reg|registers~83_q\,
	datad => \Reg|registers~131_combout\,
	combout => \Reg|registers~132_combout\);

-- Location: LCCOMB_X82_Y26_N18
\Reg|registers~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~256_combout\ = !input(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(1),
	combout => \Reg|registers~256_combout\);

-- Location: FF_X82_Y26_N19
\Reg|registers~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~256_combout\,
	ena => \Reg|registers~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~101_q\);

-- Location: LCCOMB_X84_Y26_N8
\Reg|registers~253\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~253_combout\ = !input(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => input(1),
	combout => \Reg|registers~253_combout\);

-- Location: FF_X84_Y26_N9
\Reg|registers~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~253_combout\,
	ena => \Reg|registers~172_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~89_q\);

-- Location: LCCOMB_X84_Y26_N26
\Reg|registers~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~254_combout\ = !input(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => input(1),
	combout => \Reg|registers~254_combout\);

-- Location: FF_X84_Y26_N27
\Reg|registers~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~254_combout\,
	ena => \Reg|registers~170_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~77_q\);

-- Location: LCCOMB_X83_Y26_N4
\Reg|registers~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~255_combout\ = !input(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => input(1),
	combout => \Reg|registers~255_combout\);

-- Location: FF_X83_Y26_N5
\Reg|registers~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~255_combout\,
	ena => \Reg|registers~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~65_q\);

-- Location: LCCOMB_X81_Y24_N20
\Reg|registers~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~129_combout\ = (regASel(3) & (((regASel(2))))) # (!regASel(3) & ((regASel(2) & (\Reg|registers~77_q\)) # (!regASel(2) & ((\Reg|registers~65_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg|registers~77_q\,
	datab => regASel(3),
	datac => regASel(2),
	datad => \Reg|registers~65_q\,
	combout => \Reg|registers~129_combout\);

-- Location: LCCOMB_X81_Y24_N18
\Reg|registers~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~130_combout\ = (regASel(3) & ((\Reg|registers~129_combout\ & (\Reg|registers~101_q\)) # (!\Reg|registers~129_combout\ & ((\Reg|registers~89_q\))))) # (!regASel(3) & (((\Reg|registers~129_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg|registers~101_q\,
	datab => regASel(3),
	datac => \Reg|registers~89_q\,
	datad => \Reg|registers~129_combout\,
	combout => \Reg|registers~130_combout\);

-- Location: LCCOMB_X81_Y24_N10
\Reg|registers~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~133_combout\ = (regASel(1) & ((regASel(0)) # ((\Reg|registers~130_combout\)))) # (!regASel(1) & (!regASel(0) & (\Reg|registers~132_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(1),
	datab => regASel(0),
	datac => \Reg|registers~132_combout\,
	datad => \Reg|registers~130_combout\,
	combout => \Reg|registers~133_combout\);

-- Location: LCCOMB_X81_Y24_N8
\Reg|registers~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~136_combout\ = (regASel(0) & ((\Reg|registers~133_combout\ & ((\Reg|registers~135_combout\))) # (!\Reg|registers~133_combout\ & (\Reg|registers~128_combout\)))) # (!regASel(0) & (((\Reg|registers~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg|registers~128_combout\,
	datab => regASel(0),
	datac => \Reg|registers~135_combout\,
	datad => \Reg|registers~133_combout\,
	combout => \Reg|registers~136_combout\);

-- Location: LCCOMB_X84_Y28_N22
\Reg|registers~280\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~280_combout\ = !input(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(1),
	combout => \Reg|registers~280_combout\);

-- Location: FF_X84_Y28_N23
\Reg|registers~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~280_combout\,
	ena => \Reg|registers~216_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~56_q\);

-- Location: LCCOMB_X81_Y28_N6
\Reg|registers~277\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~277_combout\ = !input(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => input(1),
	combout => \Reg|registers~277_combout\);

-- Location: FF_X83_Y28_N29
\Reg|registers~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Reg|registers~277_combout\,
	sload => VCC,
	ena => \Reg|registers~214_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~53_q\);

-- Location: LCCOMB_X84_Y28_N8
\Reg|registers~278\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~278_combout\ = !input(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(1),
	combout => \Reg|registers~278_combout\);

-- Location: FF_X84_Y28_N9
\Reg|registers~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~278_combout\,
	ena => \Reg|registers~213_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~50_q\);

-- Location: LCCOMB_X83_Y28_N22
\Reg|registers~279\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~279_combout\ = !input(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(1),
	combout => \Reg|registers~279_combout\);

-- Location: FF_X83_Y28_N23
\Reg|registers~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~279_combout\,
	ena => \Reg|registers~215_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~47_q\);

-- Location: LCCOMB_X83_Y28_N12
\Reg|registers~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~144_combout\ = (regASel(1) & (((regASel(0))))) # (!regASel(1) & ((regASel(0) & (\Reg|registers~50_q\)) # (!regASel(0) & ((\Reg|registers~47_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(1),
	datab => \Reg|registers~50_q\,
	datac => \Reg|registers~47_q\,
	datad => regASel(0),
	combout => \Reg|registers~144_combout\);

-- Location: LCCOMB_X83_Y28_N6
\Reg|registers~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~145_combout\ = (regASel(1) & ((\Reg|registers~144_combout\ & (\Reg|registers~56_q\)) # (!\Reg|registers~144_combout\ & ((\Reg|registers~53_q\))))) # (!regASel(1) & (((\Reg|registers~144_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(1),
	datab => \Reg|registers~56_q\,
	datac => \Reg|registers~53_q\,
	datad => \Reg|registers~144_combout\,
	combout => \Reg|registers~145_combout\);

-- Location: LCCOMB_X82_Y26_N6
\Reg|registers~276\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~276_combout\ = !input(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(1),
	combout => \Reg|registers~276_combout\);

-- Location: LCCOMB_X81_Y26_N6
\Reg|registers~20feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~20feeder_combout\ = \Reg|registers~276_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Reg|registers~276_combout\,
	combout => \Reg|registers~20feeder_combout\);

-- Location: FF_X81_Y26_N7
\Reg|registers~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~20feeder_combout\,
	ena => \Reg|registers~212_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~20_q\);

-- Location: LCCOMB_X79_Y28_N2
\Reg|registers~273\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~273_combout\ = !input(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => input(1),
	combout => \Reg|registers~273_combout\);

-- Location: FF_X79_Y28_N3
\Reg|registers~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~273_combout\,
	ena => \Reg|registers~210_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~14_q\);

-- Location: LCCOMB_X81_Y28_N2
\Reg|registers~274\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~274_combout\ = !input(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => input(1),
	combout => \Reg|registers~274_combout\);

-- Location: FF_X81_Y28_N3
\Reg|registers~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~274_combout\,
	ena => \Reg|registers~209_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~17_q\);

-- Location: LCCOMB_X80_Y24_N22
\Reg|registers~275\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~275_combout\ = !input(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => input(1),
	combout => \Reg|registers~275_combout\);

-- Location: FF_X80_Y24_N23
\Reg|registers~11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~275_combout\,
	ena => \Reg|registers~211_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~11_q\);

-- Location: LCCOMB_X82_Y24_N20
\Reg|registers~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~141_combout\ = (regASel(1) & ((\Reg|registers~17_q\) # ((regASel(0))))) # (!regASel(1) & (((\Reg|registers~11_q\ & !regASel(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg|registers~17_q\,
	datab => \Reg|registers~11_q\,
	datac => regASel(1),
	datad => regASel(0),
	combout => \Reg|registers~141_combout\);

-- Location: LCCOMB_X82_Y24_N26
\Reg|registers~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~142_combout\ = (regASel(0) & ((\Reg|registers~141_combout\ & (\Reg|registers~20_q\)) # (!\Reg|registers~141_combout\ & ((\Reg|registers~14_q\))))) # (!regASel(0) & (((\Reg|registers~141_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg|registers~20_q\,
	datab => regASel(0),
	datac => \Reg|registers~14_q\,
	datad => \Reg|registers~141_combout\,
	combout => \Reg|registers~142_combout\);

-- Location: LCCOMB_X83_Y25_N30
\Reg|registers~272\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~272_combout\ = !input(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => input(1),
	combout => \Reg|registers~272_combout\);

-- Location: FF_X83_Y25_N31
\Reg|registers~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~272_combout\,
	ena => \Reg|registers~204_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~44_q\);

-- Location: LCCOMB_X81_Y25_N8
\Reg|registers~269\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~269_combout\ = !input(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => input(1),
	combout => \Reg|registers~269_combout\);

-- Location: FF_X81_Y25_N9
\Reg|registers~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~269_combout\,
	ena => \Reg|registers~202_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~38_q\);

-- Location: LCCOMB_X82_Y24_N30
\Reg|registers~270\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~270_combout\ = !input(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(1),
	combout => \Reg|registers~270_combout\);

-- Location: FF_X82_Y24_N31
\Reg|registers~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~270_combout\,
	ena => \Reg|registers~201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~41_q\);

-- Location: LCCOMB_X81_Y25_N30
\Reg|registers~271\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~271_combout\ = !input(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => input(1),
	combout => \Reg|registers~271_combout\);

-- Location: FF_X81_Y25_N31
\Reg|registers~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~271_combout\,
	ena => \Reg|registers~203_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~35_q\);

-- Location: LCCOMB_X82_Y24_N28
\Reg|registers~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~139_combout\ = (regASel(1) & ((\Reg|registers~41_q\) # ((regASel(0))))) # (!regASel(1) & (((\Reg|registers~35_q\ & !regASel(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg|registers~41_q\,
	datab => \Reg|registers~35_q\,
	datac => regASel(1),
	datad => regASel(0),
	combout => \Reg|registers~139_combout\);

-- Location: LCCOMB_X82_Y24_N18
\Reg|registers~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~140_combout\ = (regASel(0) & ((\Reg|registers~139_combout\ & (\Reg|registers~44_q\)) # (!\Reg|registers~139_combout\ & ((\Reg|registers~38_q\))))) # (!regASel(0) & (((\Reg|registers~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg|registers~44_q\,
	datab => regASel(0),
	datac => \Reg|registers~38_q\,
	datad => \Reg|registers~139_combout\,
	combout => \Reg|registers~140_combout\);

-- Location: LCCOMB_X82_Y24_N8
\Reg|registers~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~143_combout\ = (regASel(2) & (regASel(3))) # (!regASel(2) & ((regASel(3) & ((\Reg|registers~140_combout\))) # (!regASel(3) & (\Reg|registers~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(2),
	datab => regASel(3),
	datac => \Reg|registers~142_combout\,
	datad => \Reg|registers~140_combout\,
	combout => \Reg|registers~143_combout\);

-- Location: LCCOMB_X82_Y26_N0
\Reg|registers~265\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~265_combout\ = !input(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(1),
	combout => \Reg|registers~265_combout\);

-- Location: FF_X82_Y26_N1
\Reg|registers~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~265_combout\,
	ena => \Reg|registers~206_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~29_q\);

-- Location: LCCOMB_X80_Y27_N6
\Reg|registers~268\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~268_combout\ = !input(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(1),
	combout => \Reg|registers~268_combout\);

-- Location: FF_X80_Y27_N7
\Reg|registers~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~268_combout\,
	ena => \Reg|registers~208_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~32_q\);

-- Location: LCCOMB_X80_Y27_N12
\Reg|registers~266\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~266_combout\ = !input(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(1),
	combout => \Reg|registers~266_combout\);

-- Location: FF_X80_Y27_N13
\Reg|registers~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~266_combout\,
	ena => \Reg|registers~205_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~26_q\);

-- Location: LCCOMB_X83_Y27_N18
\Reg|registers~267\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~267_combout\ = !input(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(1),
	combout => \Reg|registers~267_combout\);

-- Location: FF_X83_Y27_N19
\Reg|registers~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~267_combout\,
	ena => \Reg|registers~207_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~23_q\);

-- Location: LCCOMB_X81_Y27_N20
\Reg|registers~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~137_combout\ = (regASel(0) & ((\Reg|registers~26_q\) # ((regASel(1))))) # (!regASel(0) & (((\Reg|registers~23_q\ & !regASel(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg|registers~26_q\,
	datab => \Reg|registers~23_q\,
	datac => regASel(0),
	datad => regASel(1),
	combout => \Reg|registers~137_combout\);

-- Location: LCCOMB_X81_Y27_N14
\Reg|registers~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~138_combout\ = (regASel(1) & ((\Reg|registers~137_combout\ & ((\Reg|registers~32_q\))) # (!\Reg|registers~137_combout\ & (\Reg|registers~29_q\)))) # (!regASel(1) & (((\Reg|registers~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg|registers~29_q\,
	datab => \Reg|registers~32_q\,
	datac => regASel(1),
	datad => \Reg|registers~137_combout\,
	combout => \Reg|registers~138_combout\);

-- Location: LCCOMB_X82_Y24_N6
\Reg|registers~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~146_combout\ = (regASel(2) & ((\Reg|registers~143_combout\ & (\Reg|registers~145_combout\)) # (!\Reg|registers~143_combout\ & ((\Reg|registers~138_combout\))))) # (!regASel(2) & (((\Reg|registers~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg|registers~145_combout\,
	datab => regASel(2),
	datac => \Reg|registers~143_combout\,
	datad => \Reg|registers~138_combout\,
	combout => \Reg|registers~146_combout\);

-- Location: LCCOMB_X81_Y24_N28
\Reg|registers~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~147_combout\ = (regASel(4) & (\Reg|registers~136_combout\)) # (!regASel(4) & ((\Reg|registers~146_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(4),
	datab => \Reg|registers~136_combout\,
	datad => \Reg|registers~146_combout\,
	combout => \Reg|registers~147_combout\);

-- Location: LCCOMB_X81_Y24_N26
\input[1]~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \input[1]~_wirecell_combout\ = !input(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(1),
	combout => \input[1]~_wirecell_combout\);

-- Location: FF_X81_Y24_N29
\Reg|outA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~147_combout\,
	asdata => \input[1]~_wirecell_combout\,
	sload => \ALT_INV_writeEnable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|outA\(1));

-- Location: LCCOMB_X83_Y24_N14
\input[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \input[2]~3_combout\ = !\Rand|Pre_Q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Rand|Pre_Q\(2),
	combout => \input[2]~3_combout\);

-- Location: FF_X83_Y24_N15
\input[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \input[2]~3_combout\,
	ena => \input[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => input(2));

-- Location: LCCOMB_X84_Y28_N28
\Reg|registers~309\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~309_combout\ = !input(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(2),
	combout => \Reg|registers~309_combout\);

-- Location: FF_X84_Y28_N29
\Reg|registers~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~309_combout\,
	ena => \Reg|registers~213_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~51_q\);

-- Location: LCCOMB_X84_Y28_N10
\Reg|registers~312\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~312_combout\ = !input(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(2),
	combout => \Reg|registers~312_combout\);

-- Location: FF_X84_Y28_N11
\Reg|registers~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~312_combout\,
	ena => \Reg|registers~216_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~57_q\);

-- Location: LCCOMB_X83_Y28_N24
\Reg|registers~310\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~310_combout\ = !input(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => input(2),
	combout => \Reg|registers~310_combout\);

-- Location: FF_X83_Y28_N25
\Reg|registers~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~310_combout\,
	ena => \Reg|registers~214_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~54_q\);

-- Location: LCCOMB_X84_Y28_N30
\Reg|registers~311\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~311_combout\ = !input(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(2),
	combout => \Reg|registers~311_combout\);

-- Location: FF_X83_Y28_N11
\Reg|registers~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Reg|registers~311_combout\,
	sload => VCC,
	ena => \Reg|registers~215_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~48_q\);

-- Location: LCCOMB_X83_Y28_N10
\Reg|registers~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~165_combout\ = (regASel(0) & (((regASel(1))))) # (!regASel(0) & ((regASel(1) & (\Reg|registers~54_q\)) # (!regASel(1) & ((\Reg|registers~48_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(0),
	datab => \Reg|registers~54_q\,
	datac => \Reg|registers~48_q\,
	datad => regASel(1),
	combout => \Reg|registers~165_combout\);

-- Location: LCCOMB_X83_Y28_N4
\Reg|registers~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~166_combout\ = (regASel(0) & ((\Reg|registers~165_combout\ & ((\Reg|registers~57_q\))) # (!\Reg|registers~165_combout\ & (\Reg|registers~51_q\)))) # (!regASel(0) & (((\Reg|registers~165_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(0),
	datab => \Reg|registers~51_q\,
	datac => \Reg|registers~57_q\,
	datad => \Reg|registers~165_combout\,
	combout => \Reg|registers~166_combout\);

-- Location: LCCOMB_X83_Y25_N26
\Reg|registers~300\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~300_combout\ = !input(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => input(2),
	combout => \Reg|registers~300_combout\);

-- Location: FF_X83_Y25_N27
\Reg|registers~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~300_combout\,
	ena => \Reg|registers~204_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~45_q\);

-- Location: LCCOMB_X83_Y25_N0
\Reg|registers~297\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~297_combout\ = !input(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => input(2),
	combout => \Reg|registers~297_combout\);

-- Location: FF_X83_Y25_N1
\Reg|registers~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~297_combout\,
	ena => \Reg|registers~201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~42_q\);

-- Location: LCCOMB_X81_Y25_N6
\Reg|registers~299\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~299_combout\ = !input(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(2),
	combout => \Reg|registers~299_combout\);

-- Location: FF_X81_Y25_N7
\Reg|registers~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~299_combout\,
	ena => \Reg|registers~203_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~36_q\);

-- Location: LCCOMB_X81_Y25_N24
\Reg|registers~298\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~298_combout\ = !input(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(2),
	combout => \Reg|registers~298_combout\);

-- Location: FF_X81_Y25_N25
\Reg|registers~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~298_combout\,
	ena => \Reg|registers~202_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~39_q\);

-- Location: LCCOMB_X81_Y25_N28
\Reg|registers~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~158_combout\ = (regASel(0) & (((\Reg|registers~39_q\) # (regASel(1))))) # (!regASel(0) & (\Reg|registers~36_q\ & ((!regASel(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg|registers~36_q\,
	datab => \Reg|registers~39_q\,
	datac => regASel(0),
	datad => regASel(1),
	combout => \Reg|registers~158_combout\);

-- Location: LCCOMB_X81_Y25_N10
\Reg|registers~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~159_combout\ = (regASel(1) & ((\Reg|registers~158_combout\ & (\Reg|registers~45_q\)) # (!\Reg|registers~158_combout\ & ((\Reg|registers~42_q\))))) # (!regASel(1) & (((\Reg|registers~158_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(1),
	datab => \Reg|registers~45_q\,
	datac => \Reg|registers~42_q\,
	datad => \Reg|registers~158_combout\,
	combout => \Reg|registers~159_combout\);

-- Location: LCCOMB_X81_Y26_N20
\Reg|registers~308\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~308_combout\ = !input(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(2),
	combout => \Reg|registers~308_combout\);

-- Location: FF_X81_Y26_N21
\Reg|registers~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~308_combout\,
	ena => \Reg|registers~212_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~21_q\);

-- Location: LCCOMB_X81_Y28_N0
\Reg|registers~305\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~305_combout\ = !input(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(2),
	combout => \Reg|registers~305_combout\);

-- Location: FF_X81_Y28_N1
\Reg|registers~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~305_combout\,
	ena => \Reg|registers~209_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~18_q\);

-- Location: LCCOMB_X79_Y28_N24
\Reg|registers~306\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~306_combout\ = !input(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(2),
	combout => \Reg|registers~306_combout\);

-- Location: FF_X79_Y28_N25
\Reg|registers~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~306_combout\,
	ena => \Reg|registers~210_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~15_q\);

-- Location: LCCOMB_X80_Y24_N18
\Reg|registers~307\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~307_combout\ = !input(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(2),
	combout => \Reg|registers~307_combout\);

-- Location: FF_X80_Y24_N19
\Reg|registers~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~307_combout\,
	ena => \Reg|registers~211_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~12_q\);

-- Location: LCCOMB_X80_Y28_N0
\Reg|registers~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~162_combout\ = (regASel(1) & (((regASel(0))))) # (!regASel(1) & ((regASel(0) & (\Reg|registers~15_q\)) # (!regASel(0) & ((\Reg|registers~12_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(1),
	datab => \Reg|registers~15_q\,
	datac => regASel(0),
	datad => \Reg|registers~12_q\,
	combout => \Reg|registers~162_combout\);

-- Location: LCCOMB_X80_Y28_N30
\Reg|registers~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~163_combout\ = (regASel(1) & ((\Reg|registers~162_combout\ & (\Reg|registers~21_q\)) # (!\Reg|registers~162_combout\ & ((\Reg|registers~18_q\))))) # (!regASel(1) & (((\Reg|registers~162_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg|registers~21_q\,
	datab => \Reg|registers~18_q\,
	datac => regASel(1),
	datad => \Reg|registers~162_combout\,
	combout => \Reg|registers~163_combout\);

-- Location: LCCOMB_X80_Y27_N22
\Reg|registers~304\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~304_combout\ = !input(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(2),
	combout => \Reg|registers~304_combout\);

-- Location: FF_X80_Y27_N23
\Reg|registers~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~304_combout\,
	ena => \Reg|registers~208_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~33_q\);

-- Location: LCCOMB_X81_Y26_N0
\Reg|registers~301\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~301_combout\ = !input(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(2),
	combout => \Reg|registers~301_combout\);

-- Location: LCCOMB_X80_Y27_N24
\Reg|registers~27feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~27feeder_combout\ = \Reg|registers~301_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Reg|registers~301_combout\,
	combout => \Reg|registers~27feeder_combout\);

-- Location: FF_X80_Y27_N25
\Reg|registers~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~27feeder_combout\,
	ena => \Reg|registers~205_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~27_q\);

-- Location: LCCOMB_X83_Y26_N26
\Reg|registers~302\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~302_combout\ = !input(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(2),
	combout => \Reg|registers~302_combout\);

-- Location: FF_X83_Y26_N27
\Reg|registers~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~302_combout\,
	ena => \Reg|registers~206_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~30_q\);

-- Location: LCCOMB_X83_Y27_N10
\Reg|registers~303\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~303_combout\ = !input(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => input(2),
	combout => \Reg|registers~303_combout\);

-- Location: FF_X83_Y27_N11
\Reg|registers~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~303_combout\,
	ena => \Reg|registers~207_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~24_q\);

-- Location: LCCOMB_X82_Y28_N24
\Reg|registers~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~160_combout\ = (regASel(1) & ((regASel(0)) # ((\Reg|registers~30_q\)))) # (!regASel(1) & (!regASel(0) & ((\Reg|registers~24_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(1),
	datab => regASel(0),
	datac => \Reg|registers~30_q\,
	datad => \Reg|registers~24_q\,
	combout => \Reg|registers~160_combout\);

-- Location: LCCOMB_X81_Y28_N18
\Reg|registers~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~161_combout\ = (regASel(0) & ((\Reg|registers~160_combout\ & (\Reg|registers~33_q\)) # (!\Reg|registers~160_combout\ & ((\Reg|registers~27_q\))))) # (!regASel(0) & (((\Reg|registers~160_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg|registers~33_q\,
	datab => regASel(0),
	datac => \Reg|registers~27_q\,
	datad => \Reg|registers~160_combout\,
	combout => \Reg|registers~161_combout\);

-- Location: LCCOMB_X80_Y28_N20
\Reg|registers~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~164_combout\ = (regASel(2) & ((regASel(3)) # ((\Reg|registers~161_combout\)))) # (!regASel(2) & (!regASel(3) & (\Reg|registers~163_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(2),
	datab => regASel(3),
	datac => \Reg|registers~163_combout\,
	datad => \Reg|registers~161_combout\,
	combout => \Reg|registers~164_combout\);

-- Location: LCCOMB_X80_Y28_N14
\Reg|registers~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~167_combout\ = (regASel(3) & ((\Reg|registers~164_combout\ & (\Reg|registers~166_combout\)) # (!\Reg|registers~164_combout\ & ((\Reg|registers~159_combout\))))) # (!regASel(3) & (((\Reg|registers~164_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg|registers~166_combout\,
	datab => regASel(3),
	datac => \Reg|registers~159_combout\,
	datad => \Reg|registers~164_combout\,
	combout => \Reg|registers~167_combout\);

-- Location: LCCOMB_X79_Y24_N16
\Reg|registers~292\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~292_combout\ = !input(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(2),
	combout => \Reg|registers~292_combout\);

-- Location: FF_X79_Y24_N17
\Reg|registers~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~292_combout\,
	ena => \Reg|registers~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~96_q\);

-- Location: LCCOMB_X80_Y24_N12
\Reg|registers~289\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~289_combout\ = !input(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(2),
	combout => \Reg|registers~289_combout\);

-- Location: FF_X80_Y24_N13
\Reg|registers~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~289_combout\,
	ena => \Reg|registers~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~72_q\);

-- Location: LCCOMB_X80_Y28_N6
\Reg|registers~290\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~290_combout\ = !input(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(2),
	combout => \Reg|registers~290_combout\);

-- Location: FF_X80_Y28_N7
\Reg|registers~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~290_combout\,
	ena => \Reg|registers~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~84_q\);

-- Location: LCCOMB_X81_Y28_N8
\Reg|registers~291\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~291_combout\ = !input(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(2),
	combout => \Reg|registers~291_combout\);

-- Location: FF_X81_Y28_N9
\Reg|registers~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~291_combout\,
	ena => \Reg|registers~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~60_q\);

-- Location: LCCOMB_X80_Y28_N12
\Reg|registers~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~152_combout\ = (regASel(3) & ((\Reg|registers~84_q\) # ((regASel(2))))) # (!regASel(3) & (((\Reg|registers~60_q\ & !regASel(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg|registers~84_q\,
	datab => \Reg|registers~60_q\,
	datac => regASel(3),
	datad => regASel(2),
	combout => \Reg|registers~152_combout\);

-- Location: LCCOMB_X80_Y28_N22
\Reg|registers~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~153_combout\ = (regASel(2) & ((\Reg|registers~152_combout\ & (\Reg|registers~96_q\)) # (!\Reg|registers~152_combout\ & ((\Reg|registers~72_q\))))) # (!regASel(2) & (((\Reg|registers~152_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(2),
	datab => \Reg|registers~96_q\,
	datac => \Reg|registers~72_q\,
	datad => \Reg|registers~152_combout\,
	combout => \Reg|registers~153_combout\);

-- Location: LCCOMB_X80_Y26_N4
\Reg|registers~288\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~288_combout\ = !input(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(2),
	combout => \Reg|registers~288_combout\);

-- Location: FF_X80_Y26_N5
\Reg|registers~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~288_combout\,
	ena => \Reg|registers~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~99_q\);

-- Location: LCCOMB_X82_Y25_N12
\Reg|registers~285\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~285_combout\ = !input(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(2),
	combout => \Reg|registers~285_combout\);

-- Location: FF_X82_Y25_N13
\Reg|registers~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~285_combout\,
	ena => \Reg|registers~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~87_q\);

-- Location: LCCOMB_X82_Y25_N22
\Reg|registers~287\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~287_combout\ = !input(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(2),
	combout => \Reg|registers~287_combout\);

-- Location: FF_X82_Y25_N23
\Reg|registers~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~287_combout\,
	ena => \Reg|registers~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~63_q\);

-- Location: LCCOMB_X83_Y27_N0
\Reg|registers~286\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~286_combout\ = !input(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => input(2),
	combout => \Reg|registers~286_combout\);

-- Location: FF_X83_Y27_N1
\Reg|registers~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~286_combout\,
	ena => \Reg|registers~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~75_q\);

-- Location: LCCOMB_X80_Y28_N2
\Reg|registers~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~150_combout\ = (regASel(2) & ((regASel(3)) # ((\Reg|registers~75_q\)))) # (!regASel(2) & (!regASel(3) & (\Reg|registers~63_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(2),
	datab => regASel(3),
	datac => \Reg|registers~63_q\,
	datad => \Reg|registers~75_q\,
	combout => \Reg|registers~150_combout\);

-- Location: LCCOMB_X80_Y28_N28
\Reg|registers~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~151_combout\ = (regASel(3) & ((\Reg|registers~150_combout\ & (\Reg|registers~99_q\)) # (!\Reg|registers~150_combout\ & ((\Reg|registers~87_q\))))) # (!regASel(3) & (((\Reg|registers~150_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg|registers~99_q\,
	datab => regASel(3),
	datac => \Reg|registers~87_q\,
	datad => \Reg|registers~150_combout\,
	combout => \Reg|registers~151_combout\);

-- Location: LCCOMB_X80_Y28_N8
\Reg|registers~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~154_combout\ = (regASel(1) & (regASel(0))) # (!regASel(1) & ((regASel(0) & ((\Reg|registers~151_combout\))) # (!regASel(0) & (\Reg|registers~153_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(1),
	datab => regASel(0),
	datac => \Reg|registers~153_combout\,
	datad => \Reg|registers~151_combout\,
	combout => \Reg|registers~154_combout\);

-- Location: LCCOMB_X82_Y27_N2
\Reg|registers~296\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~296_combout\ = !input(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(2),
	combout => \Reg|registers~296_combout\);

-- Location: FF_X82_Y27_N3
\Reg|registers~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~296_combout\,
	ena => \Reg|registers~200_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~105_q\);

-- Location: LCCOMB_X82_Y27_N12
\Reg|registers~293\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~293_combout\ = !input(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(2),
	combout => \Reg|registers~293_combout\);

-- Location: FF_X82_Y27_N13
\Reg|registers~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~293_combout\,
	ena => \Reg|registers~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~93_q\);

-- Location: LCCOMB_X81_Y27_N6
\Reg|registers~295\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~295_combout\ = !input(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => input(2),
	combout => \Reg|registers~295_combout\);

-- Location: FF_X81_Y27_N7
\Reg|registers~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~295_combout\,
	ena => \Reg|registers~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~69_q\);

-- Location: LCCOMB_X81_Y27_N4
\Reg|registers~294\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~294_combout\ = !input(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => input(2),
	combout => \Reg|registers~294_combout\);

-- Location: FF_X81_Y27_N5
\Reg|registers~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~294_combout\,
	ena => \Reg|registers~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~81_q\);

-- Location: LCCOMB_X81_Y27_N12
\Reg|registers~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~155_combout\ = (regASel(3) & (((regASel(2))))) # (!regASel(3) & ((regASel(2) & ((\Reg|registers~81_q\))) # (!regASel(2) & (\Reg|registers~69_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg|registers~69_q\,
	datab => \Reg|registers~81_q\,
	datac => regASel(3),
	datad => regASel(2),
	combout => \Reg|registers~155_combout\);

-- Location: LCCOMB_X81_Y27_N18
\Reg|registers~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~156_combout\ = (regASel(3) & ((\Reg|registers~155_combout\ & (\Reg|registers~105_q\)) # (!\Reg|registers~155_combout\ & ((\Reg|registers~93_q\))))) # (!regASel(3) & (((\Reg|registers~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg|registers~105_q\,
	datab => \Reg|registers~93_q\,
	datac => regASel(3),
	datad => \Reg|registers~155_combout\,
	combout => \Reg|registers~156_combout\);

-- Location: LCCOMB_X82_Y26_N22
\Reg|registers~284\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~284_combout\ = !input(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => input(2),
	combout => \Reg|registers~284_combout\);

-- Location: FF_X82_Y26_N23
\Reg|registers~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~284_combout\,
	ena => \Reg|registers~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~102_q\);

-- Location: LCCOMB_X84_Y26_N0
\Reg|registers~281\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~281_combout\ = !input(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(2),
	combout => \Reg|registers~281_combout\);

-- Location: FF_X84_Y26_N1
\Reg|registers~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~281_combout\,
	ena => \Reg|registers~170_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~78_q\);

-- Location: LCCOMB_X83_Y26_N22
\Reg|registers~283\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~283_combout\ = !input(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(2),
	combout => \Reg|registers~283_combout\);

-- Location: FF_X83_Y26_N23
\Reg|registers~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~283_combout\,
	ena => \Reg|registers~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~66_q\);

-- Location: LCCOMB_X84_Y26_N18
\Reg|registers~282\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~282_combout\ = !input(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(2),
	combout => \Reg|registers~282_combout\);

-- Location: FF_X84_Y26_N19
\Reg|registers~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~282_combout\,
	ena => \Reg|registers~172_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|registers~90_q\);

-- Location: LCCOMB_X83_Y26_N28
\Reg|registers~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~148_combout\ = (regASel(3) & (((\Reg|registers~90_q\) # (regASel(2))))) # (!regASel(3) & (\Reg|registers~66_q\ & ((!regASel(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg|registers~66_q\,
	datab => \Reg|registers~90_q\,
	datac => regASel(3),
	datad => regASel(2),
	combout => \Reg|registers~148_combout\);

-- Location: LCCOMB_X80_Y28_N24
\Reg|registers~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~149_combout\ = (regASel(2) & ((\Reg|registers~148_combout\ & (\Reg|registers~102_q\)) # (!\Reg|registers~148_combout\ & ((\Reg|registers~78_q\))))) # (!regASel(2) & (((\Reg|registers~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(2),
	datab => \Reg|registers~102_q\,
	datac => \Reg|registers~78_q\,
	datad => \Reg|registers~148_combout\,
	combout => \Reg|registers~149_combout\);

-- Location: LCCOMB_X80_Y28_N18
\Reg|registers~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~157_combout\ = (regASel(1) & ((\Reg|registers~154_combout\ & (\Reg|registers~156_combout\)) # (!\Reg|registers~154_combout\ & ((\Reg|registers~149_combout\))))) # (!regASel(1) & (\Reg|registers~154_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(1),
	datab => \Reg|registers~154_combout\,
	datac => \Reg|registers~156_combout\,
	datad => \Reg|registers~149_combout\,
	combout => \Reg|registers~157_combout\);

-- Location: LCCOMB_X80_Y28_N16
\Reg|registers~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|registers~168_combout\ = (regASel(4) & ((\Reg|registers~157_combout\))) # (!regASel(4) & (\Reg|registers~167_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regASel(4),
	datab => \Reg|registers~167_combout\,
	datad => \Reg|registers~157_combout\,
	combout => \Reg|registers~168_combout\);

-- Location: LCCOMB_X80_Y28_N4
\input[2]~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \input[2]~_wirecell_combout\ = !input(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input(2),
	combout => \input[2]~_wirecell_combout\);

-- Location: FF_X80_Y28_N17
\Reg|outA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg|registers~168_combout\,
	asdata => \input[2]~_wirecell_combout\,
	sload => \ALT_INV_writeEnable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|outA\(2));

ww_q(0) <= \q[0]~output_o\;

ww_q(1) <= \q[1]~output_o\;

ww_q(2) <= \q[2]~output_o\;
END structure;


