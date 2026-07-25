class const1;
  rand bit [7:0] addr;
  rand bit [7:0] data;

  constraint range{
    addr >= 16;
    addr <= 63;
  }

  constraint even {
    data % 2 == 0;};


  function void display();
    $display("addr = %0d, data = %0d", addr, data);
  endfunction
endclass

module tb;
  initial begin
    const1 c;
    c = new();

    $display("Randomizing 5 Samples");
    repeat(5) begin
      if (c.randomize()) begin
        c.display();
      end 
      else begin
        $error("Randomization failed!");
      end
    end
  end
endmodule