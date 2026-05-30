class generator;
  mailbox g2d_mbx ;
  
  function new(mailbox g2d_mbx);
    this.g2d_mbx = g2d_mbx;
  endfunction
  
  task run();
    transaction tr;
    repeat (50)begin
      tr =new();
      assert(tr.randomize())
        begin
          g2d_mbx.put(tr);
          tr.display("GENERATOR");
        end
      else
        $display("Randomization Failed");
      #10;
    end
  endtask
endclass
      
