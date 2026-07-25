`include "uvm_macros.svh"
import uvm_pkg::*;

typedef enum {EMPTY, PARTIAL, FULL, OVERFLOW} fifo_status_e;

class fifo_status_monitor extends uvm_object;
  fifo_status_e status = PARTIAL;
  string fifo_name = "tx_buffer_fifo";

  `uvm_object_utils_begin(fifo_status_monitor)
    `uvm_field_enum(fifo_status_e, status, UVM_DEFAULT)
    `uvm_field_string(fifo_name, UVM_DEFAULT)
  `uvm_object_utils_end

  function new(string name = "fifo_status_monitor");
    super.new(name);
  endfunction
endclass

module tb;
  fifo_status_monitor mon;
  initial begin
    mon = fifo_status_monitor::type_id::create("mon");
    mon.print();
  end
endmodule