module alu_tb;

  reg [2:0] opcode;
  reg [7:0] operand1;
  reg [7:0] operand2;
  wire [7:0] result;

  // Instantiate ALU
  alu alu_inst (
    .opcode(opcode),
    .operand1(operand1),
    .operand2(operand2),
    .result(result)
  );

  initial begin
    // Test cases for each operation
    // Add
    opcode = 3'b000; operand1 = 8'd50; operand2 = 8'd25; #10;
    // Sub
    opcode = 3'b001; operand1 = 8'd50; operand2 = 8'd25; #10;
    // Not
    opcode = 3'b010; operand1 = 8'd50; operand2 = 8'd25; #10;
    // And
    opcode = 3'b011; operand1 = 8'd50; operand2 = 8'd25; #10;
    // Or
    opcode = 3'b100; operand1 = 8'd50; operand2 = 8'd25; #10;
    // Xor
    opcode = 3'b101; operand1 = 8'd50; operand2 = 8'd25; #10;
    // Shift left
    opcode = 3'b110; operand1 = 8'd50; operand2 = 8'd2; #10;
    // Shift right
    opcode = 3'b111; operand1 = 8'd50; operand2 = 8'd2; #10;

    $finish;
  end

endmodule