class Transaction;
  rand bit [3:0] id;
  rand bit [7:0] payload;
  constraint c_id_range { id > 0; id < 10; }

  function void pre_randomize();
    $display("\n[PRE-RANDOMIZE] Hook triggered.");
    $display(" Current values before randomization -> id: %0d, payload: %0d", this.id, this.payload);
  endfunction

  function void post_randomize();
    $display("[POST-RANDOMIZE] Hook triggered.");
    $display("                 New values after randomization   -> id: %0d, payload: %0d", this.id, this.payload);
  endfunction
endclass

module tb;
  initial begin
    Transaction tx;
    tx = new();


    $display("--- Starting Randomization 1 ---");
    if (!tx.randomize()) $error("Randomization failed!");
    $display("\n--- Starting Randomization 2 ---");
    if (!tx.randomize()) $error("Randomization failed!");
  end
endmodule