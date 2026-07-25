`include "uvm_macros.svh"
import uvm_pkg::*;

typedef enum {MUX_2to1, MUX_4to1, MUX_8to1, MUX_16to1} mux_type_e;

class mux_config extends uvm_object;
  mux_type_e mux_sel = MUX_4to1;
  real prop_delay = 0.125;

  `uvm_object_utils_begin(mux_config)
    `uvm_field_enum(mux_type_e, mux_sel, UVM_DEFAULT)
    `uvm_field_real(prop_delay, UVM_DEFAULT)
  `uvm_object_utils_end

  function new(string name = "mux_config");
    super.new(name);
  endfunction
endclass

module tb;
  mux_config cfg;
  initial begin
    cfg = mux_config::type_id::create("cfg");
    cfg.print();
  end
endmodule