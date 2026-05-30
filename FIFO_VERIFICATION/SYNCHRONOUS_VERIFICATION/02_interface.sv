interface fifo_if #(parameter N=8);
  logic clk,rst;
  logic [N-1:0]d_in;
  logic w_en,r_en;
  logic [N-1:0]d_out;
  logic full;
  logic empty;
  
  clocking drv_cb @(posedge clk);
    default input #1step output #0;
    output rst;
    output d_in;
    output w_en;
    output r_en;
    input full;
    input empty;
    input d_out;
  endclocking
  
  clocking mon_cb @(posedge clk);
    default input #0;
    input rst;
    input d_in;
    input w_en;
    input r_en;
    input #1step full;
    input #1step empty;
    input d_out;
  endclocking
  
endinterface
  
