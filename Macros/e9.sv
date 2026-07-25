module exercise_9;
  import uvm_pkg::*;
  `include "uvm_macros.svh"

  initial begin
    #25;
    `uvm_info("TIME_CHECK", $sformatf("Simulation time: %0t", $time), UVM_LOW)
    
    #25; // 25ns + 25ns = 50ns
    `uvm_info("TIME_CHECK", $sformatf("Simulation time: %0t", $time), UVM_LOW)
    
    #25; // 50ns + 25ns = 75ns
    `uvm_info("TIME_CHECK", $sformatf("Simulation time: %0t", $time), UVM_LOW)
    
    #25; // 75ns + 25ns = 100ns
    `uvm_info("TIME_CHECK", $sformatf("Simulation time: %0t", $time), UVM_LOW)
  end
endmodule