module exercise_5;
  import uvm_pkg::*;
  `include "uvm_macros.svh"

  initial begin
    #100;
    `uvm_error("ERR_100", "Error message printed after #100 delay")
  end
endmodule