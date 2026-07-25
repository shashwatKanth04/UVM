class Transaction;
  rand bit [7:0] addr;
  rand bit [7:0] data;
  constraint c_addr_range {
    addr >= 100;
    addr <= 150;
  }

  constraint c_data_range {
    data > 200;
  }

  function void display();
    $display("addr = %0d, data = %0d", this.addr, this.data);
  endfunction
endclass

module tb;
  initial begin
    Transaction tx;
    tx = new();

    $display("--- Class-Based Randomization Samples ---");
    
    repeat(5) begin
      if (tx.randomize()) begin
        tx.display();
      end else begin
        $error("Randomization failed!");
      end
    end
  end
endmodule