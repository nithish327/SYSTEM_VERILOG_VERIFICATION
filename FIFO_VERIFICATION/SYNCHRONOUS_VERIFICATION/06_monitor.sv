class monitor;
  mailbox m2s_mbx;
  virtual fifo_if vif;
  
  function new(mailbox m2s_mbx, virtual fifo_if vif);
    this.m2s_mbx = m2s_mbx;
    this.vif = vif;
  endfunction
  
  task run();
    transaction tr;
    forever begin
      
      tr= new();
      @(vif.mon_cb);
      
      tr.rst = vif.mon_cb.rst;
      tr.d_in = vif.mon_cb.d_in;
      tr.w_en = vif.mon_cb.w_en;
      tr.r_en = vif.mon_cb.r_en;
      tr.full = vif.mon_cb.full;
      tr.empty = vif.mon_cb.empty;
      tr.d_out = vif.mon_cb.d_out;
      
      m2s_mbx.put(tr);
      
      tr.display("MONITOR");
    end
      
  endtask
endclass
      
