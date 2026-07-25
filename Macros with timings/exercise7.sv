`include "uvm_macros.svh"
import uvm_pkg::*;

class obj extends uvm_object;
    `uvm_object_utils(obj);

    function new(string path="obj");
        super.new(path);
    endfunction

    rand bit [7:0]addr;
    rand bit [7:0]data;
    

endclass

module tb;
    obj o;
    initial begin
        o=new("obj");
        repeat(10) begin
        o.randomize();
        `uvm_info("tb",$sformatf("the value of addr =%0d and data =%0d",o.addr,o.data),UVM_MEDIUM);
        end
    end
endmodule