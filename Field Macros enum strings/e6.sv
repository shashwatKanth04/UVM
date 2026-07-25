`include "uvm_macros.svh"
import uvm_pkg::*;

typedef enum {SEQ_1010, SEQ_1101, SEQ_1110} seq_pattern_e;

class seq_detector_obj extends uvm_object;
  seq_pattern_e pattern = SEQ_1101;
  string detector_name = "Non_Overlapping_1101";
  int latency = 4;

  `uvm_object_utils_begin(seq_detector_obj)
    `uvm_field_enum(seq_pattern_e, pattern, UVM_DEFAULT)
    `uvm_field_string(detector_name, UVM_DEFAULT)
    `uvm_field_int(latency, UVM_DEFAULT)
  `uvm_object_utils_end

  function new(string name = "seq_detector_obj");
    super.new(name);
  endfunction
endclass

module tb;
  seq_detector_obj obj;
  initial begin
    obj = seq_detector_obj::type_id::create("obj");
    obj.print();
  end
endmodule