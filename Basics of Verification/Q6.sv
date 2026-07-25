class test;
    int unsigned a=1;
    int unsigned b=2;
    int unsigned result=2;

  function display();
        if(a*b==result)
        $display("TEST PASSED");
        else
        $display("TEST FAILED");
    endfunction
endclass

module tb1;
    initial begin

    test obj=new();
    obj.display();
    end
endmodule
