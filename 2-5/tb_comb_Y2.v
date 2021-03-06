// File: tb_comb_Y2.v

`include "comb_Y2.v"

module tb_comb_Y2;
    wire Y;
    reg A, B, C, D;

    comb_Y2 a(Y, A, B, C, D);

    initial begin
        {A, B, C, D} = 4'b0;
        repeat(15)  #1 {A, B, C, D} = {A, B, C, D} + 1'b1;
    end

    initial begin
        $monitor("At time %4t, A=%b, B=%b, C=%b, D=%b, Y=%b",$time, A, B, C, D, Y);
    end

endmodule