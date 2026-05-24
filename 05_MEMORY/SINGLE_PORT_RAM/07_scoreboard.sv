class scoreboard #(parameter N = 4, DEPTH = 8);

  mailbox m2s_mbx;

  transaction tr;

  logic [N-1:0] exp_dout;
  logic [N-1:0] mem [DEPTH-1:0];

  int total_tests;
  int pass_count;
  int fail_count;

  function new(mailbox m2s_mbx);

    this.m2s_mbx = m2s_mbx;
    foreach(mem[i])
      mem[i] = 0;

  endfunction

  task run();

    repeat(50)begin

      m2s_mbx.get(tr);

      // WRITE OPERATION
      if(tr.cs && tr.w_en) begin

        mem[tr.addr] = tr.din;

        $display("\n====================================");
        $display("         WRITE OPERATION");
        $display("====================================");

        $display("TIME  : %0t", $time);
        $display("ADDR  : %0d", tr.addr);
        $display("DIN   : %0d", tr.din);

        $display("====================================");

      end

      // READ OPERATION
      else if(tr.cs && !tr.w_en) begin

        total_tests++;

        exp_dout = mem[tr.addr];

        $display("\n====================================");
        $display("          READ OPERATION");
        $display("====================================");

        $display("TIME           : %0t", $time);
        $display("ADDR           : %0d", tr.addr);

        $display("------------------------------------");

        $display("EXPECTED DOUT  : %0d", exp_dout);
        $display("ACTUAL DOUT    : %0d", tr.dout);

        $display("------------------------------------");

        // CHECKER

        if(exp_dout == tr.dout) begin

          pass_count++;

          $display("RESULT : TEST CASE PASSED");

        end

        else begin

          fail_count++;

          $display("RESULT : TEST CASE FAILED");

        end

        $display("====================================");

      end

      // INVALID OPERATION

      else begin

        $display("\n====================================");
        $display("         INVALID OPERATION");
        $display("====================================");

        $display("TIME  : %0t", $time);

        $display("CS    : %0b", tr.cs);
        $display("W_EN  : %0b", tr.w_en);

        $display("====================================");

      end

    end
    $display("\n\n");
    $display("########################################");
    $display("#         VERIFICATION REPORT          #");
    $display("########################################");

    $display("TOTAL TESTS  : %0d", total_tests);
    $display("PASSED TESTS : %0d", pass_count);
    $display("FAILED TESTS : %0d", fail_count);

    $display("===================================");

    if(fail_count == 0) begin

      $display("| STATUS : ALL TEST CASES PASSED  |");

    end

    else begin

      $display("| STATUS : SOME TEST CASES FAILED |");

    end

    $display("===================================");

  endtask

endclass
