module exercise_4;
  import uvm_pkg::*;
  `include "uvm_macros.svh"

  initial begin
    repeat (5) begin
      #20;
      `uvm_warning("WARN_LOOP", "Warning message generated every 20 ns")
    end
  end
endmodule