`include "uvm_macros.svh"
import uvm_pkg::*;

// Base Class
class base_unit extends uvm_object;
  string unit_id = "BASE_01";
  
  `uvm_object_utils_begin(base_unit)
    `uvm_field_string(unit_id, UVM_DEFAULT)
  `uvm_object_utils_end
  
  function new(string name = "base_unit"); super.new(name); endfunction
endclass

// Extended Class
class extended_unit extends base_unit;
  string design_version = "v3.4";
  real operating_temperature = 45.2;
  int design_revision = 12;

  `uvm_object_utils_begin(extended_unit)
    `uvm_field_string(design_version, UVM_DEFAULT)
    `uvm_field_real(operating_temperature, UVM_DEFAULT)
    `uvm_field_int(design_revision, UVM_DEFAULT)
  `uvm_object_utils_end

  function new(string name = "extended_unit");
    super.new(name);
  endfunction
endclass

module tb;
  extended_unit ext;
  initial begin
    ext = extended_unit::type_id::create("ext");
    ext.print();
  end
endmodule