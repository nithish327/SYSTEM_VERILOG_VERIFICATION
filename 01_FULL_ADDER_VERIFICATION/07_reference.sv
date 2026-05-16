class reference;
  mailbox mbx4;
  mailbox mbx3;
  
  function new(mailbox mbx4,mailbox mbx3);
    this.mbx4 =mbx4;
    this.mbx3 = mbx3;
  endfunction
  
  task run();
    transaction tr;
    
    repeat(20)begin
      mbx4.get(tr);
      tr.sum = tr.a ^ tr.b ^ tr.cin;
      tr.cout = (tr.a & tr.b) | (tr.b & tr.cin) | (tr.a & tr.cin);
      
      #11;
      mbx3.put(tr);
      
    end
  endtask
endclass
