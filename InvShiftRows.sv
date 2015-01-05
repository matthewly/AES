module InvShiftRows(
		input clk,
		input [0:127] text_in,
		output [0:127] text_out
);

	assign text_out = {text_in[0:7], text_in[104:111], text_in[80:87], text_in[56:63], 
							text_in[32:39], text_in[8:15], text_in[112:119], text_in[88:95],
							text_in[64:71], text_in[40:47], text_in[16:23], text_in[120:127],
							text_in[96:103], text_in[72:79], text_in[48:55], text_in[24:31]};


endmodule
