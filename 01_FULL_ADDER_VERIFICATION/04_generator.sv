class generator;
  mailbox mbx1;
  mailbox mbx4;
  transaction tr_d;
  transaction tr_r;
  
  function new(mailbox mbx1,mailbox mbx4);
    this.mbx1 = mbx1;
    this.mbx4 = mbx4;
  endfunction
  
  task run();
    
    for(int i =0; i<8; i++) begin
      tr_d= new();
      tr_r = new();
      tr_d.a   = i[2];
      tr_d.b   = i[1];
      tr_d.cin = i[0];
      tr_r.a = tr_d.a;
      tr_r.b = tr_d.b;
      tr_r.cin = tr_d.cin;
      mbx1.put(tr_d);
      mbx4.put(tr_r);
      
    end
  endtask
endclass
      
      
  
