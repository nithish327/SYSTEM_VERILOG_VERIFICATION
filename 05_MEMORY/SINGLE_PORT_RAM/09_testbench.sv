`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "interface.sv"
`include "monitor.sv"
`include "scoreboard.sv"
`include "environment.sv"
module tb;
  
  single_port_ram dut (.clk(vif.clk), .din(vif.din),.cs(vif.cs),.w_en(vif.w_en),  .addr(vif.addr),.dout(vif.dout));
  
  sp_ram_if vif();
  
  environment env;
  
  always #10 vif.clk= ~vif.clk;
  
  initial begin
    
    vif.clk = 1;
    vif.cs =0;
    vif.din = 0;
    #20;
    env = new(vif);
    env.run();
    #1000;
    $finish;
    
  end
  initial begin
    $dumpfile("single_port_ram.vcd");
    $dumpvars(0,tb);
  end
endmodule
