`include "uvm_macros.svh"
import uvm_pkg::*;

// Sub-config Object
class clock_cfg extends uvm_object;
  real source_period_ns = 10.0;
  `uvm_object_utils_begin(clock_cfg)
    `uvm_field_real(source_period_ns, UVM_DEFAULT)
  `uvm_object_utils_end
  function new(string name = "clock_cfg"); super.new(name); endfunction
endclass

// Parent Configuration Object
class nested_uart_cfg extends uvm_object;
  int databits = 8;
  clock_cfg clk_inst; // Handle for nested object

  `uvm_object_utils_begin(nested_uart_cfg)
    `uvm_field_int(databits, UVM_DEFAULT)
    `uvm_field_object(clk_inst, UVM_DEFAULT) // Registers nested object
  `uvm_object_utils_end

  function new(string name = "nested_uart_cfg");
    super.new(name);
    clk_inst = clock_cfg::type_id::create("clk_inst");
  endfunction
endclass

module tb;
  nested_uart_cfg parent_cfg;
  initial begin
    parent_cfg = nested_uart_cfg::type_id::create("parent_cfg");
    parent_cfg.print();
  end
endmodule