module exercise_8;
  import uvm_pkg::*;
  `include "uvm_macros.svh"

  int temperature;

  // Emulating temperature changes over simulation time
  initial begin
    temperature = 25;
    #20 temperature = 60; // Temp > 50 before 30ns
    #25 temperature = 90; // Temp > 80 before 60ns
  end

  initial begin
    #30;
    if (temperature > 50) begin
      `uvm_warning("TEMP_WARN", $sformatf("Warning at 30 ns: temperature (%0d) > 50", temperature))
    end
    
    #30; // 30ns + 30ns = 60ns
    if (temperature > 80) begin
      `uvm_error("TEMP_ERR", $sformatf("Error at 60 ns: temperature (%0d) > 80", temperature))
    end
  end
endmodule