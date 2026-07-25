`include "uvm_macros.svh"
import uvm_pkg::*;

class secure_object extends uvm_object;
  string visible_field = "Public_Data";
  string secret_version = "v9.9_hidden_hash"; // Field to hide

  `uvm_object_utils_begin(secure_object)
    `uvm_field_string(visible_field, UVM_DEFAULT)
    `uvm_field_string(secret_version, UVM_DEFAULT | UVM_NOPRINT) // Hides field
  `uvm_object_utils_end

  function new(string name = "secure_object");
    super.new(name);
  endfunction
endclass

module tb;
  secure_object obj;
  initial begin
    obj = secure_object::type_id::create("obj");
    obj.print(); // secret_version will not appear in output
  end
endmodule