#   Nome: João Pedro Sales de Deus
#   Matrícula: 903114
#   Professor: Theldo Cruz Franqueira

def dbin2base(base, bin_str):
    # troca vírgula por ponto
    bin_str = bin_str.replace(",", ".")

    # separa parte inteira e fracionária
    if "." in bin_str:
        inteiro, frac = bin_str.split(".")
    else:
        inteiro, frac = bin_str, ""

    # converte parte inteira para decimal
    inteiro_dec = int(inteiro, 2) if inteiro != "" else 0

    # converte parte fracionária para decimal
    frac_dec = 0
    for i, bit in enumerate(frac, start=1):
        frac_dec += int(bit) * (2 ** -i)

    # monta número decimal
    num = inteiro_dec + frac_dec

    # converte parte inteira para base
    inteiro_base = format(inteiro_dec, 'X' if base == 16 else 'o' if base == 8 else 'b')

    # converte parte fracionária (até 6 dígitos)
    frac_base = ""
    resto = frac_dec
    for _ in range(6):
        resto *= base
        digit = int(resto)
        if base == 16:
            frac_base += format(digit, 'X')
        else:
            frac_base += str(digit)
        resto -= digit
        if resto == 0:
            break

    return inteiro_base + ("." + frac_base if frac_base else "")

print("a) 0,010110(2) -> base 4 :", dbin2base(4, "0.010110"))
print("b) 0,100111(2) -> base 8 :", dbin2base(8, "0.100111"))
print("c) 0,101001(2) -> base 16:", dbin2base(16, "0.101001"))
print("d) 1,110101(2) -> base 8 :", dbin2base(8, "1.110101"))
print("e) 1011,1011(2) -> base 16:", dbin2base(16, "1011.1011"))
