interface jc_if;
  logic clk;
  logic reset;
  logic [3:0] count;
  
  clocking drv_cb @( negedge clk);
    default input #1 output #0;
    output reset;
  endclocking
  
  clocking mon_cb @(posedge clk);
    default input #1 output #0;
    input reset;
    input count;
  endclocking
  
endinterface
