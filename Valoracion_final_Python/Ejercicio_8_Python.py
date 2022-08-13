# Ejercicio 8 en python de valoracion final
# Crear una tupla en Python con el nombre "Historial4" la cual contenga los siguientes valores:
# 7510 , 7960, 76180, 800, 4100
# Que representa monto de atencion en pesos por diferentes servicios/consultas de la 
# mascota "Olivia". Cree una funcion para determinar el valor minimo de atencion gastada
# en "Olivia" mostrandolo en pantalla.


def monto_min(valores):
    minimo = valores[0]
    for i in valores:
        if i < minimo:
            minimo = i
    return minimo

Historial4 = (7510, 7960, 76180, 800, 4100)
minimo = Historial4[0]

print("El valor minimo es:", monto_min(Historial4))
