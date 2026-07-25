`include "uvm_macros.svh"
import uvm_pkg::*;

typedef enum {SHIFT_LEFT, SHIFT_RIGHT, ROTATE_LEFT, ROTATE_RIGHT} shift_op_e;

class barrel_shifter_cfg extends uvm_object;
  string component_id = "U_BARREL_SHIFTER_32B";
  shift_op_e current_op = ROTATE_RIGHT;
  real propagation_delay_ns = 1.45;
  int active_stages = 5;

  `uvm_object_utils_begin(barrel_shifter_cfg)
    `uvm_field_string(component_id, UVM_DEFAULT)
    `uvm_field_enum(shift_op_e, current_op, UVM_DEFAULT)
    `uvm_field_real(propagation_delay_ns, UVM_DEFAULT)
    `uvm_field_int(active_stages, UVM_DEFAULT)
  `uvm_object_utils_end

  function new(string name = "barrel_shifter_cfg");
    super.new(name);
  endfunction
endclass

module tb;
  barrel_shifter_cfg full_dut_cfg;
  initial begin
    full_dut_cfg = barrel_shifter_cfg::type_id::create("full_dut_cfg");
    full_dut_cfg.print(uvm_default_table_printer);
  end
endmodule