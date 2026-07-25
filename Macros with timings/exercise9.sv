`include "uvm_macros.svh"
import uvm_pkg::*;
typedef struct{ int x1;
                 string name;}s;
class obj extends uvm_object;
  rand bit [3:0] x;
  rand bit [7:0] y;
  rand s s1;

  // Use the standard registration macro instead of the _begin/_end blocks
  `uvm_object_utils(obj)

  function new(string path="obj");
    super.new(path);
  endfunction

  // Override the do_print method to handle printing manually
  virtual function void do_print(uvm_printer printer);
    super.do_print(printer);
    printer.print_field_int("x", x, $bits(x), UVM_BIN);
    printer.print_field_int("y", y, $bits(y), UVM_DEC);
    
    // Print the struct members individually
    printer.print_field_int("s1.x1", s1.x1, $bits(s1.x1), UVM_DEC);
    printer.print_string("s1.name", s1.name);
  endfunction
endclass

module tb;
    obj o;
    initial begin
        o=new("obj");
       //repeat(10) begin
        o.randomize();
          o.print(uvm_default_tree_printer);
          //`uvm_info("tb",$sformatf("the value of addr =%0d and data =%0d",o.x,o.y),UVM_MEDIUM);
        //end
    end
endmodule