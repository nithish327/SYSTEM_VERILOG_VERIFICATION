class driver;
  mailbox g2d_mbx;
  virtual fifo_if vif;
  
  function new(mailbox g2d_mbx, virtual fifo_if vif);
    this.g2d_mbx = g2d_mbx;
    this.vif = vif;
  endfunction
  
  task run();
    transaction tr;
    forever begin
      g2d_mbx.get(tr);
      @(vif.drv_cb);
      vif.drv_cb.rst <= tr.rst;
      vif.drv_cb.d_in <= tr.d_in;
      vif.drv_cb.w_en <= tr.w_en;
      vif.drv_cb.r_en <= tr.r_en;
      
      tr.display("DRIVER");
    end
      
  endtask
endclass
      
