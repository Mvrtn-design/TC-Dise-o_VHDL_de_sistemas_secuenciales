library ieee;
use ieee.std_logic_1164.all;

--entity practica_2 is
--port(clk,rst,x: in std_logic;
--z: out std_logic);
--end practica_2;


architecture fsm_funcional of practica_2 is
type estados is (A, B, C, D);
signal ns, ps: estados; --next state y present state
begin
--proximo estado y salida
process(x,ps)
begin
case ps is
when A => if x = '0' then ns <= B; z <= '0';
else ns <= A; z <= '0';
end if;
when B => if x = '0' then ns <= B; z <= '0';
else ns <= C; z <= '0';
end if;
when C => if x = '0' then ns <= D; z <= '0';
else ns <= A; z <= '0';
end if;
when D => if x = '0' then ns <= B; z <= '0';
else ns <= C; z <= '1';
end if;
end case;
end process;

--actualización del estado
process(clk,rst)
begin
if rst = '1' then
ps <= A;
elsif rising_edge(clk) then
ps <= ns;
end if;
end process;
end fsm_funcional;