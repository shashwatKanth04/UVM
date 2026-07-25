`include "uvm_macros.svh"
import uvm_pkg ::*;

class obj extends uvm_object;
        `uvm_object_utils(obj);

        function new(string path ="obj");
            super.new(path);
        endfunction

        rand bit [3:0]a;
        constraint c{a>=5;a<=10;};
endclass

module tb;
    obj o;

    initial begin
        o= new("obj");

        repeat(10)
        begin                                                           
        o.randomize();
        `uvm_info("tb",$sformatf("the values are %0d",o.a),UVM_MEDIUM);
        end
    end
    endmodule