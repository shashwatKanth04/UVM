`include "uvm_macros.svh"
import uvm_pkg::*;

class my_env extends uvm_env;
  `uvm_component_utils(my_env)
  string name;

  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(uvm_config_db#(string)::get(this, "", "name", name)) begin
      `uvm_info("ENV", $sformatf("name = %s", name), UVM_LOW)
    end
  endfunction
endclass

class test_ex4 extends uvm_test;
  `uvm_component_utils(test_ex4)
  my_env env;

  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    // Store name = "UVM"
    uvm_config_db#(string)::set(this, "env", "name", "UVM");
    env = my_env::type_id::create("env", this);
  endfunction
endclass

module tb_top;
  initial begin
    run_test("test_ex4");
  end
endmodule