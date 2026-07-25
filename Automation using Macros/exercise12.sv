`include "uvm_macros.svh"
import uvm_pkg::*;

class obj extends uvm_object;

  function new(string path = "obj");
    super.new(path);
  endfunction

  rand bit [7:0] addr;
  rand bit [7:0] data;
  rand bit write;

  `uvm_object_utils_begin(obj)
    //`uvm_field_int(addr, UVM_DEFAULT | UVM_HEX)
    //`uvm_field_int(data, UVM_DEFAULT | UVM_DEC)
    //`uvm_field_int(write, UVM_DEFAULT | UVM_BIN)
  `uvm_object_utils_end

endclass

module tb;

  obj o;

  initial begin
    o = new("obj");
    o.randomize();
    o.print(uvm_default_table_printer);
  end

endmodule