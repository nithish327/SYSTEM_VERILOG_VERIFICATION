`include "interface.sv"
`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"
`include "environment.sv"
module tb;
  
  bit clk;
  
  jc_if vif();
  
  johnson_counter dut (.clk(clk),.reset(vif.reset),.count(vif.count));
  
  environment env;
  
  always #10 begin
    clk = ~clk;
    vif.clk=clk;
    
  end
  
  initial begin
    
    clk = 0;
    vif.reset = 1;
    #20;
    env = new(vif);
    env.run();
    #600;
    $finish;
    
  end
  initial begin
    $dumpfile("johnson_counter.vcd");
    $dumpvars(0,tb);
  end
endmodule
    
