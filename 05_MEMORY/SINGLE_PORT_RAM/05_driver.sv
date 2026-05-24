class driver;
  mailbox g2d_mbx;
  virtual sp_ram_if vif;
  
  function new(mailbox g2d_mbx,virtual sp_ram_if vif);
    this.g2d_mbx = g2d_mbx;
    this.vif = vif;
  endfunction
  
  task run();
    transaction tr;
    
    forever begin
      g2d_mbx.get(tr);
      @(vif.drv_cb);
      vif.drv_cb.din <= tr.din;
      vif.drv_cb.addr <= tr.addr;
      vif.drv_cb.cs <= tr.cs;
      vif.drv_cb.w_en <= tr.w_en;
      
      $display("DRIVER    : Time = %0t din = %0d addr = %0d cs= %0b w_en = %0b",$time,tr.din,tr.addr,tr.cs,tr.w_en);
     
        
    end
  endtask
endclass
  
