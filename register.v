`timescale 1ps/1ps

module register
(
  input  wire       clk,
  input  wire       rst_n,
  input  wire       we,
  input  wire [3:0] src0,
  input  wire [3:0] src1,
  input  wire [3:0] dst,
  input  wire [7:0] data,
  output wire [7:0] data0,
  output wire [7:0] data1
 );

 	reg [7:0] regis [15:0];

	always @(posedge clk) begin
	  if(!rst_n) begin
	  
	   regis[0] <= 8'd0;
	   regis[1] <= 8'd0;
	   regis[2] <= 8'd0;
	   regis[3] <= 8'd0;
	   regis[4] <= 8'd0;
	   regis[5] <= 8'd0;
	  
	   regis[6] <= 8'd214;
	   regis[7] <= 8'd0;
	   regis[8] <= 8'd0; 
	   regis[9] <= 8'd0;
	   regis[10] <= 8'd0; //
	   
	   regis[11] <= 8'd255; //220 [3]

	   regis[12] <= 8'd220; // [2]
	   regis[13] <= 8'd253; // state
	   regis[14] <= 8'b11111111; // [1]
	   regis[15] <= 8'd0; //jmp
	  end else begin
	    if (we) begin
		  regis[dst] <= data;
		end
	  end
	end

wire [7:0] regis0,regis1,regis2,regis3,regis4,regis5;
assign regis0 = regis[0];
assign regis1 = regis[1];
assign regis2 = regis[2];
assign regis3 = regis[3];
assign regis4 = regis[4];
assign regis5 = regis[5];
    assign data0 = regis[src0];
	assign data1 = regis[src1];

endmodule
