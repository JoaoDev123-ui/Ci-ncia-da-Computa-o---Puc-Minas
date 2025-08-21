/*
    Nome: João Pedro Sales de Deus
    Matrícula: 903114
    Professor: Theldo Cruz Franqueira
*/

module Guia_0205;

    real a, b, c;

    function string real2bin;
        input real x;
        integer i;
        real frac;
        string s;
        begin
            s = "";
            i = x;
            if (i == 0) s = "0";
            while (i > 0) begin
                s = { ((i % 2) ? "1" : "0"), s };
                i = i / 2;
            end
            s = s + ",";
            frac = x - $floor(x);
            for (i = 0; i < 6; i=i+1) begin
                frac = frac*2;
                if (frac >= 1) begin
                    s = {s, "1"};
                    frac = frac - 1;
                end else begin
                    s = {s, "0"};
                end
            end
            real2bin = s;
        end
    endfunction

    initial begin
        $display("Guia_0205 - Operações com binário fracionário");

        a = 5 + 3/8.0;
        b = 2 + 1/4.0;
        c = a + b;
        $display("a) 101,011₂ + 10,01₂ = %s", real2bin(c));

        a = 8 + 1/4.0;
        b = 2 + 3/8.0;
        c = a - b;
        $display("b) 1000,01₂ - 10,011₂ = %s", real2bin(c));

        a = 5 + 6/8.0;
        b = 2 + 3/8.0;
        c = a * b;
        $display("c) 101,110₂ * 10,011₂ = %s", real2bin(c));

        a = 22 + 1/4.0;
        b = 3 + 5/8.0;
        c = a / b;
        $display("d) 10110,01₂ / 11,101₂ = %s", real2bin(c));

        a = 101;
        b = 13;
        c = $realtobits(a) % $realtobits(b);
        $display("e) 1100101₂ %% 1101₂ = %d", $rtoi(c));
    end
endmodule
