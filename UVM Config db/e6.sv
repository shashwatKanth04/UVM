`include "uvm_macros.svh"
import uvm_pkg::*;

class my_env extends uvm_env;
  `uvm_component_utils(my_env)
  int value;

  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    // Try retrieving via wrong key 'value'
    if(!uvm_config_db#(int)::get(this, "", "value", value)) begin
      `uvm_error("ENV", "Unable to access the Value")
    end
  endfunction
endclass

class test_ex6 extends uvm_test;
  `uvm_component_utils(test_ex6)
  my_env env;

  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    // Store data = 100
    uvm_config_db#(int)::set(this, "env", "data", 100);
    env = my_env::type_id::create("env", this);
  endfunction
endclass

module tb_top;
  initial begin
    run_test("test_ex6");
  end
endmodule