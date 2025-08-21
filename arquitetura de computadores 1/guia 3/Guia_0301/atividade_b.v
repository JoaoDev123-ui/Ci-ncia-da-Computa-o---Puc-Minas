/*
    Nome: João Pedro Sales de Deus
    Matrícula: 903114
    Professor: Theldo Cruz Franqueira
*/

module Guia_0301;
// Variáveis padrões
reg [3:0] a = 4'b1001;
reg [3:0] b = 4'b1101;
reg [5:0] c = 6'b101011;
reg [5:0] d = 6'b101101;
reg [5:0] e = 6'b110010;

// Variáveis para armazenar os resultados
reg [3:0] f = 0;
reg [3:0] g = 0;
reg [5:0] h = 0;
reg [5:0] i = 0;
reg [5:0] j = 0;

// Main
initial begin : main
    // A = 1001
    f = ~a + 1; // Atribuindo a variável "f" o inverso do binário armazenado em "a" + 1, ou seja, complemento de 2
    $display ( "C1 = %4b -> C2 = %4b", ~a, f ); // Mostrar na tela o complemento de 1 (Inverso do binário) e a variável "f"

    // B = 1101
    g = ~b + 1; // Atribuindo a variável "g" o inverso do binário armazenado em "b" + 1, ou seja, complemento de 2
    $display ( "C1 = %4b -> C2 = %4b", ~b, g ); // Mostrar na tela o complemento de 1 (Inverso do binário) e a variável "g"

    // C = 101011
    h = ~c + 1; // Atribuindo a variável "h" o inverso do binário armazenado em "c" + 1, ou seja, complemento de 2
    $display ( "C1 = %6b -> C2 = %6b", ~c, h ); // Mostrar na tela o complemento de 1 (Inverso do binário) e a variável "h"

    // D = 101101
    i = ~d + 1; // Atribuindo a variável "i" o inverso do binário armazenado em "d" + 1, ou seja, complemento de 2
    $display ( "C1 = %6b -> C2 = %6b", ~d, i ); // Mostrar na tela o complemento de 1 (Inverso do binário) e a variável "i"

    // E = 110010
    j = ~e + 1; // Atribuindo a variável "j" o inverso do binário armazenado em "e" + 1, ou seja, complemento de 2
    $display ( "C1 = %6b -> C2 = %6b", ~e, j ); // Mostrar na tela o complemento de 1 (Inverso do binário) e a variável "j"
end // fim do main
endmodule // fim da função