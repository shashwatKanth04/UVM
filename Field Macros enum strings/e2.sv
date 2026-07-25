`include "uvm_macros.svh"
import uvm_pkg::*;

typedef enum {RED, YELLOW, GREEN} tlc_state_e;

class tlc_config extends uvm_object;
  tlc_state_e current_state = RED;
  string junction_name = "Oxford_Street_Cross";
  real green_duration = 45.5;

  `uvm_object_utils_begin(tlc_config)
    `uvm_field_enum(tlc_state_e, current_state, UVM_DEFAULT)
    `uvm_field_string(junction_name, UVM_DEFAULT)
    `uvm_field_real(green_duration, UVM_DEFAULT)
  `uvm_object_utils_end

  function new(string name = "tlc_config");
    super.new(name);
  endfunction
endclass

module tb;
  tlc_config cfg;
  initial begin
    cfg = tlc_config::type_id::create("cfg");
    cfg.print();
  end
endmodule