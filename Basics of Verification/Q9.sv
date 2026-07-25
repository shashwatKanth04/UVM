class myclass;

  bit [7:0] a;
  bit [7:0] b;
  bit [7:0] c;

  function new(bit [7:0] val_a, bit [7:0] val_b, bit [7:0] val_c);
    this.a = val_a;
    this.b = val_b;
    this.c = val_c;
  endfunction

  function void display();
    $display("a = %0d, b = %0d, c = %0d", this.a, this.b, this.c);
  endfunction
endclass

module tb;
  initial begin
    myclass obj;
    obj = new(2, 4, 56);
    obj.display();
  end
endmodule