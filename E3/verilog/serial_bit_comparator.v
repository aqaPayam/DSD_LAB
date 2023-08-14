module serial_comparator(input reset, input clk, input x, input y, output g_out, output e_out, output l_out);

    wire not_g_out, not_e_out, not_l_out;
    wire g_in, e_in, l_in;
    
    assign g_in = ((e_out & (x > y)) | g_out) & (~reset);
    assign e_in = ((e_out & (x == y)) & (~reset)) | (reset);
    assign l_in = ((e_out & (x < y)) | l_out) & (~reset);

    assign g_out = ~(not_g_out & ~(clk & g_in));
    assign not_g_out = ~(g_out & ~(clk & ~(g_in)));

    assign e_out = ~(not_e_out & ~(clk & e_in));
    assign not_e_out = ~(e_out & ~(clk & ~(e_in)));

    assign l_out = ~(not_l_out & ~(clk & l_in));
    assign not_l_out = ~(l_out & ~(clk & ~(l_in)));

    
endmodule