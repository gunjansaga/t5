module alu (
    input  logic [3:0] a,
    input  logic [3:0] b,
    input  logic [2:0] sel,
    output logic [4:0] y
);

    always_comb begin
        case (sel)
            3'd0: y = a + b;
            3'd1: y = a - b;
            3'd2: y = a & b;
            3'd3: y = a | b;
            3'd4: y = a ^ b;
            default: y = 5'd0;
        endcase
    end

endmodule
