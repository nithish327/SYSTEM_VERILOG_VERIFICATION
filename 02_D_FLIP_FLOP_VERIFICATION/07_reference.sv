class reference;
  mailbox g2r;
  mailbox r2s;
  bit prev_d;
  event done;
  function new(mailbox g2r,mailbox r2s,event done);
    this.g2r = g2r;
    this.r2s = r2s;
    this.done =done;
  endfunction
  
  task run();
    transaction tr;
    prev_d =0;
      
    repeat (20)begin
        g2r.get(tr);
        if(tr.reset)
          tr.exp_q = 0;
        else 
          tr.exp_q = prev_d;
        prev_d = tr.d;
        @done;
        r2s.put(tr);
        
      end
  endtask 
endclass
