`timescale 1ns/1ps

module tb_stopwatch;

reg clk;
reg reset;
reg start;
reg pause;

wire [5:0] count;

stopwatch_top DUT (
    .clk(clk),
    .reset(reset),
    .start(start),
    .pause(pause),
    .count(count)
);

always #5 clk = ~clk;

initial
begin
    clk = 0;
    reset = 1;
    start = 0;
    pause = 0;

    #20;
    reset = 0;

    #10;
    start = 1;

    #10;
    start = 0;

    #100;

    pause = 1;

    #10;
    pause = 0;

    #50;

    start = 1;

    #10;
    start = 0;

    #100;

    reset = 1;

    #10;
    reset = 0;

    #50;

    $stop;
end

endmodule