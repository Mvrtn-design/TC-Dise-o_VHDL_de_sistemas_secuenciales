Se desea diseñar un circuito secuencial que tiene una entrada de datos x de 1 bit, una entrada de reset y una entrada de reloj. El sistema es un detector de secuencia que ha de generar una salida z de 1 bit con ‘1’ cuando los últimos cuatro bits recibidos en x son 0101.

El circuito se diseñará de diversas maneras, y para cada una de ellas se hará una descripción en VHDL. Cada una de las descripciones en VHDL será una arquitectura asociada a la siguiente entidad:
entity practica_2 is
port (clk, rst, x: in std_logic;
z: out std_logic);
end practica_2;

Para las distintas descripciones que se deben hacer se proporcionan modelos de los flip-flops en el archivo “flip-flops.vhd”.

Se pide hacer lo siguiente:
a)	Obtener el diagrama de estados del sistema, y la tabla de transición de estados del sistema, implementado como máquina de estados de Mealy.

b)	Implementar el sistema utilizando flip-flops tipo D además de puertas lógicas auxiliares. Describir el circuito obtenido en VHDL utilizando los flip-flops D proporcionados en el archivo “flip-flops.vhd”, y puertas lógicas o expresiones concurrentes auxiliares. El nombre de esta arquitectura debe ser estructural_D.

c)	Implementar el sistema utilizando flip-flops tipo JK además de puertas lógicas auxiliares. Describir el circuito obtenido en VHDL utilizando los flip-flops JK proporcionados en el archivo “flip-flops.vhd”, y puertas lógicas o expresiones concurrentes auxiliares. El nombre de esta arquitectura debe ser estructural_JK.

d)	Describir en VHDL el sistema mediante una descripción funcional con dos procesos, uno para la parte combinacional y otro para la parte secuencial. El nombre de esta arquitectura debe ser fsm_funcional. (Transparencias finales del tema 8).

e)	Utilizando el test-bench que se proporciona en el archivo test_bench_practica2.vhd simular simultáneamente los distintos circuitos de los apartados b) a e). Si no se ha realizado alguno de los apartados anteriores se debe comentar la línea correspondiente en el archivo test_multiple_practica2.vhd para que no de error. Es importante que en los apartados anteriores se respeten los nombres propuestos para las arquitecturas con el fin de que el test-bench no de errores. Para utilizar el test-bench deben asignarse valores a las entradas del circuito que demuestren que todo funciona correctamente.
