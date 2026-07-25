class Q;
  bit [3:0] a;
  bit [3:0] b;
  bit [3:0] c;

  
  function new(bit [3:0] val_a, bit [3:0] val_b, bit [3:0] val_c);
    this.a = val_a;
    this.b = val_b;
    this.c = val_c;
  endfunction

  
  task calculate_sum(output bit [5:0] sum_out);
    sum_out = this.a + this.b + this.c;
    
    
    $display(" Inputs a: %0d, b: %0d, c: %0d | Output Sum: %0d", this.a, this.b, this.c, sum_out);
  endtask
endclass

module tb;
  initial begin
    Q obj;
    bit [5:0] total_sum;
    obj = new(5, 12, 7);
    obj.calculate_sum(total_sum);
    $display("[TB Verify] Returned Sum from task: %0d", total_sum);
  end
endmodule