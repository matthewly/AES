/* AES.sv
   ECE 298 Fall 2013
*/

 //AES module interface with all ports, commented for Week 1
module  AES ( input  [127:0]  Plaintext,
                              Cipherkey,
              input           Clk, 
                              Reset,
							         Run,
              output [127:0]  Ciphertext,
              output          Ready  );

// Partial interface for Week 1
// Splitting the signals into 32-bit ones for compatibility with ModelSim
/*module  AES ( input clk,
			  input  [0:31]  Cipherkey_0, Cipherkey_1, Cipherkey_2, Cipherkey_3,
              output [0:31]  keyschedule_out_0, keyschedule_out_1, keyschedule_out_2, keyschedule_out_3 );					 */
					 
	logic [0:1407] keyschedule;	 
	logic [0:127] round_key;
	logic [127:0] Plaintext1;
	logic [127:0] Plaintext2;
	logic [127:0] Plaintext3;
	logic [127:0] Plaintext4;
					 
	/*week1 KeyExpansion keyexpansion_0(
	.*, .Cipherkey({Cipherkey_0, Cipherkey_1, Cipherkey_2, Cipherkey_3}),
	.KeySchedule(keyschedule)); */
	
	KeyExpansion keyexpansion_1(
	.clk(Clk),
	.Cipherkey(Cipherkey),
	.KeySchedule(keyschedule)
	);
	
	//assign {keyschedule_out_0, keyschedule_out_1, keyschedule_out_2, keyschedule_out_3} = keyschedule[1280:1407];		
	
	assign  round_key = keyschedule[1280:1407];
//	assign  Ciphertext = keyschedule[1280:1407];




	
	InvAddRoundKey AddRoundKey_instance0(
		.clk(Clk),
		.round_key(round_key),
		.text_in(Plaintext),
		.text_out(Plaintext1)
	);
	
	Rounds Rounds_instance(
		.Clk(Clk),
		.round_key(round_key),
		.text_in(Plaintext1),
		.text_out(Ciphertext)
	);
/*	
	Rounds Rounds_instance(
		.Clk(Clk),
		.round_key(round_key),
		.text_in(Plaintext1),
		.text_out(Plaintext2)
	);
	
	
	InvShiftRows InvShiftRows_instance0(
		.clk(Clk),
		.text_in(Plaintext2),
		.text_out(Plaintext3)
	);
	
	
	InvSubByte InvSubByte_instance0( 
		.clk(Clk),
		.in(Plaintext3),		  
		.out(Plaintext4)         
	);
	
	
	InvAddRoundKey AddRoundKey_instance(
		.clk(Clk),
		.round_key(round_key),
		.text_in(Plaintext4),
		.text_out(Ciphertext)
	);
	
*/
		 		
	
endmodule