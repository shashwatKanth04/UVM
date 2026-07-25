`include "uvm_macros.svh"
import uvm_pkg::*;

typedef enum {MODE_A, MODE_B, MODE_C} mode_e;

class dut_sub_config extends uvm_object;
  rand mode_e operation_mode;
  rand int base_address;

  `uvm_object_utils_begin(dut_sub_config)
    `uvm_field_enum(mode_e, operation_mode, UVM_DEFAULT)
    `uvm_field_int(base_address, UVM_DEFAULT | UVM_HEX)
  `uvm_object_utils_end

  function new(string name = "dut_sub_config");
    super.new(name);
  endfunction
endclass

module tb;
  dut_sub_config cfg1, cfg2, cfg3;
  initial begin
    cfg1 = dut_sub_config::type_id::create("cfg1");
    cfg2 = dut_sub_config::type_id::create("cfg2");
    cfg3 = dut_sub_config::type_id::create("cfg3");
    
    void'(cfg1.randomize());
    void'(cfg2.randomize());
    void'(cfg3.randomize());
    
    cfg1.print();
    cfg2.print();
    cfg3.print();
  end
endmodule