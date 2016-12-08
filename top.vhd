LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY top IS
	PORT(red_out 			: OUT std_logic_vector(7 downto 0);
		  green_out 		: OUT std_logic_vector(7 downto 0);
		  blue_out 			: OUT std_logic_vector(7 downto 0);
		  hs_out 	 		: OUT std_logic;
		  clk25_out 		: OUT std_logic;
		  sync 				: OUT std_logic;
		  blank 				: OUT std_logic;
		  vs_out 			: OUT std_logic;
		  displayCorrect	: OUT std_logic;
		  levelDisplay		: OUT std_logic_vector (13 downto 0);
		  triesDisplay		: OUT std_logic_vector (13 downto 0);
		  states				: OUT std_logic_vector(2 downto 0);
		  clk_50				: IN  std_logic; 
		  newGame 			: IN  std_logic;
		  block0	  	  		: IN  std_logic;
		  block1	  	  		: IN  std_logic;
		  block2	   		: IN  std_logic;
		  block3	   		: IN  std_logic;
		  toggle	   		: IN  std_logic);
end top;

ARCHITECTURE behavior OF top IS

	COMPONENT simon_says 
		PORT(blink	 			: OUT std_logic_vector(1 downto 0);
			  states				: OUT std_logic_vector(2 downto 0);
			  currentLevel		: OUT std_logic_vector(4 downto 0);
			  currentTries		: OUT std_logic_vector(4 downto 0);
			  displayDim 		: OUT std_logic;
			  displayWin 		: OUT std_logic;
			  displayCorrect	: OUT std_logic;
			  win					: OUT std_logic;
			  clk_50				: IN  std_logic; 
			  newGame 			: IN  std_logic;
			  block0	  	   	: IN  std_logic;
			  block1	  	   	: IN  std_logic;
			  block2	   		: IN  std_logic;
			  block3	   		: IN  std_logic;
			  toggle				: IN std_logic);
	END COMPONENT;
	
	COMPONENT vga 
		PORT( clk50_in 	: IN  std_logic;
				display		: IN  std_logic;
				display_win : IN  std_logic; 
				win			: IN 	std_logic;
				blink			: IN  std_logic_vector(1 downto 0);
				red_out 		: OUT std_logic_vector(7 downto 0);
				green_out 	: OUT std_logic_vector(7 downto 0);
				blue_out 	: OUT std_logic_vector(7 downto 0);
				hs_out 		: OUT std_logic;
				clk25_out 	: OUT std_logic;
				sync 			: OUT std_logic;
				blank 		: OUT std_logic;
				vs_out 		: OUT std_logic);
	END COMPONENT;
	
	component double_seven_seg 
	port(
      clk : in std_logic;
      bcd : in std_logic_vector(4 downto 0);  --BCD input
      segment7 : out std_logic_vector(13 downto 0)  -- 7 bit decoded output.
    );
	end component;
	
	signal blink: 			std_logic_vector(1 downto 0);
	signal level:			std_logic_vector(4 downto 0);
	signal tries:			std_logic_vector(4 downto 0);
	signal displayDim:	std_logic;
	signal displayWin:  	std_logic; 
	signal win:			 	std_logic;
	
	
	BEGIN --Begin behavior
	
	
	GAME: simon_says port map (blink => blink, 
										states => states,
										currentLevel => level,
										currentTries => tries,
										displayDim => displayDim, 
										displayWin => displayWin,
										displayCorrect	 => displayCorrect,
										win => win,
										clk_50 => clk_50, 
										newGame => newGame,
										block0 => block0,
										block1 => block1, 
										block2 => block2,
										block3 => block3,
										toggle => toggle); 
										
										
	VGA_DISPLAY: vga port map (clk50_in => clk_50 ,
										display => displayDim, 
										display_win => displayWin, 
										win =>win,
										blink => blink,
										red_out => red_out,
										green_out => green_out,
										blue_out => blue_out,
										hs_out => hs_out, 
										clk25_out => clk25_out, 
										sync => sync, 
										blank => blank,
										vs_out => vs_out);
										
										
	SevenSeg1: double_seven_seg port map (clk => clk_50 ,
													  bcd => level, 
													  segment7 => levelDisplay);
													  
	SevenSeg2: double_seven_seg port map (clk => clk_50 ,
													  bcd => tries, 
													  segment7 => triesDisplay);
	
	
	--PROCESS(clk)
	--BEGIN
	--	IF (newGame = '1') THEN
		--		level <= "00000";
		--		regASel <= "00000";
		--		writeRegSel <= "00000"; 
		--	ELSE 
		--		IF (regASel <= level) THEN
		--			input <= random;
		--			regASel <= std_logic_vector(  unsigned(regASel) + 1);
			--		writeRegSel <= std_logic_vector(unsigned(writeRegSel) + 1);
			
	--			ELSE
					
					
		--			writeEnable <= '0';
					
					
			--	END IF; 
		--	END IF; -- END NEW GAME 
				
			
	--	END IF;
	--END PROCESS;
	
	
END behavior;