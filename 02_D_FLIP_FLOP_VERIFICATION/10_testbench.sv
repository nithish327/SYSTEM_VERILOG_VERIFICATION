`include "transaction.sv"
`include "interface.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "reference.sv"
`include "scoreboard.sv"
`include "environment.sv"

module tb;
  
  dff_if vif();
  
  d_ff dut (.clk(vif.clk), .reset(vif.reset), .d(vif.d), .q(vif.q));
  
  environment env;
  
  always #5 vif.clk = ~vif.clk;
  
  initial begin

    vif.clk = 0;
    vif.reset = 1;
    vif.d = 0;
    repeat(2)@(posedge vif.clk);
    vif.reset = 0;
    
    env = new(vif);
    env.run();
    #200;
    $finish;
  end
  initial begin 
        
    $dumpfile("dff.vcd");
    $dumpvars(0,tb);
  end
endmodule
