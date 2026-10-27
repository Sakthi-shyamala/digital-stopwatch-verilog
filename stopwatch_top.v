module stopwatch_top(

    input clk,
    input reset,
    input start,
    input pause,
    output [5:0] count

);

wire count_enable;


stopwatch_fsm FSM (

    .clk(clk),
    .reset(reset),
    .start(start),
    .pause(pause),
    .count_enable(count_enable)

);

counter COUNTER (

    .clk(clk),
    .reset(reset),
    .enable(count_enable),
    .count(count)

);

endmodule
