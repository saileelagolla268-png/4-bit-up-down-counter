`timescale 1ns/1ps

module up_down_counter_4bit_tb;

    reg        clk;
    reg        reset;
    reg        up_down;
    wire [3:0] count;

    // Instantiate the Design Under Test
    up_down_counter_4bit dut (
        .clk(clk),
        .reset(reset),
        .up_down(up_down),
        .count(count)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin

        // Generate waveform
        $dumpfile("up_down_counter_4bit.vcd");
        $dumpvars(0, up_down_counter_4bit_tb);

        // Initial values
        clk     = 1'b0;
        reset   = 1'b1;
        up_down = 1'b1;

        $display("================================================");
        $display("       4-BIT UP/DOWN COUNTER TESTBENCH");
        $display("================================================");
        $display(" Time | CLK | RESET | MODE | COUNT | DECIMAL");
        $display("------------------------------------------------");

        // Reset
        #10;
        $display(" %4t |  %b  |   %b   |  UP  |  %b  |   %0d",
                 $time, clk, reset, count, count);

        // Release reset
        reset = 1'b0;

        // ==============================
        // UP COUNTING
        // ==============================

        up_down = 1'b1;

        #10;
        $display(" %4t |  %b  |   %b   |  UP  |  %b  |   %0d",
                 $time, clk, reset, count, count);

        #10;
        $display(" %4t |  %b  |   %b   |  UP  |  %b  |   %0d",
                 $time, clk, reset, count, count);

        #10;
        $display(" %4t |  %b  |   %b   |  UP  |  %b  |   %0d",
                 $time, clk, reset, count, count);

        #10;
        $display(" %4t |  %b  |   %b   |  UP  |  %b  |   %0d",
                 $time, clk, reset, count, count);

        #10;
        $display(" %4t |  %b  |   %b   |  UP  |  %b  |   %0d",
                 $time, clk, reset, count, count);

        // ==============================
        // DOWN COUNTING
        // ==============================

        up_down = 1'b0;

        #10;
        $display(" %4t |  %b  |   %b   | DOWN |  %b  |   %0d",
                 $time, clk, reset, count, count);

        #10;
        $display(" %4t |  %b  |   %b   | DOWN |  %b  |   %0d",
                 $time, clk, reset, count, count);

        #10;
        $display(" %4t |  %b  |   %b   | DOWN |  %b  |   %0d",
                 $time, clk, reset, count, count);

        #10;
        $display(" %4t |  %b  |   %b   | DOWN |  %b  |   %0d",
                 $time, clk, reset, count, count);

        #10;
        $display(" %4t |  %b  |   %b   | DOWN |  %b  |   %0d",
                 $time, clk, reset, count, count);

        $display("------------------------------------------------");
        $display("Simulation completed successfully.");

        $finish;

    end

endmodule
