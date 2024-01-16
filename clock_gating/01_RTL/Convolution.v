// synopsys translate_off
`include"../01_RTL/asap7sc7p5t_SEQ_RVT_TT_08302018.v"
// synopsys translate_on
module Convolution(
        //input
    clk,
    rst_n,
    in_valid,
    weight_valid,
    In_IFM_1,
    In_IFM_2,
    In_IFM_3,
    In_IFM_4,
    In_IFM_5,
    In_IFM_6,
    In_IFM_7,
    In_IFM_8,
    In_IFM_9,
    In_Weight_1,
    In_Weight_2,
    In_Weight_3,
    In_Weight_4,
    In_Weight_5,
    In_Weight_6,
    In_Weight_7,
    In_Weight_8,
    In_Weight_9,
        //output
    out_valid, 
    Out_OFM

);

input clk, rst_n, in_valid, weight_valid;
input [7:0]In_IFM_1;
input [7:0]In_IFM_2;
input [7:0]In_IFM_3;
input [7:0]In_IFM_4;
input [7:0]In_IFM_5;
input [7:0]In_IFM_6;
input [7:0]In_IFM_7;
input [7:0]In_IFM_8;
input [7:0]In_IFM_9;
input [7:0]In_Weight_1;
input [7:0]In_Weight_2;
input [7:0]In_Weight_3;
input [7:0]In_Weight_4;
input [7:0]In_Weight_5;
input [7:0]In_Weight_6;
input [7:0]In_Weight_7;
input [7:0]In_Weight_8;
input [7:0]In_Weight_9;

output reg out_valid;
output reg [20:0] Out_OFM;
integer i;
reg [1:0] state_cs, state_ns;
parameter IDLE = 0;
parameter IN_DATA = 1;
parameter EXE = 2;
reg [7:0] Weight_Buffer [1:9];
reg [7:0] In_Buffer [1:9];

reg [16:0]MUL[1:9];
wire clk_gate;
wire clk_gate_Weight;
wire clk_out;


wire ena2;
wire ena3;
wire ena4;
//reg [1:9]se_in;

assign ena4=(!((In_Buffer[1]==8'd0)|(Weight_Buffer[1]==8'd0)))|(!((In_Buffer[2]==8'd0)|(Weight_Buffer[2]==8'd0)))|(!((In_Buffer[3]==8'd0)|(Weight_Buffer[3]==8'd0)))
|(!((In_Buffer[4]==8'd0)|(Weight_Buffer[4]==8'd0)))|(!((In_Buffer[5]==8'd0)|(Weight_Buffer[5]==8'd0)))|(!((In_Buffer[6]==8'd0)|(Weight_Buffer[6]==8'd0)))
|(!((In_Buffer[7]==8'd0)|(Weight_Buffer[7]==8'd0)))|(!((In_Buffer[8]==8'd0)|(Weight_Buffer[8]==8'd0)))|(!((In_Buffer[9]==8'd0)|(Weight_Buffer[9]==8'd0))); 

assign ena2=(!((In_IFM_1==8'd0)|(Weight_Buffer[1]==8'd0)))|(!((In_IFM_2==8'd0)|(Weight_Buffer[2]==8'd0)))|(!((In_IFM_3==8'd0)|(Weight_Buffer[3]==8'd0)))
|(!((In_IFM_4==8'd0)|(Weight_Buffer[4]==8'd0)))|(!((In_IFM_5==8'd0)|(Weight_Buffer[5]==8'd0)))|(!((In_IFM_6==8'd0)|(Weight_Buffer[6]==8'd0)))
|(!((In_IFM_7==8'd0)|(Weight_Buffer[7]==8'd0)))|(!((In_IFM_8==8'd0)|(Weight_Buffer[8]==8'd0)))|(!((In_IFM_9==8'd0)|(Weight_Buffer[9]==8'd0)));

assign ena3=ena2|((!(ena4==0))&!ena2);

reg [4:0] count_out;
always@(posedge clk or negedge rst_n) begin
        if(!rst_n)
                state_cs <= IDLE;
        else
                state_cs <= state_ns;
end

always@(*) begin
        case(state_cs)
                IDLE:state_ns=in_valid?EXE:IDLE;

                IN_DATA:state_ns = EXE;

                EXE: state_ns=(count_out == 24)?IDLE:EXE;

                default:
                        state_ns = IDLE;
        endcase
end



//clock cg
//ICGx3_ASAP7_75t_R (GCLK, ENA, SE, CLK);
ICGx3_ASAP7_75t_R GATED_CG_U0(
	// output signals
	.GCLK(clk_gate),
	// input  signals
	.ENA(0),
	.SE(ena3),
	.CLK(clk)
);
ICGx3_ASAP7_75t_R GATED_CG_U1(
	// output signals
	.GCLK(clk_out),
	// input  signals
	.ENA(0),
	.SE(ena3|out_valid),
	.CLK(clk)
);
ICGx3_ASAP7_75t_R GATED_CG_U9(
	// output signals
	.GCLK(clk_gate_Weight),
	// input  signals
	.ENA(0),
	.SE(weight_valid),
	.CLK(clk)
);

// buffer

always@(posedge clk_gate_Weight or negedge rst_n) begin
	if(!rst_n) begin
		for (i=1;i<10;i=i+1) 
			Weight_Buffer[i] <= 0;
		end 
        else if(weight_valid) begin
			Weight_Buffer[1] <= In_Weight_1;
            Weight_Buffer[2] <= In_Weight_2;
            Weight_Buffer[3] <= In_Weight_3;
            Weight_Buffer[4] <= In_Weight_4;
            Weight_Buffer[5] <= In_Weight_5;
            Weight_Buffer[6] <= In_Weight_6;
            Weight_Buffer[7] <= In_Weight_7;
            Weight_Buffer[8] <= In_Weight_8;
            Weight_Buffer[9] <= In_Weight_9;
		end
		else begin
			for (i=1;i<10;i=i+1) 
				Weight_Buffer[i] <= Weight_Buffer[i];
		end 
end


always@(posedge clk_gate or negedge rst_n) begin
	if(!rst_n) begin
		for (i=1;i<10;i=i+1) 
			In_Buffer[i] <= 0;
	end 
	else if(in_valid) begin
		In_Buffer[1] <= In_IFM_1;
		In_Buffer[2] <= In_IFM_2;
		In_Buffer[3] <= In_IFM_3;
		In_Buffer[4] <= In_IFM_4;
		In_Buffer[5] <= In_IFM_5;
		In_Buffer[6] <= In_IFM_6;
		In_Buffer[7] <= In_IFM_7;
		In_Buffer[8] <= In_IFM_8;
		In_Buffer[9] <= In_IFM_9;
	end 
	else begin
		for (i=1;i<10;i=i+1) 
			In_Buffer[i] <= 0;
	end 
end


always@(posedge clk or negedge rst_n) begin
        if(!rst_n)
                count_out <= 0;
        else if(state_cs == EXE)
                count_out <= count_out + 1;
        else
                count_out <= 0;
end
always@(posedge clk or negedge rst_n) begin
        if(!rst_n)
                out_valid <= 0;
        else if(state_cs == EXE)
                out_valid <= 1;
        else
                out_valid <= 0;
end

always@(posedge clk_out or negedge rst_n ) begin
        if(!rst_n )
                Out_OFM <= 0;
        else if(state_cs == EXE ) begin
                Out_OFM <= In_Buffer[1] * Weight_Buffer[1]+In_Buffer[2] * Weight_Buffer[2]+In_Buffer[3] * Weight_Buffer[3]+In_Buffer[4] * Weight_Buffer[4]
						+In_Buffer[5] * Weight_Buffer[5]+In_Buffer[6] * Weight_Buffer[6]+In_Buffer[7] * Weight_Buffer[7]+In_Buffer[8] * Weight_Buffer[8]+In_Buffer[9] * Weight_Buffer[9];
				
        end
        else
                Out_OFM <= 0;
end
endmodule
