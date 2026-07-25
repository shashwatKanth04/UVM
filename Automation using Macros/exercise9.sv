`include "uvm_macros.svh"
import uvm_pkg::*;

class obj extends uvm_object;

  function new(string path = "obj");
    super.new(path);
  endfunction

  rand bit [3:0] a;
  rand bit [7:0] b;

  `uvm_object_utils_begin(obj)
    `uvm_field_int(a, UVM_DEFAULT | UVM_BIN)
    `uvm_field_int(b, UVM_DEFAULT | UVM_BIN)
  `uvm_object_utils_end

endclass

module tb;

  obj o1;
  obj o2;
  obj o3;

  initial begin
    o1 = new("obj");
    o2 = new("obj");
    o3 = new("obj");
    o1.randomize();
    o2.randomize();
    o3.randomize();
    o1.print(uvm_default_table_printer);
    o2.print(uvm_default_table_printer);
    o3.print(uvm_default_table_printer);

  end

endmodule