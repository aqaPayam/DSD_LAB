module serial_comparator_test_bench();
    reg reset, clk, x, y;
    wire g_out, e_out, l_out;
    serial_comparator comparator(.reset(reset), .clk(clk), .x(x), .y(y), .g_out(g_out), .e_out(e_out), .l_out(l_out));
    initial begin
        reset = 1;
        clk = 1;
        x = 0;
        y = 0;
        #5;
       clk = 0;
        #5;

        reset = 0;
        clk = 1;
        #5;
        clk = 0;
        #5;

        x = 0;
        y = 1;
        clk = 1;
        #5;

        clk = 0;
        #5;

        x = 1;
        y = 0;
        clk = 1;
        #5;

        clk = 0;
        #5;
			
 	x = 1;
        y = 1;
        clk = 1;
        #5;

        clk = 0;
        #5;
    end    
endmodule