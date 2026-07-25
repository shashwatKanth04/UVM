module tb_mult;
  typedef int array[32];

  function array gen_multiple();
    array local_arr;
    for(int i = 0; i < 32; i++) begin
      local_arr[i] = i * 8;
    end
    return local_arr;
  endfunction

  initial begin
    array res_arr;
    res_arr = gen_multiple(); 
    $display("   Array: %p", res_arr);
  end
endmodule