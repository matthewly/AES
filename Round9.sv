module Round9(
		input Clk,
		input [0:127] round_key,
		input [0:127] text_in,
		output [0:127] text_out
);

	logic [0:127] text_wire1;
	logic [0:127] text_wire2;
	logic [0:127] text_wire3;


	InvAddRoundKey AddRoundKey_instance(
		.clk(Clk),
		.round_key(round_key),
		.text_in(text_in),
		.text_out(text_wire1)
	);
	
	InvMixColumns InvMixColums_instance0(
		.in(text_wire1[0:31]),
		.out(text_wire2[0:31])
	);
	
	InvMixColumns InvMixColums_instance1(
		.in(text_wire1[32:63]),
		.out(text_wire2[32:63])
	);
	
	InvMixColumns InvMixColums_instance2(
		.in(text_wire1[64:95]),
		.out(text_wire2[64:95])
	);
	
	InvMixColumns InvMixColums_instance3(
		.in(text_wire1[96:127]),
		.out(text_wire2[96:127])
	);
	
	InvShiftRows InvShiftRows_instance(
		.clk(Clk),
		.text_in(text_wire2),
		.text_out(text_wire3)
	);
	
	InvSubByte InvSubByte_instance( 
		.clk(Clk),
		.in(text_wire3),		  
		.out(text_out)         
	);
endmodule
