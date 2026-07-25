module exercise_3;
  import uvm_pkg::*;
  `include "uvm_macros.svh"

  initial begin
    #10;
    `uvm_info("INFO_10", "Info message at 10 ns", UVM_LOW)
    
    #10; // 10ns + 10ns = 20ns
    `uvm_info("INFO_20", "Info message at 20 ns", UVM_LOW)
    
    #10; // 20ns + 10ns = 30ns
    `uvm_info("INFO_30", "Info message at 30 ns", UVM_LOW)
  end
endmodule