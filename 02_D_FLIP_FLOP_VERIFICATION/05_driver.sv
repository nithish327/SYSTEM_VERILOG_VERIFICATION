class driver;
  mailbox g2d;
  
  virtual dff_if vif;
  
  function new(mailbox g2d,virtual dff_if vif);
    this.g2d = g2d;
    this.vif = vif;
  endfunction
  
  task run();
    transaction tr;
    repeat (20)begin
      g2d.get(tr);
      @(negedge vif.clk);
      vif.drv_cb.reset <= tr.reset;
      vif.drv_cb.d <= tr.d;
      $display("DRIVER    : Time =%0t d = %0d",$time,tr.d);
      
    end
  endtask
endclass
    
