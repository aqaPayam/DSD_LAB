module incubator(sensor , clk , reset , cooler , heater ,cooler_rps);

input   signed [7:0]sensor;
input clk;
input reset;
output  reg cooler;
output  reg heater;
output  reg [3:0]cooler_rps;

always @(posedge clk or posedge reset)
 begin
	if (reset) 
begin
        cooler = 0;
        heater = 0;
        cooler_rps = 0;
end 
	else 
begin
        if (~heater && cooler) 
begin
            if (cooler_rps == 4'd6 && $signed(sensor) < $signed(8'd35))
		cooler_rps = 4'd4;
            else if (cooler_rps == 4'd6 && $signed(sensor) > $signed(8'd45))
		 cooler_rps = 4'd8;
            else if (cooler_rps == 4'd8 && $signed(sensor) < $signed(8'd40))
		 cooler_rps = 4'd6;
            else if (cooler_rps == 4'd4 && $signed(sensor) > $signed(8'd40))
		 cooler_rps = 4'd6;
            else if (cooler_rps == 4'd4 && $signed(sensor) < $signed(8'd25))
		begin
                cooler_rps = 4'd0;
                heater = 0;
                cooler = 0;
		end 
end
        else if (~heater && ~cooler && $signed(sensor) > $signed(8'd35))
begin
            heater = 0;
            cooler = 1;
            cooler_rps = 4'd4;
end
        else if (~heater && ~cooler && $signed(sensor) < $signed(8'd15))
begin
            heater = 1;
            cooler = 0;
end
        else if (heater && ~cooler && $signed(sensor) > $signed(8'd30))
begin
            heater = 0;
            cooler = 0;
end
    
end

end

endmodule