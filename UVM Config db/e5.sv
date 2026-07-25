`include "uvm_macros.svh"
import uvm_pkg::*;

class my_env extends uvm_env;
  `uvm_component_utils(my_env)
  bit enable;

  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(uvm_config_db#(bit)::get(this, "", "enable", enable)) begin
      `uvm_info("ENV", $sformatf("enable = %0d", enable), UVM_LOW)
    end
  endfunction
endclass

class test_ex5 extends uvm_test;
  `uvm_component_utils(test_ex5)
  my_env env;

  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    // Store enable = 1
    uvm_config_db#(bit)::set(this, "env", "enable", 1'b1);
    env = my_env::type_id::create("env", this);
  endfunction
endclass

module tb_top;
  initial begin
    run_test("test_ex5");
  end
endmodule