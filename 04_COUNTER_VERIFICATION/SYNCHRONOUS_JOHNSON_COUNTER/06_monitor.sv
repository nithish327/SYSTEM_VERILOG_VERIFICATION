class monitor;
  mailbox m2s_mbx;
  
  virtual jc_if vif;
  function new(mailbox m2s_mbx,virtual jc_if vif);
    this.m2s_mbx = m2s_mbx ;
    this .vif = vif;
  endfunction
  
  task run();
    transaction tr;
    forever begin
      tr = new();
      @(vif.mon_cb);
      tr.reset = vif.reset;
      tr.count = vif.count;
      m2s_mbx.put(tr);
      $display("MONITOR : Time = %0t reset = %0b count = %04b",$time,tr.reset,tr.count);

    end
  endtask
endclass
