`include "interface.sv"
`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "fifo_agent.sv"
`include "scoreboard.sv"
`include "environment.sv"
`include "test.sv"

module tb #(parameter N = 8);

  fifo_if #(N) vif();

  synchronous_fifo #(N) dut(
    .clk(vif.clk),
    .rst(vif.rst),
    .d_in(vif.d_in),
    .w_en(vif.w_en),
    .r_en(vif.r_en),
    .d_out(vif.d_out),
    .full(vif.full),
    .empty(vif.empty)
  );

  test t;

  initial begin
    $dumpfile("v.vcd");
    $dumpvars;
    vif.clk = 1;
    forever #5 vif.clk = ~vif.clk;
  end

  initial begin
    vif.rst=1;
    @(posedge vif.clk);
    t = new(vif);
    t.run();
  end

  initial begin
    #510;
    $finish;
  end

endmodule
