module synchronous_fifo #(parameter N=8)(input clk,rst,
                                         input [N-1:0]d_in,
                                         input w_en,r_en,
                                         output reg [N-1:0]d_out,
                                         output full,
                                         output empty
                                         );
  reg [$clog2(N)-1:0]w_ptr,r_ptr;
  reg [N-1:0]mem[0:N-1];
  always @ (posedge clk )begin
    if(rst)begin
      w_ptr<=0;
    end
    else if (w_en ==1 && !full)begin
      mem[w_ptr]<= d_in;
      w_ptr <= w_ptr+1;
    end
  end
  always @ (posedge clk )begin
    
    if(rst)
      r_ptr <=0;
    else if (r_en ==1 && !empty)begin
      d_out <= mem[r_ptr];
      r_ptr<= r_ptr+1;
    end
  end
  assign full =(w_ptr+1==r_ptr);
  assign empty =(w_ptr==r_ptr)||rst;
endmodule
