module TCAM 
#(
	parameter data_size = 4,
	parameter number_of_address_lines = 3
)
(
	input clk,
	input reset,
	input write,
	input read,
	input [number_of_address_lines - 1 : 0] input_addr,
	input [data_size - 1 : 0] input_data,
	input [data_size - 1 : 0] dont_care_input,
	output reg [(1 << number_of_address_lines) - 1 : 0] match,
	output reg [(1 << number_of_address_lines) - 1 : 0] is_data_valid
);


reg [data_size - 1 : 0] file [(1 << number_of_address_lines) - 1 : 0];
reg [data_size - 1 : 0] dont_care_file[(1 << number_of_address_lines) - 1 : 0];

reg [data_size - 1 : 0] data;
reg [data_size - 1 : 0] dont_care_data;


integer i, j, k , q;

always @(posedge clk or posedge reset) 
begin 
    
        if(reset) begin
            is_data_valid = 0;
            match = 0;
            for(q = 0 ; q <= (1 << number_of_address_lines) - 1; q = q + 1) 
            begin
            dont_care_file[q] = 0;
            file[q] = 0 ;
            end
        end
        else 
begin
        
        if(read)
begin
            match = 0;
            for(i = 0 ; i <= (1 << number_of_address_lines) - 1; i = i + 1) 
begin
                if(is_data_valid [i] == 1)  
begin    
                k = 0;
                data = file [i];
                dont_care_data = dont_care_file[i];
                for(j = 0 ; j <= data_size - 1 ; j = j + 1) 
begin
                    if(!dont_care_data[j]) begin // yani bi mani
                        k = k + 1;
                    end
                    else begin
                        if(data[j] == input_data[j]) begin 
                            k = k + 1;
                        end
                    end
end
                if(k == data_size ) 
                    match[i] = 1;
            end
            end
        end 
    
        else begin
            if(write) begin
                match = 0;
                file [input_addr] = input_data;
                dont_care_file [input_addr] = dont_care_input;
                is_data_valid [input_addr] = 1;
            end
        end    
    end   
    end


endmodule


