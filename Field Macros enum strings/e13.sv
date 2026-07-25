`include "uvm_macros.svh"
import uvm_pkg::*;

class radix_object extends uvm_object;
  int data_field_a = 15;
  int data_field_b = 255;

  `uvm_object_utils_begin(radix_object)
    `uvm_field_int(data_field_a, UVM_DEFAULT | UVM_BIN) // Binary
    `uvm_field_int(data_field_b, UVM_DEFAULT | UVM_HEX) // Hexadecimal
  `uvm_object_utils_end

  function new(string name = "radix_object");
    super.new(name);
  endfunction
endclass

module tb;
  radix_object obj;
  initial begin
    obj = radix_object::type_id::create("obj");
    obj.print();
  end
endmodule