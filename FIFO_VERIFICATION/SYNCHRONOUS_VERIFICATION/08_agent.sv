class fifo_agent;
  driver drv;
  monitor mon;
  
  mailbox g2d_mbx;
  mailbox m2s_mbx;
  
  virtual fifo_if vif;
  
  function new(mailbox g2d_mbx,mailbox m2s_mbx,virtual fifo_if vif);
    this.g2d_mbx = g2d_mbx;
    this.m2s_mbx = m2s_mbx;
    this.vif = vif;
    
    drv = new(g2d_mbx,vif);
    mon = new(m2s_mbx,vif);
  endfunction
  
  task run();
    fork
      drv.run();
      mon.run();
    join
  endtask
endclass
  
  
    
