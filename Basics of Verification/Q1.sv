module def_array;
    bit [7:0]a[2:0];
    bit [7:0]b[2:0];
    bit [7:0]c[2:0];
    initial begin
        a='{default=3};
        b='{3{1}};
        c='{8'b1,8'b0,8'b10};
        $display("the values are:%p",a);
        $display("the values are:%p",b);
        $display("the values are:%p",c);
    end
endmodule

