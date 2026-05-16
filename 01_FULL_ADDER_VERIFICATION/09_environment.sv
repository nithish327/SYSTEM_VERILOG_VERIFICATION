class environment;
  generator gen;
  driver div;
  monitor mon;
  reference refer;
  scoreboard scb;
  
  mailbox mbx1;
  mailbox mbx2;
  mailbox mbx3;
  mailbox mbx4;
  virtual fa_if vif;
  function new(virtual fa_if vif);
    this.vif = vif;
    mbx1 = new();
    mbx2 = new();
    mbx3 = new();
    mbx4 = new();
  
    gen = new(mbx1,mbx4);
    div = new(mbx1,vif);
    mon = new(mbx2,vif);
    refer = new(mbx4,mbx3);
    scb = new(mbx2,mbx3);
  endfunction
  task run();
    fork
      gen.run();
      div.run();
      mon.run();
      refer.run();
      scb.run();
    join
  endtask
endclass
