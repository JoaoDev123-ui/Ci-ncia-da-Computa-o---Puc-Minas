def complemento1(nBits, numero):
    mascara = (1 << nBits) - 1
    
    comp1 = (~numero) & mascara
    
    return comp1


def main():
    nBits = 5
    numero = 0b1001
    resultado = complemento1(nBits, numero)
    
    print(f"Complemento de 1 de {numero:b} com {nBits} bits é: {resultado:b}")


main()
