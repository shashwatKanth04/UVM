`include "uvm_macros.svh"
import uvm_pkg::*;

typedef enum {DIV_2, DIV_4, DIV_8, DIV_16} div_ratio_e;

class clk_divider_cfg extends uvm_object;
  div_ratio_e ratio = DIV_8;
  real input_freq_mhz = 100.0;

  `uvm_object_utils_begin(clk_divider_cfg)
    `uvm_field_enum(div_ratio_e, ratio, UVM_DEFAULT)
    `uvm_field_real(input_freq_mhz, UVM_DEFAULT)
  `uvm_object_utils_end

  function new(string name = "clk_divider_cfg");
    super.new(name);
  endfunction
endclass

module tb;
  clk_divider_cfg cfg;
  initial begin
    cfg = clk_divider_cfg::type_id::create("cfg");
    cfg.print();
  end
endmodule