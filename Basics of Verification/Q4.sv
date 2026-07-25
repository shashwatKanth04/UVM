module queue;
    int q1[$];
  	int q2,q3;
    initial begin
        q1 = '{1,3,5,6,7};
        $display("the values are = %p",q1);
        q1.push_front(0);
      $display("the values are = %p",q1);
        q3 = q1.pop_back();
         $display("the values are = %p",q3);
    end
endmodule