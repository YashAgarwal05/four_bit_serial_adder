module load_bit(input clk,c,input [3:0]a,b,
input reset,
output reg a0,b0,c0);
reg [2:0]counter;

    always@(posedge clk,posedge reset)begin
        if(reset)begin
            a0=0;
            b0=0;
            counter=0;
            c0=0;
        end
        else 
        begin
        if(counter<4)begin
        a0<=a[counter];
        b0<=b[counter];
        counter<=counter+1;
        c0<=c;
        end
        else begin
        a0<=0;
        b0<=0;
        c0<=c;
        end
        
    end
    end
    
endmodule