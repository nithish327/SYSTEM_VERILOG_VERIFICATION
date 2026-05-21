class scoreboard;

  mailbox m2s_mbx;

  bit [3:0] exp_count;
  
  int testcount,passcount,failcount;


  function new(mailbox m2s_mbx);
    this.m2s_mbx = m2s_mbx;
 
  endfunction


  task run();

    transaction tr;

    repeat(30) begin

      m2s_mbx.get(tr);
      testcount++;
      if(tr.reset)
        exp_count = 4'b0000;

       else begin

         exp_count = {exp_count[2:0],~exp_count[3]};
       end


      $display("EXPECTED OUTPUT : Time = %0t reset = %0b count = %04b",$time,tr.reset,
                exp_count);

      $display("ACTUAL OUTPUT   : Time = %0t reset = %0b count = %04b",
                $time,tr.reset,tr.count);


      if(exp_count == tr.count) begin

        $display("======================");
        $display("|   TEST CASE PASS   |");
        $display("======================");
        passcount++;

      end

      else begin

        $display("======================");
        $display("|   TEST CASE FAIL   |");
        $display("======================");
        failcount++;

      end
      $display("-----------------------------------");
    end
    $display("          VERIFICATION REPORT      ");
    $display("-----------------------------------");
    $display("     TOTAL TEST CASES  = %0d",testcount);
    $display("     PASSED TEST CASES = %0d",passcount);
    $display("     FAILED TEST CASES = %0d",failcount);
    $display("-----------------------------------");
    if(failcount == 0)begin
      $display("+========================================+");
      $display("| ALL TEST CASES ARE PASSED SUCCESSFULLY |");
      $display("+========================================+");
    end
    else begin
      $display("+========================================+");
      $display("|      SOME TEST CASES ARE FAILED        |");
      $display("+========================================+");
    end
  endtask

endclass
