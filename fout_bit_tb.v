module fout_bit_tb();
reg clk,reset;
reg [3:0] a,b;
wire [4:0] out;
wire a0,b0,s,cin,cout;
wire [3:0]counter;
four_bit_serial_adder uut(.clk(clk),.a(a),.b(b),.out(out),.a0(a0),.b0(b0),.s(s),
.cin(cin),.cout(cout),.counter(counter),.reset(reset));
initial clk=0;
always #5 clk=~clk;
initial begin
a=4'b1100;
b=4'b0110;
reset=1;
#10 reset=0;a=4'b1100;
b=4'b0110;
#100
$finish;
end
endmodule