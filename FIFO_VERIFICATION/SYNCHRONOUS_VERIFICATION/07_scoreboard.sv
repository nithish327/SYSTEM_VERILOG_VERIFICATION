class scoreboard #(parameter N = 8);
  mailbox m2s_mbx;

  bit [N-1:0] exp_d_out;
  bit [N-1:0] mem [0:N-1];

  int exp_w_ptr;
  int exp_r_ptr;

  int testcount;
  int passcount;
  int failcount;

  function new(mailbox m2s_mbx);
    this.m2s_mbx = m2s_mbx;
  endfunction


  task run();
    transaction tr;
    repeat(50) begin
      m2s_mbx.get(tr);
      
      // RESET OPERATION
      if(tr.rst) begin
        exp_w_ptr = 0;
        exp_r_ptr = 0;
        exp_d_out = 0;

        $display("-----------------------------------------");
        $display("           RESET DETECTED");
        $display("-----------------------------------------");
      end
      else begin

        // WRITE OPERATION
        if(tr.w_en && !tr.full) begin
          mem[exp_w_ptr] = tr.d_in;
          $display("-----------------------------------------");
          $display("WRITE OPERATION");
          $display("TIME      = %0t", $time);
          $display("WRITE PTR = %0d", exp_d_out);
          $display("DATA IN   = %0d", tr.d_in);
          $display("-----------------------------------------");

          exp_w_ptr = (exp_w_ptr + 1) % N;
        end

        // READ OPERATION
        if(tr.r_en && !tr.empty) begin
          exp_d_out = mem[exp_r_ptr];
          $display("-----------------------------------------");
          $display("READ OPERATION");
          $display("TIME        = %0t", $time);
          $display("READ PTR    = %0d", exp_r_ptr);
          $display("EXPECTED    = %0d", exp_d_out);
          $display("ACTUAL      = %0d", tr.d_out);
          
          // COMPARISON
          if(tr.d_out == exp_d_out) begin
            passcount++;
            $display("STATUS      = PASS");
          end
          else begin
            failcount++;
            $display("STATUS      = FAIL");
          end
          $display("-----------------------------------------");
          testcount++;
          exp_r_ptr = (exp_r_ptr + 1) % N;
        end
      end
    end
    endtask
  task report();
    $display("\n");
    $display("=========================================");
    $display("        SCOREBOARD REPORT");
    $display("=========================================");
    $display("TOTAL TESTS  = %0d", testcount);
    $display("PASSED TESTS = %0d", passcount);
    $display("FAILED TESTS = %0d", failcount);
    $display("=========================================");
  endtask
endclass
