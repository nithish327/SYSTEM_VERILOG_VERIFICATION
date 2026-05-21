class driver;
  mailbox g2d_mbx;
  
  virtual jc_if vif;
  
  function new(mailbox g2d_mbx,virtual jc_if vif);
    this.g2d_mbx = g2d_mbx;
    this.vif = vif;
  endfunction
  
  task run();
    transaction tr;
    forever begin
      g2d_mbx.get(tr);
      @(vif.drv_cb);
      vif.reset <= tr.reset;
      $display("DRIVER : Time = %0t reset = %0b",$time,tr.reset);

      
    end
  endtask
endclass
    
