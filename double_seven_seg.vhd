library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity double_seven_seg is
port (
      clk : in std_logic;
        bcd : in std_logic_vector(4 downto 0);  --BCD input
        segment7 : out std_logic_vector(13 downto 0)  -- 7 bit decoded output.
    );
end double_seven_seg;
--'a' corresponds to MSB of segment7 and g corresponds to LSB of segment7.
architecture Behavioral of double_seven_seg is

begin
process (clk,bcd)
BEGIN
if (clk'event and clk='1') then
case  bcd is
when "00000"=> segment7 <="10000001000000";  -- '0'
when "00001"=> segment7 <="10000001111001";  -- '1'
when "00010"=> segment7 <="10000000100100";  -- '2'
when "00011"=> segment7 <="10000000110000";  -- '3'
when "00100"=> segment7 <="10000000011001";  -- '4' 
when "00101"=> segment7 <="10000000010010";  -- '5'
when "00110"=> segment7 <="10000000000010";  -- '6'
when "00111"=> segment7 <="10000001111000";  -- '7'
when "01000"=> segment7 <="10000000000000";  -- '8'
when "01001"=> segment7 <="10000000011000";  -- '9'

when "01010"=> segment7 <="11110011000000";  -- '10'
when "01011"=> segment7 <="11110011111001";  -- '11'
when "01100"=> segment7 <="11110010100100";  -- '12'
when "01101"=> segment7 <="11110010110000";  -- '13'
when "01110"=> segment7 <="11110010011001";  -- '14'
when "01111"=> segment7 <="11110010010010";  -- '15'
when "10000"=> segment7 <="11110010000010";  -- '16'
when "10001"=> segment7 <="11110011111000";  -- '17'
when "10010"=> segment7 <="11110010000000";  -- '18'
when "10011"=> segment7 <="11110010011000";  -- '19'

when "10100"=> segment7 <="01001001000000";  -- '20'
when "10101"=> segment7 <="01001001111001";  -- '21'
when "10110"=> segment7 <="01001000100100";  -- '22'
when "10111"=> segment7 <="01001000110000";  -- '23'
when "11000"=> segment7 <="01001000011001";  -- '24'
when "11001"=> segment7 <="01001000010010";  -- '25'
when "11010"=> segment7 <="01001000000010";  -- '26'
when "11011"=> segment7 <="01001001111000";  -- '27'
when "11100"=> segment7 <="01001000000000";  -- '28'
when "11101"=> segment7 <="01001000011000";  -- '29'
when "11110"=> segment7 <="01100001000000";  -- '30'
when "11111"=> segment7 <="01100001111001";  -- '31'
 --nothing is displayed when a number more than 9 is given as input. 
when others=> segment7 <="11111111111111"; 
end case;
end if;

end process;

end Behavioral;