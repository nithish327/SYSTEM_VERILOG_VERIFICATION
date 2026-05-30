class transaction #(parameter N=8);
  rand bit rst;
  rand bit [N-1:0]d_in;
  rand bit w_en,r_en;
  bit full;
  bit empty;
  bit [N-1:0] d_out;
  
  constraint rst_c {rst dist {1:=2,0:=8};}
  constraint w_en_c {w_en dist {0:=5 , 1:=5};}
  constraint r_e { (r_en != w_en);}
  
  function void display(string name);
    $display("%0s : Time = %0t rst=%0b w_en=%0b r_en=%0b d_in=%0d full=%0b empty=%b data_out=%0d",
               name,$time, rst, w_en, r_en, d_in, full, empty,d_out);
  endfunction
  
endclass
                    
