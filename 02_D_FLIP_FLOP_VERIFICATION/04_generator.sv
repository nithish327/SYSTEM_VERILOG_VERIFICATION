class generator;
  mailbox g2d;
  mailbox g2r;
  event next;
  function new(mailbox g2d,mailbox g2r,event next);
    this.g2d = g2d;
    this.g2r = g2r;
    this.next = next;
  endfunction
  
  task run();
    transaction tr;
    
    repeat(20)begin
    tr = new();
      assert(tr.randomize());
      $display("GENERATOR : Time =%0t d = %0d",$time,tr.d);
      g2d.put(tr);
      g2r.put(tr);
      @(next);
    end
  endtask
endclass
