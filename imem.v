`timescale 1ps/1ps

module imem
(
 input wire [7:0] pc,
 output reg [15:0] op
);

`include "def.h"

	always @(*) begin
		case (pc)

	  	 0 : op = {LI, 8'd1, 4'd0}; //color=1
		 1 : op = {ADDI, 4'd1, 8'd148}; //reg1=148+i
		 2 : op = {LOAD, 4'd1, 4'd0, 4'd2}; //reg2=mem[148+i]
		 3 : op = {CMPI, 4'd1, 8'd180};
		 4 : op = {JNZ, 8'd37, 4'hf};
		 5 : op = {ADDI, 4'd1, 8'd1}; //reg1=149+i
		 6 : op = {LOAD, 4'd1, 4'd0, 4'd5}; //reg5=mem[149+i]
		 7 : op = {SUBI, 4'd5, 8'd1}; //reg5--

		 8 : op = {SUBI, 4'd1, 8'd149}; //reg1=i

		 9 : op = {LOAD, 4'd2, 4'd0, 4'd3}; //reg3=mem[reg2]
		 10: op = {ADDI, 4'd3, 8'd181}; //reg3+=181
		 11: op = {LOAD, 4'd3, 4'd0, 4'd4}; //reg4=mem[reg3]


		 12: op = {CMP, 4'd0, 4'd4, 4'b0};
		 13: op = {JNZ, 8'd24, 4'hf}; //if(!(reg4==reg0)){
		 14: op = {CMP, 4'd2, 4'd5, 4'b0};
		 15: op = {JNZ, 8'd18, 4'hf}; //if(!(reg2==reg5){
		 16: op = {ADDI, 4'd2, 8'd1}; //reg2+=1
		 17: op = {JMP, 8'd9, 4'hf};//}

		 18: op = {ADDI, 4'd1, 8'd181}; //reg1+=181
		 19: op = {STORE, 4'h1, 4'h0, 4'h0}; //mem[reg1+0]=reg0
		 20: op = {SUBI, 4'd1, 8'd180}; //reg1-=180 (reg1=i+1);
		 21: op = {CMPI, 4'd1, 8'd33};
		 22: op = {JNZ, 8'd40, 4'hf}; //
		 23: op = {JMP, 8'd0, 4'hf};

		 24: op = {CMPI, 4'd0, 8'd4}; //
		 25: op = {JNZ, 8'd28, 4'hf}; //if(!(reg0==4))
		 26: op = {ADDI, 4'd0, 8'd1}; //reg0+=1
		 27: op = {JMP, 8'd1, 4'hf};
		
		 28: op = {ADDI, 4'd1, 8'd181}; //reg1=181+i
		 
		 29: op = {STORE, 4'd1, 4'd10, 4'd0}; //mem[181+i]=0
		 30: op = {SUBI, 4'd1, 8'd1}; //reg1-=1(reg1=181+i-1)
		 31: op = {LOAD, 4'd1, 4'd0, 4'd0}; //reg0=mem[reg1]
		 32: op = {SUBI, 4'd1, 8'd181}; //reg1-=181 (i-1)
		 33: op = {CMPI, 4'd0, 8'd4};
		 34: op = {JNZ, 8'd28, 4'hf};
		 35: op = {ADDI, 4'd0, 8'd1}; //reg0+=1
		 36: op = {JMP, 8'd1, 4'hf};
		
		 37: op = {LOAD, 4'd11, 4'd0, 4'd5}; //reg5=mem[255] 147
		 38: op = {SUBI, 4'd1, 8'd148};
		 39: op = {JMP, 8'd9, 4'hf};

		  //initial
         40: op = {LI, 8'b0, 4'd1}; //  reg1=0   area
         41: op = {LI, 8'b0, 4'd2}; //  reg2=0   
         42: op = {LI, 8'b1, 4'd0}; // reg0=1   
         43: op = {LI, 8'b0, 4'd5}; // reg5=0
         44: op = {LI, 8'd214, 4'd6}; // reg6=214
         45: op = {LI, 8'b0, 4'd4};   // reg4=0
         46: op = {LI, 8'd253, 4'd13}; // reg13=253
         47: op = {LI, 8'd0, 4'd7}; // reg7=0
         48: op = {LI, 8'b0, 4'd10};  // reg10=0       
       	 49: op = {JMP, 8'd50, 4'hf}; 
         
        //display
            //color
            50: op = {LI, 8'd181, 4'd7}; //reg7=181       
            51: op = {ADD, 4'd1, 4'd7, 4'd5}; //reg5=reg1+reg7              
            52: op = {LOAD, 4'd5, 4'd0, 4'd12}; //reg12=mem[reg5]     1,2,3,4
            53: op = {LI, 8'd220, 4'd7}; //reg7=220       
            54: op = {ADD, 4'd12, 4'd7, 4'd5}; //reg5=reg12+reg7   221,222,223,224             
            55: op = {LOAD, 4'd5, 4'd0, 4'd12}; //reg12=mem[reg5]     
            //10 no kurai
            56: op = {LI, 8'd220, 4'd7}; //reg7=220       
            57: op = {ADD, 4'd2, 4'd7, 4'd5}; //reg5=reg2+reg7   220,221,222,...             
            58: op = {LOAD, 4'd5, 4'd0, 4'd8}; //reg8=mem[reg5]   
            //1 no kurai 
            59: op = {LI, 8'd220, 4'd7}; //reg7=220
            60: op = {ADD, 4'd1, 4'd7, 4'd5}; //reg5=reg1+reg7               
            61: op = {LOAD, 4'd5, 4'd0, 4'd11}; //reg11=mem[reg5]                     
                     
            62: op = {LI, 8'b11111111, 4'd14};      
              
            63: op = {STORE, 4'd6, 4'd8, 4'd3}; //mem[217]=reg8       /////
            64: op = {STORE, 4'd6, 4'd11, 4'd2}; //mem[216]=reg11      /////
            65: op = {STORE, 4'd6, 4'd14, 4'd1}; //mem[215]=reg14    /////
            66: op = {STORE, 4'd6, 4'd12, 4'd0}; //mem[214]=reg12     /////     
    
            67: op = {JMP, 8'd70, 4'hf}; //goto state check          
         
        	   	
		 //state check		 
         70: op = {LI, 8'd253, 4'd13}; //reg13=253	 
 		 71: op = {LOAD, 4'd13, 4'd0, 4'd9}; //reg9=mem[reg13] state 	    
		 72: op = {CMPI, 4'd9, 8'b00000100}; //right
		 73: op = {JNZ, 8'd88, 4'hf};
		 74: op = {CMPI, 4'd9, 8'b00000010}; //left
		 75: op = {JNZ, 8'd108, 4'hf};
		 //77: op = {CMPI, 4'd9, 8'b00000000}; //button off   
         //78: op = {JNZ, 8'd75, 4'hf};           
         76: op = {JMP, 8'd80, 4'hf};   //goto button off 
	
	    //button off
	     80: op = {LI, 8'd0, 4'd10};             //reg10 = 0;
         81: op = {JMP, 8'd70, 4'hf};           //goto state check	 
                         
         //right button
           
         88: op = {CMPI, 4'd10, 8'd1};
         89: op = {JNZ, 8'd50, 4'hf}; 
         90: op = {CMPI, 4'd1, 8'd32};
         91: op = {JNZ, 8'd70, 4'hf};           //if(!(reg1 == 32))
         92: op = {ADDI, 4'd1, 8'd1};           //  reg1++;
         93: op = {LI, 8'd1, 4'd10};             //  reg10 = 1;
              
         94: op = {CMPI, 4'd1, 8'd10}; //area10
         95: op = {JNZ, 8'd101, 4'hf};
         96: op = {CMPI, 4'd1, 8'd20}; // area20
         97: op = {JNZ, 8'd101, 4'hf};
         98: op = {CMPI, 4'd1, 8'd30}; // area30
         99: op = {JNZ, 8'd101, 4'hf};
         100: op = {JMP, 8'd50, 4'hf};  //goto display
         
         //10 no kurai
         101: op = {ADDI, 4'd2, 8'd1};   //   reg2++
         102: op = {JMP, 8'd50, 4'hf};  //goto display
         
        //left button     
        108: op = {CMPI, 4'd10, 8'd1};
        109: op = {JNZ, 8'd50, 4'hf};  
        110: op = {CMPI, 4'd1, 8'd0};
        111: op = {JNZ, 8'd70, 4'hf};
        112: op = {SUBI, 4'd1, 8'd1}; //reg1-=1
        113: op = {LI, 8'd1, 4'd10};  //reg10 = 1;
         
        114: op = {CMPI, 4'd1, 8'd9}; //area9
        115: op = {JNZ, 8'd121, 4'hf};
        116: op = {CMPI, 4'd1, 8'd19}; // area19
        117: op = {JNZ, 8'd121, 4'hf};
        118: op = {CMPI, 4'd1, 8'd29}; // area29
        119: op = {JNZ, 8'd121, 4'hf};
        120: op = {JMP, 8'd50, 4'hf}; //goto display
        
        //10 no kurai
        121: op = {SUBI, 4'd2, 8'd1}; //reg2-=1
        122: op = {JMP, 8'd50, 4'hf}; //goto display                         
 
		default: op = 16'bx;
		endcase
	end

	
endmodule
