class test;
  environment env;
  virtual fifo_if vif;
  function new(virtual fifo_if vif);
    this.vif = vif;  
    env = new(vif);
  endfunction
  
  task run();
    $display("=======================");
    $display("    FIFO TEST START    ");
    $display("=======================");
    env.run();
    $display("Simulation Finished Successfully!");
  endtask
endclass
