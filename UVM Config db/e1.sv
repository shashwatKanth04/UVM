`include "uvm_macros.svh"
import uvm_pkg::*;

class my_env extends uvm_env;
  `uvm_component_utils(my_env)
  int data;

  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    // Retrieve value
    if(uvm_config_db#(int)::get(this, "", "data", data)) begin
      `uvm_info("ENV", $sformatf("Value of data : %0d", data), UVM_LOW)
    end
  endfunction
endclass

class test_ex1 extends uvm_test;
  `uvm_component_utils(test_ex1)
  my_env env;

  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    // Set 20 instead of 12
    uvm_config_db#(int)::set(this, "env", "data", 20);
    env = my_env::type_id::create("env", this);
  endfunction
endclass

module tb_top;
  initial begin
    run_test("test_ex1");
  end
endmodule