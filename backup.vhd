LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY test IS
	PORT(blink	 		: OUT std_logic_vector(1 downto 0);
		  displayDim 	: OUT std_logic;
		  displayWin 	: OUT std_logic;
		  win				: OUT std_logic;
		  clk_50			: IN  std_logic; 
		  clk_25			: IN  std_logic; 
		  newGame 		: IN  std_logic;
		  block0	  	   : IN  std_logic;
		  block1	  	   : IN  std_logic;
		  block2	   	: IN  std_logic;
		  block3	   	: IN  std_logic);
end test;

ARCHITECTURE behavior OF test IS

	COMPONENT counter
		PORT(q		: OUT std_logic_vector(1 downto 0);
			  clk 	: IN  std_logic;
			  enable	: IN  std_logic;
			  clear	: IN  std_logic);
	END COMPONENT;
	
	COMPONENT register_file
		PORT(
			 outA        : OUT std_logic_vector(1 downto 0);
			 input       : IN  std_logic_vector(1 downto 0);
			 writeEnable : IN  std_logic;
			 regASel     : IN  std_logic_vector(4 downto 0);
			 writeRegSel : IN  std_logic_vector(4 downto 0);
			 clk         : IN  std_logic);
	END COMPONENT;
	
	--State signals
	type action_type is (START, CREATE, DISPLAY, PLAY, CORRECT, TRY, GAME_OVER);	  
	signal action: action_type;
	
	--Counter signals 
	signal random:  		std_logic_vector(1 downto 0);
	signal count: 			std_logic := '1';	
	signal clear: 			std_logic := '0';	
	
	--Register File signals
	signal input:    		std_logic_vector(1 downto 0) := "00";		
	signal writeEnable:  std_logic := '1';
	signal regASel: 		std_logic_vector(4 downto 0) := "00000";		
	signal writeRegSel:  std_logic_vector(4 downto 0) := "00000";
	signal outA: 			std_logic_vector(1 downto 0) := "00"; 
 	
	signal enable:			std_logic := '1';	
	
	signal level: 			std_logic_vector(4 downto 0) := "00000";	
	signal tries:				std_logic_vector(1 downto 0) := "11";
	BEGIN --Begin behavior
	
	Rand: counter port map (random, clk_50, count, clear); 
	Reg: register_file port map(outA, input,writeEnable,regASel,writeRegSel, clk_25);
	PROCESS(clk_50)
	BEGIN --Begin Process 
		IF (clk_50'EVENT AND clk_50='1') THEN
			IF (newGame = '1') THEN
				action <= START;
				
				level <= "00000";
				tries <= "11";
				
				writeEnable <= '1';
				regASel <= "00000";
				writeRegSel <= "00000"; 
				
				clear <= '1'; 
				
				displayDim <= '0';
			ELSE 
				IF(newGame = '0') THEN
					CASE Action IS
						WHEN START =>
						
							action <= PLAY;	
							clear <= '0';
							
						WHEN CREATE =>
						
							IF (writeRegSel <= level) THEN
								input <= random;
								--regASel <= std_logic_vector(  unsigned(regASel) + 1);
								writeRegSel <= std_logic_vector(unsigned(writeRegSel) + 1);		
							ELSE
								writeEnable <= '0';
								regASel <= "00000"; 
								action <= DISPLAY;
							END IF; --END LEVEL CREATION
							
						WHEN DISPLAY =>
						
							IF(regASEL <= level) THEN
								blink <= outA AFTER 5ns; 
								displayDim <= '1';
								regASel <= std_logic_vector(  unsigned(regASel) + 1);
							ELSE 
								blink <= "111";
								regASel <= "00000";
								displayDim <= '0';
								action <= PLAY;
							END IF; --END DISPLAY
						
						WHEN PLAY =>
							
							IF(regASel <= level) THEN
								IF(enable = '1') THEN
									CASE outA IS
											WHEN "00" =>
												IF(block0 = '0'  AND block1 = '1' AND  block2 = '1' AND  block3 = '1') THEN
													regASel <= std_logic_vector(  unsigned(regASel) + 1);
													blink <= outA;
													displayDim <= '1';
												ELSE 
													action <= TRY;
												END IF;
											WHEN "01" =>
												IF(block0 = '1'  AND block1 = '0' AND  block2 = '1' AND  block3 = '1') THEN
													regASel <= std_logic_vector(  unsigned(regASel) + 1);
													blink <= outA;
													displayDim <= '1';
												ELSE 
													action <= TRY;
												END IF;
											WHEN "10" =>
												IF(block0 = '1'  AND block1 = '1' AND  block2 = '0' AND  block3 = '1') THEN
													regASel <= std_logic_vector(  unsigned(regASel) + 1);
													blink <= outA;
													displayDim <= '1';
												ELSE 
													action <= TRY;
												END IF;
											WHEN "11" =>
											IF(block0 = '1'  AND block1 = '1' AND  block2 = '1' AND  block3 = '0') THEN
													regASel <= std_logic_vector(  unsigned(regASel) + 1);
													blink   <= outA;
													displayDim <= '1';
												ELSE 
													action <= TRY;
												END IF; 
									END CASE; --END CHECKING GAMEPLAY
								END IF; --EEND ENABLE 
								--Make sure all buttons have been released before allowing the user to press again
								IF(block0 = '1' AND block1 = '1' AND  block2 = '1' AND  block3 = '1') THEN 
									enable <= '1';
									displayDim <= '0';
								END IF;
							ELSE 
								action  <= CORRECT;
							END IF; --END PLAY
	
						WHEN TRY =>
						
							tries <= std_logic_vector(  unsigned(tries) - 1);
							displayDim <= '0';
							
							IF(tries = "00") THEN
								action <= GAME_OVER;
							ELSE 
								action <= PLAY;
								regASel <= "00000";
							END IF; --END TRIES
								
						WHEN  CORRECT => 
						
							displayDim <= '0';
							writeEnable <= '1';
							regASel 		<= "00000";
							action 		<= CREATE;
					
						WHEN GAME_OVER =>
						
							action <= GAME_OVER; -- loop until newGame
							displayWin <= '1';
							IF(tries ="00") THEN 
								win <= '0';
							ELSE	
								win <= '1';
							END IF; 
							
						WHEN OTHERS =>
							NULL;
					END CASE;
				END IF; --END NEW GAME DISABLLED
						
					
			END IF; -- END NEW GAME 
				
		END IF; -- END CLK EVENT
	END PROCESS;
END behavior;