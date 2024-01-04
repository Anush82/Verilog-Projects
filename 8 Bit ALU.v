module ALU_8bit(
    input [7:0] a,
    input [7:0] b,
    
    input [2:0] opcode,
    output reg [7:0] op
    );
    always@(a,b,opcode)
    begin
    case(opcode)
    3'b000 : begin op=a+b;$display("addition");end
     3'b001 : begin op=a-b;$display("subtraction");end
      3'b010 : begin op=a*b;$display("multiplication");end
       3'b011 : begin op=a<<1;$display("left shift");end
        3'b100: begin op=a>>1;$display("right shift");end
         3'b101 : begin op=a&b;$display("logical AND");end
          3'b110 : begin op=a|b;$display("logical OR");end
           3'b111 : begin op=a^b;$display("logical XOR");end
           endcase
    end
endmodule
