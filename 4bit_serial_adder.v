module four_bit_serial_adder(input [3:0]a,b,
input clk,reset,
output  [4:0]out,output  [3:0]counter,
output c,a0,b0,s,cin,cout);

load_bit ins(clk,cout,a,b,reset,a0,b0,cin);
adder in (clk,a0,b0,cin,reset,s,cout);
store  i (clk,s,reset,cin,out,counter);

endmodule