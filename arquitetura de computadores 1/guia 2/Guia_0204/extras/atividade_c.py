#   Nome: João Pedro Sales de Deus
#   Matrícula: 903114
#   Professor: Theldo Cruz Franqueira

def dbase2base(base1, base2, x_str):
# Separar parte inteira e fracionária
    if ',' in x_str:
        int_part, frac_part = x_str.split(',')
    elif '.' in x_str:
        int_part, frac_part = x_str.split('.')
    else:
        int_part, frac_part = x_str, ''

# Converter parte inteira para decimal
    dec_int = int(int_part, base1)

# Converter parte fracionária para decimal
    dec_frac = 0
    for i, digit in enumerate(frac_part, 1):
        dec_frac += int(digit, base1) / (base1 ** i)

    # Número decimal total
    dec_number = dec_int + dec_frac

    # Converter decimal para base2
    # Parte inteira
    int_part_out = ''
    int_temp = int(dec_number)
    if int_temp == 0:
        int_part_out = '0'
    else:
        while int_temp > 0:
            rem = int_temp % base2
            int_part_out = (hex(rem)[2:].upper() if rem >= 10 else str(rem)) + int_part_out
            int_temp //= base2

    # Parte fracionária
    frac_part_out = ''
    frac_temp = dec_number - int(dec_number)
    count = 0
    while frac_temp > 0 and count < 12:
        frac_temp *= base2
        digit = int(frac_temp)
        frac_part_out += hex(digit)[2:].upper() if digit >= 10 else str(digit)
        frac_temp -= digit
        count += 1

    return f"{int_part_out},{frac_part_out}" if frac_part_out else int_part_out


# Testando os exemplos
exemplos = [
    ('0,213', 4, 2),
    ('0,4D3', 16, 4),
    ('0,654', 8, 2),
    ('6,1435', 8, 4),
    ('A,DE5', 16, 4)
]

for x_str, base1, base2 in exemplos:
    resultado = dbase2base(base1, base2, x_str)
    print(f"{x_str} ({base1}) → {resultado} ({base2})")
