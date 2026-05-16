class scoreboard;
  mailbox mbx2;
  mailbox mbx3;
  
  function new(mailbox mbx2,mailbox mbx3);
    this.mbx2 =mbx2;
    this.mbx3 = mbx3;
  endfunction
  
  task run();
    transaction tr_m;
    transaction tr_r;
    
    repeat (20) begin
      mbx2.get(tr_m);
      mbx3.get(tr_r);
      $display("EXPECTED OUTPUT : Time = %0t sum = %0d cout = %0d",$time,tr_r.sum,tr_r.cout);
      $display("ACTUAL OUTOUT : Time = %0t  sum = %0d cout = %0d",$time,tr_m.sum,tr_m.cout);
      if((tr_r.sum == tr_m.sum) && (tr_r.cout == tr_m.cout))begin
        $display("+---------+");
        $display("|   PASS  |");
        $display("+---------+");
      end
      else begin
        $display("+---------+");
        $display("| FAILED  |");
        $display("+---------+");
      end
      $display("----------------------------");
    end
  endtask
endclass
      
      
