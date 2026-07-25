`include "uvm_macros.svh"
import uvm_pkg::*;

// Driver Component
class my_driver extends uvm_driver;
  `uvm_component_utils(my_driver)
  int packet_size;

  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    // Step 2: Get configuration
    if(uvm_config_db#(int)::get(this, "", "packet_size", packet_size)) begin
      `uvm_info("DRV", $sformatf("Packet Size = %0d", packet_size), UVM_LOW)
    end else begin
      `uvm_error("DRV", "Packet size not found");
    end
  endfunction
endclass

// Environment Component
class my_env extends uvm_env;
  `uvm_component_utils(my_env)
  my_driver driver;

  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    driver = my_driver::type_id::create("driver", this);
  endfunction
endclass

// Test Component (Hierarchy Root)
class test_ex11 extends uvm_test;
  `uvm_component_utils(test_ex11)
  my_env e; // Named 'e' to match the path pattern

  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    // Step 1: Set target configuration down hierarchy
    uvm_config_db#(int)::set(this, "e.driver", "packet_size", 64);
    e = my_env::type_id::create("e", this);
  endfunction
endclass

module tb_top;
  initial begin
    run_test("test_ex11");
  end
endmodule