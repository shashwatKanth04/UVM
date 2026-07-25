`include "uvm_macros.svh"
import uvm_pkg::*;

typedef enum {IDLE, FETCH, DECODE, EXECUTE} fsm_state_e;

class fsm_controller extends uvm_object;
  rand fsm_state_e state;

  `uvm_object_utils_begin(fsm_controller)
    `uvm_field_enum(fsm_state_e, state, UVM_DEFAULT)
  `uvm_object_utils_end

  function new(string name = "fsm_controller");
    super.new(name);
  endfunction
endclass

module tb;
  fsm_controller fsm;
  initial begin
    fsm = fsm_controller::type_id::create("fsm");
    void'(fsm.randomize());
    fsm.print(uvm_default_tree_printer);
  end
endmodule