module tb_priority_encoder_4to2;

    reg  [3:0] in;
    wire [1:0] out;
    wire       valid;

    priority_encoder_4to2 dut (
        .in(in),
        .out(out),
        .valid(valid)
    );

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, tb_priority_encoder_4to2);
        $display("Input\tOutput\tValid");

        in = 4'b0000; #10; $display("%b\t%02b\t%b", in, out, valid);
        in = 4'b0001; #10; $display("%b\t%02b\t%b", in, out, valid);
        in = 4'b0010; #10; $display("%b\t%02b\t%b", in, out, valid);
        in = 4'b0100; #10; $display("%b\t%02b\t%b", in, out, valid);
        in = 4'b1000; #10; $display("%b\t%02b\t%b", in, out, valid);
        in = 4'b1110; #10; $display("%b\t%02b\t%b", in, out, valid);

        $finish;
    end

endmodule
