LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY simon_says IS
	PORT(blink	 			: OUT std_logic_vector(1 downto 0);
		  states				: OUT std_logic_vector(2 downto 0);
		  currentLevel		: OUT	std_logic_vector(4 downto 0);
		  currentTries 	: OUT std_logic_vector(4 downto 0);
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
		  toggle		 		: IN std_logic);
end simon_says;

ARCHITECTURE behavior OF simon_says IS

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
	type action_type is (START, CREATE, SHOW, PLAY, CORRECT, TRY, GAME_OVER);	  
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
	signal outA: 			std_logic_vector(1 downto 0); 
 	
	signal enable:			std_logic := '1';	
	
	signal level: 			std_logic_vector(4 downto 0) := "00000";	
	signal tries:			std_logic_vector(4 downto 0) := "00011";
	signal toggle_blink: std_logic := '0';
	signal timer:			integer := 0;
	BEGIN --Begin behavior
	
	Rand: counter port map (random, clk_50, count, clear); 
	Reg: register_file port map(outA, input,writeEnable,regASel,writeRegSel, clk_50);
	PROCESS(clk_50)
	BEGIN --Begin Process 
		IF (clk_50'EVENT AND clk_50='1') THEN
			IF (newGame = '1') THEN
				
				level <= "00000";
				tries <= "00011";
				
				writeEnable <= '1';
				regASel <= "00000";
				writeRegSel <= "00000"; 
				
				clear <= '0'; 
				count <= '1';	
				enable <= '1';
				
				displayDim <= '0';
				displayWin <= '0';
				displayCorrect <= '0';
				toggle_blink <= '0';
				win <= '0';
									
				timer <= 0;
				
				action <= START;
			ELSIF(toggle = '1') THEN
				win <= '1';
				action <= GAME_OVER; 
				
			ELSE 
				CASE action IS
					WHEN START =>
					
					
						level <= "00000";
						tries <= "00011";	
						
						clear <= '0';
						enable <= '1';
						
						displayDim <= '0';
					   displayWin <= '0';
						displayCorrect <= '0';
						toggle_blink <= '0';
						
						win <= '0';	
						
						regASel <= "00000";
						writeRegSel <= "00000"; 
						writeEnable <= '1';
						
						
						timer <= timer + 1;
						IF(timer = 80000000) THEN 	
							action <= CREATE;	
							timer <= 0;
						END IF;
					WHEN CREATE =>
					
						displayCorrect <= '0';
						IF (writeRegSel <= level) THEN
							input <= random;
							--regASel <= std_logic_vector(  unsigned(regASel) + 1);
							writeRegSel <= std_logic_vector(unsigned(writeRegSel) + 1);		
						ELSE
							writeEnable <= '0';
							regASel <= "00000"; 
							action <= SHOW;
						END IF; --END LEVEL CREATION
						
					WHEN SHOW =>
						IF(regASel <= level) THEN
							IF(toggle_blink = '0') THEN
								blink <= outA ; 
								displayDim <= '1';		
								timer <= timer + 1;
								IF(timer = 50000000) THEN 	
									toggle_blink <= '1';
									timer <= 0;
								END IF;
							ELSE	
								displayDim <= '0';	
								timer <= timer + 1;
								IF(timer = 50000000) THEN 	
									regASel <=  std_logic_vector(  unsigned(regASel) + 1);
									toggle_blink <= '0' ;		
									timer <= 0;		
								END IF;	
									
							END IF;
						ELSE 
						
							regASel <= "00000"; 
							action <= PLAY ;
						END IF; --END DISPLAY
					
					WHEN PLAY =>
						IF(enable = '1') THEN
							IF(regASel <= level) THEN
								CASE outA IS
										WHEN "00" =>
											IF(block0 = '0'  AND block1 = '1' AND  block2 = '1' AND  block3 = '1' ) THEN
												regASel <= std_logic_vector(  unsigned(regASel) + 1);
												blink <= outA;
												displayDim <= '1';
												enable <= '0'; 
											ELSE 
												--Go to TRY only if they have pressed a button and it was not the combination button
												IF(block0 = '0'  OR block1 = '0' OR  block2 = '0' OR  block3 = '0' ) THEN
													action <= TRY;
												END IF;
											END IF;
										WHEN "01" =>
											IF(block0 = '1'  AND block1 = '0' AND  block2 = '1' AND  block3 = '1') THEN
												regASel <= std_logic_vector(  unsigned(regASel) + 1);
												blink <= outA;
												displayDim <= '1';
												enable <= '0'; 
											ELSE 
												--Go to TRY only if they have pressed a button and it was not the combination button
												IF(block0 = '0'  OR block1 = '0' OR  block2 = '0' OR  block3 = '0' ) THEN
													action <= TRY;
												END IF;
											END IF;
										WHEN "10" =>
											IF(block0 = '1'  AND block1 = '1' AND  block2 = '0' AND  block3 = '1') THEN
												regASel <= std_logic_vector(  unsigned(regASel) + 1);
												blink <= outA;
												displayDim <= '1';
												enable <= '0'; 
											ELSE 
												--Go to TRY only if they have pressed a button and it was not the combination button
												IF(block0 = '0'  OR block1 = '0' OR  block2 = '0' OR  block3 = '0' ) THEN
													action <= TRY;
												END IF;
											END IF;
										WHEN "11" =>
											IF(block0 = '1' AND block1 = '1' AND  block2 = '1' AND  block3 = '0') THEN
												regASel <= std_logic_vector(  unsigned(regASel) + 1);
												blink   <= outA;
												displayDim <= '1';
												enable <= '0'; 
											ELSE 
												--Go to TRY only if they have pressed a button and it was not the combination button
												IF(block0 = '0'  OR block1 = '0' OR  block2 = '0' OR  block3 = '0' ) THEN
													action <= TRY;
												END IF;
											END IF; 
								END CASE; --END CHECKING GAMEPLAY
							ELSE 
								action  <= CORRECT; --Player got every combination correct
							END IF; --EEND ENABLE 
						ELSE 
							--Make sure all buttons have been released before allowing the user to press again
							IF(block0 = '1' AND block1 = '1' AND  block2 = '1' AND  block3 = '1') THEN 
								enable <= '1';
								displayDim <= '0';
							END IF;
						END IF; --END PLAY
					WHEN TRY =>
					
						displayDim <= '0';
						timer <= timer + 1;
						IF(timer = 80000000) THEN 	
							tries <= std_logic_vector(  unsigned(tries) - 1);
							IF(tries = "00000") THEN
								win <= '0';
								action <= GAME_OVER;
							ELSE 
								action <= SHOW;
								regASel <= "00000";							END IF; --END TRIES
							
							timer <= 0;
						END IF;
							
					WHEN  CORRECT => 
					
						--Level complete, prepare to create new level
						displayDim <= '0';
						
						displayCorrect <= '1';
						timer <= timer + 1;
						IF(timer = 80000000) THEN 	
							level <=  std_logic_vector(  unsigned(level) + 1);
							
							writeEnable <= '1';
							regASel 		<= "00000";
								
							
							IF(level <= "11111") THEN						
								action <= CREATE;
							ELSE
								win <= '1';
								action <= GAME_OVER;
							END IF;
							
							timer <= 0;
						END IF;
				
					WHEN GAME_OVER =>
					
						displayWin <= '1';
						
					WHEN OTHERS =>
						NULL;
				END CASE;
						
					
			END IF; -- END NEW GAME 
				
		END IF; -- END CLK EVENT
	END PROCESS;
	
-- signal assignment statements for combinatorial outputs
states <=   "000" when (action = START) else
            "001" when (action = CREATE) else
            "010" when (action = SHOW) else
            "011" when (action = PLAY) else
            "100" when (action = TRY) else
            "101" when (action = CORRECT)else
            "110" when (action = GAME_OVER);

currentLevel <= level;
currentTries <= tries;

END behavior;