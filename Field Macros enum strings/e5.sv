`include "uvm_macros.svh"
import uvm_pkg::*;

typedef enum {NONE, EVEN, ODD} parity_e;

class uart_config extends uvm_object;
  parity_e parity = EVEN;
  real baud_rate = 115200.0;
  string instance_name = "u_uart_core";

  `uvm_object_utils_begin(uart_config)
    `uvm_field_enum(parity_e, parity, UVM_DEFAULT)
    `uvm_field_real(baud_rate, UVM_DEFAULT)
    `uvm_field_string(instance_name, UVM_DEFAULT)
  `uvm_object_utils_end

  function new(string name = "uart_config");
    super.new(name);
  endfunction
endclass

module tb;
  uart_config cfg;
  initial begin
    cfg = uart_config::type_id::create("cfg");
    cfg.print();
  end
endmodule