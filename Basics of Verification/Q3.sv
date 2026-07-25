module dynaic_array;
    int data[];
    initial begin
    data=new[4];
    foreach(data[i])
        data[i]=i;
        foreach(data[i])
        $display("the values are =%0d",data[i]);
    end
endmodule    