library verilog;
use verilog.vl_types.all;
entity shift_counter is
    port(
        count           : out    vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        reset           : in     vl_logic
    );
end shift_counter;
