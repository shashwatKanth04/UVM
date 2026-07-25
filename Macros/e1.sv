module exercise_1;
  import uvm_pkg::*;
  `include "uvm_macros.svh"

  initial begin
    #20;
    `uvm_info("INFO_20", "Info message at 20 ns", UVM_LOW)
    
    #20; // 20ns + 20ns = 40ns
    `uvm_warning("WARN_40", "Warning at 40 ns")
    
    #40; // 40ns + 40ns = 80ns
    `uvm_fatal("FATAL_80", "Stopping simulation at 80 ns")
  end
endmodule