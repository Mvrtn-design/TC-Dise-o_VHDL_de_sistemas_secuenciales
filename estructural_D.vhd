library ieee;
use ieee.std_logic_1164.all;

entity practica_2 is
port (clk, rst, x: in std_logic;
z: out std_logic);
end practica_2;


architecture estructural_d of practica_2 is
signal q0,q1,d0,d1: std_logic;

begin
d1 <= (q0 and x) or (q1 and (not (q0)) and (not (x)));
d0 <= not x;
flip0: entity work.flipflopD(funcional) port map (clk,rst,d0,q0);
flip1: entity work.flipflopD port map (clk,rst,d1,q1);

z <= x and q1 and q0;

end estructural_d;