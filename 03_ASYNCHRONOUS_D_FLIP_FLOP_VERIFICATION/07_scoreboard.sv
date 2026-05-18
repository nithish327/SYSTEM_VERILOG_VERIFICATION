class scoreboard;
  mailbox m2s;
  event next;
  bit prev_reset;
  bit prev_d;
  
  function new(mailbox m2s,event next);
    this.m2s =m2s;
    this.next = next;
  endfunction
  
  task run();
    transaction tr;
    repeat (20)begin
      m2s.get(tr);
      
      ->next;
      if(tr.reset)
        tr.exp_q = 0;
      else if(prev_reset)
        tr.exp_q = 0;
      else
        tr.exp_q = prev_d;
        prev_d = tr.d;
      $display("EXPECTED OUTPUT : Time = %0t d = %0d q = %0d",$time,tr.d,tr.exp_q);
      $display("ACTUAL OUTPUT   : Time = %0t d = %0d q = %0d",$time,tr.d,tr.q);
      if(tr.q == tr.exp_q)begin
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
