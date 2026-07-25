`include "uvm_macros.svh"
import uvm_pkg::*;

class evaluation_object extends uvm_object;
  string metric = "Automated_Printing_Evaluation";
  int score = 100;

  `uvm_object_utils_begin(evaluation_object)
    `uvm_field_string(metric, UVM_DEFAULT)
    `uvm_field_int(score, UVM_DEFAULT)
  `uvm_object_utils_end

  function new(string name = "evaluation_object"); super.new(name); endfunction
endclass

module tb;
  evaluation_object obj;
  initial begin
    obj = evaluation_object::type_id::create("obj");
    
    // Method A: Manual Formatting
    `uvm_info("MANUAL", $sformatf("Fields manual string: metric=%s score=%0d", obj.metric, obj.score), UVM_NONE)
    
    // Method B: Automatic Printing
    obj.print();
  end
endmodule