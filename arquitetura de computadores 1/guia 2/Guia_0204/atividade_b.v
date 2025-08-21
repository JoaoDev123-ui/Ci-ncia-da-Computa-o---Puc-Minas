/*
    Nome: João Pedro Sales de Deus
    Matrícula: 903114
    Professor: Theldo Cruz Franqueira
*/

module Guia_0204_exemplos;
  // --- Variáveis ---
  reg [31:0] b_bin;
  integer q[15:0];
  
  initial begin : main
    $display("Guia_0204 - Conversões de Bases\n");

    // a) 0,213(4) = X(2)
    b_bin = 8'b10_01_11;
    $display("a) 0,213₄ → binário = 0.%6b", b_bin);

    // b) 0,4D3(16) = X(4)
    b_bin = 12'b0100_1101_0011;
    q[5] = b_bin[11:10]; q[4] = b_bin[9:8];
    q[3] = b_bin[7:6]; q[2] = b_bin[5:4];
    q[1] = b_bin[3:2]; q[0] = b_bin[1:0];
    $display("b) 0,4D3₁₆ → quaternário = 0.%d%d%d%d%d%d", q[5],q[4],q[3],q[2],q[1],q[0]);

    // c) 0,654(8) = X(2)
    b_bin = 9'b110_101_100;
    $display("c) 0,654₈ → binário = 0.%9b", b_bin);

    // d) 6,1435(8) = X(4)
    b_bin = 15'b001_100_011_101;
    $display("d) 6,1435₈ → quaternário = 12.%d%d%d%d%d%d", 
              b_bin[14:13], b_bin[12:11], b_bin[10:9], b_bin[8:7], b_bin[6:5], b_bin[4:3]);

    // e) A,DE5(16) = X(4)
    b_bin = 12'b1101_1110_0101;
    $display("e) A,DE5₁₆ → quaternário = 22.%d%d%d%d%d%d", 
              b_bin[11:10], b_bin[9:8], b_bin[7:6], b_bin[5:4], b_bin[3:2], b_bin[1:0]);
  end
endmodule
