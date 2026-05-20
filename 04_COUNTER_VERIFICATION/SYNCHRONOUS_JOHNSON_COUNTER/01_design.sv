module johnson_counter(input logic clk,
                      input logic reset,
                      output logic[3:0]count
                     );
  always_ff @(posedge clk)begin
    if(reset)
      count <= 4'b0000;
    else begin
      count<={count[2:0],~count[3]};
    end


  end
endmodule
