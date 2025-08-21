#   Nome: João Pedro Sales de Deus
#   Matrícula: 903114
#   Professor: Theldo Cruz Franqueira

def bin2double(valor):
# 1) Separar parte inteira e parte fracionária
    if "." in valor:
        parte_inteira, parte_fracionaria = valor.split(".")
    else:
        parte_inteira, parte_fracionaria = valor, ""

    resultado = 0.0

# 2) Converter a parte inteira
    # percorre os dígitos da direita para a esquerda
    for i, digito in enumerate(parte_inteira[::-1]):
        if digito == "1":
            # se o dígito for 1, soma 2^i ao resultado
            resultado += 2 ** i

# 3) Converter a parte fracionária
    # percorre os dígitos da esquerda para a direita
    for i, digito in enumerate(parte_fracionaria, start=1):
        if digito == "1":
            # se o dígito for 1, soma 2^(-i) ao resultado
            resultado += 2 ** (-i)

# 4) Retornar o valor final em decimal
    return resultado


print(bin2double("0.00111"))
print(bin2double("0.01001"))
print(bin2double("0.10101"))
print(bin2double("1.11101"))
print(bin2double("11.11001"))


# OBS: Professor, eu ainda estou em aeds 1 e aqui nós ainda não chegamos nem em loops. Eu gostaria de fazer em C, porém para não "fugir" da demanda do exercício, preferi fazer em python com a ajuda do Chat GPT. Não copiei código, apenas fui perguntando e ele foi me exeplicando como fazer. Demorei umas 1h para entender esse código hahaha.