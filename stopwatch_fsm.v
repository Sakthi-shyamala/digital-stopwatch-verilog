module stopwatch_fsm(
    input clk,
    input reset,
    input start,
    input pause,
    output reg count_enable
);


parameter IDLE    = 2'b00;
parameter RUNNING = 2'b01;
parameter PAUSED  = 2'b10;

reg [1:0] current_state, next_state;

always @(posedge clk or posedge reset)
begin
    if (reset)
        current_state <= IDLE;
    else
        current_state <= next_state;
end


always @(*)
begin
    case(current_state)

        IDLE:
        begin
            if(start)
                next_state = RUNNING;
            else
                next_state = IDLE;
        end

        RUNNING:
        begin
            if(pause)
                next_state = PAUSED;
            else
                next_state = RUNNING;
        end

        PAUSED:
        begin
            if(start)
                next_state = RUNNING;
            else
                next_state = PAUSED;
        end

        default:
            next_state = IDLE;

    endcase
end

always @(*)
begin
    case(current_state)

        IDLE:
            count_enable = 0;

        RUNNING:
            count_enable = 1;

        PAUSED:
            count_enable = 0;

        default:
            count_enable = 0;

    endcase
end

endmodule