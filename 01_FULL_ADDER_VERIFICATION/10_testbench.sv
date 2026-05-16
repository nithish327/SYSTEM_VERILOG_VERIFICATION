`include "interface.sv"
`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "reference.sv"
`include "scoreboard.sv"
`include "environment.sv"
module full_adder_tb;
  // environment handle
  environment env;
  
  // interface instance
  fa_if vif();
  
  // fulladder DUT
  full_adder dut(.a(vif.a), .b(vif.b),.cin(vif.cin), .sum(vif.sum), .cout(vif.cout));
  
  initial begin
    env= new(vif);
    env.run();
  end
endmodule
    
