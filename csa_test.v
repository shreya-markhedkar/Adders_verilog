//test bench
module csa_4bit_test_20bei0040();
reg [3:0]a ,b;
wire [7:0]p;
reg [7:0]check;
csa_4bit_20bei0040 uut(a,b,p);
initial repeat(10) begin
    a=$random;
    b=$random;
    check=a*b; 
    #10
    $display($time,"> %d x %d = %d (%d)",a,b,p,check);
   end
endmodule
