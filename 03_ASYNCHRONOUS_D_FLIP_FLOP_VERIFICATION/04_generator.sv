class generator;
  mailbox g2d;
  event next;
  function new(mailbox g2d,event next);
    this.g2d = g2d;
    this.next = next;
  endfunction
  
  task run();
    transaction tr;
    
    repeat(20)begin
    tr = new();
      assert(tr.randomize());
      $display("GENERATOR : Time =%0t d = %0d",$time,tr.d);
      g2d.put(tr);
      @(next);
    end
  endtask
endclass
