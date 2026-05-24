class monitor;
  mailbox m2s_mbx;
  
  virtual sp_ram_if vif;
  
  function new(mailbox m2s_mbx,virtual sp_ram_if vif);
    this.m2s_mbx = m2s_mbx;
    this.vif = vif;
  endfunction
  
  task run();
    transaction tr;
    forever begin
      @(vif.mon_cb);
      tr = new();
      tr.din = vif.mon_cb.din;
      tr.addr = vif.mon_cb.addr;
      tr.cs = vif.mon_cb.cs;
      tr.w_en = vif.mon_cb.w_en;
      tr.dout = vif.mon_cb.dout;
      $display("MONITOR   : Time = %0t din = %0d addr = %0d cs= %0b w_en = %0b  dout = %0d",$time,tr.din,tr.addr,tr.cs,tr.w_en,tr.dout);
      m2s_mbx.put(tr);
      
    end
  endtask
endclass
      
