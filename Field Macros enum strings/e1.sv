`include "uvm_macros.svh"
import uvm_pkg::*;

typedef enum {ADD, SUB, AND, OR, XOR} alu_op_e;

class alu_packet extends uvm_object;
  rand alu_op_e op;
  string version = "v2.1_beta";

  `uvm_object_utils_begin(alu_packet)
    `uvm_field_enum(alu_op_e, op, UVM_DEFAULT)
    `uvm_field_string(version, UVM_DEFAULT)
  `uvm_object_utils_end

  function new(string name = "alu_packet");
    super.new(name);
  endfunction
endclass

module tb;
  alu_packet pkt;
  initial begin
    pkt = alu_packet::type_id::create("pkt");
    void'(pkt.randomize());
    pkt.print(uvm_default_table_printer);
  end
endmodule