interface dff_if;
  logic clk;
  logic reset;
  logic d;
  logic q;
  
  clocking drv_cb @(posedge clk);

    output d;
    output reset;
    input q;

  endclocking

  clocking mon_cb @(posedge clk);

    input d;
    input reset;
    input q;

  endclocking
endinterface
