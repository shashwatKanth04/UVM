`include "uvm_macros.svh"
import uvm_pkg::*;

typedef enum {SAFE, WARNING, CRITICAL, SHUTDOWN} system_state_e;

class constrained_cfg extends uvm_object;
  rand system_state_e state;

  constraint safe_only_c {
    state inside {SAFE, WARNING}; // Constraints enum targets
  }

  `uvm_object_utils_begin(constrained_cfg)
    `uvm_field_enum(system_state_e, state, UVM_DEFAULT)
  `uvm_object_utils_end

  function new(string name = "constrained_cfg");
    super.new(name);
  endfunction
endclass

module tb;
  constrained_cfg cfg;
  initial begin
    cfg = constrained_cfg::type_id::create("cfg");
    repeat(3) begin
      void'(cfg.randomize());
      cfg.print();
    end
  end
endmodule