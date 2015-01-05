module InvSubByte(
	input clk,
	input [0:127] a,
	output logic [0:127] b
);

logic [0:127] text;

	Inv_SubBytes Inv_SubBytes_instance0( 
		.clk(Clk),
		.in(a[0:7]),		  
		.out(b[0:7])      
	);
	
		Inv_SubBytes Inv_SubBytes_instance1( 
		.clk(Clk),
		.in(a[8:15]),		
		.out(b[8:15])   
	);
		Inv_SubBytes Inv_SubBytes_instance2( 
		.clk(Clk),
		.in(a[16:23]),		
		.out(b[16:23])      
	);
		Inv_SubBytes Inv_SubBytes_instance3( 
		.clk(Clk),
		.in(a[24:31]),		
		.out(b[24:31])        
	);
		Inv_SubBytes Inv_SubBytes_instance4( 
		.clk(Clk),
		.in(a[32:39]),		
		.out(b[32:39])       
	);
		Inv_SubBytes Inv_SubBytes_instance5( 
		.clk(Clk),
		.in(a[40:47]),		 
		.out(b[40:47])      
	);
		Inv_SubBytes Inv_SubBytes_instance6( 
		.clk(Clk),
		.in(a[48:55]),		
		.out(b[48:55])       
	);
		Inv_SubBytes Inv_SubBytes_instance7( 
		.clk(Clk),
		.in(a[56:63]),		
		.out(b[56:63])       
	);
		Inv_SubBytes Inv_SubBytes_instance8( 
		.clk(Clk),
		.in(a[64:71]),		 
		.out(b[64:71])       
	);
		Inv_SubBytes Inv_SubBytes_instance9( 
		.clk(Clk),
		.in(a[72:79]),		  
		.out(b[72:79])      
	);
		Inv_SubBytes Inv_SubBytes_instance10( 
		.clk(Clk),
		.in(a[80:87]),		 
		.out(b[80:87])     
	);
		Inv_SubBytes Inv_SubBytes_instance11( 
		.clk(Clk),
		.in(a[88:95]),		 
		.out(b[88:95])      
	);
		Inv_SubBytes Inv_SubBytes_instance12( 
		.clk(Clk),
		.in(a[96:103]),		 
		.out(b[96:103])         
	);
		Inv_SubBytes Inv_SubBytes_instance13( 
		.clk(Clk),
		.in(a[104:111]),		
		.out(b[104:111])       
	);
		Inv_SubBytes Inv_SubBytes_instance14( 
		.clk(Clk),
		.in(a[112:119]),		  
		.out(b[112:119])         
	);
		Inv_SubBytes Inv_SubBytes_instance15( 
		.clk(Clk),
		.in(a[120:127]),		 
		.out(b[120:127])       
	);
	
	
endmodule
