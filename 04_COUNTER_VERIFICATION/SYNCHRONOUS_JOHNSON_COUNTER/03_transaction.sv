class transaction;
  rand bit reset;
  bit [3:0]count;
  
  constraint reset_c {reset dist {1 := 20 , 0 :=80};}
endclass
  
