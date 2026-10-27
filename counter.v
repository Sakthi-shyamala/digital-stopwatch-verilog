module counter(
    input clk,
    input reset,
    input enable,
    output reg [5:0] count
);

always @(posedge clk or posedge reset)
begin
    if(reset)
        count <= 6'd0;

    else if(enable)
    begin
        if(count == 6'd59)
            count <= 6'd0;
        else
            count <= count + 1;
    end
end

endmodule