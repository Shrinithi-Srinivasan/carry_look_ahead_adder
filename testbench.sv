module CARRY_LOOK_ADD_TB;	
  reg [3:0] a;
  reg [3:0] b;
  reg cin;
  wire [3:0] sum;
  wire cout;
  CARRY_LOOK_ADD cla_inst (.sum(sum),.cout(cout),.a(a),.b(b),.cin(cin));
	initial begin
		a = 0; b = 0; cin = 0; #5
        a = 0; b = 0; cin = 1; #5; 
    	a = 0; b = 1; cin = 0; #5; 
    	a = 0; b = 1; cin = 1; #5; 
    	a = 1; b = 0; cin = 0; #5; 
        a = 1; b = 0; cin = 1; #5; 
    	a = 1; b = 1; cin = 0; #5; 
    	a = 1; b = 1; cin = 1; #5; 
		#10;
	end
  	initial begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
endmodule

