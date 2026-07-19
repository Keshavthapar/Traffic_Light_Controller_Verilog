`timescale 1ns/1ps

module Traffic_Light_Controller_TB;

reg clk;
reg rst;

wire [2:0] light_M1;
wire [2:0] light_S;
wire [2:0] light_MT;
wire [2:0] light_M2;

Traffic_Light_Controller dut(
    .clk(clk),
    .rst(rst),
    .light_M1(light_M1),
    .light_S(light_S),
    .light_MT(light_MT),
    .light_M2(light_M2)
);

// Clock generation
always #5 clk = ~clk;

initial begin
    clk = 0;

    // Reset
    rst = 1;
    #20;
    rst = 0;

    // Run simulation
    #300;

    $finish;
end

endmodule