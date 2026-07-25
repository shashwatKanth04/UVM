`include "uvm_macros.svh"
import uvm_pkg::*;

class dff_config extends uvm_object;
  string ff_name = "DFF_INST_0";
  real setup_time = 0.015;
  real hold_time = 0.008;

  `uvm_object_utils_begin(dff_config)
    `uvm_field_string(ff_name, UVM_DEFAULT)
    `uvm_field_real(setup_time, UVM_DEFAULT)
    `uvm_field_real(hold_time, UVM_DEFAULT)
  `uvm_object_utils_end

  function new(string name = "dff_config");
    super.new(name);
  endfunction
endclass

module tb;
  dff_config cfg;
  initial begin
    cfg = dff_config::type_id::create("cfg");
    cfg.print();
  end
endmodule