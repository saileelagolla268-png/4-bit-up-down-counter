`timescale 1ns/1ps

module up_down_counter_4bit (
    input  wire       clk,
    input  wire       reset,
    input  wire       up_down,
    output reg [3:0]  count
);

    // 4-bit synchronous UP/DOWN counter
    always @(posedge clk) begin
        if (reset)
            count <= 4'b0000;
        else if (up_down)
            count <= count + 4'b0001;  // UP count
        else
            count <= count - 4'b0001;  // DOWN count
    end

endmodule
