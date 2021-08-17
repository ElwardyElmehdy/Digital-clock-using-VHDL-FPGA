library ieee;
use ieee.std_logic_1164.all;

entity demux_1to4 is 
port(entre:in std_logic;
selec:in std_logic_vector(1 downto 0) ;
sortie:out std_logic_vector(3 downto 0)
);

end demux_1to4;


architecture demux_1to4 of demux_1to4 is 
begin
with selec select 
sortie <="0001" when "00",
         "0010" when "01",
		   "0100" when "10",
		   "1000" when "11";
		  
		  
end demux_1to4;		  
		  