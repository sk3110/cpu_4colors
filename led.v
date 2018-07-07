`timescale 1ps/1ps

module led
(
  input  wire     clk,
  input  wire     rst_n,
  input  wire     we,
  input  wire [7:0] in,
  input  wire [7:0] addr,
  output reg [11:0] led
 );

  reg [7:0] mem [3:0];
  reg [13:0] cnt;

  always @(posedge clk) begin
    if (!rst_n) begin
	  mem[0] <= 8'b0;
	  mem[1] <= 8'b0;
	  mem[2] <= 8'b0;
	  mem[3] <= 8'b0;
	  cnt    <= 14'b0;
	  led    <= 12'b0;
	end else begin
      cnt <= cnt + 1;
	  if (we) begin
	  	case (addr)
	    8'd214 : mem[0] <= in;
	    8'd215 : mem[1] <= in;
	    8'd216 : mem[2] <= in;
	    8'd217 : mem[3] <= in;
	  endcase
	  end
	  if (!cnt[11:0]) begin
	    case (cnt[13:12])
		  2'b00 : led <= {4'b1110, mem[0]};
		  2'b01 : led <= {4'b1101, mem[1]};
		  2'b10 : led <= {4'b1011, mem[2]};
		  2'b11 : led <= {4'b0111, mem[3]};
		endcase
	  end
	 end
  end

wire [7:0] mem0,mem1,mem2,mem3;
assign mem0 = mem[0];
assign mem1 = mem[1];
assign mem2 = mem[2];
assign mem3 = mem[3];



/* 0 11000000
   1 11111001
   2 10100100
   3 10110000
   4 10011001
   5 10010010
   6 10000010
   7 11011000
   8 10000000
   9 10010000
*/

endmodule


