/*
    Nome: João Pedro Sales de Deus
    Matrícula: 903114
    Professor: Theldo Cruz Franqueira
*/

module Guia_0201;

// Variáveis
 real x;            // decimal
 real power2;       // potência de 2
 integer y;         // contador
 reg [7:0] b;       // binário (apenas parte fracionária)

// Função para converter parte fracionária binário em decimal
task double2bin;
    input [7:0] valor;
    begin
        x = 0.0;
        power2 = 1.0;
        y = 7;
        b = valor;
        $display("b = 0.%8b", b);
        while (y >= 0) begin
            power2 = power2 / 2.0;
            if (b[y] == 1) begin
                x = x + power2;
            end
            y = y - 1;
        end
        $display("x = %f\n", x);
    end
endtask

// actions
initial begin : main
    $display("Guia_0201 - Testes");

    double2bin(8'b00111000);

    double2bin(8'b01001000);

    double2bin(8'b10101000);

    double2bin(8'b11101000);
    $display("Resultado final = %f\n", 1 + x);

    double2bin(8'b11001000);
    $display("Resultado final = %f\n", 3 + x);

end // main
endmodule // Guia_0201

/*
OBS: Tentei refatorar o código para caber todos os exemplos do exercício a, pois assim ficaria mais "legível" e bom para treinar verilog hahaha.
*/
