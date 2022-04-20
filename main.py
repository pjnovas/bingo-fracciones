import random

numeros = ['1,5',
           '0,2',
           '0,15',
           '0,3',
           '1,25',
           '0,5',
           '0,25',
           '0,75',
           '3,4',
           '0,03',
           '1,7',
           '9,4',
           '0,003',
           '0,94',
           '0,17',
           '30,5',
           '3,05',
           '0,305',
           '0,9',
           '0,09',
           '0,009',
           '4,8',
           '0,048',
           '4,08',
           '3,5',
           '0,083',
           '8,03']

cantidadNumeros = 6
cantidadCartones = 80

cartones = []

while (len(cartones) < cantidadCartones):
    nuevocarton = set(random.sample(numeros, cantidadNumeros))

    existeCarton = False
    for carton in cartones:
        if(nuevocarton == carton):
            existeCarton = True

    if (existeCarton == False):
        cartones.append(nuevocarton)


for indice, carton in enumerate(cartones):
    for num in carton:
        print(num, end=';')
    print('')
