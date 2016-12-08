LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY vga IS
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
end vga;

architecture DesingGame of vga is
	signal clk25 : std_logic;
	signal horizontal_counter : std_logic_vector (9 downto 0);
	signal vertical_counter : std_logic_vector (9 downto 0);
	begin
	clk25_out <= clk25;
	sync <= '0';
	blank <= '1';
	process (clk50_in)
	begin
	if clk50_in'event and clk50_in='1' then
		if (clk25 = '0') then
			clk25 <= '1';
		else
			clk25 <= '0';
		end if;
	end if;
	end process;

	process (clk25)
	begin
	if clk25'event and clk25 = '1' then

	
	
	
--Game not over, show simon says
	IF(display_win = '0') THEN
		--block 0
		IF (((horizontal_counter >= "0011111111" ) -- 255
		and (horizontal_counter < "0101100011" ) -- 355
		and (vertical_counter >= "0010010110" ) --150
		and (vertical_counter < "0011111010" ))) -- 250
		THEN

			--pink dim!!
			IF(blink = "00" AND display = '1') THEN 
				blue_out <= "11111111";
				red_out <= "11111111";
				green_out <= "10110100";
			ELSE
				blue_out <= "11111111";
				red_out <= "11111111";
				green_out <= "00000000";
			END IF;
			
		ELSIF	(((horizontal_counter >= "0111000111" ) -- 355
		and (horizontal_counter < "01000101011" ) -- 455
		and (vertical_counter >= "0010010110" ) --150
		and (vertical_counter < "0011111010" ))) -- 250
		THEN
			
			IF(blink = "01" AND display = '1') THEN 
				
			--red dim!!
				blue_out <= "10000011";
				red_out <= "11111111";
				green_out <= "10000011";
			ELSE
				blue_out <= "00000000";
				red_out <= "11111111";
				green_out <= "00000000";
			END IF;
		ELSIF	(((horizontal_counter >= "0011111111" ) -- 255
		and (horizontal_counter < "0101100011" ) -- 355
		and (vertical_counter >= "0101011110" ) --350
		and (vertical_counter < "0111000010" ))) -- 250
		THEN
			--green dim!!
			IF(blink = "10" AND display = '1') THEN 
				blue_out <= "11001101";
				red_out <= "11100001";
				green_out <= "11111111";
			ELSE
				blue_out <= "00000000";
				red_out <= "00000000";
				green_out <= "11111111";
			END IF;
		ELSIF	(((horizontal_counter >= "0111000111" ) -- 355
		and (horizontal_counter < "01000101011" ) -- 455
		and (vertical_counter >= "0101011110" ) --350
		and (vertical_counter < "0111000010" ))) -- 250
		THEN
			
			--blue dim!!
			IF(blink = "11" AND display = '1') THEN 
				blue_out <= "11111111";
				red_out <= "10101010";
				green_out <= "11100001";
			ELSE
				blue_out <= "11111111";
				red_out <= "00000000";
				green_out <= "00000000";
			END IF;
			
		ELSE
			red_out <= "00000000";
			green_out <= "00000000";
			blue_out <= "00000000";
		END IF;
	ELSE --GAME OVER check condition
		IF(win = '1')THEN
			IF (((horizontal_counter >= "0011111111" ) -- 255
			and (horizontal_counter < "0101100011" ) -- 355
			and (vertical_counter >= "0010010110" ) --150
			and (vertical_counter < "0011111010" ))) -- 250
			THEN
				blue_out <= "11111111";
				red_out <= "11111111";
				green_out <= "11111111";
			ELSE
				red_out <= "00000000";
				green_out <= "00000000";
				blue_out <= "00000000";
			END IF;
		ELSE
			IF (((horizontal_counter >= "0011111111" ) -- 255
			and (horizontal_counter < "0101100011" ) -- 355
			and (vertical_counter >= "0010010110" ) --150
			and (vertical_counter < "0011111010" ))) -- 250
			THEN
				blue_out <= "11010101";
				red_out <= "01011010";
				green_out <= "11010101";
			ELSE
				red_out <= "00000000";
				green_out <= "00000000";
				blue_out <= "00000000";
			END IF;
		END IF; -- END check win
	END IF; -- END Game condition
	
	
	
	
	
	
	
	
	

	if (horizontal_counter > "0000000000" )
		and (horizontal_counter < "0001100001" ) -- 96+1
		then
			hs_out <= '0';
		else
			hs_out <= '1';
		end if;
		if (vertical_counter > "0000000000" )
		and (vertical_counter < "0000000011" ) -- 2+1
		then
			vs_out <= '0';
		else
			vs_out <= '1';
		end if;
			horizontal_counter <= horizontal_counter+"0000000001";
		if (horizontal_counter="1100100000") then
			vertical_counter <= vertical_counter+"0000000001";
			horizontal_counter <= "0000000000";
		end if;
		if (vertical_counter="1000001001") then
			vertical_counter <= "0000000000";
		end if;
	end if;
	end process;
end DesingGame;