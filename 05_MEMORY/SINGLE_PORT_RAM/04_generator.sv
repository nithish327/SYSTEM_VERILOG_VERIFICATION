class generator;
  mailbox g2d_mbx;
  
  function new(mailbox g2d_mbx);
    this.g2d_mbx = g2d_mbx;
  endfunction
  
  task run();
    transaction tr;
    
    repeat (50)begin
      tr = new();
      assert(tr.randomize())
      else begin
        $display("Randomization failed");
        $finish;
      end
      $display("GENERATOR : Time = %0t din = %0d addr = %0d cs= %0b w_en = %0b",$time,tr.din,tr.addr,tr.cs,tr.w_en);
      g2d_mbx.put(tr);
      #20;
    end
  endtask
endclass
  
