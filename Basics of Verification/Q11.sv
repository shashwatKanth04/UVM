module tb;
  class transaction;
    rand bit [7:0] data;
  endclass

  class Generator;
    rand bit [3:0] id;
    transaction tr; // Class handle inside Generator

    function new();
      tr = new();
    endfunction

    // Deep Copy Method
    function Generator deep_copy();
      Generator copy_obj;
      

      copy_obj = new();
      

      copy_obj.id = this.id;
      

      copy_obj.tr.data = this.tr.data;
      
      return copy_obj;
    endfunction
  endclass

  initial begin
    Generator gen_orig;
    Generator gen_copy;


    gen_orig = new();
    gen_orig.id = 4'hA;
    gen_orig.tr.data = 8'hFF;


    gen_copy = gen_orig.deep_copy();

    $display("--- Value Verification ---");
    $display("Original -> id: 0x%0h, tr.data: 0x%0h", gen_orig.id, gen_orig.tr.data);
    $display("Copied   -> id: 0x%0h, tr.data: 0x%0h", gen_copy.id, gen_copy.tr.data);

    gen_copy.id = 4'hB;
    gen_copy.tr.data = 8'h00;

    $display("\n--- Memory Space Verification (After altering copy) ---");
    $display("Original -> id: 0x%0h, tr.data: 0x%0h (Remained unchanged!)", gen_orig.id, gen_orig.tr.data);
    $display("Copied   -> id: 0x%0h, tr.data: 0x%0h (Successfully modified!)", gen_copy.id, gen_copy.tr.data);
    
    if (gen_orig != gen_copy && gen_orig.tr != gen_copy.tr) begin
      $display("\nSUCCESS: Deep copy verified. Objects occupy distinct memory locations.");
    end else begin
      $display("\nFAILURE: Objects share memory allocations.");
    end
  end
endmodule