module LEDkr(
input clk,
input rs,
output reg [7:0] led
);
integer dir=0;
//khoi tuan tu
always @(posedge clk,posedge rs)
begin 
if(rs)
begin
led<=1 ;
dir<=0;
end
else
begin
if(dir==0)led<=led<<1;
if(led[6]==1)dir<=1;
if(dir==1) led<=led>>1;
if(led==2)dir<=0;
end
end
endmodule

