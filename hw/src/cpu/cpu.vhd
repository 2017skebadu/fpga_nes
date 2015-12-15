--------------------------------------------------------------------------------------
-- DESIGN UNIT  : 6502                                                              --
-- DESCRIPTION  : Top-level processor entity. Connects control and data paths       --
-- AUTHOR       : Everton Alceu Carara                                              --
-- CREATED      : Fev, 2015                                                         --
-- VERSION      : 1.0                                                               --
-- HISTORY      : Version 1.0 - Fev, 2015 - Everton Alceu Carara                    --
--------------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

-- Same interface as cpu.v from fpga_nes project
entity cpu is
    port( 
        clk_in, rst_in, ready_in    : in std_logic;
        nnmi_in, nres_in, nirq_in   : in std_logic;   -- Interrupt lines (active low)
        d_in      : in std_logic_vector(7 downto 0);  -- Data from memory
        d_out     : out std_logic_vector(7 downto 0); -- Data to memory
        a_out     : out std_logic_vector(15 downto 0);-- Address bus to memory
        r_nw_out  : out std_logic; -- Access control to data memory ('0' for Reads, '1' for Writes)
               
        -- Debuger lines (not used in this implementation)
         dbgreg_sel_in : in std_logic_vector(3 downto 0);
         dbgreg_in     : in std_logic_vector(7 downto 0);
         dbgreg_wr_in  : in std_logic;
         dbgreg_out    : out std_logic_vector(7 downto 0);
         brk_out       : out std_logic
      );
end cpu;

architecture structural of cpu is

    signal count            : std_logic_vector(5 downto 0);
    signal clk_div          : std_logic;
    signal CPUwe, we_n      : std_logic;
    
    signal reg_CPUaddress, address_temp : std_logic_vector(15 downto 0);
    signal reg_CPUwe        :std_logic;
    
begin
-----------------------------------
-- ONLY NECESSARY FOR SYNTHESIS! --
-----------------------------------
    -- Divides the Nexys board clock by 56 (100MHz/56 = 1.785MHz) 
    process(clk_in,rst_in)
    begin
        if rst_in = '1' then
            count <= (others=>'0');
        elsif rising_edge(clk_in) then
            if count = x"2F" then 
                count <= "000000";
            else
                count <= count + 1;
            end if;
        end if;
    end process;
    
    process(clk_in,rst_in)
    begin
        if rst_in = '1' then
            clk_div <= '0';
        elsif rising_edge(clk_in) then
            if count < x"18" then 
                clk_div <= '0';
            else
                clk_div <= '1';
            end if;
        end if;
   end process;
                
    we_n <= not CPUwe;
        
    -- Sync Memory Writes    
    process(clk_in, rst_in)
    begin
        if rst_in = '1' then
            reg_CPUwe <= '1';
        elsif rising_edge(clk_in) then
            if count = x"16" then  
                reg_CPUwe <= we_n;
            else
                reg_CPUwe <= '1';
            end if;
        end if;
    end process;
    
    r_nw_out <= reg_CPUwe;
        
    -- Sync PPU and CPU communication (next clk_div rising_edge)     
    process(clk_in, rst_in)
    begin
        if rst_in = '1' then
            reg_CPUaddress <= (others=>'0');
        elsif rising_edge(clk_in) then
            if count = x"16" then
                reg_CPUaddress <= address_temp;
            end if;
        end if;
    end process; 
																		
    a_out <= reg_CPUaddress; 

    P6502: entity work.P6502
        port map (
            clk         => clk_div,
            rst         => rst_in,
            ready       => ready_in,
            nmi         => nnmi_in,
            nres        => nres_in,
            irq         => nirq_in,
            data_in     => d_in,
            data_out    => d_out,
            address_out => address_temp,
            we          => CPUwe   
        );    
     
end structural;
