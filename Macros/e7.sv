module exercise_7;
  import uvm_pkg::*;
  `include "uvm_macros.svh"

  initial begin
    for (int counter = 1; counter <= 5; counter++) begin
      #10;
      `uvm_info("COUNTER_VAL", $sformatf("Counter value: %0d", counter), UVM_LOW)
    end
  end
endmodule