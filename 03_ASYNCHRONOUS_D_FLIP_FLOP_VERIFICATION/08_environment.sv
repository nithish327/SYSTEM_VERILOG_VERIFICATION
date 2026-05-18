class environment;
  generator gen;
  driver drv;
  monitor mon;
  scoreboard scb;
  
  virtual dff_if vif;
  
  mailbox g2d;
  mailbox m2s;
  event done;
  event next;
  
  function new(virtual dff_if vif);
    g2d = new();
    m2s = new();
    
    this.vif = vif;
    
    gen = new(g2d,next);
    drv = new(g2d,vif);
    mon = new(m2s,vif,done);
    scb = new(m2s,next);
    
  endfunction
  
  task run();
    fork
      gen.run();
      drv.run();
      mon.run();
      scb.run();
    join
  endtask
endclass
