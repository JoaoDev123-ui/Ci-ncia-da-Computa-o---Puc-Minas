/*
    Nome: João Pedro Sales de Deus
    Matrícula: 903114
    Professor: Theldo Cruz Franqueira
*/

module Guia_0203;
    reg [7:0] b1 = 8'b0101_1000;
    reg [7:0] b2 = 8'b1001_1100;
    reg [7:0] b3 = 8'b1010_0100;
    reg [7:0] b4 = 8'b1101_0100;
    reg [7:0] b5 = 8'b1011_1011;

// actions
initial begin : main
    $display("Guia_0203 - Conversões de base");

    $display("\nExemplo 1:");
    $display("Quaternário = 0.%o%o%o%o", b1[7:6], b1[5:4], b1[3:2], b1[1:0]);

    $display("\nExemplo 2:");
    $display("Octal = 0.%o%o%o", b2[7:5], b2[4:2], b2[1:0]);

    $display("\nExemplo 3:");
    $display("Hex = 0.%x%x", b3[7:4], b3[3:0]);

    $display("\nExemplo 4:");
    $display("Octal = 1.%o%o%o", b4[7:5], b4[4:2], b4[1:0]);

    $display("\nExemplo 5:");
    $display("Hex = %x.%x", b5[7:4], b5[3:0]);
end
endmodule
