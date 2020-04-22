library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;



-- internal test bench
-- no pins necessary
entity top_tb is
end entity top_tb;



architecture bh of top_tb is
  signal x, y, a: std_logic;
begin
-- this device
-- is under test
DUT: entity work.top port map (x, y, a);

p_init: process (x, y)
begin
  -- case 0
  x <= '0';
  y <= '0';
  wait for 10 ns;
  
  -- case 1
  x <= '1';
  y <= '0';
  wait for 10 ns;
  
  -- case 2
  x <= '0';
  y <= '1';
  wait for 10 ns;
  
  -- case 3
  x <= '1';
  y <= '1';
  wait;
  
  -- test done
  -- so just wait
end process;
end architecture bh;
