class monitor;
  mailbox m2s;
  event done;
  virtual dff_if vif;

  function new(mailbox m2s,virtual dff_if vif,event done);
    this.m2s = m2s;
    this.vif = vif;
    this.done = done;
  endfunction
  
  task run();
    transaction tr;
    repeat (20)begin
      @(vif.mon_cb);
      #1;
      tr = new();
      tr.d = vif.d;
      tr.reset = vif.reset;
      tr.q = vif.q;
      m2s.put(tr);
      ->done;
      $display("MONITOR   : Time =%0t d = %0d q = %0d",$time,vif.d,vif.q);
    end
  endtask
endclass
