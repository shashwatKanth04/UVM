module exercise_10;
  import uvm_pkg::*;
  `include "uvm_macros.svh"

  initial begin
    // 0 ns message (no pre-delay)
    `uvm_info("STARTUP", "Startup message at 0 ns", UVM_LOW)
    
    #50;
    `uvm_info("PROCESSING", "Processing message at 50 ns", UVM_LOW)
    
    #50; // 50ns + 50ns = 100ns
    `uvm_info("COMPLETION", "Completion message at 100 ns", UVM_LOW)
    
    #50; // 100ns + 50ns = 150ns
    `uvm_fatal("FATAL_STOP", "Fatal stop at 150 ns")
  end
endmodule