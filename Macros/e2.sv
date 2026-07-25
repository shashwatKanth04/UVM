module exercise_2;
  import uvm_pkg::*;
  `include "uvm_macros.svh"

  initial begin
    #25;
    `uvm_warning("WARN_25", "Warning at 25 ns")
    
    #50; // 25ns + 50ns = 75ns
    `uvm_error("ERR_75", "Error at 75 ns")
    
    #75; // 75ns + 75ns = 150ns
    `uvm_fatal("FATAL_150", "Fatal at 150 ns")
  end
endmodule