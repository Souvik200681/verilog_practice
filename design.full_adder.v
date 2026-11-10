// design_full_adder
module full_adder(
  input wire a,b,c,
  output wire sum,cout
);
  wire temp1=a^b;
  assign sum=temp1^c;
  assign cout=(a&b)|(temp1&c);
endmodule