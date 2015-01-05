module Rounds(
		input Clk,
		input [0:127] round_key,
		input [0:127] text_in,
		output [0:127] text_out
);

	logic [127:0] text_wire1;
	logic [127:0] text_wire2;
	logic [127:0] text_wire3;
	logic [127:0] text_wire4;
	logic [127:0] text_wire5;
	logic [127:0] text_wire6;
	logic [127:0] text_wire7;
	logic [127:0] text_wire8;
	
	Round1 Round1_instance0(
		.Clk(Clk),
		.round_key(round_key),
		.text_in(text_in),
		.text_out(text_out)
	);
/*
	Round1 Round1_instance0(
		.Clk(Clk),
		.round_key(round_key),
		.text_in(text_in),
		.text_out(text_wire1)
	);
	
	
	Round2 Round2_instance1(
		.Clk(Clk),
		.round_key(round_key),
		.text_in(text_wire1),
		.text_out(text_wire2)
	);

	
	Round3 Round3_instance2(
		.Clk(Clk),
		.round_key(round_key),
		.text_in(text_wire2),
		.text_out(text_wire3)
	);
	
	Round4 Round4_instance3(
		.Clk(Clk),
		.round_key(round_key),
		.text_in(text_wire3),
		.text_out(text_wire4)
	);
	
	Round5 Round5_instance4(
		.Clk(Clk),
		.round_key(round_key),
		.text_in(text_wire4),
		.text_out(text_wire5)
	);
	
	Round6 Round6_instance5(
		.Clk(Clk),
		.round_key(round_key),
		.text_in(text_wire5),
		.text_out(text_wire6)
	);
	
	Round7 Round7_instance6(
		.Clk(Clk),
		.round_key(round_key),
		.text_in(text_wire6),
		.text_out(text_wire7)
	);
	
	Round8 Round8_instance7(
		.Clk(Clk),
		.round_key(round_key),
		.text_in(text_wire7),
		.text_out(text_wire8)
	);
	
	Round9 Round9_instance8(
		.Clk(Clk),
		.round_key(round_key),
		.text_in(text_wire8),
		.text_out(text_out)
	);
	*/

endmodule
