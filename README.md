Se diseña aquí un circuito secuencial que tiene una entrada de datos x de 1 bit, una entrada de reset y una entrada de reloj. El sistema es un detector de secuencia que genera una salida z de 1 bit con ‘1’ cuando los últimos cuatro bits recibidos en x son 0101.

El circuito se diseña de diversas maneras, cada una de ellas con una descripción en VHDL. Cada una de las descripciones en VHDL es una arquitectura asociada a la siguiente entidad:

      entity practica_2 is
      port (clk, rst, x: in std_logic;
      z: out std_logic);
      end practica_2;
      
Aquí se muestra:

- Diagrama de estados del sistema, y la tabla de transición de estados del sistema, implementado como máquina de estados de Mealy.

- Sistema con flip-flops tipo D además de puertas lógicas auxiliares con su describitivo circuito en VHDL utilizando los flip-flops D y puertas lógicas o expresiones concurrentes auxiliares.
- Sistema utilizando flip-flops tipo JK además de puertas lógicas auxiliares. Describir el circuito obtenido en VHDL utilizando los flip-flops JK proporcionados en el archivo “flip-flops.vhd”, y puertas lógicas o expresiones concurrentes auxiliares. El nombre de esta arquitectura debe ser estructural_JK.
- Describción en VHDL del sistema mediante una descripción funcional con dos procesos, uno para la parte combinacional y otro para la parte secuencial.
- Test-bench para la simulación simultánea de los distintos circuitos.
