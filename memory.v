`timescale 1ps/1ps

module memory
(
  input wire       clk,
  input wire       rst_n,
  input wire       we,
  input wire [7:0] in,
  input wire [7:0] addr,
  output wire [7:0] out
);

 integer i;
 reg [7:0] mem [255:0];

 always @(posedge clk) begin
   if (!rst_n) begin
	mem[0] <= 8'd1;
	mem[1] <= 8'd0;
	mem[2] <= 8'd2;
	mem[3] <= 8'd3;
	mem[4] <= 8'd5;
	mem[5] <= 8'd1;
	mem[6] <= 8'd3;
	mem[7] <= 8'd1;
	mem[8] <= 8'd2;
	mem[9] <= 8'd4;
	mem[10] <= 8'd5;
	mem[11] <= 8'd3;
	mem[12] <= 8'd5;
	mem[13] <= 8'd7;
	mem[14] <= 8'd1;
	mem[15] <= 8'd3;
	mem[16] <= 8'd4;
	mem[17] <= 8'd6;
	mem[18] <= 8'd7;
	mem[19] <= 8'd8;
	mem[20] <= 8'd5;
	mem[21] <= 8'd4;
	mem[22] <= 8'd5;
	mem[23] <= 8'd8;
	mem[24] <= 8'd9;
	mem[25] <= 8'd10;
	mem[26] <= 8'd12;
	mem[27] <= 8'd19;
	mem[28] <= 8'd5;
	mem[29] <= 8'd7;
	mem[30] <= 8'd9;
	mem[31] <= 8'd10;
	mem[32] <= 8'd11;
	mem[33] <= 8'd18;
	mem[34] <= 8'd7;
	mem[35] <= 8'd8;
	mem[36] <= 8'd10;
	mem[37] <= 8'd7;
	mem[38] <= 8'd8;
	mem[39] <= 8'd9;
	mem[40] <= 8'd11;
	mem[41] <= 8'd12;
	mem[42] <= 8'd13;
	mem[43] <= 8'd8;
	mem[44] <= 8'd10;
	mem[45] <= 8'd13;
	mem[46] <= 8'd18;
	mem[47] <= 8'd7;
	mem[48] <= 8'd10;
	mem[49] <= 8'd13;
	mem[50] <= 8'd19;
	mem[51] <= 8'd20;
	mem[52] <= 8'd10;
	mem[53] <= 8'd11;
	mem[54] <= 8'd12;
	mem[55] <= 8'd14;
	mem[56] <= 8'd15;
	mem[57] <= 8'd16;
	mem[58] <= 8'd17;
	mem[59] <= 8'd18;
	mem[60] <= 8'd20;
	mem[61] <= 8'd13;
	mem[62] <= 8'd15;
	mem[63] <= 8'd18;
	mem[64] <= 8'd13;
	mem[65] <= 8'd14;
	mem[66] <= 8'd16;
	mem[67] <= 8'd18;
	mem[68] <= 8'd27;
	mem[69] <= 8'd13;
	mem[70] <= 8'd15;
	mem[71] <= 8'd17;
	mem[72] <= 8'd20;
	mem[73] <= 8'd23;
	mem[74] <= 8'd24;
	mem[75] <= 8'd25;
	mem[76] <= 8'd27;
	mem[77] <= 8'd13;
	mem[78] <= 8'd16;
	mem[79] <= 8'd20;
	mem[80] <= 8'd8;
	mem[81] <= 8'd11;
	mem[82] <= 8'd13;
	mem[83] <= 8'd14;
	mem[84] <= 8'd15;
	mem[85] <= 8'd27;
	mem[86] <= 8'd7;
	mem[87] <= 8'd12;
	mem[88] <= 8'd20;
	mem[89] <= 8'd12;
	mem[90] <= 8'd13;
	mem[91] <= 8'd16;
	mem[92] <= 8'd17;
	mem[93] <= 8'd19;
	mem[94] <= 8'd21;
	mem[95] <= 8'd22;
	mem[96] <= 8'd23;
	mem[97] <= 8'd20;
	mem[98] <= 8'd22;
	mem[99] <= 8'd20;
	mem[100] <= 8'd21;
	mem[101] <= 8'd23;
	mem[102] <= 8'd29;
	mem[103] <= 8'd16;
	mem[104] <= 8'd20;
	mem[105] <= 8'd22;
	mem[106] <= 8'd24;
	mem[107] <= 8'd29;
	mem[108] <= 8'd16;
	mem[109] <= 8'd23;
	mem[110] <= 8'd25;
	mem[111] <= 8'd26;
	mem[112] <= 8'd29;
	mem[113] <= 8'd16;
	mem[114] <= 8'd24;
	mem[115] <= 8'd26;
	mem[116] <= 8'd27;
	mem[117] <= 8'd24;
	mem[118] <= 8'd25;
	mem[119] <= 8'd27;
	mem[120] <= 8'd28;
	mem[121] <= 8'd29;
	mem[122] <= 8'd15;
	mem[123] <= 8'd16;
	mem[124] <= 8'd18;
	mem[125] <= 8'd25;
	mem[126] <= 8'd26;
	mem[127] <= 8'd28;
	mem[128] <= 8'd26;
	mem[129] <= 8'd27;
	mem[130] <= 8'd29;
	mem[131] <= 8'd30;
	mem[132] <= 8'd22;
	mem[133] <= 8'd23;
	mem[134] <= 8'd24;
	mem[135] <= 8'd26;
	mem[136] <= 8'd28;
	mem[137] <= 8'd30;
	mem[138] <= 8'd31;
	mem[139] <= 8'd32;
	mem[140] <= 8'd28;
	mem[141] <= 8'd29;
	mem[142] <= 8'd31;
	mem[143] <= 8'd29;
	mem[144] <= 8'd30;
	mem[145] <= 8'd32;
	mem[146] <= 8'd29;
	mem[147] <= 8'd31;

	mem[148] <= 8'd0;
	mem[149] <= 8'd1;
	mem[150] <= 8'd5;
	mem[151] <= 8'd7;
	mem[152] <= 8'd11;
	mem[153] <= 8'd14;
	mem[154] <= 8'd20;
	mem[155] <= 8'd21;
	mem[156] <= 8'd28;
	mem[157] <= 8'd34;
	mem[158] <= 8'd37;
	mem[159] <= 8'd43;
	mem[160] <= 8'd47;
	mem[161] <= 8'd52;
	mem[162] <= 8'd61;
	mem[163] <= 8'd64;
	mem[164] <= 8'd69;
	mem[165] <= 8'd77;
	mem[166] <= 8'd80;
	mem[167] <= 8'd86;
	mem[168] <= 8'd89;
	mem[169] <= 8'd97;
	mem[170] <= 8'd99;
	mem[171] <= 8'd103;
	mem[172] <= 8'd108;
	mem[173] <= 8'd113;
	mem[174] <= 8'd117;
	mem[175] <= 8'd122;
	mem[176] <= 8'd128;
	mem[177] <= 8'd132;
	mem[178] <= 8'd140;
	mem[179] <= 8'd143;
	mem[180] <= 8'd146;
	
     for(i =181; i <= 254; i = i+1) begin
	   mem[i] <= 8'h0;
	end
	
	 mem[220] <= 8'b11000000;
     mem[221] <= 8'b11111001;
     mem[222] <= 8'b10100100;
     mem[223] <= 8'b10110000;
     mem[224] <= 8'b10011001;
     mem[225] <= 8'b10010010;
     mem[226] <= 8'b10000010;
     mem[227] <= 8'b11011000;
     mem[228] <= 8'b10000000;
     mem[229] <= 8'b10010000;
     mem[230] <= 8'b11000000;
     mem[231] <= 8'b11111001;
     mem[232] <= 8'b10100100;
     mem[233] <= 8'b10110000;
     mem[234] <= 8'b10011001;
     mem[235] <= 8'b10010010;
     mem[236] <= 8'b10000010;
     mem[237] <= 8'b11011000;
     mem[238] <= 8'b10000000;
     mem[239] <= 8'b10010000;
     mem[240] <= 8'b11000000;
     mem[241] <= 8'b11111001;
     mem[242] <= 8'b10100100;
     mem[243] <= 8'b10110000;
     mem[244] <= 8'b10011001;
     mem[245] <= 8'b10010010;
     mem[246] <= 8'b10000010;
     mem[247] <= 8'b11011000;
     mem[248] <= 8'b10000000;
     mem[249] <= 8'b10010000;
     mem[250] <= 8'b11000000;
     mem[251] <= 8'b11111001;
     mem[252] <= 8'b10100100;
     
     mem[255] <= 8'd147;

   end else begin
     if (we) begin
	   mem[addr] <= in;
	 end
   end
end
wire [7:0] mem0,mem1,mem2,mem3,mem4,mem5,mem6,mem7,mem8,mem9,mem10,mem11,mem12,mem13,mem14,mem15,mem16,mem17,mem18,mem19,mem20,mem21,mem22,mem23,mem24,mem25,mem26,mem27,mem28,mem29,mem30,mem31,mem32,mem33;
assign mem0=mem[255];
assign mem1=mem[181];
assign mem2=mem[182];
assign mem3=mem[183];
assign mem4=mem[184];
assign mem5=mem[185];
assign mem6=mem[186];
assign mem7=mem[187];
assign mem8=mem[188];
assign mem9=mem[189];
assign mem10=mem[190];
assign mem11=mem[191];
assign mem12=mem[192];
assign mem13=mem[193];
assign mem14=mem[194];
assign mem15=mem[195];
assign mem16=mem[196];
assign mem17=mem[197];
assign mem18=mem[198];
assign mem19=mem[199];
assign mem20=mem[200];
assign mem21=mem[201];
assign mem22=mem[202];
assign mem23=mem[203];
assign mem24=mem[204];
assign mem25=mem[205];
assign mem26=mem[206];
assign mem27=mem[207];
assign mem28=mem[208];
assign mem29=mem[209];
assign mem30=mem[210];
assign mem31=mem[211];
assign mem32=mem[212];
assign mem33=mem[213];

 assign out = mem[addr];

endmodule


