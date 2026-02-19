*Top module* module top(
    input clk,
    input rst,
    input btn_valid,       // push button
    output [7:0] led       // show result on LEDs
);

    wire [31:0] conv_out;

    // constant test values
    wire [7:0] pixel  = 8'd10;
    wire [7:0] weight = 8'd5;

    conv2d uut (
        .clk(clk),
        .rst(rst),
        .pixel(pixel),
        .weight(weight),
        .valid(btn_valid),
        .conv_out(conv_out)
    );

    assign led = conv_out[7:0];

endmodule
