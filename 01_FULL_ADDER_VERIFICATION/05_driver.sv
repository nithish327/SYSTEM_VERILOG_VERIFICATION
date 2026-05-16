class driver;
  mailbox mbx1;
  virtual fa_if vif;
  
  function new (mailbox mbx1,virtual fa_if vif);
    this.mbx1 = mbx1;
    this.vif = vif;
  endfunction
  
  task run();
    transaction tr;
    repeat (20) begin
     
      mbx1.get(tr);
      
      vif.a = tr.a;
      vif.b = tr.b;
      vif.cin = tr.cin;
      
      
      #10;
    end
  endtask
endclass
