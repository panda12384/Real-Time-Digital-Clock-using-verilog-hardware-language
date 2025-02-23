// Code your design here
module RTDC(input rst,clk,output reg [6:0] hr_m,hr_l,min_m,min_l,sec_m,sec_l);
reg[3:0]count1,count2,count3,count4,count5,count6;
always@(negedge clk)
begin
if(rst==1)
begin
count1<=0;
count2<=0;
count3<=0;
count4<=0;
count5<=0;
count6<=0;
end
else 
begin
count2<=count2+1;
if(count2==9)
begin
count2<=0;
count1<=count1+1;
if({count1,count2}==59)
begin
{count1,count2}<=0;
count4<=count4+1;
if(count4==9)
begin
count4<=0;
count3<=count3+1;
if({count3,count4}==59)
begin
{count3,count4}<=0;
count6<=count6+1;
if(count6==9)
begin
count6<=0;
count5=count5+1;
if({count5,count6}==23)
begin
{count5,count6}<=0;
end
end
end
end
end
end
end
end
always@(count1 or count2 or count3 or count4 or count5 or count6)
begin
case(count1)
0:sec_m=7'b0000001;
1:sec_m=7'b1001111;
2:sec_m=7'b0010010;
3:sec_m=7'b0000110;
4:sec_m=7'b1001100;
5:sec_m=7'b0100100;
6:sec_m=7'b0100000;
7:sec_m=7'b0001111;
8:sec_m=7'b0000000;
9:sec_m=7'b0000100;
default:sec_m=7'b1111111;
endcase
case(count2)
0:sec_l=7'b0000001;
1:sec_l=7'b1001111;
2:sec_l=7'b0010010;
3:sec_l=7'b0000110;
4:sec_l=7'b1001100;
5:sec_l=7'b0100100;
6:sec_l=7'b0100000;
7:sec_l=7'b0001111;
8:sec_l=7'b0000000;
9:sec_l=7'b0000100;
default:sec_l=7'b1111111;
endcase
case(count3)
0:min_m=7'b0000001;
1:min_m=7'b1001111;
2:min_m=7'b0010010;
3:min_m=7'b0000110;
4:min_m=7'b1001100;
5:min_m=7'b0100100;
6:min_m=7'b0100000;
7:min_m=7'b0001111;
8:min_m=7'b0000000;
9:min_m=7'b0000100;
default:min_m=7'b1111111;
endcase
case(count4)
0:min_l=7'b0000001;
1:min_l=7'b1001111;
2:min_l=7'b0010010;
3:min_l=7'b0000110;
4:min_l=7'b1001100;
5:min_l=7'b0100100;
6:min_l=7'b0100000;
7:min_l=7'b0001111;
8:min_l=7'b0000000;
9:min_l=7'b0000100;
default:min_m=7'b1111111;
endcase
case(count5)
0:hr_m=7'b0000001;
1:hr_m=7'b1001111;
2:hr_m=7'b0010010;
3:hr_m=7'b0000110;
4:hr_m=7'b1001100;
5:hr_m=7'b0100100;
6:hr_m=7'b0100000;
7:hr_m=7'b0001111;
8:hr_m=7'b0000000;
9:hr_m=7'b0000100;
default:hr_m=7'b1111111;
endcase
case(count6)
0:hr_l=7'b0000001;
1:hr_l=7'b1001111;
2:hr_l=7'b0010010;
3:hr_l=7'b0000110;
4:hr_l=7'b1001100;
5:hr_l=7'b0100100;
6:hr_l=7'b0100000;
7:hr_l=7'b0001111;
8:hr_l=7'b0000000;
9:hr_l=7'b0000100;
default:hr_l=7'b1111111;
endcase
end
endmodule
