class scoreboard;
  mailbox m2s;
  mailbox r2s;
  event next;
  
  function new(mailbox m2s,mailbox r2s,event next);
    this.m2s =m2s;
    this.r2s = r2s;
    this.next = next;
  endfunction
  
  task run();
    transaction tr_m;
    transaction tr_r;
    repeat (20)begin
      m2s.get(tr_m);
      r2s.get(tr_r);
      ->next;
      $display("EXPECTED OUTPUT : Time = %0t d = %0d q = %0d",$time,tr_r.d,tr_r.exp_q);
      $display("ACTUAL OUTPUT   : Time = %0t d = %0d q = %0d",$time,tr_m.d,tr_m.q);
      if(tr_m.q == tr_r.exp_q)begin
        $display("+------------------+");
        $display("|  TEST CASE PASS  |");
        $display("+------------------+");
      end
      else begin
        $display("+------------------+");
        $display("|  TEST CASE FAIL  |");
        $display("+------------------+");
      end
      $display("-----------------");
    end
  endtask
endclass
