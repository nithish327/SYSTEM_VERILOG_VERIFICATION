class monitor;
  mailbox mbx2;
  virtual fa_if vif;
  
  function new(mailbox mbx2,virtual fa_if vif);
    this.mbx2 = mbx2;
    this.vif = vif;
  endfunction
  
  task run();
    transaction tr;
    
    repeat(20) begin
      #1
      tr =new();

      tr.a = vif.a;
      tr.b = vif.b;
      tr.cin = vif.cin;
      tr.sum = vif.sum;
      tr.cout = vif.cout;
      mbx2.put(tr);
      
      #9;
    end
  endtask
endclass
               
               
      
      
