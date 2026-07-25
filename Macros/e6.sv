module exercise_6;
  import uvm_pkg::*;
  `include "uvm_macros.svh"

  initial begin
    #50;
    `uvm_info("INFO_50", "Info at 50 ns", UVM_LOW)
    
    #50; // 50ns + 50ns = 100ns
    `uvm_warning("WARN_100", "Warning at 100 ns")
    
    #50; // 100ns + 50ns = 150ns
    `uvm_error("ERR_150", "Error at 150 ns")
    
    #50; // 150ns + 50ns = 200ns
    `uvm_fatal("FATAL_200", "Fatal at 200 ns")
  end
endmodule