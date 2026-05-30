class environment;
  generator gen;
  scoreboard scb;
  fifo_agent agent;
  
  mailbox g2d_mbx;
  mailbox m2s_mbx;
  
  virtual fifo_if vif;
  
  function new(virtual fifo_if vif);
    this.vif = vif;
    
    g2d_mbx = new();
    m2s_mbx = new();
    
    gen = new(g2d_mbx);
    agent = new(g2d_mbx,m2s_mbx,vif);
    scb = new(m2s_mbx);
  endfunction
  
  task run();
    fork 
      gen.run();
      agent.run();
      scb.run();
    join_any
    disable fork;
    scb.report();
  endtask
endclass
  
  
