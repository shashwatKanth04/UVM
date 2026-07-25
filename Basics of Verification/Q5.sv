
 class unsigned1;
       
    int unsigned u1=45;
    int unsigned u2=78;
    int unsigned u3=90;

    function void display();
        $display("value of u1 is =%d",u1);
         $display("value of u2 is =%d",u2);
          $display("value of u3 is =%d",u3);
    endfunction
 endclass

 module tb;
   unsigned1 u;
   initial begin
    u=new();
    u.display();
   end
 endmodule
  
