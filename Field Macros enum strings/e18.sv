`include "uvm_macros.svh"
import uvm_pkg::*;

typedef enum {STANDARD, COMPLEMENTARY, PUSH_PULL} pwm_mode_e;

class pwm_peripheral_cfg extends uvm_object;
  pwm_mode_e mode = COMPLEMENTARY;
  string target_timer = "TIMER_B";
  real output_frequency_khz = 250.75;

  `uvm_object_utils_begin(pwm_peripheral_cfg)
    `uvm_field_enum(pwm_mode_e, mode, UVM_DEFAULT)
    `uvm_field_string(target_timer, UVM_DEFAULT)
    `uvm_field_real(output_frequency_khz, UVM_DEFAULT)
  `uvm_object_utils_end

  function new(string name = "pwm_peripheral_cfg");
    super.new(name);
  endfunction
endclass

module tb;
  pwm_peripheral_cfg cfg;
  initial begin
    cfg = pwm_peripheral_cfg::type_id::create("cfg");
    cfg.print();
  end
endmodule