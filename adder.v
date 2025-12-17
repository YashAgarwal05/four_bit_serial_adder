module adder(input clk,a,b,cin,reset,output  s,
output reg c);
    assign s=a^b^cin;
always@(posedge clk,posedge reset)begin
    if(reset)begin
        c=0;
        end
    else begin
         c<=a&b | cin&(a^b);
         end
         end
endmodule
