module single_port_ram #(parameter N = 4,DEPTH = 8)
  (input logic [N-1:0]din,
   input logic clk,cs,w_en,
   input logic [$clog2(DEPTH)-1:0]addr,
   output logic [N-1:0]dout
  );
  logic [N-1:0]mem[DEPTH-1:0];
  
  always_ff @(posedge clk) begin
    if(cs && w_en)
        mem[addr] <= din;
    else if(cs && !w_en)
        dout <= mem[addr];
  end
endmodule
  
