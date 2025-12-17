module store(input clk,s,reset,c,output reg [4:0]q,
output reg [3:0]counter);

always@(posedge clk,posedge reset)begin
if(reset)begin
q=0;
counter=0;
end
else begin
    if(counter<5 && counter>0)begin
        q[counter-1]<=s;
        counter=counter+1;
        end
     else if(counter==0)begin
     counter<=counter+1;
     end
        else if(counter==5)begin
            q[counter-1]<=c;
            counter=counter+1;
            end
      else
      q<=q;
      

        end
        end
endmodule