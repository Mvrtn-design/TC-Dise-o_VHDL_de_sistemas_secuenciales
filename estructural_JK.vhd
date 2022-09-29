library ieee;
use ieee.std_logic_1164.all;

entity practica_2 is
port (clk, rst, x: in std_logic;
z: out std_logic);
end practica_2;

architecture estructural_jk of practica_2 is
signal q0,q1,j0,k0,j1,k1: std_logic;

begin
        j1 <= q0 and x;
	k1 <= (q0 xor x);
	j0 <= not (x);
	k0 <= x;
	flip0: entity work.flipflopJK port map(clk,rst,j0,k0,q0);
	flip1: entity work.flipflopJK port map(clk,rst,j1,k1,q1);
	
	z <= x and q1 and q0;


end estructural_jk;