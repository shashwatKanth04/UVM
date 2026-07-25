`include "uvm_macros.svh"
import uvm_pkg::*;

// Reusing class declaration layout pattern from Exercise 10
class printable_object extends uvm_object;
  string test_name = "Print_Comparison_Unit";
  int score = 99;

  `uvm_object_utils_begin(printable_object)
    `uvm_field_string(test_name, UVM_DEFAULT)
    `uvm_field_int(score, UVM_DEFAULT)
  `uvm_object_utils_end

  function new(string name = "printable_object");
    super.new(name);
  endfunction
endclass

module tb;
  printable_object obj;
  initial begin
    obj = printable_object::type_id::create("obj");
    
    `uvm_info("PRN", "--- Printing with Table Printer ---", UVM_NONE)
    obj.print(uvm_default_table_printer);
    
    `uvm_info("PRN", "--- Printing with Tree Printer ---", UVM_NONE)
    obj.print(uvm_default_tree_printer);
    
    `uvm_info("PRN", "--- Printing with Line Printer ---", UVM_NONE)
    obj.print(uvm_default_line_printer);
  end
endmodule