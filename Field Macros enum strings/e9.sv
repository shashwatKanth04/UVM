`include "uvm_macros.svh"
import uvm_pkg::*;

typedef enum {RES_8BIT, RES_10BIT, RES_12BIT, RES_16BIT} adc_res_e;

class adc_config extends uvm_object;
  adc_res_e resolution = RES_12BIT;
  real ref_voltage = 3.3;
  string model_number = "ADC_SAR_TI_09";

  `uvm_object_utils_begin(adc_config)
    `uvm_field_enum(adc_res_e, resolution, UVM_DEFAULT)
    `uvm_field_real(ref_voltage, UVM_DEFAULT)
    `uvm_field_string(model_number, UVM_DEFAULT)
  `uvm_object_utils_end

  function new(string name = "adc_config");
    super.new(name);
  endfunction
endclass

module tb;
  adc_config cfg;
  initial begin
    cfg = adc_config::type_id::create("cfg");
    cfg.print();
  end
endmodule