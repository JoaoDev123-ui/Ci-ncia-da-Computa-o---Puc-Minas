#   Nome: João Pedro Sales de Deus
#   Matrícula: 903114
#   Professor: Theldo Cruz Franqueira

def double2bin(x, precision=10):
# Parte inteira
    inteiro = int(x)
    frac = x - inteiro
    
    bin_inteiro = bin(inteiro)[2:]  # remove o '0b'
    
# Parte fracionária
    bin_frac = ''
    count = 0
    while frac > 0 and count < precision:
        frac *= 2
        bit = int(frac)
        bin_frac += str(bit)
        frac -= bit
        count += 1
    
    return f"{bin_inteiro}.{bin_frac}(2)"

# Testando com os números do problema
numeros = [0.875, 1.25, 3.75, 4.125, 7.625]
for n in numeros:
    print(f"{n} -> {double2bin(n)}")
