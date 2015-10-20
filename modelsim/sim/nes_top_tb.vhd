-------------------------------------------------------------------------
-- Design unit: 
-- Description: 
-------------------------------------------------------------------------

library IEEE;						
use IEEE.std_logic_1164.all;

-- Test bench interface is always empty.
entity nes_top_tb  is
end nes_top_tb;


-- Instantiate the components and generates the stimuli.
architecture sync of nes_top_tb is  
    
    component nes_top
        port (
            CLK_100MHZ          : in std_logic;         -- 100MHz system clock signal
            BTN_SOUTH           : in std_logic;         -- reset push button (active high - Carara)
            BTN_EAST            : in std_logic;         -- console reset (active low - Carara)
            RXD                 : in std_logic;         -- rs-232 rx signal
            SW                  : in std_logic_vector(3 downto 0);  -- switches
            NES_JOYPAD_DATA1    : in std_logic;         -- joypad 1 input signal
            NES_JOYPAD_DATA2    : in std_logic;         -- joypad 2 input signal
            TXD                 : out std_logic;        -- rs-232 tx signal
            VGA_HSYNC           : out std_logic;        -- vga hsync signal
            VGA_VSYNC           : out std_logic;        -- vga vsync signal
            VGA_RED             : out std_logic_vector(2 downto 0); -- vga red signal
            VGA_GREEN           : out std_logic_vector(2 downto 0); -- vga green signal
            VGA_BLUE            : out std_logic_vector(1 downto 0); -- vga blue signal
            NES_JOYPAD_CLK      : out std_logic;        -- joypad output clk signal
            NES_JOYPAD_LATCH    : out std_logic;        -- joypad output latch signal
            AUDIO               : out std_logic         -- pwm output audio channel
        );
    end component;
    
    signal CLK_100MHZ: std_logic := '0';
    signal BTN_SOUTH, BTN_EAST, RXD, NES_JOYPAD_DATA1, NES_JOYPAD_DATA2 : std_logic;
    signal SW: std_logic_vector(3 downto 0);
    
begin

    DUV: entity work.nes_top 
        port map (
            CLK_100MHZ          => CLK_100MHZ,
            BTN_SOUTH           => BTN_SOUTH,
            BTN_EAST            => BTN_EAST,          
            RXD                 => RXD,            
            SW                  => SW,            
            NES_JOYPAD_DATA1    => NES_JOYPAD_DATA1,
            NES_JOYPAD_DATA2    => NES_JOYPAD_DATA2    
        );
        
        CLK_100MHZ <= not CLK_100MHZ after 1 ns;
        
        BTN_SOUTH <= '1', '0' after 100 ns;
        BTN_EAST <= '0'; --, '1' after 100 ns;      -- console reset (active low - carara) 
        
        SW             <= (others=>'0'); 
        NES_JOYPAD_DATA1    <= '0';
        NES_JOYPAD_DATA2     <= '0';
	
end sync;


