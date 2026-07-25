`include "uvm_macros.svh"
import uvm_pkg::*;

class my_env extends uvm_env;
  `uvm_component_utils(my_env)
  int data;
  int addr;

  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    // Retrieve both
    if(uvm_config_db#(int)::get(this, "", "data", data) && 
       uvm_config_db#(int)::get(this, "", "addr", addr)) begin
      `uvm_info("ENV", $sformatf("data = %0d, addr = %0d", data, addr), UVM_LOW)
    end
  endfunction
endclass

class test_ex3 extends uvm_test;
  `uvm_component_utils(test_ex3)
  my_env env;

  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    // Store data = 5, addr = 15
    uvm_config_db#(int)::set(this, "env", "data", 5);
    uvm_config_db#(int)::set(this, "env", "addr", 15);
    env = my_env::type_id::create("env", this);
  endfunction
endclass

module tb_top;
  initial begin
    run_test("test_ex3");
  end
endmodule