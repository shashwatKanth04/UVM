`include "uvm_macros.svh"
import uvm_pkg ::*;

class obj extends uvm_object;
        `uvm_object_utils(obj);

        function new(string path ="obj");
            super.new(path);
        endfunction

        rand bit [3:0]a;
       
endclass

module tb;
    
    obj o1;
    obj o2;
    obj o3;

    initial begin
        o1= new("obj");
        o2= new("obj");
        o3= new("obj");

        repeat(10)
        begin                                                           
        o1.randomize();
        o2.randomize();
        o3.randomize();
        `uvm_info("tb",$sformatf("the values are %0d %0d %0d",o1.a,o2.a,o3.a),UVM_MEDIUM);
        end
    end
    endmodule