class environment;
  generator gen;
  driver drv;
  monitor mon;
  scoreboard scb;
  
  mailbox g2d_mbx;
  mailbox m2s_mbx;
  
  virtual jc_if vif;
  function new(virtual jc_if vif);
    this.vif = vif;
    
    g2d_mbx = new();
    m2s_mbx = new();
    
    gen = new(g2d_mbx);
    drv = new(g2d_mbx,vif);
    mon = new(m2s_mbx,vif);
    scb = new(m2s_mbx);
  endfunction
  
  task run();
    fork
      gen.run();
      drv.run();
      mon.run();
      scb.run();
    join_none
  endtask
endclass
  
