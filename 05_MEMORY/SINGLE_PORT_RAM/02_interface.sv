interface sp_ram_if #(parameter N = 4,DEPTH = 8);
  logic clk;
  logic [N-1:0]din;
  logic cs;
  logic w_en;
  logic [$clog2(DEPTH)-1:0]addr;
  logic [N-1:0]dout;
  
  clocking drv_cb @(posedge clk);
    default input #1 output #1;
    output din;
    output cs;
    output w_en;
    output addr;
    input dout;
  endclocking
  
  clocking mon_cb @(posedge clk);
    default input #0;
    input din;
    input addr;
    input cs;
    input w_en;
    input dout;
  endclocking
  
endinterface
  
