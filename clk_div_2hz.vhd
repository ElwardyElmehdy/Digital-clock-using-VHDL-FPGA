library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity clkdivider_2hz is 
port (clk:in std_logic;
clk_div_2hz:out std_logic);
end clkdivider_2hz ;

architecture clkdivider_2hz  of clkdivider_2hz  is 
signal count :integer :=1;
signal div :std_logic;
begin 
process(clk)
begin 
if(clk'event and clk='1') then
 count<=count+1;
if(count=12500000) then 
div<=not div;
count<=1;
end if;
end if;
end process;
clk_div_2hz<=div;
end clkdivider_2hz ;