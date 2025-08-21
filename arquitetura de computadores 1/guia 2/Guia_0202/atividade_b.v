/*
    Nome: João Pedro Sales de Deus
    Matrícula: 903114
    Professor: Theldo Cruz Franqueira
*/

module Guia_0201;

// Variáveis
real x;                // parte fracionária
integer y;             // contador de bits
reg [7:0] frac_bin;    // binário da parte fracionária
reg [7:0] int_bin;     // binário da parte inteira
integer int_part;      // parte inteira do número

// Função para converter a parte inteira → binário
task int2bin;
    input integer value;
    output reg [7:0] bin;
    integer i;
    begin
        bin = 0;
        i = 0;
        while (value > 0) begin
            bin[i] = value % 2;
            value = value / 2;
            i = i + 1;
        end
    end
endtask

// Função para converter a parte fracionária → binário
task frac2bin;
    input real value;
    output reg [7:0] bin;
    integer i;
    begin
        x = value; // Guardar o valor da variável value em x
        bin = 0; // Inicializar o valor da variável bin com 0
        y = 7; // Contador começando de 7
        while (x > 0 && y >= 0) begin // Loop de repetição com verificação de (x > 0 e y >= 0)
            if (x * 2 >= 1) begin // Conferir se x*2 >= 1
                bin[y] = 1; // Se a parte inteira for >= 1, coloca 1
                x = (x * 2) - 1; // Remove a parte inteira
            end 
            else begin
                bin[y] = 0;
                x = x * 2;
            end
            $display("resultado = 0.%8b", bin); // Printando o valor atualizado
            y = y - 1; // Decrementa o contador
        end
    end
endtask

// Função para imprimir somente os bits relevantes da parte inteira / fracionária
task print_bin;
    input [7:0] bin;
    integer i;
    integer started;
    begin
        started = 0;
        for (i = 7; i >= 0; i = i - 1) begin
            if (bin[i] === 1'b1) started = 1; // Começar a imprimir no primeiro 1
            if (started) $write("%b", bin[i]);
        end
        if (!started) $write("0"); // Se todos os bits forem 0
    end
endtask

// Main
initial begin : main
    $display("Guia_0201 - Conversão Decimal → Binário\n");

    // a) 0,875
    int_part = 0;
    int2bin(int_part, int_bin);
    frac2bin(0.875, frac_bin);
    $write("a) Resultado final: ");
    print_bin(int_bin);
    $write(".");
    print_bin(frac_bin);
    $write("₂\n\n");

    // b) 1,25
    int_part = 1;
    int2bin(int_part, int_bin);
    frac2bin(0.25, frac_bin);
    $write("b) Resultado final: ");
    print_bin(int_bin);
    $write(".");
    print_bin(frac_bin);
    $write("₂\n\n");

    // c) 3,75
    int_part = 3;
    int2bin(int_part, int_bin);
    frac2bin(0.75, frac_bin);
    $write("c) Resultado final: ");
    print_bin(int_bin);
    $write(".");
    print_bin(frac_bin);
    $write("₂\n\n");

    // d) 4,125
    int_part = 4;
    int2bin(int_part, int_bin);
    frac2bin(0.125, frac_bin);
    $write("d) Resultado final: ");
    print_bin(int_bin);
    $write(".");
    print_bin(frac_bin);
    $write("₂\n\n");

    // e) 7,625
    int_part = 7;
    int2bin(int_part, int_bin);
    frac2bin(0.625, frac_bin);
    $write("e) Resultado final: ");
    print_bin(int_bin);
    $write(".");
    print_bin(frac_bin);
    $write("₂\n\n");

end
endmodule
