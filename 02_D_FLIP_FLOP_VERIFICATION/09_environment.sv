class environment;
  generator gen;
  driver drv;
  monitor mon;
  reference refer;
  scoreboard scb;
  
  virtual dff_if vif;
  
  mailbox g2d;
  mailbox g2r;
  mailbox m2s;
  mailbox r2s;
  event done;
  event next;
  
  function new(virtual dff_if vif);
    g2d = new();
    g2r = new();
    m2s = new();
    r2s = new();
    
    this.vif = vif;
    
    gen = new(g2d,g2r,next);
    drv = new(g2d,vif);
    mon = new(m2s,vif,done);
    refer = new(g2r,r2s,done);
    scb = new(m2s,r2s,next);
    
  endfunction
  
  task run();
    fork
      gen.run();
      drv.run();
      mon.run();
      refer.run();
      scb.run();
    join
  endtask
endclass
