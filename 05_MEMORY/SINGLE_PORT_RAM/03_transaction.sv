class transaction#(parameter N =4 , DEPTH = 8);
  rand bit [N-1:0]din;
  rand bit cs;
  rand bit w_en;
  rand bit [$clog2(DEPTH)-1:0] addr;
  bit [N-1:0]dout;
  
  constraint cs_c {cs dist {0:=1,1:=9};
                  }
  constraint rw_c { w_en dist {1 := 5, 0 := 5};
                  }
endclass
