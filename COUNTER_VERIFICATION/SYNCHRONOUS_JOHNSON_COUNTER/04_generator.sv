class generator;
  mailbox g2d_mbx;
  
  function new(mailbox g2d_mbx);
    this.g2d_mbx = g2d_mbx;
  endfunction
  
  task run();
    transaction tr;
    repeat (30) begin
      tr = new();
      if(tr.randomize())
        g2d_mbx.put(tr);
      else
        $display("Randomiztion Fails");
      $display("GENERATOR : Time = %0t reset = %0b",$time,tr.reset);
      #20;
    end
  endtask
endclass
