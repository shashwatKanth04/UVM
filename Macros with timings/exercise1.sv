`include "uvm_macros.svh"
import uvm_pkg::*;

class obj extends uvm_object;
    `uvm_object_utils(obj);
    function new(string path="obj");
        super.new(path);
    endfunction

    rand bit [3:0]a;
    constraint c1{a%2==0;};
endclass

module tb;
    obj o;

    initial begin
        o= new("obj");
        repeat (10) begin
            o.randomize();
            `uvm_info("tb",$sformatf("Even numbers are %0d",o.a),UVM_MEDIUM);
        end
    end
endmodule