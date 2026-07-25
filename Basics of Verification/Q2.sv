module fixed_array;
    int a[4];
    initial begin
    a='{1,6,8,5};
    $display("the values are:%p",a);
    end
endmodule
    