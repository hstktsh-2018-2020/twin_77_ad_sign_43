`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:46:37 04/03/2018 
// Design Name: 
// Module Name:    twin_77_ad_sign_43 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module twin_77_ad_sign_43(
 	 input CLK,
	 input	PSW0,

 	 output  LED0,
	 output  LED1,
	 output  LED2,
	 
    output trans1,
    output trans2,
    output trans3,
    output trans4,
    output trans5,
    output trans6,
    output trans7,
	 output trans8,
    output trans9,
    output trans10,
    output trans11,
    output trans12,
    output trans13,
    output trans14,
    output trans15,
    output trans16,
    output trans17,
    output trans18,
    output trans19,
    output trans20,
    output trans21,
    output trans22,
    output trans23,
    output trans24,
    output trans25,
    output trans26,
    output trans27,
    output trans28,
    output trans29,
    output trans30,
    output trans31,
    output trans32,
    output trans33,
    output trans34,
    output trans35,
    output trans36,
    output trans37,
    output trans38,
    output trans39,
    output trans40,
    output trans41,
    output trans42,
    output trans43,
    output trans44,
    output trans45,
    output trans46,
    output trans47,
    output trans48,
    output trans49 
    );

	//define signals
	reg [10:0] pwm_base_reg = 11'h000;
	
	reg [6:0]	base_cycle_counter_reg = 7'h00;
	reg [15:0]	count_base_reg = 16'h0000;
	
	reg [19:0]	count_reg = 20'h00000;
	reg [1:0]	psw0_reg = 2'h0;
	reg [2:0]	psw0_smp_reg = 3'h0;
	reg 			psw0_filt_reg = 1'h0;
	reg [6:0]	select_trans_reg = 7'h00;	
	
	reg [9:0] pwm1_1_duty_reg = 10'h000;
	reg [9:0] pwm2_1_duty_reg = 10'h000;
	reg [9:0] pwm3_1_duty_reg = 10'h000;
	reg [9:0] pwm4_1_duty_reg = 10'h000;
	reg [9:0] pwm5_1_duty_reg = 10'h000;
	reg [9:0] pwm6_1_duty_reg = 10'h000;
	reg [9:0] pwm7_1_duty_reg = 10'h000;
	reg [9:0] pwm8_1_duty_reg = 10'h000;
	reg [9:0] pwm9_1_duty_reg = 10'h000;
	reg [9:0] pwm10_1_duty_reg = 10'h000;
	reg [9:0] pwm11_1_duty_reg = 10'h000;
	reg [9:0] pwm12_1_duty_reg = 10'h000;
	reg [9:0] pwm13_1_duty_reg = 10'h000;
	reg [9:0] pwm14_1_duty_reg = 10'h000;
	reg [9:0] pwm15_1_duty_reg = 10'h000;
	reg [9:0] pwm16_1_duty_reg = 10'h000;
	reg [9:0] pwm17_1_duty_reg = 10'h000;
	reg [9:0] pwm18_1_duty_reg = 10'h000;
	reg [9:0] pwm19_1_duty_reg = 10'h000;
	reg [9:0] pwm20_1_duty_reg = 10'h000;
	reg [9:0] pwm21_1_duty_reg = 10'h000;
	reg [9:0] pwm22_1_duty_reg = 10'h000;
	reg [9:0] pwm23_1_duty_reg = 10'h000;
	reg [9:0] pwm24_1_duty_reg = 10'h000;
	reg [9:0] pwm25_1_duty_reg = 10'h000;
	reg [9:0] pwm26_1_duty_reg = 10'h000;
	reg [9:0] pwm27_1_duty_reg = 10'h000;
	reg [9:0] pwm28_1_duty_reg = 10'h000;
	reg [9:0] pwm29_1_duty_reg = 10'h000;
	reg [9:0] pwm30_1_duty_reg = 10'h000;
	reg [9:0] pwm31_1_duty_reg = 10'h000;
	reg [9:0] pwm32_1_duty_reg = 10'h000;
	reg [9:0] pwm33_1_duty_reg = 10'h000;
	reg [9:0] pwm34_1_duty_reg = 10'h000;
	reg [9:0] pwm35_1_duty_reg = 10'h000;
	reg [9:0] pwm36_1_duty_reg = 10'h000;
	reg [9:0] pwm37_1_duty_reg = 10'h000;
	reg [9:0] pwm38_1_duty_reg = 10'h000;
	reg [9:0] pwm39_1_duty_reg = 10'h000;
	reg [9:0] pwm40_1_duty_reg = 10'h000;
	reg [9:0] pwm41_1_duty_reg = 10'h000;
	reg [9:0] pwm42_1_duty_reg = 10'h000;
	reg [9:0] pwm43_1_duty_reg = 10'h000;
	reg [9:0] pwm44_1_duty_reg = 10'h000;
	reg [9:0] pwm45_1_duty_reg = 10'h000;
	reg [9:0] pwm46_1_duty_reg = 10'h000;
	reg [9:0] pwm47_1_duty_reg = 10'h000;
	reg [9:0] pwm48_1_duty_reg = 10'h000;
	reg [9:0] pwm49_1_duty_reg = 10'h000;
	
	reg [9:0] pwm1_2_duty_reg = 10'h000;
	reg [9:0] pwm2_2_duty_reg = 10'h000;
	reg [9:0] pwm3_2_duty_reg = 10'h000;
	reg [9:0] pwm4_2_duty_reg = 10'h000;
	reg [9:0] pwm5_2_duty_reg = 10'h000;
	reg [9:0] pwm6_2_duty_reg = 10'h000;
	reg [9:0] pwm7_2_duty_reg = 10'h000;
	reg [9:0] pwm8_2_duty_reg = 10'h000;
	reg [9:0] pwm9_2_duty_reg = 10'h000;
	reg [9:0] pwm10_2_duty_reg = 10'h000;
	reg [9:0] pwm11_2_duty_reg = 10'h000;
	reg [9:0] pwm12_2_duty_reg = 10'h000;
	reg [9:0] pwm13_2_duty_reg = 10'h000;
	reg [9:0] pwm14_2_duty_reg = 10'h000;
	reg [9:0] pwm15_2_duty_reg = 10'h000;
	reg [9:0] pwm16_2_duty_reg = 10'h000;
	reg [9:0] pwm17_2_duty_reg = 10'h000;
	reg [9:0] pwm18_2_duty_reg = 10'h000;
	reg [9:0] pwm19_2_duty_reg = 10'h000;
	reg [9:0] pwm20_2_duty_reg = 10'h000;
	reg [9:0] pwm21_2_duty_reg = 10'h000;
	reg [9:0] pwm22_2_duty_reg = 10'h000;
	reg [9:0] pwm23_2_duty_reg = 10'h000;
	reg [9:0] pwm24_2_duty_reg = 10'h000;
	reg [9:0] pwm25_2_duty_reg = 10'h000;
	reg [9:0] pwm26_2_duty_reg = 10'h000;
	reg [9:0] pwm27_2_duty_reg = 10'h000;
	reg [9:0] pwm28_2_duty_reg = 10'h000;
	reg [9:0] pwm29_2_duty_reg = 10'h000;
	reg [9:0] pwm30_2_duty_reg = 10'h000;
	reg [9:0] pwm31_2_duty_reg = 10'h000;
	reg [9:0] pwm32_2_duty_reg = 10'h000;
	reg [9:0] pwm33_2_duty_reg = 10'h000;
	reg [9:0] pwm34_2_duty_reg = 10'h000;
	reg [9:0] pwm35_2_duty_reg = 10'h000;
	reg [9:0] pwm36_2_duty_reg = 10'h000;
	reg [9:0] pwm37_2_duty_reg = 10'h000;
	reg [9:0] pwm38_2_duty_reg = 10'h000;
	reg [9:0] pwm39_2_duty_reg = 10'h000;
	reg [9:0] pwm40_2_duty_reg = 10'h000;
	reg [9:0] pwm41_2_duty_reg = 10'h000;
	reg [9:0] pwm42_2_duty_reg = 10'h000;
	reg [9:0] pwm43_2_duty_reg = 10'h000;
	reg [9:0] pwm44_2_duty_reg = 10'h000;
	reg [9:0] pwm45_2_duty_reg = 10'h000;
	reg [9:0] pwm46_2_duty_reg = 10'h000;
	reg [9:0] pwm47_2_duty_reg = 10'h000;
	reg [9:0] pwm48_2_duty_reg = 10'h000;
	reg [9:0] pwm49_2_duty_reg = 10'h000;

	reg [9:0] pwm1_3_duty_reg = 10'h000;
	reg [9:0] pwm2_3_duty_reg = 10'h000;
	reg [9:0] pwm3_3_duty_reg = 10'h000;
	reg [9:0] pwm4_3_duty_reg = 10'h000;
	reg [9:0] pwm5_3_duty_reg = 10'h000;
	reg [9:0] pwm6_3_duty_reg = 10'h000;
	reg [9:0] pwm7_3_duty_reg = 10'h000;
	reg [9:0] pwm8_3_duty_reg = 10'h000;
	reg [9:0] pwm9_3_duty_reg = 10'h000;
	reg [9:0] pwm10_3_duty_reg = 10'h000;
	reg [9:0] pwm11_3_duty_reg = 10'h000;
	reg [9:0] pwm12_3_duty_reg = 10'h000;
	reg [9:0] pwm13_3_duty_reg = 10'h000;
	reg [9:0] pwm14_3_duty_reg = 10'h000;
	reg [9:0] pwm15_3_duty_reg = 10'h000;
	reg [9:0] pwm16_3_duty_reg = 10'h000;
	reg [9:0] pwm17_3_duty_reg = 10'h000;
	reg [9:0] pwm18_3_duty_reg = 10'h000;
	reg [9:0] pwm19_3_duty_reg = 10'h000;
	reg [9:0] pwm20_3_duty_reg = 10'h000;
	reg [9:0] pwm21_3_duty_reg = 10'h000;
	reg [9:0] pwm22_3_duty_reg = 10'h000;
	reg [9:0] pwm23_3_duty_reg = 10'h000;
	reg [9:0] pwm24_3_duty_reg = 10'h000;
	reg [9:0] pwm25_3_duty_reg = 10'h000;
	reg [9:0] pwm26_3_duty_reg = 10'h000;
	reg [9:0] pwm27_3_duty_reg = 10'h000;
	reg [9:0] pwm28_3_duty_reg = 10'h000;
	reg [9:0] pwm29_3_duty_reg = 10'h000;
	reg [9:0] pwm30_3_duty_reg = 10'h000;
	reg [9:0] pwm31_3_duty_reg = 10'h000;
	reg [9:0] pwm32_3_duty_reg = 10'h000;
	reg [9:0] pwm33_3_duty_reg = 10'h000;
	reg [9:0] pwm34_3_duty_reg = 10'h000;
	reg [9:0] pwm35_3_duty_reg = 10'h000;
	reg [9:0] pwm36_3_duty_reg = 10'h000;
	reg [9:0] pwm37_3_duty_reg = 10'h000;
	reg [9:0] pwm38_3_duty_reg = 10'h000;
	reg [9:0] pwm39_3_duty_reg = 10'h000;
	reg [9:0] pwm40_3_duty_reg = 10'h000;
	reg [9:0] pwm41_3_duty_reg = 10'h000;
	reg [9:0] pwm42_3_duty_reg = 10'h000;
	reg [9:0] pwm43_3_duty_reg = 10'h000;
	reg [9:0] pwm44_3_duty_reg = 10'h000;
	reg [9:0] pwm45_3_duty_reg = 10'h000;
	reg [9:0] pwm46_3_duty_reg = 10'h000;
	reg [9:0] pwm47_3_duty_reg = 10'h000;
	reg [9:0] pwm48_3_duty_reg = 10'h000;
	reg [9:0] pwm49_3_duty_reg = 10'h000;

	reg [9:0] pwm1_4_duty_reg = 10'h000;
	reg [9:0] pwm2_4_duty_reg = 10'h000;
	reg [9:0] pwm3_4_duty_reg = 10'h000;
	reg [9:0] pwm4_4_duty_reg = 10'h000;
	reg [9:0] pwm5_4_duty_reg = 10'h000;
	reg [9:0] pwm6_4_duty_reg = 10'h000;
	reg [9:0] pwm7_4_duty_reg = 10'h000;
	reg [9:0] pwm8_4_duty_reg = 10'h000;
	reg [9:0] pwm9_4_duty_reg = 10'h000;
	reg [9:0] pwm10_4_duty_reg = 10'h000;
	reg [9:0] pwm11_4_duty_reg = 10'h000;
	reg [9:0] pwm12_4_duty_reg = 10'h000;
	reg [9:0] pwm13_4_duty_reg = 10'h000;
	reg [9:0] pwm14_4_duty_reg = 10'h000;
	reg [9:0] pwm15_4_duty_reg = 10'h000;
	reg [9:0] pwm16_4_duty_reg = 10'h000;
	reg [9:0] pwm17_4_duty_reg = 10'h000;
	reg [9:0] pwm18_4_duty_reg = 10'h000;
	reg [9:0] pwm19_4_duty_reg = 10'h000;
	reg [9:0] pwm20_4_duty_reg = 10'h000;
	reg [9:0] pwm21_4_duty_reg = 10'h000;
	reg [9:0] pwm22_4_duty_reg = 10'h000;
	reg [9:0] pwm23_4_duty_reg = 10'h000;
	reg [9:0] pwm24_4_duty_reg = 10'h000;
	reg [9:0] pwm25_4_duty_reg = 10'h000;
	reg [9:0] pwm26_4_duty_reg = 10'h000;
	reg [9:0] pwm27_4_duty_reg = 10'h000;
	reg [9:0] pwm28_4_duty_reg = 10'h000;
	reg [9:0] pwm29_4_duty_reg = 10'h000;
	reg [9:0] pwm30_4_duty_reg = 10'h000;
	reg [9:0] pwm31_4_duty_reg = 10'h000;
	reg [9:0] pwm32_4_duty_reg = 10'h000;
	reg [9:0] pwm33_4_duty_reg = 10'h000;
	reg [9:0] pwm34_4_duty_reg = 10'h000;
	reg [9:0] pwm35_4_duty_reg = 10'h000;
	reg [9:0] pwm36_4_duty_reg = 10'h000;
	reg [9:0] pwm37_4_duty_reg = 10'h000;
	reg [9:0] pwm38_4_duty_reg = 10'h000;
	reg [9:0] pwm39_4_duty_reg = 10'h000;
	reg [9:0] pwm40_4_duty_reg = 10'h000;
	reg [9:0] pwm41_4_duty_reg = 10'h000;
	reg [9:0] pwm42_4_duty_reg = 10'h000;
	reg [9:0] pwm43_4_duty_reg = 10'h000;
	reg [9:0] pwm44_4_duty_reg = 10'h000;
	reg [9:0] pwm45_4_duty_reg = 10'h000;
	reg [9:0] pwm46_4_duty_reg = 10'h000;
	reg [9:0] pwm47_4_duty_reg = 10'h000;
	reg [9:0] pwm48_4_duty_reg = 10'h000;
	reg [9:0] pwm49_4_duty_reg = 10'h000;	
	
   wire pwm1_1;
   wire pwm2_1;
   wire pwm3_1;
   wire pwm4_1;
   wire pwm5_1;
   wire pwm6_1;
   wire pwm7_1;
   wire pwm8_1;
   wire pwm9_1;
   wire pwm10_1;
   wire pwm11_1;
   wire pwm12_1;
   wire pwm13_1;
   wire pwm14_1;
   wire pwm15_1;
   wire pwm16_1;
   wire pwm17_1;
   wire pwm18_1;
   wire pwm19_1;
   wire pwm20_1;
   wire pwm21_1;
   wire pwm22_1;
   wire pwm23_1;
   wire pwm24_1;
   wire pwm25_1;
   wire pwm26_1;
   wire pwm27_1;
   wire pwm28_1;
   wire pwm29_1;
   wire pwm30_1;
   wire pwm31_1;
   wire pwm32_1;
   wire pwm33_1;
   wire pwm34_1;
   wire pwm35_1;
   wire pwm36_1;
   wire pwm37_1;
   wire pwm38_1;
   wire pwm39_1;
   wire pwm40_1;
   wire pwm41_1;
   wire pwm42_1;
   wire pwm43_1;
   wire pwm44_1;
   wire pwm45_1;
   wire pwm46_1;
   wire pwm47_1;
   wire pwm48_1;
   wire pwm49_1;
  
	wire pwm1_1_out;
	wire pwm2_1_out;
	wire pwm3_1_out;
	wire pwm4_1_out;
	wire pwm5_1_out;
	wire pwm6_1_out;
	wire pwm7_1_out;
	wire pwm8_1_out;
	wire pwm9_1_out;
	wire pwm10_1_out;
	wire pwm11_1_out;
	wire pwm12_1_out;
	wire pwm13_1_out;
	wire pwm14_1_out;
	wire pwm15_1_out;
	wire pwm16_1_out;
	wire pwm17_1_out;
	wire pwm18_1_out;
	wire pwm19_1_out;
	wire pwm20_1_out;
	wire pwm21_1_out;
	wire pwm22_1_out;
	wire pwm23_1_out;
	wire pwm24_1_out;
	wire pwm25_1_out;
	wire pwm26_1_out;
	wire pwm27_1_out;
	wire pwm28_1_out;
	wire pwm29_1_out;
	wire pwm30_1_out;
	wire pwm31_1_out;
	wire pwm32_1_out;
	wire pwm33_1_out;
	wire pwm34_1_out;
	wire pwm35_1_out;
	wire pwm36_1_out;
	wire pwm37_1_out;
	wire pwm38_1_out;
	wire pwm39_1_out;
	wire pwm40_1_out;
	wire pwm41_1_out;
	wire pwm42_1_out;
	wire pwm43_1_out;
	wire pwm44_1_out;
	wire pwm45_1_out;
	wire pwm46_1_out;
	wire pwm47_1_out;
	wire pwm48_1_out;
	wire pwm49_1_out;
	
	wire pwm1_2_out;
	wire pwm2_2_out;
	wire pwm3_2_out;
	wire pwm4_2_out;
	wire pwm5_2_out;
	wire pwm6_2_out;
	wire pwm7_2_out;
	wire pwm8_2_out;
	wire pwm9_2_out;
	wire pwm10_2_out;
	wire pwm11_2_out;
	wire pwm12_2_out;
	wire pwm13_2_out;
	wire pwm14_2_out;
	wire pwm15_2_out;
	wire pwm16_2_out;
	wire pwm17_2_out;
	wire pwm18_2_out;
	wire pwm19_2_out;
	wire pwm20_2_out;
	wire pwm21_2_out;
	wire pwm22_2_out;
	wire pwm23_2_out;
	wire pwm24_2_out;
	wire pwm25_2_out;
	wire pwm26_2_out;
	wire pwm27_2_out;
	wire pwm28_2_out;
	wire pwm29_2_out;
	wire pwm30_2_out;
	wire pwm31_2_out;
	wire pwm32_2_out;
	wire pwm33_2_out;
	wire pwm34_2_out;
	wire pwm35_2_out;
	wire pwm36_2_out;
	wire pwm37_2_out;
	wire pwm38_2_out;
	wire pwm39_2_out;
	wire pwm40_2_out;
	wire pwm41_2_out;
	wire pwm42_2_out;
	wire pwm43_2_out;
	wire pwm44_2_out;
	wire pwm45_2_out;
	wire pwm46_2_out;
	wire pwm47_2_out;
	wire pwm48_2_out;
	wire pwm49_2_out;	
	
	wire pwm1_3_out;
	wire pwm2_3_out;
	wire pwm3_3_out;
	wire pwm4_3_out;
	wire pwm5_3_out;
	wire pwm6_3_out;
	wire pwm7_3_out;
	wire pwm8_3_out;
	wire pwm9_3_out;
	wire pwm10_3_out;
	wire pwm11_3_out;
	wire pwm12_3_out;
	wire pwm13_3_out;
	wire pwm14_3_out;
	wire pwm15_3_out;
	wire pwm16_3_out;
	wire pwm17_3_out;
	wire pwm18_3_out;
	wire pwm19_3_out;
	wire pwm20_3_out;
	wire pwm21_3_out;
	wire pwm22_3_out;
	wire pwm23_3_out;
	wire pwm24_3_out;
	wire pwm25_3_out;
	wire pwm26_3_out;
	wire pwm27_3_out;
	wire pwm28_3_out;
	wire pwm29_3_out;
	wire pwm30_3_out;
	wire pwm31_3_out;
	wire pwm32_3_out;
	wire pwm33_3_out;
	wire pwm34_3_out;
	wire pwm35_3_out;
	wire pwm36_3_out;
	wire pwm37_3_out;
	wire pwm38_3_out;
	wire pwm39_3_out;
	wire pwm40_3_out;
	wire pwm41_3_out;
	wire pwm42_3_out;
	wire pwm43_3_out;
	wire pwm44_3_out;
	wire pwm45_3_out;
	wire pwm46_3_out;
	wire pwm47_3_out;
	wire pwm48_3_out;
	wire pwm49_3_out;
	
	wire pwm1_4_out;
	wire pwm2_4_out;
	wire pwm3_4_out;
	wire pwm4_4_out;
	wire pwm5_4_out;
	wire pwm6_4_out;
	wire pwm7_4_out;
	wire pwm8_4_out;
	wire pwm9_4_out;
	wire pwm10_4_out;
	wire pwm11_4_out;
	wire pwm12_4_out;
	wire pwm13_4_out;
	wire pwm14_4_out;
	wire pwm15_4_out;
	wire pwm16_4_out;
	wire pwm17_4_out;
	wire pwm18_4_out;
	wire pwm19_4_out;
	wire pwm20_4_out;
	wire pwm21_4_out;
	wire pwm22_4_out;
	wire pwm23_4_out;
	wire pwm24_4_out;
	wire pwm25_4_out;
	wire pwm26_4_out;
	wire pwm27_4_out;
	wire pwm28_4_out;
	wire pwm29_4_out;
	wire pwm30_4_out;
	wire pwm31_4_out;
	wire pwm32_4_out;
	wire pwm33_4_out;
	wire pwm34_4_out;
	wire pwm35_4_out;
	wire pwm36_4_out;
	wire pwm37_4_out;
	wire pwm38_4_out;
	wire pwm39_4_out;
	wire pwm40_4_out;
	wire pwm41_4_out;
	wire pwm42_4_out;
	wire pwm43_4_out;
	wire pwm44_4_out;
	wire pwm45_4_out;
	wire pwm46_4_out;
	wire pwm47_4_out;
	wire pwm48_4_out;
	wire pwm49_4_out;

	wire pwmbp;
	
	wire 			countbp;
	wire 			count_reset;
	wire 			psw0_filt;
	wire 			psw0_filt_pos;

	//PWM Base Cycle Generate
	/* Calculation
		base count = 50[MHz] / 40 [kHz] = 1250
		0 ~ 1249 -> 1250 count
	*/
	always @(posedge CLK) begin  //CB16RE
		if (pwmbp == 1'b1) begin  //R:pwmbp
			pwm_base_reg <= 11'h000;  //h:hexadecimal, assign 0 to all bits
		end
		else begin
			pwm_base_reg <= pwm_base_reg + 1'b1;  //increment
		end
	end
	
	assign pwmbp = (pwm_base_reg[10:0] == 11'd1249) ? 1'b1 : 1'b0;  //COMP16

	//メタステーブル対策用
	always @(posedge CLK) begin
		psw0_reg <={psw0_reg[0],PSW0};
	end
	
	//低速サンプリング用パルス生成部
	always @(posedge CLK) begin
		if (count_reg[19] == 1'b1) begin
			count_reg <= 20'd0;
		end
		else begin
			count_reg <= count_reg + 1'b1;
		end
	end
	
	//低速サンプリング部
	always @(posedge CLK) begin
		if (count_reg[19] == 1'b1) begin	
			psw0_smp_reg <= {psw0_smp_reg[1:0], psw0_reg[1]};
		end
	end
	
	assign psw0_filt = (~psw0_smp_reg[0] &  psw0_smp_reg[1] &  psw0_smp_reg[2]) |
							( psw0_smp_reg[0] & ~psw0_smp_reg[1] &  psw0_smp_reg[2]) |
							( psw0_smp_reg[0] &  psw0_smp_reg[1] & ~psw0_smp_reg[2]) |
							( psw0_smp_reg[0] &  psw0_smp_reg[1] &  psw0_smp_reg[2]) ;
					
	//微分回路
	always @(posedge CLK) begin
		psw0_filt_reg <= psw0_filt;
	end
	
	assign psw0_filt_pos = psw0_filt & (~psw0_filt_reg);
	
	always @(posedge CLK) begin
		if (psw0_filt_pos == 1'b1) begin
			select_trans_reg <= select_trans_reg + 1'b1;
		end
	end
		
	
	
	
	
	//phase
   assign pwm1_1 = (pwm_base_reg[10:0] == 11'd752) ? 1'b1 : 1'b0;  //COMP16
   assign pwm2_1 = (pwm_base_reg[10:0] == 11'd128) ? 1'b1 : 1'b0;  //COMP16
   assign pwm3_1 = (pwm_base_reg[10:0] == 11'd549) ? 1'b1 : 1'b0;  //COMP16
   assign pwm4_1 = (pwm_base_reg[10:0] == 11'd708) ? 1'b1 : 1'b0;  //COMP16
   assign pwm5_1 = (pwm_base_reg[10:0] == 11'd0) ? 1'b1 : 1'b0;  //COMP16
   assign pwm6_1 = (pwm_base_reg[10:0] == 11'd963) ? 1'b1 : 1'b0;  //COMP16
   assign pwm7_1 = (pwm_base_reg[10:0] == 11'd497) ? 1'b1 : 1'b0;  //COMP16
   assign pwm8_1 = (pwm_base_reg[10:0] == 11'd83) ? 1'b1 : 1'b0;  //COMP16
   assign pwm9_1 = (pwm_base_reg[10:0] == 11'd636) ? 1'b1 : 1'b0;  //COMP16
   assign pwm10_1= (pwm_base_reg[10:0] == 11'd1161) ? 1'b1 : 1'b0;  //COMP16
   assign pwm11_1= (pwm_base_reg[10:0] == 11'd170) ? 1'b1 : 1'b0;  //COMP16
   assign pwm12_1= (pwm_base_reg[10:0] == 11'd698) ? 1'b1 : 1'b0;  //COMP16
   assign pwm13_1= (pwm_base_reg[10:0] == 11'd389) ? 1'b1 : 1'b0;  //COMP16
   assign pwm14_1= (pwm_base_reg[10:0] == 11'd1024) ? 1'b1 : 1'b0;  //COMP16
   assign pwm15_1= (pwm_base_reg[10:0] == 11'd449) ? 1'b1 : 1'b0;  //COMP16
   assign pwm16_1= (pwm_base_reg[10:0] == 11'd1152) ? 1'b1 : 1'b0;  //COMP16
   assign pwm17_1= (pwm_base_reg[10:0] == 11'd396) ? 1'b1 : 1'b0;  //COMP16
   assign pwm18_1= (pwm_base_reg[10:0] == 11'd584) ? 1'b1 : 1'b0;  //COMP16
   assign pwm19_1= (pwm_base_reg[10:0] == 11'd1137) ? 1'b1 : 1'b0;  //COMP16
   assign pwm20_1= (pwm_base_reg[10:0] == 11'd738) ? 1'b1 : 1'b0;  //COMP16
   assign pwm21_1= (pwm_base_reg[10:0] == 11'd189) ? 1'b1 : 1'b0;  //COMP16
   assign pwm22_1= (pwm_base_reg[10:0] == 11'd563) ? 1'b1 : 1'b0;  //COMP16
   assign pwm23_1= (pwm_base_reg[10:0] == 11'd45) ? 1'b1 : 1'b0;  //COMP16
   assign pwm24_1= (pwm_base_reg[10:0] == 11'd512) ? 1'b1 : 1'b0;  //COMP16
   assign pwm25_1= (pwm_base_reg[10:0] == 11'd741) ? 1'b1 : 1'b0;  //COMP16
   assign pwm26_1= (pwm_base_reg[10:0] == 11'd31) ? 1'b1 : 1'b0;  //COMP16
   assign pwm27_1= (pwm_base_reg[10:0] == 11'd876) ? 1'b1 : 1'b0;  //COMP16
   assign pwm28_1= (pwm_base_reg[10:0] == 11'd275) ? 1'b1 : 1'b0;  //COMP16
   assign pwm29_1= (pwm_base_reg[10:0] == 11'd441) ? 1'b1 : 1'b0;  //COMP16
   assign pwm30_1= (pwm_base_reg[10:0] == 11'd1137) ? 1'b1 : 1'b0;  //COMP16
   assign pwm31_1= (pwm_base_reg[10:0] == 11'd388) ? 1'b1 : 1'b0;  //COMP16
   assign pwm32_1= (pwm_base_reg[10:0] == 11'd534) ? 1'b1 : 1'b0;  //COMP16
   assign pwm33_1= (pwm_base_reg[10:0] == 11'd1162) ? 1'b1 : 1'b0;  //COMP16
   assign pwm34_1= (pwm_base_reg[10:0] == 11'd738) ? 1'b1 : 1'b0;  //COMP16
   assign pwm35_1= (pwm_base_reg[10:0] == 11'd175) ? 1'b1 : 1'b0;  //COMP16
   assign pwm36_1= (pwm_base_reg[10:0] == 11'd20) ? 1'b1 : 1'b0;  //COMP16
   assign pwm37_1= (pwm_base_reg[10:0] == 11'd736) ? 1'b1 : 1'b0;  //COMP16
   assign pwm38_1= (pwm_base_reg[10:0] == 11'd1203) ? 1'b1 : 1'b0;  //COMP16
   assign pwm39_1= (pwm_base_reg[10:0] == 11'd175) ? 1'b1 : 1'b0;  //COMP16
   assign pwm40_1= (pwm_base_reg[10:0] == 11'd720) ? 1'b1 : 1'b0;  //COMP16
   assign pwm41_1= (pwm_base_reg[10:0] == 11'd396) ? 1'b1 : 1'b0;  //COMP16
   assign pwm42_1= (pwm_base_reg[10:0] == 11'd1052) ? 1'b1 : 1'b0;  //COMP16
   assign pwm43_1= (pwm_base_reg[10:0] == 11'd572) ? 1'b1 : 1'b0;  //COMP16
   assign pwm44_1= (pwm_base_reg[10:0] == 11'd157) ? 1'b1 : 1'b0;  //COMP16
   assign pwm45_1= (pwm_base_reg[10:0] == 11'd563) ? 1'b1 : 1'b0;  //COMP16
   assign pwm46_1= (pwm_base_reg[10:0] == 11'd775) ? 1'b1 : 1'b0;  //COMP16
   assign pwm47_1= (pwm_base_reg[10:0] == 11'd71) ? 1'b1 : 1'b0;  //COMP16
   assign pwm48_1= (pwm_base_reg[10:0] == 11'd1013) ? 1'b1 : 1'b0;  //COMP16
   assign pwm49_1= (pwm_base_reg[10:0] == 11'd485) ? 1'b1 : 1'b0;  //COMP16
	
   assign pwm1_2 = (pwm_base_reg[10:0]  == 11'd633) ? 1'b1 : 1'b0;  //COMP16
   assign pwm2_2 = (pwm_base_reg[10:0]  == 11'd54) ? 1'b1 : 1'b0;  //COMP16
   assign pwm3_2 = (pwm_base_reg[10:0]  == 11'd530) ? 1'b1 : 1'b0;  //COMP16
   assign pwm4_2 = (pwm_base_reg[10:0]  == 11'd750) ? 1'b1 : 1'b0;  //COMP16
   assign pwm5_2 = (pwm_base_reg[10:0]  == 11'd104) ? 1'b1 : 1'b0;  //COMP16
   assign pwm6_2 = (pwm_base_reg[10:0]  == 11'd1127) ? 1'b1 : 1'b0;  //COMP16
   assign pwm7_2 = (pwm_base_reg[10:0]  == 11'd712) ? 1'b1 : 1'b0;  //COMP16
   assign pwm8_2 = (pwm_base_reg[10:0]  == 11'd1202) ? 1'b1 : 1'b0;  //COMP16
   assign pwm9_2 = (pwm_base_reg[10:0]  == 11'd553) ? 1'b1 : 1'b0;  //COMP16
   assign pwm10_2 = (pwm_base_reg[10:0] == 11'd1135) ? 1'b1 : 1'b0;  //COMP16
   assign pwm11_2 = (pwm_base_reg[10:0] == 11'd210) ? 1'b1 : 1'b0;  //COMP16
   assign pwm12_2 = (pwm_base_reg[10:0] == 11'd806) ? 1'b1 : 1'b0;  //COMP16
   assign pwm13_2 = (pwm_base_reg[10:0] == 11'd559) ? 1'b1 : 1'b0;  //COMP16
   assign pwm14_2 = (pwm_base_reg[10:0] == 11'd0) ? 1'b1 : 1'b0;  //COMP16
   assign pwm15_2 = (pwm_base_reg[10:0] == 11'd310) ? 1'b1 : 1'b0;  //COMP16
   assign pwm16_2 = (pwm_base_reg[10:0] == 11'd1062) ? 1'b1 : 1'b0;  //COMP16
   assign pwm17_2 = (pwm_base_reg[10:0] == 11'd364) ? 1'b1 : 1'b0;  //COMP16
   assign pwm18_2 = (pwm_base_reg[10:0] == 11'd621) ? 1'b1 : 1'b0;  //COMP16
   assign pwm19_2 = (pwm_base_reg[10:0] == 11'd1246) ? 1'b1 : 1'b0;  //COMP16
   assign pwm20_2 = (pwm_base_reg[10:0] == 11'd915) ? 1'b1 : 1'b0;  //COMP16
   assign pwm21_2 = (pwm_base_reg[10:0] == 11'd421) ? 1'b1 : 1'b0;  //COMP16
   assign pwm22_2 = (pwm_base_reg[10:0] == 11'd422) ? 1'b1 : 1'b0;  //COMP16
   assign pwm23_2 = (pwm_base_reg[10:0] == 11'd1202) ? 1'b1 : 1'b0;  //COMP16
   assign pwm24_2 = (pwm_base_reg[10:0] == 11'd478) ? 1'b1 : 1'b0;  //COMP16
   assign pwm25_2 = (pwm_base_reg[10:0] == 11'd778) ? 1'b1 : 1'b0;  //COMP16
   assign pwm26_2 = (pwm_base_reg[10:0] == 11'd141) ? 1'b1 : 1'b0;  //COMP16
   assign pwm27_2 = (pwm_base_reg[10:0] == 11'd1054) ? 1'b1 : 1'b0;  //COMP16
   assign pwm28_2 = (pwm_base_reg[10:0] == 11'd510) ? 1'b1 : 1'b0;  //COMP16
   assign pwm29_2 = (pwm_base_reg[10:0] == 11'd302) ? 1'b1 : 1'b0;  //COMP16
   assign pwm30_2 = (pwm_base_reg[10:0] == 11'd1046) ? 1'b1 : 1'b0;  //COMP16
   assign pwm31_2 = (pwm_base_reg[10:0] == 11'd357) ? 1'b1 : 1'b0;  //COMP16
   assign pwm32_2 = (pwm_base_reg[10:0] == 11'd572) ? 1'b1 : 1'b0;  //COMP16
   assign pwm33_2 = (pwm_base_reg[10:0] == 11'd21) ? 1'b1 : 1'b0;  //COMP16
   assign pwm34_2 = (pwm_base_reg[10:0] == 11'd915) ? 1'b1 : 1'b0;  //COMP16
   assign pwm35_2 = (pwm_base_reg[10:0] == 11'd408) ? 1'b1 : 1'b0;  //COMP16
   assign pwm36_2 = (pwm_base_reg[10:0] == 11'd1140) ? 1'b1 : 1'b0;  //COMP16
   assign pwm37_2 = (pwm_base_reg[10:0] == 11'd653) ? 1'b1 : 1'b0;  //COMP16
   assign pwm38_2 = (pwm_base_reg[10:0] == 11'd1176) ? 1'b1 : 1'b0;  //COMP16
   assign pwm39_2 = (pwm_base_reg[10:0] == 11'd214) ? 1'b1 : 1'b0;  //COMP16
   assign pwm40_2 = (pwm_base_reg[10:0] == 11'd827) ? 1'b1 : 1'b0;  //COMP16
   assign pwm41_2 = (pwm_base_reg[10:0] == 11'd567) ? 1'b1 : 1'b0;  //COMP16
   assign pwm42_2 = (pwm_base_reg[10:0] == 11'd28) ? 1'b1 : 1'b0;  //COMP16
   assign pwm43_2 = (pwm_base_reg[10:0] == 11'd453) ? 1'b1 : 1'b0;  //COMP16
   assign pwm44_2 = (pwm_base_reg[10:0] == 11'd83) ? 1'b1 : 1'b0;  //COMP16
   assign pwm45_2 = (pwm_base_reg[10:0] == 11'd543) ? 1'b1 : 1'b0;  //COMP16
   assign pwm46_2 = (pwm_base_reg[10:0] == 11'd817) ? 1'b1 : 1'b0;  //COMP16
   assign pwm47_2 = (pwm_base_reg[10:0] == 11'd174) ? 1'b1 : 1'b0;  //COMP16
   assign pwm48_2 = (pwm_base_reg[10:0] == 11'd1176) ? 1'b1 : 1'b0;  //COMP16
   assign pwm49_2 = (pwm_base_reg[10:0] == 11'd700) ? 1'b1 : 1'b0;  //COMP16   
	
   assign pwm1_3 = (pwm_base_reg[10:0]  == 11'd312) ? 1'b1 : 1'b0;  //COMP16
   assign pwm2_3 = (pwm_base_reg[10:0]  == 11'd1026) ? 1'b1 : 1'b0;  //COMP16
   assign pwm3_3 = (pwm_base_reg[10:0]  == 11'd304) ? 1'b1 : 1'b0;  //COMP16
   assign pwm4_3 = (pwm_base_reg[10:0]  == 11'd584) ? 1'b1 : 1'b0;  //COMP16
   assign pwm5_3 = (pwm_base_reg[10:0]  == 11'd0) ? 1'b1 : 1'b0;  //COMP16
   assign pwm6_3 = (pwm_base_reg[10:0]  == 11'd1084) ? 1'b1 : 1'b0;  //COMP16
   assign pwm7_3 = (pwm_base_reg[10:0]  == 11'd725) ? 1'b1 : 1'b0;  //COMP16
   assign pwm8_3 = (pwm_base_reg[10:0]  == 11'd871) ? 1'b1 : 1'b0;  //COMP16
   assign pwm9_3 = (pwm_base_reg[10:0]  == 11'd265) ? 1'b1 : 1'b0;  //COMP16
   assign pwm10_3 = (pwm_base_reg[10:0] == 11'd902) ? 1'b1 : 1'b0;  //COMP16
   assign pwm11_3 = (pwm_base_reg[10:0] == 11'd40) ? 1'b1 : 1'b0;  //COMP16
   assign pwm12_3 = (pwm_base_reg[10:0] == 11'd704) ? 1'b1 : 1'b0;  //COMP16
   assign pwm13_3 = (pwm_base_reg[10:0] == 11'd524) ? 1'b1 : 1'b0;  //COMP16
   assign pwm14_3 = (pwm_base_reg[10:0] == 11'd21) ? 1'b1 : 1'b0;  //COMP16
   assign pwm15_3 = (pwm_base_reg[10:0] == 11'd1221) ? 1'b1 : 1'b0;  //COMP16
   assign pwm16_3 = (pwm_base_reg[10:0] == 11'd767) ? 1'b1 : 1'b0;  //COMP16
   assign pwm17_3 = (pwm_base_reg[10:0] == 11'd126) ? 1'b1 : 1'b0;  //COMP16
   assign pwm18_3 = (pwm_base_reg[10:0] == 11'd450) ? 1'b1 : 1'b0;  //COMP16
   assign pwm19_3 = (pwm_base_reg[10:0] == 11'd1147) ? 1'b1 : 1'b0;  //COMP16
   assign pwm20_3 = (pwm_base_reg[10:0] == 11'd884) ? 1'b1 : 1'b0;  //COMP16
   assign pwm21_3 = (pwm_base_reg[10:0] == 11'd450) ? 1'b1 : 1'b0;  //COMP16
   assign pwm22_3 = (pwm_base_reg[10:0] == 11'd80) ? 1'b1 : 1'b0;  //COMP16
   assign pwm23_3 = (pwm_base_reg[10:0] == 11'd904) ? 1'b1 : 1'b0;  //COMP16
   assign pwm24_3 = (pwm_base_reg[10:0] == 11'd239) ? 1'b1 : 1'b0;  //COMP16
   assign pwm25_3 = (pwm_base_reg[10:0] == 11'd606) ? 1'b1 : 1'b0;  //COMP16
   assign pwm26_3 = (pwm_base_reg[10:0] == 11'd42) ? 1'b1 : 1'b0;  //COMP16
   assign pwm27_3 = (pwm_base_reg[10:0] == 11'd1025) ? 1'b1 : 1'b0;  //COMP16
   assign pwm28_3 = (pwm_base_reg[10:0] == 11'd541) ? 1'b1 : 1'b0;  //COMP16
   assign pwm29_3 = (pwm_base_reg[10:0] == 11'd1213) ? 1'b1 : 1'b0;  //COMP16
   assign pwm30_3 = (pwm_base_reg[10:0] == 11'd752) ? 1'b1 : 1'b0;  //COMP16
   assign pwm31_3 = (pwm_base_reg[10:0] == 11'd118) ? 1'b1 : 1'b0;  //COMP16
   assign pwm32_3 = (pwm_base_reg[10:0] == 11'd400) ? 1'b1 : 1'b0;  //COMP16
   assign pwm33_3 = (pwm_base_reg[10:0] == 11'd1172) ? 1'b1 : 1'b0;  //COMP16
   assign pwm34_3 = (pwm_base_reg[10:0] == 11'd884) ? 1'b1 : 1'b0;  //COMP16
   assign pwm35_3 = (pwm_base_reg[10:0] == 11'd436) ? 1'b1 : 1'b0;  //COMP16
   assign pwm36_3 = (pwm_base_reg[10:0] == 11'd808) ? 1'b1 : 1'b0;  //COMP16
   assign pwm37_3 = (pwm_base_reg[10:0] == 11'd365) ? 1'b1 : 1'b0;  //COMP16
   assign pwm38_3 = (pwm_base_reg[10:0] == 11'd944) ? 1'b1 : 1'b0;  //COMP16
   assign pwm39_3 = (pwm_base_reg[10:0] == 11'd45) ? 1'b1 : 1'b0;  //COMP16
   assign pwm40_3 = (pwm_base_reg[10:0] == 11'd726) ? 1'b1 : 1'b0;  //COMP16
   assign pwm41_3 = (pwm_base_reg[10:0] == 11'd531) ? 1'b1 : 1'b0;  //COMP16
   assign pwm42_3 = (pwm_base_reg[10:0] == 11'd49) ? 1'b1 : 1'b0;  //COMP16
   assign pwm43_3 = (pwm_base_reg[10:0] == 11'd132) ? 1'b1 : 1'b0;  //COMP16
   assign pwm44_3 = (pwm_base_reg[10:0] == 11'd1055) ? 1'b1 : 1'b0;  //COMP16
   assign pwm45_3 = (pwm_base_reg[10:0] == 11'd318) ? 1'b1 : 1'b0;  //COMP16
   assign pwm46_3 = (pwm_base_reg[10:0] == 11'd651) ? 1'b1 : 1'b0;  //COMP16
   assign pwm47_3 = (pwm_base_reg[10:0] == 11'd71) ? 1'b1 : 1'b0;  //COMP16
   assign pwm48_3 = (pwm_base_reg[10:0] == 11'd1134) ? 1'b1 : 1'b0;  //COMP16
   assign pwm49_3 = (pwm_base_reg[10:0] == 11'd713) ? 1'b1 : 1'b0;  //COMP16


   assign pwm1_4 = (pwm_base_reg[10:0]  == 11'd320) ? 1'b1 : 1'b0;  //COMP16
   assign pwm2_4 = (pwm_base_reg[10:0]  == 11'd873) ? 1'b1 : 1'b0;  //COMP16
   assign pwm3_4 = (pwm_base_reg[10:0]  == 11'd436) ? 1'b1 : 1'b0;  //COMP16
   assign pwm4_4 = (pwm_base_reg[10:0]  == 11'd549) ? 1'b1 : 1'b0;  //COMP16
   assign pwm5_4 = (pwm_base_reg[10:0]  == 11'd176) ? 1'b1 : 1'b0;  //COMP16
   assign pwm6_4 = (pwm_base_reg[10:0]  == 11'd29) ? 1'b1 : 1'b0;  //COMP16
   assign pwm7_4 = (pwm_base_reg[10:0]  == 11'd898) ? 1'b1 : 1'b0;  //COMP16
   assign pwm8_4 = (pwm_base_reg[10:0]  == 11'd633) ? 1'b1 : 1'b0;  //COMP16
   assign pwm9_4 = (pwm_base_reg[10:0]  == 11'd336) ? 1'b1 : 1'b0;  //COMP16
   assign pwm10_4 = (pwm_base_reg[10:0] == 11'd718) ? 1'b1 : 1'b0;  //COMP16
   assign pwm11_4 = (pwm_base_reg[10:0] == 11'd103) ? 1'b1 : 1'b0;  //COMP16
   assign pwm12_4 = (pwm_base_reg[10:0] == 11'd712) ? 1'b1 : 1'b0;  //COMP16
   assign pwm13_4 = (pwm_base_reg[10:0] == 11'd601) ? 1'b1 : 1'b0;  //COMP16
   assign pwm14_4 = (pwm_base_reg[10:0] == 11'd345) ? 1'b1 : 1'b0;  //COMP16
   assign pwm15_4 = (pwm_base_reg[10:0] == 11'd941) ? 1'b1 : 1'b0;  //COMP16
   assign pwm16_4 = (pwm_base_reg[10:0] == 11'd606) ? 1'b1 : 1'b0;  //COMP16
   assign pwm17_4 = (pwm_base_reg[10:0] == 11'd120) ? 1'b1 : 1'b0;  //COMP16
   assign pwm18_4 = (pwm_base_reg[10:0] == 11'd465) ? 1'b1 : 1'b0;  //COMP16
   assign pwm19_4 = (pwm_base_reg[10:0] == 11'd49) ? 1'b1 : 1'b0;  //COMP16
   assign pwm20_4 = (pwm_base_reg[10:0] == 11'd910) ? 1'b1 : 1'b0;  //COMP16
   assign pwm21_4 = (pwm_base_reg[10:0] == 11'd593) ? 1'b1 : 1'b0;  //COMP16
   assign pwm22_4 = (pwm_base_reg[10:0] == 11'd1047) ? 1'b1 : 1'b0;  //COMP16
   assign pwm23_4 = (pwm_base_reg[10:0] == 11'd738) ? 1'b1 : 1'b0;  //COMP16
   assign pwm24_4 = (pwm_base_reg[10:0] == 11'd333) ? 1'b1 : 1'b0;  //COMP16
   assign pwm25_4 = (pwm_base_reg[10:0] == 11'd543) ? 1'b1 : 1'b0;  //COMP16
   assign pwm26_4 = (pwm_base_reg[10:0] == 11'd108) ? 1'b1 : 1'b0;  //COMP16
   assign pwm27_4 = (pwm_base_reg[10:0] == 11'd0) ? 1'b1 : 1'b0;  //COMP16
   assign pwm28_4 = (pwm_base_reg[10:0] == 11'd684) ? 1'b1 : 1'b0;  //COMP16
   assign pwm29_4 = (pwm_base_reg[10:0] == 11'd933) ? 1'b1 : 1'b0;  //COMP16
   assign pwm30_4 = (pwm_base_reg[10:0] == 11'd590) ? 1'b1 : 1'b0;  //COMP16
   assign pwm31_4 = (pwm_base_reg[10:0] == 11'd113) ? 1'b1 : 1'b0;  //COMP16
   assign pwm32_4 = (pwm_base_reg[10:0] == 11'd416) ? 1'b1 : 1'b0;  //COMP16
   assign pwm33_4 = (pwm_base_reg[10:0] == 11'd74) ? 1'b1 : 1'b0;  //COMP16
   assign pwm34_4 = (pwm_base_reg[10:0] == 11'd910) ? 1'b1 : 1'b0;  //COMP16
   assign pwm35_4 = (pwm_base_reg[10:0] == 11'd580) ? 1'b1 : 1'b0;  //COMP16
   assign pwm36_4 = (pwm_base_reg[10:0] == 11'd571) ? 1'b1 : 1'b0;  //COMP16
   assign pwm37_4 = (pwm_base_reg[10:0] == 11'd436) ? 1'b1 : 1'b0;  //COMP16
   assign pwm38_4 = (pwm_base_reg[10:0] == 11'd759) ? 1'b1 : 1'b0;  //COMP16
   assign pwm39_4 = (pwm_base_reg[10:0] == 11'd107) ? 1'b1 : 1'b0;  //COMP16
   assign pwm40_4 = (pwm_base_reg[10:0] == 11'd733) ? 1'b1 : 1'b0;  //COMP16
   assign pwm41_4 = (pwm_base_reg[10:0] == 11'd609) ? 1'b1 : 1'b0;  //COMP16
   assign pwm42_4 = (pwm_base_reg[10:0] == 11'd373) ? 1'b1 : 1'b0;  //COMP16
   assign pwm43_4 = (pwm_base_reg[10:0] == 11'd140) ? 1'b1 : 1'b0;  //COMP16
   assign pwm44_4 = (pwm_base_reg[10:0] == 11'd902) ? 1'b1 : 1'b0;  //COMP16
   assign pwm45_4 = (pwm_base_reg[10:0] == 11'd449) ? 1'b1 : 1'b0;  //COMP16
   assign pwm46_4 = (pwm_base_reg[10:0] == 11'd616) ? 1'b1 : 1'b0;  //COMP16
   assign pwm47_4 = (pwm_base_reg[10:0] == 11'd246) ? 1'b1 : 1'b0;  //COMP16
   assign pwm48_4 = (pwm_base_reg[10:0] == 11'd78) ? 1'b1 : 1'b0;  //COMP16
   assign pwm49_4 = (pwm_base_reg[10:0] == 11'd886) ? 1'b1 : 1'b0;  //COMP16  
	
	
	
	//PWM Duty Ratio Generate
    always @(posedge CLK) begin  //CB16RE
        if (pwm1_1 == 1'b1) begin  //R:pwm1_1
            pwm1_1_duty_reg <= 11'h000;
        end
        else if (pwm1_1_out == 1'b1) begin  //CE:pwm1_1_out
            pwm1_1_duty_reg <= pwm1_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm2_1 == 1'b1) begin  //R:pwm2_1
            pwm2_1_duty_reg <= 11'h000;
        end
        else if (pwm2_1_out == 1'b1) begin  //CE:pwm2_1_out
            pwm2_1_duty_reg <= pwm2_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm3_1 == 1'b1) begin  //R:pwm3_1
            pwm3_1_duty_reg <= 11'h000;
        end
        else if (pwm3_1_out == 1'b1) begin  //CE:pwm3_1_out
            pwm3_1_duty_reg <= pwm3_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm4_1 == 1'b1) begin  //R:pwm4_1
            pwm4_1_duty_reg <= 11'h000;
        end
        else if (pwm4_1_out == 1'b1) begin  //CE:pwm4_1_out
            pwm4_1_duty_reg <= pwm4_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm5_1 == 1'b1) begin  //R:pwm5_1
            pwm5_1_duty_reg <= 11'h000;
        end
        else if (pwm5_1_out == 1'b1) begin  //CE:pwm5_1_out
            pwm5_1_duty_reg <= pwm5_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm6_1 == 1'b1) begin  //R:pwm6_1
            pwm6_1_duty_reg <= 11'h000;
        end
        else if (pwm6_1_out == 1'b1) begin  //CE:pwm6_1_out
            pwm6_1_duty_reg <= pwm6_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm7_1 == 1'b1) begin  //R:pwm7_1
            pwm7_1_duty_reg <= 11'h000;
        end
        else if (pwm7_1_out == 1'b1) begin  //CE:pwm7_1_out
            pwm7_1_duty_reg <= pwm7_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm8_1 == 1'b1) begin  //R:pwm8_1
            pwm8_1_duty_reg <= 11'h000;
        end
        else if (pwm8_1_out == 1'b1) begin  //CE:pwm8_1_out
            pwm8_1_duty_reg <= pwm8_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm9_1 == 1'b1) begin  //R:pwm9_1
            pwm9_1_duty_reg <= 11'h000;
        end
        else if (pwm9_1_out == 1'b1) begin  //CE:pwm9_1_out
            pwm9_1_duty_reg <= pwm9_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm10_1 == 1'b1) begin  //R:pwm10_1
            pwm10_1_duty_reg <= 11'h000;
        end
        else if (pwm10_1_out == 1'b1) begin  //CE:pwm10_1_out
            pwm10_1_duty_reg <= pwm10_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm11_1 == 1'b1) begin  //R:pwm11_1
            pwm11_1_duty_reg <= 11'h000;
        end
        else if (pwm11_1_out == 1'b1) begin  //CE:pwm11_1_out
            pwm11_1_duty_reg <= pwm11_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm12_1 == 1'b1) begin  //R:pwm12_1
            pwm12_1_duty_reg <= 11'h000;
        end
        else if (pwm12_1_out == 1'b1) begin  //CE:pwm12_1_out
            pwm12_1_duty_reg <= pwm12_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm13_1 == 1'b1) begin  //R:pwm13_1
            pwm13_1_duty_reg <= 11'h000;
        end
        else if (pwm13_1_out == 1'b1) begin  //CE:pwm13_1_out
            pwm13_1_duty_reg <= pwm13_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm14_1 == 1'b1) begin  //R:pwm14_1
            pwm14_1_duty_reg <= 11'h000;
        end
        else if (pwm14_1_out == 1'b1) begin  //CE:pwm14_1_out
            pwm14_1_duty_reg <= pwm14_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm15_1 == 1'b1) begin  //R:pwm15_1
            pwm15_1_duty_reg <= 11'h000;
        end
        else if (pwm15_1_out == 1'b1) begin  //CE:pwm15_1_out
            pwm15_1_duty_reg <= pwm15_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm16_1 == 1'b1) begin  //R:pwm16_1
            pwm16_1_duty_reg <= 11'h000;
        end
        else if (pwm16_1_out == 1'b1) begin  //CE:pwm16_1_out
            pwm16_1_duty_reg <= pwm16_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm17_1 == 1'b1) begin  //R:pwm17_1
            pwm17_1_duty_reg <= 11'h000;
        end
        else if (pwm17_1_out == 1'b1) begin  //CE:pwm17_1_out
            pwm17_1_duty_reg <= pwm17_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm18_1 == 1'b1) begin  //R:pwm18_1
            pwm18_1_duty_reg <= 11'h000;
        end
        else if (pwm18_1_out == 1'b1) begin  //CE:pwm18_1_out
            pwm18_1_duty_reg <= pwm18_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm19_1 == 1'b1) begin  //R:pwm19_1
            pwm19_1_duty_reg <= 11'h000;
        end
        else if (pwm19_1_out == 1'b1) begin  //CE:pwm19_1_out
            pwm19_1_duty_reg <= pwm19_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm20_1 == 1'b1) begin  //R:pwm20_1
            pwm20_1_duty_reg <= 11'h000;
        end
        else if (pwm20_1_out == 1'b1) begin  //CE:pwm20_1_out
            pwm20_1_duty_reg <= pwm20_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm21_1 == 1'b1) begin  //R:pwm21_1
            pwm21_1_duty_reg <= 11'h000;
        end
        else if (pwm21_1_out == 1'b1) begin  //CE:pwm21_1_out
            pwm21_1_duty_reg <= pwm21_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm22_1 == 1'b1) begin  //R:pwm22_1
            pwm22_1_duty_reg <= 11'h000;
        end
        else if (pwm22_1_out == 1'b1) begin  //CE:pwm22_1_out
            pwm22_1_duty_reg <= pwm22_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm23_1 == 1'b1) begin  //R:pwm23_1
            pwm23_1_duty_reg <= 11'h000;
        end
        else if (pwm23_1_out == 1'b1) begin  //CE:pwm23_1_out
            pwm23_1_duty_reg <= pwm23_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm24_1 == 1'b1) begin  //R:pwm24_1
            pwm24_1_duty_reg <= 11'h000;
        end
        else if (pwm24_1_out == 1'b1) begin  //CE:pwm24_1_out
            pwm24_1_duty_reg <= pwm24_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm25_1 == 1'b1) begin  //R:pwm25_1
            pwm25_1_duty_reg <= 11'h000;
        end
        else if (pwm25_1_out == 1'b1) begin  //CE:pwm25_1_out
            pwm25_1_duty_reg <= pwm25_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm26_1 == 1'b1) begin  //R:pwm26_1
            pwm26_1_duty_reg <= 11'h000;
        end
        else if (pwm26_1_out == 1'b1) begin  //CE:pwm26_1_out
            pwm26_1_duty_reg <= pwm26_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm27_1 == 1'b1) begin  //R:pwm27_1
            pwm27_1_duty_reg <= 11'h000;
        end
        else if (pwm27_1_out == 1'b1) begin  //CE:pwm27_1_out
            pwm27_1_duty_reg <= pwm27_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm28_1 == 1'b1) begin  //R:pwm28_1
            pwm28_1_duty_reg <= 11'h000;
        end
        else if (pwm28_1_out == 1'b1) begin  //CE:pwm28_1_out
            pwm28_1_duty_reg <= pwm28_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm29_1 == 1'b1) begin  //R:pwm29_1
            pwm29_1_duty_reg <= 11'h000;
        end
        else if (pwm29_1_out == 1'b1) begin  //CE:pwm29_1_out
            pwm29_1_duty_reg <= pwm29_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm30_1 == 1'b1) begin  //R:pwm30_1
            pwm30_1_duty_reg <= 11'h000;
        end
        else if (pwm30_1_out == 1'b1) begin  //CE:pwm30_1_out
            pwm30_1_duty_reg <= pwm30_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm31_1 == 1'b1) begin  //R:pwm31_1
            pwm31_1_duty_reg <= 11'h000;
        end
        else if (pwm31_1_out == 1'b1) begin  //CE:pwm31_1_out
            pwm31_1_duty_reg <= pwm31_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm32_1 == 1'b1) begin  //R:pwm32_1
            pwm32_1_duty_reg <= 11'h000;
        end
        else if (pwm32_1_out == 1'b1) begin  //CE:pwm32_1_out
            pwm32_1_duty_reg <= pwm32_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm33_1 == 1'b1) begin  //R:pwm33_1
            pwm33_1_duty_reg <= 11'h000;
        end
        else if (pwm33_1_out == 1'b1) begin  //CE:pwm33_1_out
            pwm33_1_duty_reg <= pwm33_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm34_1 == 1'b1) begin  //R:pwm34_1
            pwm34_1_duty_reg <= 11'h000;
        end
        else if (pwm34_1_out == 1'b1) begin  //CE:pwm34_1_out
            pwm34_1_duty_reg <= pwm34_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm35_1 == 1'b1) begin  //R:pwm35_1
            pwm35_1_duty_reg <= 11'h000;
        end
        else if (pwm35_1_out == 1'b1) begin  //CE:pwm35_1_out
            pwm35_1_duty_reg <= pwm35_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm36_1 == 1'b1) begin  //R:pwm36_1
            pwm36_1_duty_reg <= 11'h000;
        end
        else if (pwm36_1_out == 1'b1) begin  //CE:pwm36_1_out
            pwm36_1_duty_reg <= pwm36_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm37_1 == 1'b1) begin  //R:pwm37_1
            pwm37_1_duty_reg <= 11'h000;
        end
        else if (pwm37_1_out == 1'b1) begin  //CE:pwm37_1_out
            pwm37_1_duty_reg <= pwm37_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm38_1 == 1'b1) begin  //R:pwm38_1
            pwm38_1_duty_reg <= 11'h000;
        end
        else if (pwm38_1_out == 1'b1) begin  //CE:pwm38_1_out
            pwm38_1_duty_reg <= pwm38_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm39_1 == 1'b1) begin  //R:pwm39_1
            pwm39_1_duty_reg <= 11'h000;
        end
        else if (pwm39_1_out == 1'b1) begin  //CE:pwm39_1_out
            pwm39_1_duty_reg <= pwm39_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm40_1 == 1'b1) begin  //R:pwm40_1
            pwm40_1_duty_reg <= 11'h000;
        end
        else if (pwm40_1_out == 1'b1) begin  //CE:pwm40_1_out
            pwm40_1_duty_reg <= pwm40_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm41_1 == 1'b1) begin  //R:pwm41_1
            pwm41_1_duty_reg <= 11'h000;
        end
        else if (pwm41_1_out == 1'b1) begin  //CE:pwm41_1_out
            pwm41_1_duty_reg <= pwm41_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm42_1 == 1'b1) begin  //R:pwm42_1
            pwm42_1_duty_reg <= 11'h000;
        end
        else if (pwm42_1_out == 1'b1) begin  //CE:pwm42_1_out
            pwm42_1_duty_reg <= pwm42_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm43_1 == 1'b1) begin  //R:pwm43_1
            pwm43_1_duty_reg <= 11'h000;
        end
        else if (pwm43_1_out == 1'b1) begin  //CE:pwm43_1_out
            pwm43_1_duty_reg <= pwm43_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm44_1 == 1'b1) begin  //R:pwm44_1
            pwm44_1_duty_reg <= 11'h000;
        end
        else if (pwm44_1_out == 1'b1) begin  //CE:pwm44_1_out
            pwm44_1_duty_reg <= pwm44_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm45_1 == 1'b1) begin  //R:pwm45_1
            pwm45_1_duty_reg <= 11'h000;
        end
        else if (pwm45_1_out == 1'b1) begin  //CE:pwm45_1_out
            pwm45_1_duty_reg <= pwm45_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm46_1 == 1'b1) begin  //R:pwm46_1
            pwm46_1_duty_reg <= 11'h000;
        end
        else if (pwm46_1_out == 1'b1) begin  //CE:pwm46_1_out
            pwm46_1_duty_reg <= pwm46_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm47_1 == 1'b1) begin  //R:pwm47_1
            pwm47_1_duty_reg <= 11'h000;
        end
        else if (pwm47_1_out == 1'b1) begin  //CE:pwm47_1_out
            pwm47_1_duty_reg <= pwm47_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm48_1 == 1'b1) begin  //R:pwm48_1
            pwm48_1_duty_reg <= 11'h000;
        end
        else if (pwm48_1_out == 1'b1) begin  //CE:pwm48_1_out
            pwm48_1_duty_reg <= pwm48_1_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm49_1 == 1'b1) begin  //R:pwm49_1
            pwm49_1_duty_reg <= 11'h000;
        end
        else if (pwm49_1_out == 1'b1) begin  //CE:pwm49_1_out
            pwm49_1_duty_reg <= pwm49_1_duty_reg + 1'b1;
        end
    end
	 
	 
    always @(posedge CLK) begin  //CB16RE
        if (pwm1_2 == 1'b1) begin  //R:pwm1_2
            pwm1_2_duty_reg <= 11'h000;
        end
        else if (pwm1_2_out == 1'b1) begin  //CE:pwm1_2_out
            pwm1_2_duty_reg <= pwm1_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm2_2 == 1'b1) begin  //R:pwm2_2
            pwm2_2_duty_reg <= 11'h000;
        end
        else if (pwm2_2_out == 1'b1) begin  //CE:pwm2_2_out
            pwm2_2_duty_reg <= pwm2_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm3_2 == 1'b1) begin  //R:pwm3_2
            pwm3_2_duty_reg <= 11'h000;
        end
        else if (pwm3_2_out == 1'b1) begin  //CE:pwm3_2_out
            pwm3_2_duty_reg <= pwm3_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm4_2 == 1'b1) begin  //R:pwm4_2
            pwm4_2_duty_reg <= 11'h000;
        end
        else if (pwm4_2_out == 1'b1) begin  //CE:pwm4_2_out
            pwm4_2_duty_reg <= pwm4_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm5_2 == 1'b1) begin  //R:pwm5_2
            pwm5_2_duty_reg <= 11'h000;
        end
        else if (pwm5_2_out == 1'b1) begin  //CE:pwm5_2_out
            pwm5_2_duty_reg <= pwm5_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm6_2 == 1'b1) begin  //R:pwm6_2
            pwm6_2_duty_reg <= 11'h000;
        end
        else if (pwm6_2_out == 1'b1) begin  //CE:pwm6_2_out
            pwm6_2_duty_reg <= pwm6_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm7_2 == 1'b1) begin  //R:pwm7_2
            pwm7_2_duty_reg <= 11'h000;
        end
        else if (pwm7_2_out == 1'b1) begin  //CE:pwm7_2_out
            pwm7_2_duty_reg <= pwm7_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm8_2 == 1'b1) begin  //R:pwm8_2
            pwm8_2_duty_reg <= 11'h000;
        end
        else if (pwm8_2_out == 1'b1) begin  //CE:pwm8_2_out
            pwm8_2_duty_reg <= pwm8_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm9_2 == 1'b1) begin  //R:pwm9_2
            pwm9_2_duty_reg <= 11'h000;
        end
        else if (pwm9_2_out == 1'b1) begin  //CE:pwm9_2_out
            pwm9_2_duty_reg <= pwm9_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm10_2 == 1'b1) begin  //R:pwm10_2
            pwm10_2_duty_reg <= 11'h000;
        end
        else if (pwm10_2_out == 1'b1) begin  //CE:pwm10_2_out
            pwm10_2_duty_reg <= pwm10_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm11_2 == 1'b1) begin  //R:pwm11_2
            pwm11_2_duty_reg <= 11'h000;
        end
        else if (pwm11_2_out == 1'b1) begin  //CE:pwm11_2_out
            pwm11_2_duty_reg <= pwm11_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm12_2 == 1'b1) begin  //R:pwm12_2
            pwm12_2_duty_reg <= 11'h000;
        end
        else if (pwm12_2_out == 1'b1) begin  //CE:pwm12_2_out
            pwm12_2_duty_reg <= pwm12_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm13_2 == 1'b1) begin  //R:pwm13_2
            pwm13_2_duty_reg <= 11'h000;
        end
        else if (pwm13_2_out == 1'b1) begin  //CE:pwm13_2_out
            pwm13_2_duty_reg <= pwm13_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm14_2 == 1'b1) begin  //R:pwm14_2
            pwm14_2_duty_reg <= 11'h000;
        end
        else if (pwm14_2_out == 1'b1) begin  //CE:pwm14_2_out
            pwm14_2_duty_reg <= pwm14_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm15_2 == 1'b1) begin  //R:pwm15_2
            pwm15_2_duty_reg <= 11'h000;
        end
        else if (pwm15_2_out == 1'b1) begin  //CE:pwm15_2_out
            pwm15_2_duty_reg <= pwm15_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm16_2 == 1'b1) begin  //R:pwm16_2
            pwm16_2_duty_reg <= 11'h000;
        end
        else if (pwm16_2_out == 1'b1) begin  //CE:pwm16_2_out
            pwm16_2_duty_reg <= pwm16_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm17_2 == 1'b1) begin  //R:pwm17_2
            pwm17_2_duty_reg <= 11'h000;
        end
        else if (pwm17_2_out == 1'b1) begin  //CE:pwm17_2_out
            pwm17_2_duty_reg <= pwm17_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm18_2 == 1'b1) begin  //R:pwm18_2
            pwm18_2_duty_reg <= 11'h000;
        end
        else if (pwm18_2_out == 1'b1) begin  //CE:pwm18_2_out
            pwm18_2_duty_reg <= pwm18_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm19_2 == 1'b1) begin  //R:pwm19_2
            pwm19_2_duty_reg <= 11'h000;
        end
        else if (pwm19_2_out == 1'b1) begin  //CE:pwm19_2_out
            pwm19_2_duty_reg <= pwm19_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm20_2 == 1'b1) begin  //R:pwm20_2
            pwm20_2_duty_reg <= 11'h000;
        end
        else if (pwm20_2_out == 1'b1) begin  //CE:pwm20_2_out
            pwm20_2_duty_reg <= pwm20_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm21_2 == 1'b1) begin  //R:pwm21_2
            pwm21_2_duty_reg <= 11'h000;
        end
        else if (pwm21_2_out == 1'b1) begin  //CE:pwm21_2_out
            pwm21_2_duty_reg <= pwm21_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm22_2 == 1'b1) begin  //R:pwm22_2
            pwm22_2_duty_reg <= 11'h000;
        end
        else if (pwm22_2_out == 1'b1) begin  //CE:pwm22_2_out
            pwm22_2_duty_reg <= pwm22_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm23_2 == 1'b1) begin  //R:pwm23_2
            pwm23_2_duty_reg <= 11'h000;
        end
        else if (pwm23_2_out == 1'b1) begin  //CE:pwm23_2_out
            pwm23_2_duty_reg <= pwm23_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm24_2 == 1'b1) begin  //R:pwm24_2
            pwm24_2_duty_reg <= 11'h000;
        end
        else if (pwm24_2_out == 1'b1) begin  //CE:pwm24_2_out
            pwm24_2_duty_reg <= pwm24_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm25_2 == 1'b1) begin  //R:pwm25_2
            pwm25_2_duty_reg <= 11'h000;
        end
        else if (pwm25_2_out == 1'b1) begin  //CE:pwm25_2_out
            pwm25_2_duty_reg <= pwm25_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm26_2 == 1'b1) begin  //R:pwm26_2
            pwm26_2_duty_reg <= 11'h000;
        end
        else if (pwm26_2_out == 1'b1) begin  //CE:pwm26_2_out
            pwm26_2_duty_reg <= pwm26_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm27_2 == 1'b1) begin  //R:pwm27_2
            pwm27_2_duty_reg <= 11'h000;
        end
        else if (pwm27_2_out == 1'b1) begin  //CE:pwm27_2_out
            pwm27_2_duty_reg <= pwm27_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm28_2 == 1'b1) begin  //R:pwm28_2
            pwm28_2_duty_reg <= 11'h000;
        end
        else if (pwm28_2_out == 1'b1) begin  //CE:pwm28_2_out
            pwm28_2_duty_reg <= pwm28_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm29_2 == 1'b1) begin  //R:pwm29_2
            pwm29_2_duty_reg <= 11'h000;
        end
        else if (pwm29_2_out == 1'b1) begin  //CE:pwm29_2_out
            pwm29_2_duty_reg <= pwm29_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm30_2 == 1'b1) begin  //R:pwm30_2
            pwm30_2_duty_reg <= 11'h000;
        end
        else if (pwm30_2_out == 1'b1) begin  //CE:pwm30_2_out
            pwm30_2_duty_reg <= pwm30_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm31_2 == 1'b1) begin  //R:pwm31_2
            pwm31_2_duty_reg <= 11'h000;
        end
        else if (pwm31_2_out == 1'b1) begin  //CE:pwm31_2_out
            pwm31_2_duty_reg <= pwm31_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm32_2 == 1'b1) begin  //R:pwm32_2
            pwm32_2_duty_reg <= 11'h000;
        end
        else if (pwm32_2_out == 1'b1) begin  //CE:pwm32_2_out
            pwm32_2_duty_reg <= pwm32_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm33_2 == 1'b1) begin  //R:pwm33_2
            pwm33_2_duty_reg <= 11'h000;
        end
        else if (pwm33_2_out == 1'b1) begin  //CE:pwm33_2_out
            pwm33_2_duty_reg <= pwm33_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm34_2 == 1'b1) begin  //R:pwm34_2
            pwm34_2_duty_reg <= 11'h000;
        end
        else if (pwm34_2_out == 1'b1) begin  //CE:pwm34_2_out
            pwm34_2_duty_reg <= pwm34_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm35_2 == 1'b1) begin  //R:pwm35_2
            pwm35_2_duty_reg <= 11'h000;
        end
        else if (pwm35_2_out == 1'b1) begin  //CE:pwm35_2_out
            pwm35_2_duty_reg <= pwm35_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm36_2 == 1'b1) begin  //R:pwm36_2
            pwm36_2_duty_reg <= 11'h000;
        end
        else if (pwm36_2_out == 1'b1) begin  //CE:pwm36_2_out
            pwm36_2_duty_reg <= pwm36_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm37_2 == 1'b1) begin  //R:pwm37_2
            pwm37_2_duty_reg <= 11'h000;
        end
        else if (pwm37_2_out == 1'b1) begin  //CE:pwm37_2_out
            pwm37_2_duty_reg <= pwm37_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm38_2 == 1'b1) begin  //R:pwm38_2
            pwm38_2_duty_reg <= 11'h000;
        end
        else if (pwm38_2_out == 1'b1) begin  //CE:pwm38_2_out
            pwm38_2_duty_reg <= pwm38_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm39_2 == 1'b1) begin  //R:pwm39_2
            pwm39_2_duty_reg <= 11'h000;
        end
        else if (pwm39_2_out == 1'b1) begin  //CE:pwm39_2_out
            pwm39_2_duty_reg <= pwm39_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm40_2 == 1'b1) begin  //R:pwm40_2
            pwm40_2_duty_reg <= 11'h000;
        end
        else if (pwm40_2_out == 1'b1) begin  //CE:pwm40_2_out
            pwm40_2_duty_reg <= pwm40_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm41_2 == 1'b1) begin  //R:pwm41_2
            pwm41_2_duty_reg <= 11'h000;
        end
        else if (pwm41_2_out == 1'b1) begin  //CE:pwm41_2_out
            pwm41_2_duty_reg <= pwm41_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm42_2 == 1'b1) begin  //R:pwm42_2
            pwm42_2_duty_reg <= 11'h000;
        end
        else if (pwm42_2_out == 1'b1) begin  //CE:pwm42_2_out
            pwm42_2_duty_reg <= pwm42_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm43_2 == 1'b1) begin  //R:pwm43_2
            pwm43_2_duty_reg <= 11'h000;
        end
        else if (pwm43_2_out == 1'b1) begin  //CE:pwm43_2_out
            pwm43_2_duty_reg <= pwm43_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm44_2 == 1'b1) begin  //R:pwm44_2
            pwm44_2_duty_reg <= 11'h000;
        end
        else if (pwm44_2_out == 1'b1) begin  //CE:pwm44_2_out
            pwm44_2_duty_reg <= pwm44_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm45_2 == 1'b1) begin  //R:pwm45_2
            pwm45_2_duty_reg <= 11'h000;
        end
        else if (pwm45_2_out == 1'b1) begin  //CE:pwm45_2_out
            pwm45_2_duty_reg <= pwm45_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm46_2 == 1'b1) begin  //R:pwm46_2
            pwm46_2_duty_reg <= 11'h000;
        end
        else if (pwm46_2_out == 1'b1) begin  //CE:pwm46_2_out
            pwm46_2_duty_reg <= pwm46_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm47_2 == 1'b1) begin  //R:pwm47_2
            pwm47_2_duty_reg <= 11'h000;
        end
        else if (pwm47_2_out == 1'b1) begin  //CE:pwm47_2_out
            pwm47_2_duty_reg <= pwm47_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm48_2 == 1'b1) begin  //R:pwm48_2
            pwm48_2_duty_reg <= 11'h000;
        end
        else if (pwm48_2_out == 1'b1) begin  //CE:pwm48_2_out
            pwm48_2_duty_reg <= pwm48_2_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm49_2 == 1'b1) begin  //R:pwm49_2
            pwm49_2_duty_reg <= 11'h000;
        end
        else if (pwm49_2_out == 1'b1) begin  //CE:pwm49_2_out
            pwm49_2_duty_reg <= pwm49_2_duty_reg + 1'b1;
        end
    end	 
	 
	 
    always @(posedge CLK) begin  //CB16RE
        if (pwm1_3 == 1'b1) begin  //R:pwm1_3
            pwm1_3_duty_reg <= 11'h000;
        end
        else if (pwm1_3_out == 1'b1) begin  //CE:pwm1_3_out
            pwm1_3_duty_reg <= pwm1_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm2_3 == 1'b1) begin  //R:pwm2_3
            pwm2_3_duty_reg <= 11'h000;
        end
        else if (pwm2_3_out == 1'b1) begin  //CE:pwm2_3_out
            pwm2_3_duty_reg <= pwm2_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm3_3 == 1'b1) begin  //R:pwm3_3
            pwm3_3_duty_reg <= 11'h000;
        end
        else if (pwm3_3_out == 1'b1) begin  //CE:pwm3_3_out
            pwm3_3_duty_reg <= pwm3_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm4_3 == 1'b1) begin  //R:pwm4_3
            pwm4_3_duty_reg <= 11'h000;
        end
        else if (pwm4_3_out == 1'b1) begin  //CE:pwm4_3_out
            pwm4_3_duty_reg <= pwm4_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm5_3 == 1'b1) begin  //R:pwm5_3
            pwm5_3_duty_reg <= 11'h000;
        end
        else if (pwm5_3_out == 1'b1) begin  //CE:pwm5_3_out
            pwm5_3_duty_reg <= pwm5_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm6_3 == 1'b1) begin  //R:pwm6_3
            pwm6_3_duty_reg <= 11'h000;
        end
        else if (pwm6_3_out == 1'b1) begin  //CE:pwm6_3_out
            pwm6_3_duty_reg <= pwm6_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm7_3 == 1'b1) begin  //R:pwm7_3
            pwm7_3_duty_reg <= 11'h000;
        end
        else if (pwm7_3_out == 1'b1) begin  //CE:pwm7_3_out
            pwm7_3_duty_reg <= pwm7_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm8_3 == 1'b1) begin  //R:pwm8_3
            pwm8_3_duty_reg <= 11'h000;
        end
        else if (pwm8_3_out == 1'b1) begin  //CE:pwm8_3_out
            pwm8_3_duty_reg <= pwm8_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm9_3 == 1'b1) begin  //R:pwm9_3
            pwm9_3_duty_reg <= 11'h000;
        end
        else if (pwm9_3_out == 1'b1) begin  //CE:pwm9_3_out
            pwm9_3_duty_reg <= pwm9_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm10_3 == 1'b1) begin  //R:pwm10_3
            pwm10_3_duty_reg <= 11'h000;
        end
        else if (pwm10_3_out == 1'b1) begin  //CE:pwm10_3_out
            pwm10_3_duty_reg <= pwm10_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm11_3 == 1'b1) begin  //R:pwm11_3
            pwm11_3_duty_reg <= 11'h000;
        end
        else if (pwm11_3_out == 1'b1) begin  //CE:pwm11_3_out
            pwm11_3_duty_reg <= pwm11_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm12_3 == 1'b1) begin  //R:pwm12_3
            pwm12_3_duty_reg <= 11'h000;
        end
        else if (pwm12_3_out == 1'b1) begin  //CE:pwm12_3_out
            pwm12_3_duty_reg <= pwm12_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm13_3 == 1'b1) begin  //R:pwm13_3
            pwm13_3_duty_reg <= 11'h000;
        end
        else if (pwm13_3_out == 1'b1) begin  //CE:pwm13_3_out
            pwm13_3_duty_reg <= pwm13_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm14_3 == 1'b1) begin  //R:pwm14_3
            pwm14_3_duty_reg <= 11'h000;
        end
        else if (pwm14_3_out == 1'b1) begin  //CE:pwm14_3_out
            pwm14_3_duty_reg <= pwm14_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm15_3 == 1'b1) begin  //R:pwm15_3
            pwm15_3_duty_reg <= 11'h000;
        end
        else if (pwm15_3_out == 1'b1) begin  //CE:pwm15_3_out
            pwm15_3_duty_reg <= pwm15_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm16_3 == 1'b1) begin  //R:pwm16_3
            pwm16_3_duty_reg <= 11'h000;
        end
        else if (pwm16_3_out == 1'b1) begin  //CE:pwm16_3_out
            pwm16_3_duty_reg <= pwm16_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm17_3 == 1'b1) begin  //R:pwm17_3
            pwm17_3_duty_reg <= 11'h000;
        end
        else if (pwm17_3_out == 1'b1) begin  //CE:pwm17_3_out
            pwm17_3_duty_reg <= pwm17_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm18_3 == 1'b1) begin  //R:pwm18_3
            pwm18_3_duty_reg <= 11'h000;
        end
        else if (pwm18_3_out == 1'b1) begin  //CE:pwm18_3_out
            pwm18_3_duty_reg <= pwm18_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm19_3 == 1'b1) begin  //R:pwm19_3
            pwm19_3_duty_reg <= 11'h000;
        end
        else if (pwm19_3_out == 1'b1) begin  //CE:pwm19_3_out
            pwm19_3_duty_reg <= pwm19_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm20_3 == 1'b1) begin  //R:pwm20_3
            pwm20_3_duty_reg <= 11'h000;
        end
        else if (pwm20_3_out == 1'b1) begin  //CE:pwm20_3_out
            pwm20_3_duty_reg <= pwm20_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm21_3 == 1'b1) begin  //R:pwm21_3
            pwm21_3_duty_reg <= 11'h000;
        end
        else if (pwm21_3_out == 1'b1) begin  //CE:pwm21_3_out
            pwm21_3_duty_reg <= pwm21_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm22_3 == 1'b1) begin  //R:pwm22_3
            pwm22_3_duty_reg <= 11'h000;
        end
        else if (pwm22_3_out == 1'b1) begin  //CE:pwm22_3_out
            pwm22_3_duty_reg <= pwm22_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm23_3 == 1'b1) begin  //R:pwm23_3
            pwm23_3_duty_reg <= 11'h000;
        end
        else if (pwm23_3_out == 1'b1) begin  //CE:pwm23_3_out
            pwm23_3_duty_reg <= pwm23_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm24_3 == 1'b1) begin  //R:pwm24_3
            pwm24_3_duty_reg <= 11'h000;
        end
        else if (pwm24_3_out == 1'b1) begin  //CE:pwm24_3_out
            pwm24_3_duty_reg <= pwm24_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm25_3 == 1'b1) begin  //R:pwm25_3
            pwm25_3_duty_reg <= 11'h000;
        end
        else if (pwm25_3_out == 1'b1) begin  //CE:pwm25_3_out
            pwm25_3_duty_reg <= pwm25_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm26_3 == 1'b1) begin  //R:pwm26_3
            pwm26_3_duty_reg <= 11'h000;
        end
        else if (pwm26_3_out == 1'b1) begin  //CE:pwm26_3_out
            pwm26_3_duty_reg <= pwm26_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm27_3 == 1'b1) begin  //R:pwm27_3
            pwm27_3_duty_reg <= 11'h000;
        end
        else if (pwm27_3_out == 1'b1) begin  //CE:pwm27_3_out
            pwm27_3_duty_reg <= pwm27_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm28_3 == 1'b1) begin  //R:pwm28_3
            pwm28_3_duty_reg <= 11'h000;
        end
        else if (pwm28_3_out == 1'b1) begin  //CE:pwm28_3_out
            pwm28_3_duty_reg <= pwm28_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm29_3 == 1'b1) begin  //R:pwm29_3
            pwm29_3_duty_reg <= 11'h000;
        end
        else if (pwm29_3_out == 1'b1) begin  //CE:pwm29_3_out
            pwm29_3_duty_reg <= pwm29_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm30_3 == 1'b1) begin  //R:pwm30_3
            pwm30_3_duty_reg <= 11'h000;
        end
        else if (pwm30_3_out == 1'b1) begin  //CE:pwm30_3_out
            pwm30_3_duty_reg <= pwm30_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm31_3 == 1'b1) begin  //R:pwm31_3
            pwm31_3_duty_reg <= 11'h000;
        end
        else if (pwm31_3_out == 1'b1) begin  //CE:pwm31_3_out
            pwm31_3_duty_reg <= pwm31_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm32_3 == 1'b1) begin  //R:pwm32_3
            pwm32_3_duty_reg <= 11'h000;
        end
        else if (pwm32_3_out == 1'b1) begin  //CE:pwm32_3_out
            pwm32_3_duty_reg <= pwm32_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm33_3 == 1'b1) begin  //R:pwm33_3
            pwm33_3_duty_reg <= 11'h000;
        end
        else if (pwm33_3_out == 1'b1) begin  //CE:pwm33_3_out
            pwm33_3_duty_reg <= pwm33_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm34_3 == 1'b1) begin  //R:pwm34_3
            pwm34_3_duty_reg <= 11'h000;
        end
        else if (pwm34_3_out == 1'b1) begin  //CE:pwm34_3_out
            pwm34_3_duty_reg <= pwm34_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm35_3 == 1'b1) begin  //R:pwm35_3
            pwm35_3_duty_reg <= 11'h000;
        end
        else if (pwm35_3_out == 1'b1) begin  //CE:pwm35_3_out
            pwm35_3_duty_reg <= pwm35_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm36_3 == 1'b1) begin  //R:pwm36_3
            pwm36_3_duty_reg <= 11'h000;
        end
        else if (pwm36_3_out == 1'b1) begin  //CE:pwm36_3_out
            pwm36_3_duty_reg <= pwm36_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm37_3 == 1'b1) begin  //R:pwm37_3
            pwm37_3_duty_reg <= 11'h000;
        end
        else if (pwm37_3_out == 1'b1) begin  //CE:pwm37_3_out
            pwm37_3_duty_reg <= pwm37_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm38_3 == 1'b1) begin  //R:pwm38_3
            pwm38_3_duty_reg <= 11'h000;
        end
        else if (pwm38_3_out == 1'b1) begin  //CE:pwm38_3_out
            pwm38_3_duty_reg <= pwm38_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm39_3 == 1'b1) begin  //R:pwm39_3
            pwm39_3_duty_reg <= 11'h000;
        end
        else if (pwm39_3_out == 1'b1) begin  //CE:pwm39_3_out
            pwm39_3_duty_reg <= pwm39_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm40_3 == 1'b1) begin  //R:pwm40_3
            pwm40_3_duty_reg <= 11'h000;
        end
        else if (pwm40_3_out == 1'b1) begin  //CE:pwm40_3_out
            pwm40_3_duty_reg <= pwm40_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm41_3 == 1'b1) begin  //R:pwm41_3
            pwm41_3_duty_reg <= 11'h000;
        end
        else if (pwm41_3_out == 1'b1) begin  //CE:pwm41_3_out
            pwm41_3_duty_reg <= pwm41_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm42_3 == 1'b1) begin  //R:pwm42_3
            pwm42_3_duty_reg <= 11'h000;
        end
        else if (pwm42_3_out == 1'b1) begin  //CE:pwm42_3_out
            pwm42_3_duty_reg <= pwm42_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm43_3 == 1'b1) begin  //R:pwm43_3
            pwm43_3_duty_reg <= 11'h000;
        end
        else if (pwm43_3_out == 1'b1) begin  //CE:pwm43_3_out
            pwm43_3_duty_reg <= pwm43_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm44_3 == 1'b1) begin  //R:pwm44_3
            pwm44_3_duty_reg <= 11'h000;
        end
        else if (pwm44_3_out == 1'b1) begin  //CE:pwm44_3_out
            pwm44_3_duty_reg <= pwm44_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm45_3 == 1'b1) begin  //R:pwm45_3
            pwm45_3_duty_reg <= 11'h000;
        end
        else if (pwm45_3_out == 1'b1) begin  //CE:pwm45_3_out
            pwm45_3_duty_reg <= pwm45_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm46_3 == 1'b1) begin  //R:pwm46_3
            pwm46_3_duty_reg <= 11'h000;
        end
        else if (pwm46_3_out == 1'b1) begin  //CE:pwm46_3_out
            pwm46_3_duty_reg <= pwm46_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm47_3 == 1'b1) begin  //R:pwm47_3
            pwm47_3_duty_reg <= 11'h000;
        end
        else if (pwm47_3_out == 1'b1) begin  //CE:pwm47_3_out
            pwm47_3_duty_reg <= pwm47_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm48_3 == 1'b1) begin  //R:pwm48_3
            pwm48_3_duty_reg <= 11'h000;
        end
        else if (pwm48_3_out == 1'b1) begin  //CE:pwm48_3_out
            pwm48_3_duty_reg <= pwm48_3_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm49_3 == 1'b1) begin  //R:pwm49_3
            pwm49_3_duty_reg <= 11'h000;
        end
        else if (pwm49_3_out == 1'b1) begin  //CE:pwm49_3_out
            pwm49_3_duty_reg <= pwm49_3_duty_reg + 1'b1;
        end
    end
	 
	 
    always @(posedge CLK) begin  //CB16RE
        if (pwm1_4 == 1'b1) begin  //R:pwm1_4
            pwm1_4_duty_reg <= 11'h000;
        end
        else if (pwm1_4_out == 1'b1) begin  //CE:pwm1_4_out
            pwm1_4_duty_reg <= pwm1_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm2_4 == 1'b1) begin  //R:pwm2_4
            pwm2_4_duty_reg <= 11'h000;
        end
        else if (pwm2_4_out == 1'b1) begin  //CE:pwm2_4_out
            pwm2_4_duty_reg <= pwm2_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm3_4 == 1'b1) begin  //R:pwm3_4
            pwm3_4_duty_reg <= 11'h000;
        end
        else if (pwm3_4_out == 1'b1) begin  //CE:pwm3_4_out
            pwm3_4_duty_reg <= pwm3_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm4_4 == 1'b1) begin  //R:pwm4_4
            pwm4_4_duty_reg <= 11'h000;
        end
        else if (pwm4_4_out == 1'b1) begin  //CE:pwm4_4_out
            pwm4_4_duty_reg <= pwm4_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm5_4 == 1'b1) begin  //R:pwm5_4
            pwm5_4_duty_reg <= 11'h000;
        end
        else if (pwm5_4_out == 1'b1) begin  //CE:pwm5_4_out
            pwm5_4_duty_reg <= pwm5_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm6_4 == 1'b1) begin  //R:pwm6_4
            pwm6_4_duty_reg <= 11'h000;
        end
        else if (pwm6_4_out == 1'b1) begin  //CE:pwm6_4_out
            pwm6_4_duty_reg <= pwm6_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm7_4 == 1'b1) begin  //R:pwm7_4
            pwm7_4_duty_reg <= 11'h000;
        end
        else if (pwm7_4_out == 1'b1) begin  //CE:pwm7_4_out
            pwm7_4_duty_reg <= pwm7_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm8_4 == 1'b1) begin  //R:pwm8_4
            pwm8_4_duty_reg <= 11'h000;
        end
        else if (pwm8_4_out == 1'b1) begin  //CE:pwm8_4_out
            pwm8_4_duty_reg <= pwm8_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm9_4 == 1'b1) begin  //R:pwm9_4
            pwm9_4_duty_reg <= 11'h000;
        end
        else if (pwm9_4_out == 1'b1) begin  //CE:pwm9_4_out
            pwm9_4_duty_reg <= pwm9_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm10_4 == 1'b1) begin  //R:pwm10_4
            pwm10_4_duty_reg <= 11'h000;
        end
        else if (pwm10_4_out == 1'b1) begin  //CE:pwm10_4_out
            pwm10_4_duty_reg <= pwm10_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm11_4 == 1'b1) begin  //R:pwm11_4
            pwm11_4_duty_reg <= 11'h000;
        end
        else if (pwm11_4_out == 1'b1) begin  //CE:pwm11_4_out
            pwm11_4_duty_reg <= pwm11_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm12_4 == 1'b1) begin  //R:pwm12_4
            pwm12_4_duty_reg <= 11'h000;
        end
        else if (pwm12_4_out == 1'b1) begin  //CE:pwm12_4_out
            pwm12_4_duty_reg <= pwm12_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm13_4 == 1'b1) begin  //R:pwm13_4
            pwm13_4_duty_reg <= 11'h000;
        end
        else if (pwm13_4_out == 1'b1) begin  //CE:pwm13_4_out
            pwm13_4_duty_reg <= pwm13_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm14_4 == 1'b1) begin  //R:pwm14_4
            pwm14_4_duty_reg <= 11'h000;
        end
        else if (pwm14_4_out == 1'b1) begin  //CE:pwm14_4_out
            pwm14_4_duty_reg <= pwm14_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm15_4 == 1'b1) begin  //R:pwm15_4
            pwm15_4_duty_reg <= 11'h000;
        end
        else if (pwm15_4_out == 1'b1) begin  //CE:pwm15_4_out
            pwm15_4_duty_reg <= pwm15_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm16_4 == 1'b1) begin  //R:pwm16_4
            pwm16_4_duty_reg <= 11'h000;
        end
        else if (pwm16_4_out == 1'b1) begin  //CE:pwm16_4_out
            pwm16_4_duty_reg <= pwm16_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm17_4 == 1'b1) begin  //R:pwm17_4
            pwm17_4_duty_reg <= 11'h000;
        end
        else if (pwm17_4_out == 1'b1) begin  //CE:pwm17_4_out
            pwm17_4_duty_reg <= pwm17_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm18_4 == 1'b1) begin  //R:pwm18_4
            pwm18_4_duty_reg <= 11'h000;
        end
        else if (pwm18_4_out == 1'b1) begin  //CE:pwm18_4_out
            pwm18_4_duty_reg <= pwm18_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm19_4 == 1'b1) begin  //R:pwm19_4
            pwm19_4_duty_reg <= 11'h000;
        end
        else if (pwm19_4_out == 1'b1) begin  //CE:pwm19_4_out
            pwm19_4_duty_reg <= pwm19_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm20_4 == 1'b1) begin  //R:pwm20_4
            pwm20_4_duty_reg <= 11'h000;
        end
        else if (pwm20_4_out == 1'b1) begin  //CE:pwm20_4_out
            pwm20_4_duty_reg <= pwm20_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm21_4 == 1'b1) begin  //R:pwm21_4
            pwm21_4_duty_reg <= 11'h000;
        end
        else if (pwm21_4_out == 1'b1) begin  //CE:pwm21_4_out
            pwm21_4_duty_reg <= pwm21_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm22_4 == 1'b1) begin  //R:pwm22_4
            pwm22_4_duty_reg <= 11'h000;
        end
        else if (pwm22_4_out == 1'b1) begin  //CE:pwm22_4_out
            pwm22_4_duty_reg <= pwm22_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm23_4 == 1'b1) begin  //R:pwm23_4
            pwm23_4_duty_reg <= 11'h000;
        end
        else if (pwm23_4_out == 1'b1) begin  //CE:pwm23_4_out
            pwm23_4_duty_reg <= pwm23_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm24_4 == 1'b1) begin  //R:pwm24_4
            pwm24_4_duty_reg <= 11'h000;
        end
        else if (pwm24_4_out == 1'b1) begin  //CE:pwm24_4_out
            pwm24_4_duty_reg <= pwm24_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm25_4 == 1'b1) begin  //R:pwm25_4
            pwm25_4_duty_reg <= 11'h000;
        end
        else if (pwm25_4_out == 1'b1) begin  //CE:pwm25_4_out
            pwm25_4_duty_reg <= pwm25_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm26_4 == 1'b1) begin  //R:pwm26_4
            pwm26_4_duty_reg <= 11'h000;
        end
        else if (pwm26_4_out == 1'b1) begin  //CE:pwm26_4_out
            pwm26_4_duty_reg <= pwm26_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm27_4 == 1'b1) begin  //R:pwm27_4
            pwm27_4_duty_reg <= 11'h000;
        end
        else if (pwm27_4_out == 1'b1) begin  //CE:pwm27_4_out
            pwm27_4_duty_reg <= pwm27_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm28_4 == 1'b1) begin  //R:pwm28_4
            pwm28_4_duty_reg <= 11'h000;
        end
        else if (pwm28_4_out == 1'b1) begin  //CE:pwm28_4_out
            pwm28_4_duty_reg <= pwm28_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm29_4 == 1'b1) begin  //R:pwm29_4
            pwm29_4_duty_reg <= 11'h000;
        end
        else if (pwm29_4_out == 1'b1) begin  //CE:pwm29_4_out
            pwm29_4_duty_reg <= pwm29_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm30_4 == 1'b1) begin  //R:pwm30_4
            pwm30_4_duty_reg <= 11'h000;
        end
        else if (pwm30_4_out == 1'b1) begin  //CE:pwm30_4_out
            pwm30_4_duty_reg <= pwm30_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm31_4 == 1'b1) begin  //R:pwm31_4
            pwm31_4_duty_reg <= 11'h000;
        end
        else if (pwm31_4_out == 1'b1) begin  //CE:pwm31_4_out
            pwm31_4_duty_reg <= pwm31_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm32_4 == 1'b1) begin  //R:pwm32_4
            pwm32_4_duty_reg <= 11'h000;
        end
        else if (pwm32_4_out == 1'b1) begin  //CE:pwm32_4_out
            pwm32_4_duty_reg <= pwm32_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm33_4 == 1'b1) begin  //R:pwm33_4
            pwm33_4_duty_reg <= 11'h000;
        end
        else if (pwm33_4_out == 1'b1) begin  //CE:pwm33_4_out
            pwm33_4_duty_reg <= pwm33_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm34_4 == 1'b1) begin  //R:pwm34_4
            pwm34_4_duty_reg <= 11'h000;
        end
        else if (pwm34_4_out == 1'b1) begin  //CE:pwm34_4_out
            pwm34_4_duty_reg <= pwm34_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm35_4 == 1'b1) begin  //R:pwm35_4
            pwm35_4_duty_reg <= 11'h000;
        end
        else if (pwm35_4_out == 1'b1) begin  //CE:pwm35_4_out
            pwm35_4_duty_reg <= pwm35_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm36_4 == 1'b1) begin  //R:pwm36_4
            pwm36_4_duty_reg <= 11'h000;
        end
        else if (pwm36_4_out == 1'b1) begin  //CE:pwm36_4_out
            pwm36_4_duty_reg <= pwm36_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm37_4 == 1'b1) begin  //R:pwm37_4
            pwm37_4_duty_reg <= 11'h000;
        end
        else if (pwm37_4_out == 1'b1) begin  //CE:pwm37_4_out
            pwm37_4_duty_reg <= pwm37_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm38_4 == 1'b1) begin  //R:pwm38_4
            pwm38_4_duty_reg <= 11'h000;
        end
        else if (pwm38_4_out == 1'b1) begin  //CE:pwm38_4_out
            pwm38_4_duty_reg <= pwm38_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm39_4 == 1'b1) begin  //R:pwm39_4
            pwm39_4_duty_reg <= 11'h000;
        end
        else if (pwm39_4_out == 1'b1) begin  //CE:pwm39_4_out
            pwm39_4_duty_reg <= pwm39_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm40_4 == 1'b1) begin  //R:pwm40_4
            pwm40_4_duty_reg <= 11'h000;
        end
        else if (pwm40_4_out == 1'b1) begin  //CE:pwm40_4_out
            pwm40_4_duty_reg <= pwm40_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm41_4 == 1'b1) begin  //R:pwm41_4
            pwm41_4_duty_reg <= 11'h000;
        end
        else if (pwm41_4_out == 1'b1) begin  //CE:pwm41_4_out
            pwm41_4_duty_reg <= pwm41_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm42_4 == 1'b1) begin  //R:pwm42_4
            pwm42_4_duty_reg <= 11'h000;
        end
        else if (pwm42_4_out == 1'b1) begin  //CE:pwm42_4_out
            pwm42_4_duty_reg <= pwm42_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm43_4 == 1'b1) begin  //R:pwm43_4
            pwm43_4_duty_reg <= 11'h000;
        end
        else if (pwm43_4_out == 1'b1) begin  //CE:pwm43_4_out
            pwm43_4_duty_reg <= pwm43_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm44_4 == 1'b1) begin  //R:pwm44_4
            pwm44_4_duty_reg <= 11'h000;
        end
        else if (pwm44_4_out == 1'b1) begin  //CE:pwm44_4_out
            pwm44_4_duty_reg <= pwm44_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm45_4 == 1'b1) begin  //R:pwm45_4
            pwm45_4_duty_reg <= 11'h000;
        end
        else if (pwm45_4_out == 1'b1) begin  //CE:pwm45_4_out
            pwm45_4_duty_reg <= pwm45_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm46_4 == 1'b1) begin  //R:pwm46_4
            pwm46_4_duty_reg <= 11'h000;
        end
        else if (pwm46_4_out == 1'b1) begin  //CE:pwm46_4_out
            pwm46_4_duty_reg <= pwm46_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm47_4 == 1'b1) begin  //R:pwm47_4
            pwm47_4_duty_reg <= 11'h000;
        end
        else if (pwm47_4_out == 1'b1) begin  //CE:pwm47_4_out
            pwm47_4_duty_reg <= pwm47_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm48_4 == 1'b1) begin  //R:pwm48_4
            pwm48_4_duty_reg <= 11'h000;
        end
        else if (pwm48_4_out == 1'b1) begin  //CE:pwm48_4_out
            pwm48_4_duty_reg <= pwm48_4_duty_reg + 1'b1;
        end
    end
    always @(posedge CLK) begin  //CB16RE
        if (pwm49_4 == 1'b1) begin  //R:pwm49_4
            pwm49_4_duty_reg <= 11'h000;
        end
        else if (pwm49_4_out == 1'b1) begin  //CE:pwm49_4_out
            pwm49_4_duty_reg <= pwm49_4_duty_reg + 1'b1;
        end
    end	 
	 
	 

	//duty ratio  ex 50% -> 1250 / 2 = 625
   assign pwm1_1_out = (pwm1_1_duty_reg[9:0] == 10'd264) ? 1'b0 : 1'b1;  //COMP16
   assign pwm2_1_out = (pwm2_1_duty_reg[9:0] == 10'd264) ? 1'b0 : 1'b1;  //COMP16
   assign pwm3_1_out = (pwm3_1_duty_reg[9:0] == 10'd264) ? 1'b0 : 1'b1;  //COMP16
   assign pwm4_1_out = (pwm4_1_duty_reg[9:0] == 10'd319) ? 1'b0 : 1'b1;  //COMP16
   assign pwm5_1_out = (pwm5_1_duty_reg[9:0] == 10'd362) ? 1'b0 : 1'b1;  //COMP16
   assign pwm6_1_out = (pwm6_1_duty_reg[9:0] == 10'd319) ? 1'b0 : 1'b1;  //COMP16
   assign pwm7_1_out = (pwm7_1_duty_reg[9:0] == 10'd197) ? 1'b0 : 1'b1;  //COMP16
   assign pwm8_1_out = (pwm8_1_duty_reg[9:0] == 10'd237) ? 1'b0 : 1'b1;  //COMP16
   assign pwm9_1_out = (pwm9_1_duty_reg[9:0] == 10'd463) ? 1'b0 : 1'b1;  //COMP16
   assign pwm10_1_out= (pwm10_1_duty_reg[9:0] == 10'd319) ? 1'b0 : 1'b1;  //COMP16
   assign pwm11_1_out= (pwm11_1_duty_reg[9:0] == 10'd205) ? 1'b0 : 1'b1;  //COMP16 
   assign pwm12_1_out= (pwm12_1_duty_reg[9:0] == 10'd264) ? 1'b0 : 1'b1;  //COMP16 
   assign pwm13_1_out= (pwm13_1_duty_reg[9:0] == 10'd220) ? 1'b0 : 1'b1;  //COMP16 
   assign pwm14_1_out= (pwm14_1_duty_reg[9:0] == 10'd319) ? 1'b0 : 1'b1;  //COMP16 
   assign pwm15_1_out= (pwm15_1_duty_reg[9:0] == 10'd220) ? 1'b0 : 1'b1;  //COMP16 
   assign pwm16_1_out= (pwm16_1_duty_reg[9:0] == 10'd205) ? 1'b0 : 1'b1;  //COMP16
   assign pwm17_1_out= (pwm17_1_duty_reg[9:0] == 10'd170) ? 1'b0 : 1'b1;  //COMP16
   assign pwm18_1_out= (pwm18_1_duty_reg[9:0] == 10'd220) ? 1'b0 : 1'b1;  //COMP16
   assign pwm19_1_out= (pwm19_1_duty_reg[9:0] == 10'd220) ? 1'b0 : 1'b1;  //COMP16
   assign pwm20_1_out= (pwm20_1_duty_reg[9:0] == 10'd319) ? 1'b0 : 1'b1;  //COMP16
   assign pwm21_1_out= (pwm21_1_duty_reg[9:0] == 10'd237) ? 1'b0 : 1'b1;  //COMP16
   assign pwm22_1_out= (pwm22_1_duty_reg[9:0] == 10'd237) ? 1'b0 : 1'b1;  //COMP16
   assign pwm23_1_out= (pwm23_1_duty_reg[9:0] == 10'd185) ? 1'b0 : 1'b1;  //COMP16
   assign pwm24_1_out= (pwm24_1_duty_reg[9:0] == 10'd220) ? 1'b0 : 1'b1;  //COMP16
   assign pwm25_1_out= (pwm25_1_duty_reg[9:0] == 10'd197) ? 1'b0 : 1'b1;  //COMP16
   assign pwm26_1_out= (pwm26_1_duty_reg[9:0] == 10'd220) ? 1'b0 : 1'b1;  //COMP16
   assign pwm27_1_out= (pwm27_1_duty_reg[9:0] == 10'd319) ? 1'b0 : 1'b1;  //COMP16
   assign pwm28_1_out= (pwm28_1_duty_reg[9:0] == 10'd319) ? 1'b0 : 1'b1;  //COMP16
   assign pwm29_1_out= (pwm29_1_duty_reg[9:0] == 10'd237) ? 1'b0 : 1'b1;  //COMP16
   assign pwm30_1_out= (pwm30_1_duty_reg[9:0] == 10'd237) ? 1'b0 : 1'b1;  //COMP16
   assign pwm31_1_out= (pwm31_1_duty_reg[9:0] == 10'd185) ? 1'b0 : 1'b1;  //COMP16
   assign pwm32_1_out= (pwm32_1_duty_reg[9:0] == 10'd319) ? 1'b0 : 1'b1;  //COMP16
   assign pwm33_1_out= (pwm33_1_duty_reg[9:0] == 10'd170) ? 1'b0 : 1'b1;  //COMP16
   assign pwm34_1_out= (pwm34_1_duty_reg[9:0] == 10'd319) ? 1'b0 : 1'b1;  //COMP16
   assign pwm35_1_out= (pwm35_1_duty_reg[9:0] == 10'd264) ? 1'b0 : 1'b1;  //COMP16
   assign pwm36_1_out= (pwm36_1_duty_reg[9:0] == 10'd362) ? 1'b0 : 1'b1;  //COMP16
   assign pwm37_1_out= (pwm37_1_duty_reg[9:0] == 10'd264) ? 1'b0 : 1'b1;  //COMP16
   assign pwm38_1_out= (pwm38_1_duty_reg[9:0] == 10'd237) ? 1'b0 : 1'b1;  //COMP16
   assign pwm39_1_out= (pwm39_1_duty_reg[9:0] == 10'd197) ? 1'b0 : 1'b1;  //COMP16
   assign pwm40_1_out= (pwm40_1_duty_reg[9:0] == 10'd220) ? 1'b0 : 1'b1;  //COMP16
   assign pwm41_1_out= (pwm41_1_duty_reg[9:0] == 10'd205) ? 1'b0 : 1'b1;  //COMP16
   assign pwm42_1_out= (pwm42_1_duty_reg[9:0] == 10'd264) ? 1'b0 : 1'b1;  //COMP16
   assign pwm43_1_out= (pwm43_1_duty_reg[9:0] == 10'd624) ? 1'b0 : 1'b1;  //COMP16
   assign pwm44_1_out= (pwm44_1_duty_reg[9:0] == 10'd205) ? 1'b0 : 1'b1;  //COMP16
   assign pwm45_1_out= (pwm45_1_duty_reg[9:0] == 10'd237) ? 1'b0 : 1'b1;  //COMP16
   assign pwm46_1_out= (pwm46_1_duty_reg[9:0] == 10'd185) ? 1'b0 : 1'b1;  //COMP16
   assign pwm47_1_out= (pwm47_1_duty_reg[9:0] == 10'd220) ? 1'b0 : 1'b1;  //COMP16
   assign pwm48_1_out= (pwm48_1_duty_reg[9:0] == 10'd220) ? 1'b0 : 1'b1;  //COMP16
   assign pwm49_1_out= (pwm49_1_duty_reg[9:0] == 10'd220) ? 1'b0 : 1'b1;  //COMP16
	
	assign pwm1_2_out = (pwm1_2_duty_reg[9:0]  == 10'd264) ? 1'b0 : 1'b1;  //COMP16
   assign pwm2_2_out = (pwm2_2_duty_reg[9:0]  == 10'd264) ? 1'b0 : 1'b1;  //COMP16
   assign pwm3_2_out = (pwm3_2_duty_reg[9:0]  == 10'd264) ? 1'b0 : 1'b1;  //COMP16
   assign pwm4_2_out = (pwm4_2_duty_reg[9:0]  == 10'd319) ? 1'b0 : 1'b1;  //COMP16
   assign pwm5_2_out = (pwm5_2_duty_reg[9:0]  == 10'd362) ? 1'b0 : 1'b1;  //COMP16
   assign pwm6_2_out = (pwm6_2_duty_reg[9:0]  == 10'd319) ? 1'b0 : 1'b1;  //COMP16
   assign pwm7_2_out = (pwm7_2_duty_reg[9:0]  == 10'd197) ? 1'b0 : 1'b1;  //COMP16
   assign pwm8_2_out = (pwm8_2_duty_reg[9:0]  == 10'd237) ? 1'b0 : 1'b1;  //COMP16
   assign pwm9_2_out = (pwm9_2_duty_reg[9:0]  == 10'd463) ? 1'b0 : 1'b1;  //COMP16
   assign pwm10_2_out = (pwm10_2_duty_reg[9:0]  == 10'd319) ? 1'b0 : 1'b1;  //COMP16
   assign pwm11_2_out = (pwm11_2_duty_reg[9:0]  == 10'd205) ? 1'b0 : 1'b1;  //COMP16 
   assign pwm12_2_out = (pwm12_2_duty_reg[9:0]  == 10'd264) ? 1'b0 : 1'b1;  //COMP16 
   assign pwm13_2_out = (pwm13_2_duty_reg[9:0]  == 10'd220) ? 1'b0 : 1'b1;  //COMP16 
   assign pwm14_2_out = (pwm14_2_duty_reg[9:0]  == 10'd319) ? 1'b0 : 1'b1;  //COMP16 
   assign pwm15_2_out = (pwm15_2_duty_reg[9:0]  == 10'd220) ? 1'b0 : 1'b1;  //COMP16 
   assign pwm16_2_out = (pwm16_2_duty_reg[9:0]  == 10'd205) ? 1'b0 : 1'b1;  //COMP16
   assign pwm17_2_out = (pwm17_2_duty_reg[9:0]  == 10'd170) ? 1'b0 : 1'b1;  //COMP16
   assign pwm18_2_out = (pwm18_2_duty_reg[9:0]  == 10'd220) ? 1'b0 : 1'b1;  //COMP16
   assign pwm19_2_out = (pwm19_2_duty_reg[9:0]  == 10'd220) ? 1'b0 : 1'b1;  //COMP16
   assign pwm20_2_out = (pwm20_2_duty_reg[9:0]  == 10'd319) ? 1'b0 : 1'b1;  //COMP16
   assign pwm21_2_out = (pwm21_2_duty_reg[9:0]  == 10'd237) ? 1'b0 : 1'b1;  //COMP16
   assign pwm22_2_out = (pwm22_2_duty_reg[9:0]  == 10'd237) ? 1'b0 : 1'b1;  //COMP16
   assign pwm23_2_out = (pwm23_2_duty_reg[9:0]  == 10'd185) ? 1'b0 : 1'b1;  //COMP16
   assign pwm24_2_out = (pwm24_2_duty_reg[9:0]  == 10'd220) ? 1'b0 : 1'b1;  //COMP16
   assign pwm25_2_out = (pwm25_2_duty_reg[9:0]  == 10'd197) ? 1'b0 : 1'b1;  //COMP16
   assign pwm26_2_out = (pwm26_2_duty_reg[9:0]  == 10'd220) ? 1'b0 : 1'b1;  //COMP16
   assign pwm27_2_out = (pwm27_2_duty_reg[9:0]  == 10'd319) ? 1'b0 : 1'b1;  //COMP16
   assign pwm28_2_out = (pwm28_2_duty_reg[9:0]  == 10'd319) ? 1'b0 : 1'b1;  //COMP16
   assign pwm29_2_out = (pwm29_2_duty_reg[9:0]  == 10'd237) ? 1'b0 : 1'b1;  //COMP16
   assign pwm30_2_out = (pwm30_2_duty_reg[9:0]  == 10'd237) ? 1'b0 : 1'b1;  //COMP16
   assign pwm31_2_out = (pwm31_2_duty_reg[9:0]  == 10'd185) ? 1'b0 : 1'b1;  //COMP16
   assign pwm32_2_out = (pwm32_2_duty_reg[9:0]  == 10'd319) ? 1'b0 : 1'b1;  //COMP16
   assign pwm33_2_out = (pwm33_2_duty_reg[9:0]  == 10'd170) ? 1'b0 : 1'b1;  //COMP16
   assign pwm34_2_out = (pwm34_2_duty_reg[9:0]  == 10'd319) ? 1'b0 : 1'b1;  //COMP16
   assign pwm35_2_out = (pwm35_2_duty_reg[9:0]  == 10'd264) ? 1'b0 : 1'b1;  //COMP16
   assign pwm36_2_out = (pwm36_2_duty_reg[9:0]  == 10'd362) ? 1'b0 : 1'b1;  //COMP16
   assign pwm37_2_out = (pwm37_2_duty_reg[9:0]  == 10'd264) ? 1'b0 : 1'b1;  //COMP16
   assign pwm38_2_out = (pwm38_2_duty_reg[9:0]  == 10'd237) ? 1'b0 : 1'b1;  //COMP16
   assign pwm39_2_out = (pwm39_2_duty_reg[9:0]  == 10'd197) ? 1'b0 : 1'b1;  //COMP16
   assign pwm40_2_out = (pwm40_2_duty_reg[9:0]  == 10'd220) ? 1'b0 : 1'b1;  //COMP16
   assign pwm41_2_out = (pwm41_2_duty_reg[9:0]  == 10'd205) ? 1'b0 : 1'b1;  //COMP16
   assign pwm42_2_out = (pwm42_2_duty_reg[9:0]  == 10'd264) ? 1'b0 : 1'b1;  //COMP16
   assign pwm43_2_out = (pwm43_2_duty_reg[9:0]  == 10'd624) ? 1'b0 : 1'b1;  //COMP16
   assign pwm44_2_out = (pwm44_2_duty_reg[9:0]  == 10'd205) ? 1'b0 : 1'b1;  //COMP16
   assign pwm45_2_out = (pwm45_2_duty_reg[9:0]  == 10'd237) ? 1'b0 : 1'b1;  //COMP16
   assign pwm46_2_out = (pwm46_2_duty_reg[9:0]  == 10'd185) ? 1'b0 : 1'b1;  //COMP16
   assign pwm47_2_out = (pwm47_2_duty_reg[9:0]  == 10'd220) ? 1'b0 : 1'b1;  //COMP16
   assign pwm48_2_out = (pwm48_2_duty_reg[9:0]  == 10'd220) ? 1'b0 : 1'b1;  //COMP16
   assign pwm49_2_out = (pwm49_2_duty_reg[9:0]  == 10'd220) ? 1'b0 : 1'b1;  //COMP16
	
	assign pwm1_3_out = (pwm1_3_duty_reg[9:0]  == 10'd264) ? 1'b0 : 1'b1;  //COMP16
   assign pwm2_3_out = (pwm2_3_duty_reg[9:0]  == 10'd264) ? 1'b0 : 1'b1;  //COMP16
   assign pwm3_3_out = (pwm3_3_duty_reg[9:0]  == 10'd264) ? 1'b0 : 1'b1;  //COMP16
   assign pwm4_3_out = (pwm4_3_duty_reg[9:0]  == 10'd319) ? 1'b0 : 1'b1;  //COMP16
   assign pwm5_3_out = (pwm5_3_duty_reg[9:0]  == 10'd362) ? 1'b0 : 1'b1;  //COMP16
   assign pwm6_3_out = (pwm6_3_duty_reg[9:0]  == 10'd319) ? 1'b0 : 1'b1;  //COMP16
   assign pwm7_3_out = (pwm7_3_duty_reg[9:0]  == 10'd197) ? 1'b0 : 1'b1;  //COMP16
   assign pwm8_3_out = (pwm8_3_duty_reg[9:0]  == 10'd237) ? 1'b0 : 1'b1;  //COMP16
   assign pwm9_3_out = (pwm9_3_duty_reg[9:0]  == 10'd463) ? 1'b0 : 1'b1;  //COMP16
   assign pwm10_3_out = (pwm10_3_duty_reg[9:0]  == 10'd319) ? 1'b0 : 1'b1;  //COMP16
   assign pwm11_3_out = (pwm11_3_duty_reg[9:0]  == 10'd205) ? 1'b0 : 1'b1;  //COMP16 
   assign pwm12_3_out = (pwm12_3_duty_reg[9:0]  == 10'd264) ? 1'b0 : 1'b1;  //COMP16 
   assign pwm13_3_out = (pwm13_3_duty_reg[9:0]  == 10'd220) ? 1'b0 : 1'b1;  //COMP16 
   assign pwm14_3_out = (pwm14_3_duty_reg[9:0]  == 10'd319) ? 1'b0 : 1'b1;  //COMP16 
   assign pwm15_3_out = (pwm15_3_duty_reg[9:0]  == 10'd220) ? 1'b0 : 1'b1;  //COMP16 
   assign pwm16_3_out = (pwm16_3_duty_reg[9:0]  == 10'd205) ? 1'b0 : 1'b1;  //COMP16
   assign pwm17_3_out = (pwm17_3_duty_reg[9:0]  == 10'd170) ? 1'b0 : 1'b1;  //COMP16
   assign pwm18_3_out = (pwm18_3_duty_reg[9:0]  == 10'd220) ? 1'b0 : 1'b1;  //COMP16
   assign pwm19_3_out = (pwm19_3_duty_reg[9:0]  == 10'd220) ? 1'b0 : 1'b1;  //COMP16
   assign pwm20_3_out = (pwm20_3_duty_reg[9:0]  == 10'd319) ? 1'b0 : 1'b1;  //COMP16
   assign pwm21_3_out = (pwm21_3_duty_reg[9:0]  == 10'd237) ? 1'b0 : 1'b1;  //COMP16
   assign pwm22_3_out = (pwm22_3_duty_reg[9:0]  == 10'd237) ? 1'b0 : 1'b1;  //COMP16
   assign pwm23_3_out = (pwm23_3_duty_reg[9:0]  == 10'd185) ? 1'b0 : 1'b1;  //COMP16
   assign pwm24_3_out = (pwm24_3_duty_reg[9:0]  == 10'd220) ? 1'b0 : 1'b1;  //COMP16
   assign pwm25_3_out = (pwm25_3_duty_reg[9:0]  == 10'd197) ? 1'b0 : 1'b1;  //COMP16
   assign pwm26_3_out = (pwm26_3_duty_reg[9:0]  == 10'd220) ? 1'b0 : 1'b1;  //COMP16
   assign pwm27_3_out = (pwm27_3_duty_reg[9:0]  == 10'd319) ? 1'b0 : 1'b1;  //COMP16
   assign pwm28_3_out = (pwm28_3_duty_reg[9:0]  == 10'd319) ? 1'b0 : 1'b1;  //COMP16
   assign pwm29_3_out = (pwm29_3_duty_reg[9:0]  == 10'd237) ? 1'b0 : 1'b1;  //COMP16
   assign pwm30_3_out = (pwm30_3_duty_reg[9:0]  == 10'd237) ? 1'b0 : 1'b1;  //COMP16
   assign pwm31_3_out = (pwm31_3_duty_reg[9:0]  == 10'd185) ? 1'b0 : 1'b1;  //COMP16
   assign pwm32_3_out = (pwm32_3_duty_reg[9:0]  == 10'd319) ? 1'b0 : 1'b1;  //COMP16
   assign pwm33_3_out = (pwm33_3_duty_reg[9:0]  == 10'd170) ? 1'b0 : 1'b1;  //COMP16
   assign pwm34_3_out = (pwm34_3_duty_reg[9:0]  == 10'd319) ? 1'b0 : 1'b1;  //COMP16
   assign pwm35_3_out = (pwm35_3_duty_reg[9:0]  == 10'd264) ? 1'b0 : 1'b1;  //COMP16
   assign pwm36_3_out = (pwm36_3_duty_reg[9:0]  == 10'd362) ? 1'b0 : 1'b1;  //COMP16
   assign pwm37_3_out = (pwm37_3_duty_reg[9:0]  == 10'd264) ? 1'b0 : 1'b1;  //COMP16
   assign pwm38_3_out = (pwm38_3_duty_reg[9:0]  == 10'd237) ? 1'b0 : 1'b1;  //COMP16
   assign pwm39_3_out = (pwm39_3_duty_reg[9:0]  == 10'd197) ? 1'b0 : 1'b1;  //COMP16
   assign pwm40_3_out = (pwm40_3_duty_reg[9:0]  == 10'd220) ? 1'b0 : 1'b1;  //COMP16
   assign pwm41_3_out = (pwm41_3_duty_reg[9:0]  == 10'd205) ? 1'b0 : 1'b1;  //COMP16
   assign pwm42_3_out = (pwm42_3_duty_reg[9:0]  == 10'd264) ? 1'b0 : 1'b1;  //COMP16
   assign pwm43_3_out = (pwm43_3_duty_reg[9:0]  == 10'd624) ? 1'b0 : 1'b1;  //COMP16
   assign pwm44_3_out = (pwm44_3_duty_reg[9:0]  == 10'd205) ? 1'b0 : 1'b1;  //COMP16
   assign pwm45_3_out = (pwm45_3_duty_reg[9:0]  == 10'd237) ? 1'b0 : 1'b1;  //COMP16
   assign pwm46_3_out = (pwm46_3_duty_reg[9:0]  == 10'd185) ? 1'b0 : 1'b1;  //COMP16
   assign pwm47_3_out = (pwm47_3_duty_reg[9:0]  == 10'd220) ? 1'b0 : 1'b1;  //COMP16
   assign pwm48_3_out = (pwm48_3_duty_reg[9:0]  == 10'd220) ? 1'b0 : 1'b1;  //COMP16
   assign pwm49_3_out = (pwm49_3_duty_reg[9:0] == 10'd220) ? 1'b0 : 1'b1;  //COMP16
	
   assign pwm1_4_out = (pwm1_4_duty_reg[9:0]  == 10'd264) ? 1'b0 : 1'b1;  //COMP16
   assign pwm2_4_out = (pwm2_4_duty_reg[9:0]  == 10'd264) ? 1'b0 : 1'b1;  //COMP16
   assign pwm3_4_out = (pwm3_4_duty_reg[9:0]  == 10'd264) ? 1'b0 : 1'b1;  //COMP16
   assign pwm4_4_out = (pwm4_4_duty_reg[9:0]  == 10'd319) ? 1'b0 : 1'b1;  //COMP16
   assign pwm5_4_out = (pwm5_4_duty_reg[9:0]  == 10'd362) ? 1'b0 : 1'b1;  //COMP16
   assign pwm6_4_out = (pwm6_4_duty_reg[9:0]  == 10'd319) ? 1'b0 : 1'b1;  //COMP16
   assign pwm7_4_out = (pwm7_4_duty_reg[9:0]  == 10'd197) ? 1'b0 : 1'b1;  //COMP16
   assign pwm8_4_out = (pwm8_4_duty_reg[9:0]  == 10'd237) ? 1'b0 : 1'b1;  //COMP16
   assign pwm9_4_out = (pwm9_4_duty_reg[9:0]  == 10'd463) ? 1'b0 : 1'b1;  //COMP16
   assign pwm10_4_out = (pwm10_4_duty_reg[9:0]  == 10'd319) ? 1'b0 : 1'b1;  //COMP16
   assign pwm11_4_out = (pwm11_4_duty_reg[9:0]  == 10'd205) ? 1'b0 : 1'b1;  //COMP16 
   assign pwm12_4_out = (pwm12_4_duty_reg[9:0]  == 10'd264) ? 1'b0 : 1'b1;  //COMP16 
   assign pwm13_4_out = (pwm13_4_duty_reg[9:0]  == 10'd220) ? 1'b0 : 1'b1;  //COMP16 
   assign pwm14_4_out = (pwm14_4_duty_reg[9:0]  == 10'd319) ? 1'b0 : 1'b1;  //COMP16 
   assign pwm15_4_out = (pwm15_4_duty_reg[9:0]  == 10'd220) ? 1'b0 : 1'b1;  //COMP16 
   assign pwm16_4_out = (pwm16_4_duty_reg[9:0]  == 10'd205) ? 1'b0 : 1'b1;  //COMP16
   assign pwm17_4_out = (pwm17_4_duty_reg[9:0]  == 10'd170) ? 1'b0 : 1'b1;  //COMP16
   assign pwm18_4_out = (pwm18_4_duty_reg[9:0]  == 10'd220) ? 1'b0 : 1'b1;  //COMP16
   assign pwm19_4_out = (pwm19_4_duty_reg[9:0]  == 10'd220) ? 1'b0 : 1'b1;  //COMP16
   assign pwm20_4_out = (pwm20_4_duty_reg[9:0]  == 10'd319) ? 1'b0 : 1'b1;  //COMP16
   assign pwm21_4_out = (pwm21_4_duty_reg[9:0]  == 10'd237) ? 1'b0 : 1'b1;  //COMP16
   assign pwm22_4_out = (pwm22_4_duty_reg[9:0]  == 10'd237) ? 1'b0 : 1'b1;  //COMP16
   assign pwm23_4_out = (pwm23_4_duty_reg[9:0]  == 10'd185) ? 1'b0 : 1'b1;  //COMP16
   assign pwm24_4_out = (pwm24_4_duty_reg[9:0]  == 10'd220) ? 1'b0 : 1'b1;  //COMP16
   assign pwm25_4_out = (pwm25_4_duty_reg[9:0]  == 10'd197) ? 1'b0 : 1'b1;  //COMP16
   assign pwm26_4_out = (pwm26_4_duty_reg[9:0]  == 10'd220) ? 1'b0 : 1'b1;  //COMP16
   assign pwm27_4_out = (pwm27_4_duty_reg[9:0]  == 10'd319) ? 1'b0 : 1'b1;  //COMP16
   assign pwm28_4_out = (pwm28_4_duty_reg[9:0]  == 10'd319) ? 1'b0 : 1'b1;  //COMP16
   assign pwm29_4_out = (pwm29_4_duty_reg[9:0]  == 10'd237) ? 1'b0 : 1'b1;  //COMP16
   assign pwm30_4_out = (pwm30_4_duty_reg[9:0]  == 10'd237) ? 1'b0 : 1'b1;  //COMP16
   assign pwm31_4_out = (pwm31_4_duty_reg[9:0]  == 10'd185) ? 1'b0 : 1'b1;  //COMP16
   assign pwm32_4_out = (pwm32_4_duty_reg[9:0]  == 10'd319) ? 1'b0 : 1'b1;  //COMP16
   assign pwm33_4_out = (pwm33_4_duty_reg[9:0]  == 10'd170) ? 1'b0 : 1'b1;  //COMP16
   assign pwm34_4_out = (pwm34_4_duty_reg[9:0]  == 10'd319) ? 1'b0 : 1'b1;  //COMP16
   assign pwm35_4_out = (pwm35_4_duty_reg[9:0]  == 10'd264) ? 1'b0 : 1'b1;  //COMP16
   assign pwm36_4_out = (pwm36_4_duty_reg[9:0]  == 10'd362) ? 1'b0 : 1'b1;  //COMP16
   assign pwm37_4_out = (pwm37_4_duty_reg[9:0]  == 10'd264) ? 1'b0 : 1'b1;  //COMP16
   assign pwm38_4_out = (pwm38_4_duty_reg[9:0]  == 10'd237) ? 1'b0 : 1'b1;  //COMP16
   assign pwm39_4_out = (pwm39_4_duty_reg[9:0]  == 10'd197) ? 1'b0 : 1'b1;  //COMP16
   assign pwm40_4_out = (pwm40_4_duty_reg[9:0]  == 10'd220) ? 1'b0 : 1'b1;  //COMP16
   assign pwm41_4_out = (pwm41_4_duty_reg[9:0]  == 10'd205) ? 1'b0 : 1'b1;  //COMP16
   assign pwm42_4_out = (pwm42_4_duty_reg[9:0]  == 10'd264) ? 1'b0 : 1'b1;  //COMP16
   assign pwm43_4_out = (pwm43_4_duty_reg[9:0]  == 10'd624) ? 1'b0 : 1'b1;  //COMP16
   assign pwm44_4_out = (pwm44_4_duty_reg[9:0]  == 10'd205) ? 1'b0 : 1'b1;  //COMP16
   assign pwm45_4_out = (pwm45_4_duty_reg[9:0]  == 10'd237) ? 1'b0 : 1'b1;  //COMP16
   assign pwm46_4_out = (pwm46_4_duty_reg[9:0]  == 10'd185) ? 1'b0 : 1'b1;  //COMP16
   assign pwm47_4_out = (pwm47_4_duty_reg[9:0]  == 10'd220) ? 1'b0 : 1'b1;  //COMP16
   assign pwm48_4_out = (pwm48_4_duty_reg[9:0]  == 10'd220) ? 1'b0 : 1'b1;  //COMP16
   assign pwm49_4_out = (pwm49_4_duty_reg[9:0] == 10'd220) ? 1'b0 : 1'b1;  //COMP16	


	//To transducers
	assign LED0 = (select_trans_reg[6:0] == 7'd0)? 1'b1 : 1'b0 ;
	assign LED1 = (select_trans_reg[6:0] == 7'd1)? 1'b1 : (select_trans_reg[6:0] == 7'd3)? 1'b1:1'b0 ;
	assign LED2 = (select_trans_reg[6:0] == 7'd2)? 1'b1 : 1'b0 ;

  assign trans1  = (select_trans_reg[6:0] == 7'd0)? pwm1_1_out : (select_trans_reg[6:0] == 7'd1)? pwm1_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm1_3_out : pwm1_4_out ;   
  assign trans2  = (select_trans_reg[6:0] == 7'd0)? pwm2_1_out : (select_trans_reg[6:0] == 7'd1)? pwm2_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm2_3_out : pwm2_4_out ;   
  assign trans3  = (select_trans_reg[6:0] == 7'd0)? pwm3_1_out : (select_trans_reg[6:0] == 7'd1)? pwm3_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm3_3_out : pwm3_4_out ;   
  assign trans4  = (select_trans_reg[6:0] == 7'd0)? pwm4_1_out : (select_trans_reg[6:0] == 7'd1)? pwm4_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm4_3_out : pwm4_4_out ;   
  assign trans5  = (select_trans_reg[6:0] == 7'd0)? pwm5_1_out : (select_trans_reg[6:0] == 7'd1)? pwm5_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm5_3_out : pwm5_4_out ;   
  assign trans6  = (select_trans_reg[6:0] == 7'd0)? pwm6_1_out : (select_trans_reg[6:0] == 7'd1)? pwm6_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm6_3_out : pwm6_4_out ;   
  assign trans7  = (select_trans_reg[6:0] == 7'd0)? pwm7_1_out : (select_trans_reg[6:0] == 7'd1)? pwm7_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm7_3_out : pwm7_4_out ;   
  assign trans8  = (select_trans_reg[6:0] == 7'd0)? pwm8_1_out : (select_trans_reg[6:0] == 7'd1)? pwm8_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm8_3_out : pwm8_4_out ;   
  assign trans9  = (select_trans_reg[6:0] == 7'd0)? pwm9_1_out : (select_trans_reg[6:0] == 7'd1)? pwm9_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm9_3_out : pwm9_4_out ;   
  assign trans10  = (select_trans_reg[6:0] == 7'd0)? pwm10_1_out : (select_trans_reg[6:0] == 7'd1)? pwm10_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm10_3_out : pwm10_4_out ;   
  assign trans11  = (select_trans_reg[6:0] == 7'd0)? pwm11_1_out : (select_trans_reg[6:0] == 7'd1)? pwm11_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm11_3_out : pwm11_4_out ;   
  assign trans12  = (select_trans_reg[6:0] == 7'd0)? pwm12_1_out : (select_trans_reg[6:0] == 7'd1)? pwm12_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm12_3_out : pwm12_4_out ;   
  assign trans13  = (select_trans_reg[6:0] == 7'd0)? pwm13_1_out : (select_trans_reg[6:0] == 7'd1)? pwm13_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm13_3_out : pwm13_4_out ;   
  assign trans14  = (select_trans_reg[6:0] == 7'd0)? pwm14_1_out : (select_trans_reg[6:0] == 7'd1)? pwm14_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm14_3_out : pwm14_4_out ;   
  assign trans15  = (select_trans_reg[6:0] == 7'd0)? pwm15_1_out : (select_trans_reg[6:0] == 7'd1)? pwm15_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm15_3_out : pwm15_4_out ;   
  assign trans16  = (select_trans_reg[6:0] == 7'd0)? pwm16_1_out : (select_trans_reg[6:0] == 7'd1)? pwm16_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm16_3_out : pwm16_4_out ;   
  assign trans17  = (select_trans_reg[6:0] == 7'd0)? pwm17_1_out : (select_trans_reg[6:0] == 7'd1)? pwm17_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm17_3_out : pwm17_4_out ;   
  assign trans18  = (select_trans_reg[6:0] == 7'd0)? pwm18_1_out : (select_trans_reg[6:0] == 7'd1)? pwm18_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm18_3_out : pwm18_4_out ;   
  assign trans19  = (select_trans_reg[6:0] == 7'd0)? pwm19_1_out : (select_trans_reg[6:0] == 7'd1)? pwm19_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm19_3_out : pwm19_4_out ;   
  assign trans20  = (select_trans_reg[6:0] == 7'd0)? pwm20_1_out : (select_trans_reg[6:0] == 7'd1)? pwm20_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm20_3_out : pwm20_4_out ;   
  assign trans21  = (select_trans_reg[6:0] == 7'd0)? pwm21_1_out : (select_trans_reg[6:0] == 7'd1)? pwm21_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm21_3_out : pwm21_4_out ;   
  assign trans22  = (select_trans_reg[6:0] == 7'd0)? pwm22_1_out : (select_trans_reg[6:0] == 7'd1)? pwm22_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm22_3_out : pwm22_4_out ;   
  assign trans23  = (select_trans_reg[6:0] == 7'd0)? pwm23_1_out : (select_trans_reg[6:0] == 7'd1)? pwm23_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm23_3_out : pwm23_4_out ;   
  assign trans24  = (select_trans_reg[6:0] == 7'd0)? pwm24_1_out : (select_trans_reg[6:0] == 7'd1)? pwm24_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm24_3_out : pwm24_4_out ;   
  assign trans25  = (select_trans_reg[6:0] == 7'd0)? pwm25_1_out : (select_trans_reg[6:0] == 7'd1)? pwm25_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm25_3_out : pwm25_4_out ;   
  assign trans26  = (select_trans_reg[6:0] == 7'd0)? pwm26_1_out : (select_trans_reg[6:0] == 7'd1)? pwm26_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm26_3_out : pwm26_4_out ;   
  assign trans27  = (select_trans_reg[6:0] == 7'd0)? pwm27_1_out : (select_trans_reg[6:0] == 7'd1)? pwm27_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm27_3_out : pwm27_4_out ;   
  assign trans28  = (select_trans_reg[6:0] == 7'd0)? pwm28_1_out : (select_trans_reg[6:0] == 7'd1)? pwm28_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm28_3_out : pwm28_4_out ;   
  assign trans29  = (select_trans_reg[6:0] == 7'd0)? pwm29_1_out : (select_trans_reg[6:0] == 7'd1)? pwm29_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm29_3_out : pwm29_4_out ;   
  assign trans30  = (select_trans_reg[6:0] == 7'd0)? pwm30_1_out : (select_trans_reg[6:0] == 7'd1)? pwm30_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm30_3_out : pwm30_4_out ;   
  assign trans31  = (select_trans_reg[6:0] == 7'd0)? pwm31_1_out : (select_trans_reg[6:0] == 7'd1)? pwm31_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm31_3_out : pwm31_4_out ;   
  assign trans32  = (select_trans_reg[6:0] == 7'd0)? pwm32_1_out : (select_trans_reg[6:0] == 7'd1)? pwm32_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm32_3_out : pwm32_4_out ;   
  assign trans33  = (select_trans_reg[6:0] == 7'd0)? pwm33_1_out : (select_trans_reg[6:0] == 7'd1)? pwm33_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm33_3_out : pwm33_4_out ;   
  assign trans34  = (select_trans_reg[6:0] == 7'd0)? pwm34_1_out : (select_trans_reg[6:0] == 7'd1)? pwm34_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm34_3_out : pwm34_4_out ;   
  assign trans35  = (select_trans_reg[6:0] == 7'd0)? pwm35_1_out : (select_trans_reg[6:0] == 7'd1)? pwm35_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm35_3_out : pwm35_4_out ;   
  assign trans36  = (select_trans_reg[6:0] == 7'd0)? pwm36_1_out : (select_trans_reg[6:0] == 7'd1)? pwm36_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm36_3_out : pwm36_4_out ;   
  assign trans37  = (select_trans_reg[6:0] == 7'd0)? pwm37_1_out : (select_trans_reg[6:0] == 7'd1)? pwm37_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm37_3_out : pwm37_4_out ;   
  assign trans38  = (select_trans_reg[6:0] == 7'd0)? pwm38_1_out : (select_trans_reg[6:0] == 7'd1)? pwm38_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm38_3_out : pwm38_4_out ;   
  assign trans39  = (select_trans_reg[6:0] == 7'd0)? pwm39_1_out : (select_trans_reg[6:0] == 7'd1)? pwm39_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm39_3_out : pwm39_4_out ;   
  assign trans40  = (select_trans_reg[6:0] == 7'd0)? pwm40_1_out : (select_trans_reg[6:0] == 7'd1)? pwm40_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm40_3_out : pwm40_4_out ;   
  assign trans41  = (select_trans_reg[6:0] == 7'd0)? pwm41_1_out : (select_trans_reg[6:0] == 7'd1)? pwm41_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm41_3_out : pwm41_4_out ;   
  assign trans42  = (select_trans_reg[6:0] == 7'd0)? pwm42_1_out : (select_trans_reg[6:0] == 7'd1)? pwm42_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm42_3_out : pwm42_4_out ;   
  assign trans43  = (select_trans_reg[6:0] == 7'd0)? pwm43_1_out : (select_trans_reg[6:0] == 7'd1)? pwm43_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm43_3_out : pwm43_4_out ;   
  assign trans44  = (select_trans_reg[6:0] == 7'd0)? pwm44_1_out : (select_trans_reg[6:0] == 7'd1)? pwm44_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm44_3_out : pwm44_4_out ;   
  assign trans45  = (select_trans_reg[6:0] == 7'd0)? pwm45_1_out : (select_trans_reg[6:0] == 7'd1)? pwm45_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm45_3_out : pwm45_4_out ;   
  assign trans46  = (select_trans_reg[6:0] == 7'd0)? pwm46_1_out : (select_trans_reg[6:0] == 7'd1)? pwm46_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm46_3_out : pwm46_4_out ;   
  assign trans47  = (select_trans_reg[6:0] == 7'd0)? pwm47_1_out : (select_trans_reg[6:0] == 7'd1)? pwm47_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm47_3_out : pwm47_4_out ;   
  assign trans48  = (select_trans_reg[6:0] == 7'd0)? pwm48_1_out : (select_trans_reg[6:0] == 7'd1)? pwm48_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm48_3_out : pwm48_4_out ;   
  assign trans49  = (select_trans_reg[6:0] == 7'd0)? pwm49_1_out : (select_trans_reg[6:0] == 7'd1)? pwm49_2_out : (select_trans_reg[6:0] == 7'd2) ? pwm49_3_out : pwm49_4_out ;   
endmodule
