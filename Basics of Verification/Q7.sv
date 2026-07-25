module tb;
    logic clk;
    logic [5:0] addrm; 
    logic wrm;
    logic enm;

    // Clock Generation
    initial clk = 0;
    always #20 clk = ~clk;

    // Stimulus Task
    task stimulus(input logic [5:0] addr, input logic wr, input logic en); 
        @(posedge clk);
        addrm = addr;
        wrm   = wr;
        enm   = en;
    endtask

    // Monitoring Output
    initial begin
       
        $monitor("Time=%0t | clk=%b | addr=8'h%h (%0d) | wr=%b | en=%b", $time, clk, addrm, addrm, wrm, enm);
    end

    // Test Sequence
    initial begin
        // Initialize signals at time 0 to avoid 'x' or 'z' states
        addrm = 6'h0;
        wrm   = 1'b0;
        enm   = 1'b0;

        #5; 
        stimulus(6'h1A, 1'b1, 1'b1);
        stimulus(6'h2A, 1'b1, 1'b1); 
        
        #40;
        $finish; 
    end
endmodule