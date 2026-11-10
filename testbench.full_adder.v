testbench.full_adder
module testbench;
  reg a,b,c;
  wire sum,cout;
  full_adder dut(.a(a), .b(b),.c(c), .sum(sum), .cout(cout));
  
  initial
    $monitor("Time=%0t a=%b b=%b sum=%b cout=%b", $time, a, b, sum,cout);
             
  initial begin
    a = 0; b = 0; c=0; #10;
    a = 0; b = 0; c=1; #10;
    a = 0; b = 1; c=0; #10;
    a = 0; b = 1; c=1; #10;
    a = 1; b = 0; c=0; #10;
    a = 1; b = 0; c=1; #10;
    a = 1; b = 1; c=0; #10;
    a = 1; b = 1; c=1; #10;
    
    
    $display("TEST COMPLETE");
    $finish;
    
      
  end
endmodule             
    
