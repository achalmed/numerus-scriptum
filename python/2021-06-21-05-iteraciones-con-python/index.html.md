---
documentmode: doc
copyrightnotice: 2021
copyrightext: All rights reserved
title: Bucles e iteraciones en Python
shorttitle: ITERACIONES PYTHON
abstract: Este abstract será actualizado una vez que se complete el contenido final
  del artículo.
keywords: []
categories:
- Python
tags:
- python
- iteracion_python
author-note:
  status-changes:
    affiliation-change: null
    deceased: null
  disclosures:
    study-registration: null
    data-sharing: null
    related-report: null
    conflict-of-interest: El autor no tiene conflictos de interés que revelar.
    financial-support: null
    gratitude: null
    authorship-agreements: null
description: For, while, comprehensions y técnicas de iteración eficiente sobre secuencias
  y contenedores en Python.
eval: true
citation:
  type: article-journal
  author:
  - Edison Achalma
  pdf-url: https://numerus-scriptum.netlify.app/python/2021-06-21-05-iteraciones-con-python/index.pdf
date: 2021-06-21
draft: false
image: ../featured.jpg
curso: python_curso_base
execute:
  enabled: true                   # lección de Python con salidas reales; freeze: true (de la sección) la ejecuta una vez (autor, 2026-10-20)
---

En esta quinta guía exploraremos las iteraciones, una de las herramientas más poderosas de la programación. Las iteraciones nos permiten procesar grandes cantidades de datos económicos de manera automatizada y eficiente.

# Actualización de variables

La actualización de variables es fundamental en iteraciones. Consiste en modificar el valor de una variable usando su valor previo.

## Operadores de actualización

::: {#c9c785ae .cell execution_count=1}
``` {.python .cell-code}
# Inicializar contador
contador = 0
print(f"Valor inicial: {contador}")

# Incrementar
contador = contador + 1
print(f"Después de +1: {contador}")

# Forma abreviada (más común)
contador += 1
print(f"Después de +=1: {contador}")

# Decrementar
contador -= 1
print(f"Después de -=1: {contador}")

# Multiplicar
contador *= 2
print(f"Después de *=2: {contador}")

# Dividir
contador /= 2
print(f"Después de /=2: {contador}")

# Potencia
contador **= 2
print(f"Después de **=2: {contador}")
```

::: {.cell-output .cell-output-stdout}
```
Valor inicial: 0
Después de +1: 1
Después de +=1: 2
Después de -=1: 1
Después de *=2: 2
Después de /=2: 1.0
Después de **=2: 1.0
```
:::
:::


## Aplicaciones económicas

::: {#c57ef309 .cell execution_count=2}
``` {.python .cell-code}
# Ejemplo 1: Acumular ventas diarias
ventas_total = 0
ventas_diarias = [1200, 1350, 980, 1500, 1100]

for venta in ventas_diarias:
    ventas_total += venta

print(f"Ventas totales: S/ {ventas_total:,.2f}")

# Ejemplo 2: Calcular interés compuesto
capital = 10000
tasa_anual = 0.08
anos = 5

for ano in range(anos):
    interes = capital * tasa_anual
    capital += interes
    print(f"Año {ano + 1}: S/ {capital:,.2f}")

print(f"\nCapital final: S/ {capital:,.2f}")

# Ejemplo 3: Contador de transacciones por tipo
num_compras = 0
num_ventas = 0
num_transferencias = 0

transacciones = ['compra', 'venta', 'compra', 'transferencia', 'venta', 'compra']

for tipo in transacciones:
    if tipo == 'compra':
        num_compras += 1
    elif tipo == 'venta':
        num_ventas += 1
    elif tipo == 'transferencia':
        num_transferencias += 1

print(f"Compras: {num_compras}")
print(f"Ventas: {num_ventas}")
print(f"Transferencias: {num_transferencias}")
```

::: {.cell-output .cell-output-stdout}
```
Ventas totales: S/ 6,130.00
Año 1: S/ 10,800.00
Año 2: S/ 11,664.00
Año 3: S/ 12,597.12
Año 4: S/ 13,604.89
Año 5: S/ 14,693.28

Capital final: S/ 14,693.28
Compras: 3
Ventas: 2
Transferencias: 1
```
:::
:::


# Bucles definidos con for

Los bucles `for` permiten iterar sobre una secuencia de elementos un número determinado de veces.

## Función range()

::: {#e6430199 .cell execution_count=3}
``` {.python .cell-code}
# range(stop): de 0 hasta stop-1
print("range(5):")
for i in range(5):
    print(i)

# range(start, stop): de start hasta stop-1
print("\nrange(2, 7):")
for i in range(2, 7):
    print(i)

# range(start, stop, step): de start hasta stop-1 con paso
print("\nrange(0, 10, 2):")
for i in range(0, 10, 2):
    print(i)

# Paso negativo
print("\nrange(10, 0, -1):")
for i in range(10, 0, -1):
    print(i)
```

::: {.cell-output .cell-output-stdout}
```
range(5):
0
1
2
3
4

range(2, 7):
2
3
4
5
6

range(0, 10, 2):
0
2
4
6
8

range(10, 0, -1):
10
9
8
7
6
5
4
3
2
1
```
:::
:::


## Aplicaciones económicas básicas

::: {#32b0e880 .cell execution_count=4}
``` {.python .cell-code}
# Ejemplo 1: Generar serie de años
print("Proyección económica 2024-2033:")
for ano in range(2024, 2034):
    print(f"Año {ano}")

# Ejemplo 2: Calcular tabla de amortización simplificada
print("\nTabla de amortización (primeros 5 años):")
prestamo = 100000
tasa_mensual = 0.01
cuota = 2000

for mes in range(1, 61):
    interes = prestamo * tasa_mensual
    amortizacion = cuota - interes
    prestamo -= amortizacion
    
    if mes % 12 == 0:
        print(f"Año {mes//12}: Saldo restante S/ {prestamo:,.2f}")

# Ejemplo 3: Simulación de inversión mensual
print("\nSimulación de ahorro mensual:")
ahorro = 0
aporte_mensual = 500

for mes in range(1, 13):
    ahorro += aporte_mensual
    print(f"Mes {mes:2d}: S/ {ahorro:,.2f}")

print(f"\nAhorro anual: S/ {ahorro:,.2f}")
```

::: {.cell-output .cell-output-stdout}
```
Proyección económica 2024-2033:
Año 2024
Año 2025
Año 2026
Año 2027
Año 2028
Año 2029
Año 2030
Año 2031
Año 2032
Año 2033

Tabla de amortización (primeros 5 años):
Año 1: Saldo restante S/ 87,317.50
Año 2: Saldo restante S/ 73,026.54
Año 3: Saldo restante S/ 56,923.12
Año 4: Saldo restante S/ 38,777.39
Año 5: Saldo restante S/ 18,330.33

Simulación de ahorro mensual:
Mes  1: S/ 500.00
Mes  2: S/ 1,000.00
Mes  3: S/ 1,500.00
Mes  4: S/ 2,000.00
Mes  5: S/ 2,500.00
Mes  6: S/ 3,000.00
Mes  7: S/ 3,500.00
Mes  8: S/ 4,000.00
Mes  9: S/ 4,500.00
Mes 10: S/ 5,000.00
Mes 11: S/ 5,500.00
Mes 12: S/ 6,000.00

Ahorro anual: S/ 6,000.00
```
:::
:::


# Iteración sobre colecciones

Los bucles `for` pueden iterar directamente sobre listas, tuplas, diccionarios y otros objetos iterables.

## Iterar sobre listas

::: {#ef6c9ef0 .cell execution_count=5}
``` {.python .cell-code}
# Lista de sectores económicos
sectores = ['Agricultura', 'Minería', 'Manufactura', 'Servicios', 'Construcción']

print("Sectores económicos:")
for sector in sectores:
    print(f"  - {sector}")

# Con índice usando enumerate()
print("\nSectores con índice:")
for i, sector in enumerate(sectores):
    print(f"{i + 1}. {sector}")

# Desde índice específico
print("\nDesde el segundo sector:")
for i, sector in enumerate(sectores, start=1):
    print(f"{i}. {sector}")
```

::: {.cell-output .cell-output-stdout}
```
Sectores económicos:
  - Agricultura
  - Minería
  - Manufactura
  - Servicios
  - Construcción

Sectores con índice:
1. Agricultura
2. Minería
3. Manufactura
4. Servicios
5. Construcción

Desde el segundo sector:
1. Agricultura
2. Minería
3. Manufactura
4. Servicios
5. Construcción
```
:::
:::


## Iterar sobre tuplas

::: {#d3fe76dc .cell execution_count=6}
``` {.python .cell-code}
# Tupla de indicadores
indicadores = ('PIB', 'Inflación', 'Desempleo', 'Tipo de cambio')

print("Indicadores macroeconómicos:")
for indicador in indicadores:
    print(f"  {indicador}")
```

::: {.cell-output .cell-output-stdout}
```
Indicadores macroeconómicos:
  PIB
  Inflación
  Desempleo
  Tipo de cambio
```
:::
:::


## Iterar sobre diccionarios

::: {#ba24afb1 .cell execution_count=7}
``` {.python .cell-code}
# Diccionario de datos económicos
datos_peru = {
    'pib': 242632,
    'poblacion': 33715471,
    'inflacion': 3.5,
    'desempleo': 7.2
}

# Iterar sobre claves
print("Claves:")
for clave in datos_peru.keys():
    print(f"  {clave}")

# Iterar sobre valores
print("\nValores:")
for valor in datos_peru.values():
    print(f"  {valor}")

# Iterar sobre items (clave-valor)
print("\nIndicadores del Perú:")
for indicador, valor in datos_peru.items():
    print(f"  {indicador}: {valor}")

# Formato mejorado
print("\nReporte económico:")
for indicador, valor in datos_peru.items():
    if indicador == 'pib':
        print(f"  PIB: USD {valor:,} millones")
    elif indicador == 'poblacion':
        print(f"  Población: {valor:,} habitantes")
    elif indicador in ['inflacion', 'desempleo']:
        print(f"  {indicador.capitalize()}: {valor}%")
```

::: {.cell-output .cell-output-stdout}
```
Claves:
  pib
  poblacion
  inflacion
  desempleo

Valores:
  242632
  33715471
  3.5
  7.2

Indicadores del Perú:
  pib: 242632
  poblacion: 33715471
  inflacion: 3.5
  desempleo: 7.2

Reporte económico:
  PIB: USD 242,632 millones
  Población: 33,715,471 habitantes
  Inflacion: 3.5%
  Desempleo: 7.2%
```
:::
:::


## Iterar sobre strings

::: {#511189c3 .cell execution_count=8}
``` {.python .cell-code}
# Strings son iterables
codigo = "CIIU-2023"

print("Caracteres del código:")
for caracter in codigo:
    print(caracter)

# Aplicación: validar formato
letras = 0
numeros = 0
otros = 0

for caracter in codigo:
    if caracter.isalpha():
        letras += 1
    elif caracter.isdigit():
        numeros += 1
    else:
        otros += 1

print(f"\nAnálisis del código '{codigo}':")
print(f"  Letras: {letras}")
print(f"  Números: {numeros}")
print(f"  Otros: {otros}")
```

::: {.cell-output .cell-output-stdout}
```
Caracteres del código:
C
I
I
U
-
2
0
2
3

Análisis del código 'CIIU-2023':
  Letras: 4
  Números: 4
  Otros: 1
```
:::
:::


# List comprehension

Las list comprehensions son una forma concisa y elegante de crear listas. Son más eficientes y legibles que los bucles tradicionales.

## Sintaxis básica

::: {#3c798588 .cell execution_count=9}
``` {.python .cell-code}
# Forma tradicional con for
cuadrados_for = []
for i in range(10):
    cuadrados_for.append(i ** 2)

print(f"Con for: {cuadrados_for}")

# Con list comprehension
cuadrados_lc = [i ** 2 for i in range(10)]
print(f"Con LC:  {cuadrados_lc}")

# Más ejemplos
# Generar lista de años
anos = [2020 + i for i in range(10)]
print(f"\nAños: {anos}")

# Convertir a strings
anos_str = [str(ano) for ano in anos]
print(f"Años (str): {anos_str}")

# Operaciones con elementos
precios = [100, 120, 150, 80, 95]
precios_con_igv = [precio * 1.18 for precio in precios]
print(f"\nPrecios sin IGV: {precios}")
print(f"Precios con IGV: {precios_con_igv}")
```

::: {.cell-output .cell-output-stdout}
```
Con for: [0, 1, 4, 9, 16, 25, 36, 49, 64, 81]
Con LC:  [0, 1, 4, 9, 16, 25, 36, 49, 64, 81]

Años: [2020, 2021, 2022, 2023, 2024, 2025, 2026, 2027, 2028, 2029]
Años (str): ['2020', '2021', '2022', '2023', '2024', '2025', '2026', '2027', '2028', '2029']

Precios sin IGV: [100, 120, 150, 80, 95]
Precios con IGV: [118.0, 141.6, 177.0, 94.39999999999999, 112.1]
```
:::
:::


## List comprehension con condicionales

::: {#681da81f .cell execution_count=10}
``` {.python .cell-code}
# Sintaxis: [expresion for item in iterable if condicion]

# Filtrar números pares
numeros = list(range(20))
pares = [n for n in numeros if n % 2 == 0]
print(f"Pares: {pares}")

# Filtrar impares
impares = [n for n in numeros if n % 2 != 0]
print(f"Impares: {impares}")

# Múltiplos de 3
multiplos_3 = [n for n in numeros if n % 3 == 0]
print(f"Múltiplos de 3: {multiplos_3}")

# Múltiplos de 2 o 3
multiplos_2_o_3 = [n for n in numeros if n % 2 == 0 or n % 3 == 0]
print(f"Múltiplos de 2 o 3: {multiplos_2_o_3}")
```

::: {.cell-output .cell-output-stdout}
```
Pares: [0, 2, 4, 6, 8, 10, 12, 14, 16, 18]
Impares: [1, 3, 5, 7, 9, 11, 13, 15, 17, 19]
Múltiplos de 3: [0, 3, 6, 9, 12, 15, 18]
Múltiplos de 2 o 3: [0, 2, 3, 4, 6, 8, 9, 10, 12, 14, 15, 16, 18]
```
:::
:::


## Aplicaciones económicas

::: {#52a6c0be .cell execution_count=11}
``` {.python .cell-code}
# Ejemplo 1: Filtrar datos económicos
pib_regional = [100000, 50000, 75000, 30000, 45000, 85000, 60000]

# Regiones con PIB > 50000
grandes_economias = [pib for pib in pib_regional if pib > 50000]
print(f"Grandes economías: {grandes_economias}")

# Ejemplo 2: Calcular variaciones porcentuales
precios_2022 = [100, 105, 110, 108, 112]
precios_2023 = [105, 110, 115, 112, 118]

variaciones = [((p2 - p1) / p1) * 100 
               for p1, p2 in zip(precios_2022, precios_2023)]

print(f"\nVariaciones de precios:")
for i, var in enumerate(variaciones, 1):
    print(f"  Producto {i}: {var:+.2f}%")

# Ejemplo 3: Clasificar empresas por tamaño
ventas = [500000, 2000000, 15000000, 800000, 25000000, 1200000]

clasificacion = ['Pequeña' if v < 1000000 
                 else 'Mediana' if v < 10000000 
                 else 'Grande' 
                 for v in ventas]

print(f"\nClasificación de empresas:")
for i, (venta, cat) in enumerate(zip(ventas, clasificacion), 1):
    print(f"  Empresa {i}: S/ {venta:,} - {cat}")
```

::: {.cell-output .cell-output-stdout}
```
Grandes economías: [100000, 75000, 85000, 60000]

Variaciones de precios:
  Producto 1: +5.00%
  Producto 2: +4.76%
  Producto 3: +4.55%
  Producto 4: +3.70%
  Producto 5: +5.36%

Clasificación de empresas:
  Empresa 1: S/ 500,000 - Pequeña
  Empresa 2: S/ 2,000,000 - Mediana
  Empresa 3: S/ 15,000,000 - Grande
  Empresa 4: S/ 800,000 - Pequeña
  Empresa 5: S/ 25,000,000 - Grande
  Empresa 6: S/ 1,200,000 - Mediana
```
:::
:::


## Comprehensions anidadas

::: {#79a8f807 .cell execution_count=12}
``` {.python .cell-code}
# Crear matriz
matriz = [[i * j for j in range(5)] for i in range(5)]

print("Matriz de multiplicación:")
for fila in matriz:
    print(fila)

# Aplanar lista de listas
lista_anidada = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
lista_plana = [num for sublista in lista_anidada for num in sublista]
print(f"\nLista anidada: {lista_anidada}")
print(f"Lista plana: {lista_plana}")
```

::: {.cell-output .cell-output-stdout}
```
Matriz de multiplicación:
[0, 0, 0, 0, 0]
[0, 1, 2, 3, 4]
[0, 2, 4, 6, 8]
[0, 3, 6, 9, 12]
[0, 4, 8, 12, 16]

Lista anidada: [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
Lista plana: [1, 2, 3, 4, 5, 6, 7, 8, 9]
```
:::
:::


## Dictionary comprehension

::: {#8e87f56a .cell execution_count=13}
``` {.python .cell-code}
# Crear diccionarios con comprehension
# Sintaxis: {clave: valor for item in iterable}

# Ejemplo 1: Cuadrados
cuadrados_dict = {x: x**2 for x in range(6)}
print(f"Cuadrados: {cuadrados_dict}")

# Ejemplo 2: Mapeo de códigos
productos = ['A', 'B', 'C', 'D', 'E']
precios = [10, 15, 20, 25, 30]

catalogo = {prod: precio for prod, precio in zip(productos, precios)}
print(f"\nCatálogo: {catalogo}")

# Ejemplo 3: Filtrar diccionario
datos_economicos = {
    'pib': 242632,
    'poblacion': 33715471,
    'inflacion': 3.5,
    'desempleo': 7.2,
    'reservas': 74500
}

# Solo valores mayores a 100
grandes_valores = {k: v for k, v in datos_economicos.items() if v > 100}
print(f"\nGrandes valores: {grandes_valores}")
```

::: {.cell-output .cell-output-stdout}
```
Cuadrados: {0: 0, 1: 1, 2: 4, 3: 9, 4: 16, 5: 25}

Catálogo: {'A': 10, 'B': 15, 'C': 20, 'D': 25, 'E': 30}

Grandes valores: {'pib': 242632, 'poblacion': 33715471, 'reservas': 74500}
```
:::
:::


# Iteración con condicionales

Combinar iteraciones con condicionales permite procesar datos de manera selectiva.

## Filtrado durante iteración

::: {#d79d1d50 .cell execution_count=14}
``` {.python .cell-code}
# Datos de transacciones
transacciones = [
    {'monto': 1500, 'tipo': 'ingreso'},
    {'monto': 800, 'tipo': 'gasto'},
    {'monto': 2000, 'tipo': 'ingreso'},
    {'monto': 500, 'tipo': 'gasto'},
    {'monto': 1200, 'tipo': 'ingreso'},
]

# Separar por tipo
ingresos = []
gastos = []

for trans in transacciones:
    if trans['tipo'] == 'ingreso':
        ingresos.append(trans['monto'])
    else:
        gastos.append(trans['monto'])

print(f"Ingresos: S/ {sum(ingresos):,.2f}")
print(f"Gastos: S/ {sum(gastos):,.2f}")
print(f"Balance: S/ {sum(ingresos) - sum(gastos):,.2f}")

# Con list comprehension
ingresos_lc = [t['monto'] for t in transacciones if t['tipo'] == 'ingreso']
gastos_lc = [t['monto'] for t in transacciones if t['tipo'] == 'gasto']

print(f"\nCon LC:")
print(f"Ingresos: S/ {sum(ingresos_lc):,.2f}")
print(f"Gastos: S/ {sum(gastos_lc):,.2f}")
```

::: {.cell-output .cell-output-stdout}
```
Ingresos: S/ 4,700.00
Gastos: S/ 1,300.00
Balance: S/ 3,400.00

Con LC:
Ingresos: S/ 4,700.00
Gastos: S/ 1,300.00
```
:::
:::


## Transformación condicional

::: {#9a5e5bbf .cell execution_count=15}
``` {.python .cell-code}
# Clasificar trabajadores por género según nombre
nombres = ['María', 'Juan', 'Carmen', 'Pedro', 'Rosa', 'Carlos', 'Ana', 'Miguel']

trabajadores = []
for nombre in nombres:
    if nombre[-1] == 'a':
        trabajadores.append(f"Trabajadora: {nombre}")
    else:
        trabajadores.append(f"Trabajador: {nombre}")

print("Lista de trabajadores:")
for trabajador in trabajadores:
    print(f"  {trabajador}")

# Con list comprehension
trabajadores_lc = [f"Trabajador{'a' if nombre[-1] == 'a' else ''}: {nombre}" 
                   for nombre in nombres]

print("\nCon LC:")
for trabajador in trabajadores_lc:
    print(f"  {trabajador}")
```

::: {.cell-output .cell-output-stdout}
```
Lista de trabajadores:
  Trabajadora: María
  Trabajador: Juan
  Trabajador: Carmen
  Trabajador: Pedro
  Trabajadora: Rosa
  Trabajador: Carlos
  Trabajadora: Ana
  Trabajador: Miguel

Con LC:
  Trabajadora: María
  Trabajador: Juan
  Trabajador: Carmen
  Trabajador: Pedro
  Trabajadora: Rosa
  Trabajador: Carlos
  Trabajadora: Ana
  Trabajador: Miguel
```
:::
:::


## Múltiples condiciones

::: {#5e0d717e .cell execution_count=16}
``` {.python .cell-code}
# Clasificar números por propiedades
numeros = list(range(1, 21))

pares = []
impares = []
multiplos_3 = []
multiplos_5 = []

for n in numeros:
    if n % 2 == 0:
        pares.append(n)
    else:
        impares.append(n)
    
    if n % 3 == 0:
        multiplos_3.append(n)
    
    if n % 5 == 0:
        multiplos_5.append(n)

print(f"Pares: {pares}")
print(f"Impares: {impares}")
print(f"Múltiplos de 3: {multiplos_3}")
print(f"Múltiplos de 5: {multiplos_5}")
```

::: {.cell-output .cell-output-stdout}
```
Pares: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]
Impares: [1, 3, 5, 7, 9, 11, 13, 15, 17, 19]
Múltiplos de 3: [3, 6, 9, 12, 15, 18]
Múltiplos de 5: [5, 10, 15, 20]
```
:::
:::


# Iteración múltiple y paralela

La función `zip()` permite iterar sobre múltiples secuencias en paralelo.

## Función zip()

::: {#a101b1db .cell execution_count=17}
``` {.python .cell-code}
# Listas paralelas
paises = ['Perú', 'Chile', 'Argentina', 'Colombia']
pib = [242632, 301000, 487000, 314000]
poblacion = [33715471, 19493184, 45810000, 51516562]

# Iterar en paralelo
print("Datos económicos de países:")
for pais, pib_val, pob in zip(paises, pib, poblacion):
    pib_pc = (pib_val / pob) * 1000000
    print(f"{pais:12} - PIB: USD {pib_val:,} M - Pob: {pob:,} - PIB/c: USD {pib_pc:,.0f}")
```

::: {.cell-output .cell-output-stdout}
```
Datos económicos de países:
Perú         - PIB: USD 242,632 M - Pob: 33,715,471 - PIB/c: USD 7,196
Chile        - PIB: USD 301,000 M - Pob: 19,493,184 - PIB/c: USD 15,441
Argentina    - PIB: USD 487,000 M - Pob: 45,810,000 - PIB/c: USD 10,631
Colombia     - PIB: USD 314,000 M - Pob: 51,516,562 - PIB/c: USD 6,095
```
:::
:::


## Aplicaciones económicas

::: {#73fd9c7e .cell execution_count=18}
``` {.python .cell-code}
# Ejemplo 1: Análisis de series de tiempo
meses = ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun']
ventas = [45000, 52000, 48000, 55000, 60000, 58000]
costos = [30000, 35000, 32000, 37000, 40000, 39000]

print("Análisis mensual de rentabilidad:")
print(f"{'Mes':<5} {'Ventas':>10} {'Costos':>10} {'Utilidad':>10} {'Margen':>8}")
print("-" * 50)

for mes, venta, costo in zip(meses, ventas, costos):
    utilidad = venta - costo
    margen = (utilidad / venta) * 100
    print(f"{mes:<5} {venta:>10,} {costo:>10,} {utilidad:>10,} {margen:>7.1f}%")

# Ejemplo 2: Comparar presupuesto vs real
categorias = ['Salarios', 'Alquiler', 'Servicios', 'Marketing', 'Otros']
presupuestado = [80000, 15000, 8000, 12000, 5000]
gastado = [85000, 15000, 7500, 14000, 4800]

print("\n\nAnálisis de ejecución presupuestaria:")
print(f"{'Categoría':<12} {'Presup.':>10} {'Gastado':>10} {'Dif.':>10} {'%':>6}")
print("-" * 55)

for cat, pres, gasto in zip(categorias, presupuestado, gastado):
    diferencia = gasto - pres
    porcentaje = (gasto / pres) * 100
    signo = "+" if diferencia > 0 else ""
    print(f"{cat:<12} {pres:>10,} {gasto:>10,} {signo}{diferencia:>9,} {porcentaje:>5.1f}%")
```

::: {.cell-output .cell-output-stdout}
```
Análisis mensual de rentabilidad:
Mes       Ventas     Costos   Utilidad   Margen
--------------------------------------------------
Ene       45,000     30,000     15,000    33.3%
Feb       52,000     35,000     17,000    32.7%
Mar       48,000     32,000     16,000    33.3%
Abr       55,000     37,000     18,000    32.7%
May       60,000     40,000     20,000    33.3%
Jun       58,000     39,000     19,000    32.8%


Análisis de ejecución presupuestaria:
Categoría       Presup.    Gastado       Dif.      %
-------------------------------------------------------
Salarios         80,000     85,000 +    5,000 106.2%
Alquiler         15,000     15,000         0 100.0%
Servicios         8,000      7,500      -500  93.8%
Marketing        12,000     14,000 +    2,000 116.7%
Otros             5,000      4,800      -200  96.0%
```
:::
:::


## Crear diccionarios con zip()

::: {#d49dc83e .cell execution_count=19}
``` {.python .cell-code}
# Crear diccionario desde dos listas
productos = ['Laptop', 'Mouse', 'Teclado', 'Monitor']
precios = [2500, 25, 80, 800]

catalogo = dict(zip(productos, precios))
print(f"Catálogo: {catalogo}")

# Acceder
print(f"\nPrecio de Laptop: S/ {catalogo['Laptop']:,.2f}")
```

::: {.cell-output .cell-output-stdout}
```
Catálogo: {'Laptop': 2500, 'Mouse': 25, 'Teclado': 80, 'Monitor': 800}

Precio de Laptop: S/ 2,500.00
```
:::
:::


# Iteraciones anidadas

Las iteraciones anidadas permiten trabajar con estructuras de datos multidimensionales.

## Matrices y tablas

::: {#32dd760e .cell execution_count=20}
``` {.python .cell-code}
# Crear matriz de ceros
filas = 3
columnas = 4

matriz = []
for i in range(filas):
    fila = []
    for j in range(columnas):
        fila.append(0)
    matriz.append(fila)

print("Matriz de ceros:")
for fila in matriz:
    print(fila)

# Con list comprehension
matriz_lc = [[0 for j in range(columnas)] for i in range(filas)]

print("\nCon LC:")
for fila in matriz_lc:
    print(fila)
```

::: {.cell-output .cell-output-stdout}
```
Matriz de ceros:
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]

Con LC:
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
```
:::
:::


## Aplicaciones económicas

::: {#e64d4564 .cell execution_count=21}
``` {.python .cell-code}
# Ejemplo 1: Tabla de multiplicación (escalas de producción)
print("Tabla de costos de producción:")
print("     ", end="")
for cantidad in range(1, 6):
    print(f"{cantidad*10:>6}", end="")
print()

for precio in range(1, 6):
    print(f"{precio*100:>5}", end=" ")
    for cantidad in range(1, 6):
        costo = precio * 100 * cantidad * 10
        print(f"{costo:>6}", end="")
    print()

# Ejemplo 2: Análisis regional-sectorial
regiones = ['Lima', 'Arequipa', 'Cusco']
sectores = ['Agricultura', 'Minería', 'Manufactura']

# Datos de PIB por región y sector (millones)
pib_regional_sectorial = [
    [5000, 15000, 30000],  # Lima
    [8000, 12000, 5000],   # Arequipa
    [6000, 8000, 3000]     # Cusco
]

print("\n\nPIB por región y sector (millones USD):")
print(f"{'Región':<12}", end="")
for sector in sectores:
    print(f"{sector:>15}", end="")
print(f"{'Total':>15}")
print("-" * 70)

for i, region in enumerate(regiones):
    print(f"{region:<12}", end="")
    total_region = 0
    for j, sector in enumerate(sectores):
        valor = pib_regional_sectorial[i][j]
        print(f"{valor:>15,}", end="")
        total_region += valor
    print(f"{total_region:>15,}")

# Totales por sector
print(f"{'Total':<12}", end="")
total_general = 0
for j in range(len(sectores)):
    total_sector = sum(pib_regional_sectorial[i][j] for i in range(len(regiones)))
    print(f"{total_sector:>15,}", end="")
    total_general += total_sector
print(f"{total_general:>15,}")
```

::: {.cell-output .cell-output-stdout}
```
Tabla de costos de producción:
         10    20    30    40    50
  100   1000  2000  3000  4000  5000
  200   2000  4000  6000  8000 10000
  300   3000  6000  9000 12000 15000
  400   4000  8000 12000 16000 20000
  500   5000 10000 15000 20000 25000


PIB por región y sector (millones USD):
Región          Agricultura        Minería    Manufactura          Total
----------------------------------------------------------------------
Lima                  5,000         15,000         30,000         50,000
Arequipa              8,000         12,000          5,000         25,000
Cusco                 6,000          8,000          3,000         17,000
Total                19,000         35,000         38,000         92,000
```
:::
:::


## Búsqueda en estructuras anidadas

::: {#bbb2e7a8 .cell execution_count=22}
``` {.python .cell-code}
# Buscar en matriz
matriz_datos = [
    [10, 20, 30],
    [40, 50, 60],
    [70, 80, 90]
]

valor_buscar = 50
encontrado = False

for i, fila in enumerate(matriz_datos):
    for j, valor in enumerate(fila):
        if valor == valor_buscar:
            print(f"Valor {valor_buscar} encontrado en posición [{i}][{j}]")
            encontrado = True
            break
    if encontrado:
        break

if not encontrado:
    print(f"Valor {valor_buscar} no encontrado")
```

::: {.cell-output .cell-output-stdout}
```
Valor 50 encontrado en posición [1][1]
```
:::
:::


# Bucles while

Los bucles `while` se ejecutan mientras una condición sea verdadera. Son útiles cuando no sabemos de antemano cuántas iteraciones necesitamos.

## Sintaxis básica

::: {#58218e6c .cell execution_count=23}
``` {.python .cell-code}
# Contador simple
contador = 0
while contador < 5:
    print(f"Iteración {contador}")
    contador += 1

print("Fin del bucle")
```

::: {.cell-output .cell-output-stdout}
```
Iteración 0
Iteración 1
Iteración 2
Iteración 3
Iteración 4
Fin del bucle
```
:::
:::


## Aplicaciones económicas

::: {#dea7ff5c .cell execution_count=24}
``` {.python .cell-code}
# Ejemplo 1: Simular inversión hasta alcanzar meta
capital = 10000
meta = 20000
tasa_anual = 0.08
anos = 0

print(f"Capital inicial: S/ {capital:,.2f}")
print(f"Meta: S/ {meta:,.2f}")
print(f"Tasa: {tasa_anual*100}%\n")

while capital < meta:
    anos += 1
    interes = capital * tasa_anual
    capital += interes
    print(f"Año {anos}: S/ {capital:,.2f}")

print(f"\nMeta alcanzada en {anos} años")

# Ejemplo 2: Búsqueda de punto de equilibrio
precio = 100
costo_variable = 40
costos_fijos = 50000
cantidad = 0
ingresos = 0
costos_totales = costos_fijos

print(f"\nBúsqueda de punto de equilibrio:")
print(f"Precio: S/ {precio}")
print(f"Costo variable: S/ {costo_variable}")
print(f"Costos fijos: S/ {costos_fijos:,}\n")

while ingresos < costos_totales:
    cantidad += 100
    ingresos = precio * cantidad
    costos_totales = costos_fijos + (costo_variable * cantidad)

print(f"Punto de equilibrio: {cantidad:,} unidades")
print(f"Ingresos: S/ {ingresos:,}")
print(f"Costos totales: S/ {costos_totales:,}")

# Ejemplo 3: Pago de deuda con cuotas fijas
deuda = 50000
tasa_mensual = 0.015
cuota = 2000
mes = 0
interes_total = 0

print(f"\n\nAmortización de deuda:")
print(f"Deuda inicial: S/ {deuda:,.2f}")
print(f"Cuota mensual: S/ {cuota:,.2f}")
print(f"Tasa mensual: {tasa_mensual*100}%\n")

while deuda > 0:
    mes += 1
    interes = deuda * tasa_mensual
    interes_total += interes
    amortizacion = cuota - interes
    
    if amortizacion > deuda:
        amortizacion = deuda
        cuota = deuda + interes
    
    deuda -= amortizacion
    
    if mes % 12 == 0:
        print(f"Mes {mes:2d}: Saldo S/ {deuda:,.2f}")

print(f"\nDeuda pagada en {mes} meses ({mes/12:.1f} años)")
print(f"Interés total pagado: S/ {interes_total:,.2f}")
```

::: {.cell-output .cell-output-stdout}
```
Capital inicial: S/ 10,000.00
Meta: S/ 20,000.00
Tasa: 8.0%

Año 1: S/ 10,800.00
Año 2: S/ 11,664.00
Año 3: S/ 12,597.12
Año 4: S/ 13,604.89
Año 5: S/ 14,693.28
Año 6: S/ 15,868.74
Año 7: S/ 17,138.24
Año 8: S/ 18,509.30
Año 9: S/ 19,990.05
Año 10: S/ 21,589.25

Meta alcanzada en 10 años

Búsqueda de punto de equilibrio:
Precio: S/ 100
Costo variable: S/ 40
Costos fijos: S/ 50,000

Punto de equilibrio: 900 unidades
Ingresos: S/ 90,000
Costos totales: S/ 86,000


Amortización de deuda:
Deuda inicial: S/ 50,000.00
Cuota mensual: S/ 2,000.00
Tasa mensual: 1.5%

Mes 12: Saldo S/ 33,698.49
Mes 24: Saldo S/ 14,208.10

Deuda pagada en 32 meses (2.7 años)
Interés total pagado: S/ 13,139.64
```
:::
:::


## Bucles infinitos y salida

::: {#e7f694f1 .cell execution_count=25}
``` {.python .cell-code}
# Bucle con condición de salida
print("Simulación de proceso hasta condición:")
iteracion = 0
valor = 100

while True:
    iteracion += 1
    valor *= 0.9  # Decrece 10% cada iteración
    
    print(f"Iteración {iteracion}: {valor:.2f}")
    
    if valor < 10:
        print("Valor crítico alcanzado")
        break
    
    if iteracion > 100:
        print("Límite de iteraciones alcanzado")
        break
```

::: {.cell-output .cell-output-stdout}
```
Simulación de proceso hasta condición:
Iteración 1: 90.00
Iteración 2: 81.00
Iteración 3: 72.90
Iteración 4: 65.61
Iteración 5: 59.05
Iteración 6: 53.14
Iteración 7: 47.83
Iteración 8: 43.05
Iteración 9: 38.74
Iteración 10: 34.87
Iteración 11: 31.38
Iteración 12: 28.24
Iteración 13: 25.42
Iteración 14: 22.88
Iteración 15: 20.59
Iteración 16: 18.53
Iteración 17: 16.68
Iteración 18: 15.01
Iteración 19: 13.51
Iteración 20: 12.16
Iteración 21: 10.94
Iteración 22: 9.85
Valor crítico alcanzado
```
:::
:::


# Control de flujo: break y continue

`break` y `continue` permiten controlar el flujo de las iteraciones.

## break: terminar bucle

::: {#bfe959b9 .cell execution_count=26}
``` {.python .cell-code}
# Buscar primer valor que cumple condición
precios = [100, 105, 110, 95, 120, 130, 90]
umbral = 115

print(f"Buscando primer precio mayor a {umbral}:")
for i, precio in enumerate(precios):
    print(f"Revisando posición {i}: S/ {precio}")
    if precio > umbral:
        print(f"Encontrado en posición {i}: S/ {precio}")
        break
else:
    print("No se encontró ningún precio que supere el umbral")
```

::: {.cell-output .cell-output-stdout}
```
Buscando primer precio mayor a 115:
Revisando posición 0: S/ 100
Revisando posición 1: S/ 105
Revisando posición 2: S/ 110
Revisando posición 3: S/ 95
Revisando posición 4: S/ 120
Encontrado en posición 4: S/ 120
```
:::
:::


## continue: saltar iteración

::: {#4650709b .cell execution_count=27}
``` {.python .cell-code}
# Procesar solo valores válidos
datos = [100, -5, 200, 0, 150, -10, 300, 250]

print("Procesando solo valores positivos:")
suma = 0
for valor in datos:
    if valor <= 0:
        print(f"Saltando valor inválido: {valor}")
        continue
    
    suma += valor
    print(f"Procesando: {valor}, suma acumulada: {suma}")

print(f"\nSuma total: {suma}")
```

::: {.cell-output .cell-output-stdout}
```
Procesando solo valores positivos:
Procesando: 100, suma acumulada: 100
Saltando valor inválido: -5
Procesando: 200, suma acumulada: 300
Saltando valor inválido: 0
Procesando: 150, suma acumulada: 450
Saltando valor inválido: -10
Procesando: 300, suma acumulada: 750
Procesando: 250, suma acumulada: 1000

Suma total: 1000
```
:::
:::


## Aplicaciones combinadas

::: {#ce5ca87e .cell execution_count=28}
``` {.python .cell-code}
# Validación de datos con límite de intentos
intentos_maximos = 3
intentos = 0

while intentos < intentos_maximos:
    try:
        monto = float(input("Ingrese monto (positivo): "))
        
        if monto < 0:
            print("Error: el monto debe ser positivo")
            intentos += 1
            continue
        
        if monto > 100000:
            print("Advertencia: monto muy alto")
            confirmar = input("¿Desea continuar? (s/n): ")
            if confirmar.lower() != 's':
                continue
        
        print(f"Monto válido: S/ {monto:,.2f}")
        break
        
    except ValueError:
        print("Error: ingrese un número válido")
        intentos += 1

if intentos >= intentos_maximos:
    print("\nNúmero máximo de intentos alcanzado")
```
:::


# Aplicaciones económicas

## Aplicación 1: Simulador de portafolio de inversión

::: {#26ef68e6 .cell execution_count=29}
``` {.python .cell-code}
def simular_portafolio(inversion_inicial, anos, distribucion, rendimientos):
    """
    Simula el rendimiento de un portafolio diversificado
    
    Parámetros:
    - inversion_inicial: capital inicial
    - anos: número de años a simular
    - distribucion: dict con % por activo
    - rendimientos: dict con rendimientos anuales por activo
    """
    
    print("SIMULACIÓN DE PORTAFOLIO DE INVERSIÓN")
    print("=" * 70)
    
    # Calcular inversión por activo
    inversiones = {}
    print(f"\nInversión inicial: S/ {inversion_inicial:,.2f}")
    print(f"\nDistribución del portafolio:")
    
    for activo, porcentaje in distribucion.items():
        monto = inversion_inicial * porcentaje
        inversiones[activo] = monto
        print(f"  {activo}: {porcentaje*100:.0f}% - S/ {monto:,.2f}")
    
    # Simular cada año
    print(f"\n{'='*70}")
    print("Evolución anual del portafolio:")
    print(f"{'Año':<6} ", end="")
    for activo in inversiones.keys():
        print(f"{activo:>12}", end="")
    print(f"{'Total':>12}")
    print("-" * 70)
    
    for ano in range(1, anos + 1):
        total_ano = 0
        print(f"{ano:<6} ", end="")
        
        for activo in inversiones.keys():
            rendimiento = rendimientos[activo]
            inversiones[activo] *= (1 + rendimiento)
            print(f"{inversiones[activo]:>12,.0f}", end="")
            total_ano += inversiones[activo]
        
        print(f"{total_ano:>12,.0f}")
    
    # Resultados finales
    print(f"\n{'='*70}")
    print("RESULTADOS FINALES:")
    
    total_final = sum(inversiones.values())
    ganancia = total_final - inversion_inicial
    rendimiento_total = (ganancia / inversion_inicial) * 100
    rendimiento_anual = ((total_final / inversion_inicial) ** (1/anos) - 1) * 100
    
    print(f"\nInversión inicial: S/ {inversion_inicial:,.2f}")
    print(f"Valor final: S/ {total_final:,.2f}")
    print(f"Ganancia: S/ {ganancia:,.2f}")
    print(f"Rendimiento total: {rendimiento_total:.2f}%")
    print(f"Rendimiento anual promedio: {rendimiento_anual:.2f}%")
    
    print(f"\nDistribución final:")
    for activo, monto in inversiones.items():
        porcentaje = (monto / total_final) * 100
        print(f"  {activo}: S/ {monto:,.2f} ({porcentaje:.1f}%)")
    
    return inversiones

# Ejemplo de uso
distribucion = {
    'Acciones': 0.40,
    'Bonos': 0.30,
    'Inmuebles': 0.20,
    'Efectivo': 0.10
}

rendimientos = {
    'Acciones': 0.12,
    'Bonos': 0.06,
    'Inmuebles': 0.08,
    'Efectivo': 0.02
}

resultado = simular_portafolio(
    inversion_inicial=100000,
    anos=10,
    distribucion=distribucion,
    rendimientos=rendimientos
)
```

::: {.cell-output .cell-output-stdout}
```
SIMULACIÓN DE PORTAFOLIO DE INVERSIÓN
======================================================================

Inversión inicial: S/ 100,000.00

Distribución del portafolio:
  Acciones: 40% - S/ 40,000.00
  Bonos: 30% - S/ 30,000.00
  Inmuebles: 20% - S/ 20,000.00
  Efectivo: 10% - S/ 10,000.00

======================================================================
Evolución anual del portafolio:
Año        Acciones       Bonos   Inmuebles    Efectivo       Total
----------------------------------------------------------------------
1            44,800      31,800      21,600      10,200     108,400
2            50,176      33,708      23,328      10,404     117,616
3            56,197      35,730      25,194      10,612     127,734
4            62,941      37,874      27,210      10,824     138,849
5            70,494      40,147      29,387      11,041     151,068
6            78,953      42,556      31,737      11,262     164,508
7            88,427      45,109      34,276      11,487     179,300
8            99,039      47,815      37,019      11,717     195,589
9           110,923      50,684      39,980      11,951     213,539
10          124,234      53,725      43,178      12,190     233,328

======================================================================
RESULTADOS FINALES:

Inversión inicial: S/ 100,000.00
Valor final: S/ 233,327.80
Ganancia: S/ 133,327.80
Rendimiento total: 133.33%
Rendimiento anual promedio: 8.84%

Distribución final:
  Acciones: S/ 124,233.93 (53.2%)
  Bonos: S/ 53,725.43 (23.0%)
  Inmuebles: S/ 43,178.50 (18.5%)
  Efectivo: S/ 12,189.94 (5.2%)
```
:::
:::


## Aplicación 2: Análisis de sensibilidad de precios

::: {#dc1c3b45 .cell execution_count=30}
``` {.python .cell-code}
def analisis_sensibilidad_demanda(precio_base, elasticidad, cantidad_base, 
                                   variaciones_precio):
    """
    Analiza cómo cambios en el precio afectan la demanda
    """
    
    print("ANÁLISIS DE SENSIBILIDAD DE LA DEMANDA")
    print("=" * 70)
    
    print(f"\nParámetros base:")
    print(f"  Precio base: S/ {precio_base:.2f}")
    print(f"  Cantidad base: {cantidad_base:,} unidades")
    print(f"  Elasticidad precio: {elasticidad:.2f}")
    
    print(f"\n{'='*70}")
    print("Escenarios de precios:")
    print(f"{'Precio':>10} {'Var %':>8} {'Cantidad':>12} {'Var %':>8} {'Ingreso':>12}")
    print("-" * 70)
    
    resultados = []
    
    for var_porcentaje in variaciones_precio:
        # Calcular nuevo precio
        nuevo_precio = precio_base * (1 + var_porcentaje/100)
        
        # Calcular cambio porcentual en cantidad (elasticidad)
        var_cantidad_porcentaje = -elasticidad * var_porcentaje
        nueva_cantidad = cantidad_base * (1 + var_cantidad_porcentaje/100)
        
        # Calcular ingreso
        ingreso = nuevo_precio * nueva_cantidad
        ingreso_base = precio_base * cantidad_base
        var_ingreso = ((ingreso - ingreso_base) / ingreso_base) * 100
        
        print(f"{nuevo_precio:>10.2f} {var_porcentaje:>7.1f}% "
              f"{nueva_cantidad:>12,.0f} {var_cantidad_porcentaje:>7.1f}% "
              f"{ingreso:>12,.0f}")
        
        resultados.append({
            'precio': nuevo_precio,
            'cantidad': nueva_cantidad,
            'ingreso': ingreso
        })
    
    # Encontrar precio óptimo
    precio_optimo_idx = max(range(len(resultados)), 
                            key=lambda i: resultados[i]['ingreso'])
    
    print(f"\n{'='*70}")
    print("PRECIO ÓPTIMO:")
    optimo = resultados[precio_optimo_idx]
    print(f"  Precio: S/ {optimo['precio']:.2f}")
    print(f"  Cantidad: {optimo['cantidad']:,.0f} unidades")
    print(f"  Ingreso máximo: S/ {optimo['ingreso']:,.2f}")
    
    return resultados

# Ejemplo de uso
variaciones = [-20, -15, -10, -5, 0, 5, 10, 15, 20]
resultados = analisis_sensibilidad_demanda(
    precio_base=100,
    elasticidad=1.5,
    cantidad_base=1000,
    variaciones_precio=variaciones
)
```

::: {.cell-output .cell-output-stdout}
```
ANÁLISIS DE SENSIBILIDAD DE LA DEMANDA
======================================================================

Parámetros base:
  Precio base: S/ 100.00
  Cantidad base: 1,000 unidades
  Elasticidad precio: 1.50

======================================================================
Escenarios de precios:
    Precio    Var %     Cantidad    Var %      Ingreso
----------------------------------------------------------------------
     80.00   -20.0%        1,300    30.0%      104,000
     85.00   -15.0%        1,225    22.5%      104,125
     90.00   -10.0%        1,150    15.0%      103,500
     95.00    -5.0%        1,075     7.5%      102,125
    100.00     0.0%        1,000    -0.0%      100,000
    105.00     5.0%          925    -7.5%       97,125
    110.00    10.0%          850   -15.0%       93,500
    115.00    15.0%          775   -22.5%       89,125
    120.00    20.0%          700   -30.0%       84,000

======================================================================
PRECIO ÓPTIMO:
  Precio: S/ 85.00
  Cantidad: 1,225 unidades
  Ingreso máximo: S/ 104,125.00
```
:::
:::


# Ejercicios prácticos

## Ejercicio 1: Calculadora de depreciación

::: {#d5bdb790 .cell execution_count=31}
``` {.python .cell-code}
def calcular_depreciacion(valor_inicial, vida_util, metodo='lineal'):
    """
    Calcula la depreciación de un activo
    
    Métodos:
    - 'lineal': Depreciación constante
    - 'doble_saldo': Saldo decreciente acelerado
    """
    
    print(f"CÁLCULO DE DEPRECIACIÓN - Método {metodo.upper()}")
    print("=" * 60)
    
    print(f"\nValor inicial: S/ {valor_inicial:,.2f}")
    print(f"Vida útil: {vida_util} años")
    
    if metodo == 'lineal':
        # Depreciación lineal
        depreciacion_anual = valor_inicial / vida_util
        valor_libro = valor_inicial
        
        print(f"Depreciación anual: S/ {depreciacion_anual:,.2f}")
        print(f"\n{'Año':<6} {'Deprec.':<12} {'Deprec. Acum.':<15} {'Valor Libro':<12}")
        print("-" * 60)
        
        depreciacion_acumulada = 0
        
        for ano in range(1, vida_util + 1):
            depreciacion_acumulada += depreciacion_anual
            valor_libro -= depreciacion_anual
            
            print(f"{ano:<6} {depreciacion_anual:>11,.2f} "
                  f"{depreciacion_acumulada:>14,.2f} {valor_libro:>11,.2f}")
    
    elif metodo == 'doble_saldo':
        # Depreciación por doble saldo decreciente
        tasa = 2 / vida_util
        valor_libro = valor_inicial
        depreciacion_acumulada = 0
        
        print(f"Tasa anual: {tasa*100:.2f}%")
        print(f"\n{'Año':<6} {'Valor Inicio':<13} {'Deprec.':<12} "
              f"{'Deprec. Acum.':<15} {'Valor Final':<12}")
        print("-" * 70)
        
        for ano in range(1, vida_util + 1):
            valor_inicio = valor_libro
            depreciacion = valor_libro * tasa
            
            # En el último año, depreciar solo hasta valor residual cero
            if ano == vida_util:
                depreciacion = valor_libro
            
            depreciacion_acumulada += depreciacion
            valor_libro -= depreciacion
            
            print(f"{ano:<6} {valor_inicio:>12,.2f} {depreciacion:>11,.2f} "
                  f"{depreciacion_acumulada:>14,.2f} {valor_libro:>11,.2f}")
    
    print("=" * 60)

# Ejemplos
print("DEPRECIACIÓN LINEAL")
calcular_depreciacion(valor_inicial=50000, vida_util=5, metodo='lineal')

print("\n\n")

print("DEPRECIACIÓN POR DOBLE SALDO DECRECIENTE")
calcular_depreciacion(valor_inicial=50000, vida_util=5, metodo='doble_saldo')
```

::: {.cell-output .cell-output-stdout}
```
DEPRECIACIÓN LINEAL
CÁLCULO DE DEPRECIACIÓN - Método LINEAL
============================================================

Valor inicial: S/ 50,000.00
Vida útil: 5 años
Depreciación anual: S/ 10,000.00

Año    Deprec.      Deprec. Acum.   Valor Libro 
------------------------------------------------------------
1        10,000.00      10,000.00   40,000.00
2        10,000.00      20,000.00   30,000.00
3        10,000.00      30,000.00   20,000.00
4        10,000.00      40,000.00   10,000.00
5        10,000.00      50,000.00        0.00
============================================================



DEPRECIACIÓN POR DOBLE SALDO DECRECIENTE
CÁLCULO DE DEPRECIACIÓN - Método DOBLE_SALDO
============================================================

Valor inicial: S/ 50,000.00
Vida útil: 5 años
Tasa anual: 40.00%

Año    Valor Inicio  Deprec.      Deprec. Acum.   Valor Final 
----------------------------------------------------------------------
1         50,000.00   20,000.00      20,000.00   30,000.00
2         30,000.00   12,000.00      32,000.00   18,000.00
3         18,000.00    7,200.00      39,200.00   10,800.00
4         10,800.00    4,320.00      43,520.00    6,480.00
5          6,480.00    6,480.00      50,000.00        0.00
============================================================
```
:::
:::


## Ejercicio 2: Simulador de política de inventarios

::: {#18f3d0e6 .cell execution_count=32}
``` {.python .cell-code}
def simular_politica_inventario(demanda_diaria, dias_simulacion, 
                                punto_reorden, cantidad_pedido,
                                tiempo_entrega, inventario_inicial):
    """
    Simula una política de inventarios (Q, R)
    """
    
    import random
    
    print("SIMULACIÓN DE POLÍTICA DE INVENTARIOS")
    print("=" * 70)
    
    print(f"\nParámetros:")
    print(f"  Demanda diaria promedio: {demanda_diaria} unidades")
    print(f"  Inventario inicial: {inventario_inicial} unidades")
    print(f"  Punto de reorden: {punto_reorden} unidades")
    print(f"  Cantidad de pedido: {cantidad_pedido} unidades")
    print(f"  Tiempo de entrega: {tiempo_entrega} días")
    
    # Variables de simulación
    inventario = inventario_inicial
    pedido_pendiente = False
    dias_hasta_entrega = 0
    total_vendido = 0
    dias_sin_stock = 0
    num_pedidos = 0
    ventas_perdidas = 0
    
    print(f"\n{'Día':<5} {'Demanda':<8} {'Ventas':<8} {'Inventario':<10} {'Pedido':<8}")
    print("-" * 50)
    
    for dia in range(1, dias_simulacion + 1):
        # Generar demanda (distribución normal)
        demanda = max(0, int(random.normalvariate(demanda_diaria, demanda_diaria * 0.2)))
        
        # Verificar si llega pedido
        if pedido_pendiente:
            dias_hasta_entrega -= 1
            if dias_hasta_entrega == 0:
                inventario += cantidad_pedido
                pedido_pendiente = False
        
        # Procesar venta
        if inventario >= demanda:
            ventas = demanda
            inventario -= demanda
            total_vendido += ventas
        else:
            ventas = inventario
            ventas_perdidas += (demanda - inventario)
            total_vendido += ventas
            inventario = 0
            dias_sin_stock += 1
        
        # Verificar punto de reorden
        estado_pedido = ""
        if inventario <= punto_reorden and not pedido_pendiente:
            pedido_pendiente = True
            dias_hasta_entrega = tiempo_entrega
            num_pedidos += 1
            estado_pedido = "PEDIDO"
        
        # Mostrar cada 5 días
        if dia % 5 == 0 or dia == 1:
            print(f"{dia:<5} {demanda:<8} {ventas:<8} {inventario:<10} {estado_pedido:<8}")
    
    # Estadísticas finales
    print(f"\n{'='*70}")
    print("ESTADÍSTICAS DE LA SIMULACIÓN:")
    print(f"  Total vendido: {total_vendido:,} unidades")
    print(f"  Ventas perdidas: {ventas_perdidas:,} unidades")
    print(f"  Nivel de servicio: {(total_vendido/(total_vendido+ventas_perdidas)*100):.1f}%")
    print(f"  Días sin stock: {dias_sin_stock} de {dias_simulacion}")
    print(f"  Número de pedidos: {num_pedidos}")
    print(f"  Inventario final: {inventario} unidades")
    print(f"  Inventario promedio: {inventario_inicial/2:.0f} unidades (aprox.)")

# Ejemplo de uso
simular_politica_inventario(
    demanda_diaria=50,
    dias_simulacion=90,
    punto_reorden=200,
    cantidad_pedido=500,
    tiempo_entrega=5,
    inventario_inicial=600
)
```

::: {.cell-output .cell-output-stdout}
```
SIMULACIÓN DE POLÍTICA DE INVENTARIOS
======================================================================

Parámetros:
  Demanda diaria promedio: 50 unidades
  Inventario inicial: 600 unidades
  Punto de reorden: 200 unidades
  Cantidad de pedido: 500 unidades
  Tiempo de entrega: 5 días

Día   Demanda  Ventas   Inventario Pedido  
--------------------------------------------------
1     46       46       554                
5     57       57       328                
10    52       52       63                 
15    50       50       358                
20    74       74       61                 
25    48       48       357                
30    41       41       85                 
35    39       39       373                
40    47       47       98                 
45    68       68       339                
50    44       44       84                 
55    62       62       360                
60    36       36       170        PEDIDO  
65    50       50       450                
70    63       63       156        PEDIDO  
75    55       55       445                
80    58       58       166        PEDIDO  
85    55       55       445                
90    64       64       207                

======================================================================
ESTADÍSTICAS DE LA SIMULACIÓN:
  Total vendido: 4,393 unidades
  Ventas perdidas: 242 unidades
  Nivel de servicio: 94.8%
  Días sin stock: 8 de 90
  Número de pedidos: 8
  Inventario final: 207 unidades
  Inventario promedio: 300 unidades (aprox.)
```
:::
:::


# Conlusión

En esta guía hemos explorado las iteraciones en Python:

**Actualización de variables**

Uso de operadores compuestos para modificar variables: `+=`, `-=`, `*=`, `/=`.

**Bucles for**

Iteraciones definidas sobre secuencias. La función `range()` genera secuencias numéricas. `enumerate()` proporciona índices. `zip()` permite iteración paralela.

**List comprehension**

Forma concisa y eficiente de crear listas. Puede incluir condicionales y expresiones complejas.

**Iteraciones anidadas**

Permiten trabajar con estructuras multidimensionales como matrices y tablas.

**Bucles while**

Iteraciones indefinidas basadas en condiciones. Útiles cuando no sabemos cuántas iteraciones necesitamos.

**Control de flujo**

`break` termina el bucle completamente. `continue` salta a la siguiente iteración.

# Próximos pasos

En la siguiente guía (Guía 6: Funciones) exploraremos:

- Flujo de ejecución, argumentos y parámetros
- Definición y uso de funciones
- Funciones anónimas (lambda)
- Funciones map y filter
- Módulos NumPy y Pandas

Las funciones nos permitirán organizar nuestro código de manera modular y reutilizable, fundamental para proyectos económicos complejos.

# Recursos adicionales

Para profundizar en iteraciones:

- Python Loops: docs.python.org/tutorial/controlflow.html
- List Comprehensions: docs.python.org/tutorial/datastructures.html
- Práctica con datasets económicos reales

La práctica constante con datos reales consolidará estos conceptos. Se recomienda aplicar iteraciones en el procesamiento de datos del BCRP, INEI y otras fuentes económicas, automatizando análisis que normalmente requerirían horas de trabajo manual.

<!-- fragmento de inclusión — texto de apertura del bloque «Publicaciones similares» (incluido en cada post) -->

# Publicaciones Similares

Si te interesó este artículo, te recomendamos que explores otros blogs y recursos relacionados que pueden ampliar tus conocimientos. Aquí te dejo algunas sugerencias:


<!-- fragmento de inclusión — índice de publicaciones de python; lo genera script_generador_publicacion_similar -->

1. [{{< fa regular file-pdf >}}](https://numerus-scriptum.netlify.app/python/2020-06-19-instalacion-de-anaconda/index.pdf) [Instalacion De Anaconda](https://numerus-scriptum.netlify.app/python/2020-06-19-instalacion-de-anaconda)
2. [{{< fa regular file-pdf >}}](https://numerus-scriptum.netlify.app/python/2020-06-20-configurar-entorno-virtual-python-anaconda/index.pdf) [Configurar Entorno Virtual Python Anaconda](https://numerus-scriptum.netlify.app/python/2020-06-20-configurar-entorno-virtual-python-anaconda)
3. [{{< fa regular file-pdf >}}](https://numerus-scriptum.netlify.app/python/2021-04-17-01-introducion-a-la-programacion-con-python/index.pdf) [01 Introducion A La Programacion Con Python](https://numerus-scriptum.netlify.app/python/2021-04-17-01-introducion-a-la-programacion-con-python)
4. [{{< fa regular file-pdf >}}](https://numerus-scriptum.netlify.app/python/2021-05-31-02-variables-expresiones-y-statements-con-python/index.pdf) [02 Variables Expresiones Y Statements Con Python](https://numerus-scriptum.netlify.app/python/2021-05-31-02-variables-expresiones-y-statements-con-python)
5. [{{< fa regular file-pdf >}}](https://numerus-scriptum.netlify.app/python/2021-06-07-03-objetos-de-python/index.pdf) [03 Objetos De Python](https://numerus-scriptum.netlify.app/python/2021-06-07-03-objetos-de-python)
6. [{{< fa regular file-pdf >}}](https://numerus-scriptum.netlify.app/python/2021-06-14-04-ejecucion-condicional-con-python/index.pdf) [04 Ejecucion Condicional Con Python](https://numerus-scriptum.netlify.app/python/2021-06-14-04-ejecucion-condicional-con-python)
7. [{{< fa regular file-pdf >}}](https://numerus-scriptum.netlify.app/python/2021-06-21-05-iteraciones-con-python/index.pdf) [05 Iteraciones Con Python](https://numerus-scriptum.netlify.app/python/2021-06-21-05-iteraciones-con-python)
8. [{{< fa regular file-pdf >}}](https://numerus-scriptum.netlify.app/python/2021-08-16-06-funciones-con-python/index.pdf) [06 Funciones Con Python](https://numerus-scriptum.netlify.app/python/2021-08-16-06-funciones-con-python)
9. [{{< fa regular file-pdf >}}](https://numerus-scriptum.netlify.app/python/2021-08-23-07-dataframes-con-python/index.pdf) [07 Dataframes Con Python](https://numerus-scriptum.netlify.app/python/2021-08-23-07-dataframes-con-python)
10. [{{< fa regular file-pdf >}}](https://numerus-scriptum.netlify.app/python/2021-11-29-08-prediccion-y-metrica-de-performance-con-python/index.pdf) [08 Prediccion Y Metrica De Performance Con Python](https://numerus-scriptum.netlify.app/python/2021-11-29-08-prediccion-y-metrica-de-performance-con-python)
11. [{{< fa regular file-pdf >}}](https://numerus-scriptum.netlify.app/python/2021-12-06-09-metodos-de-machine-learning-para-clasificacion-con-python/index.pdf) [09 Metodos De Machine Learning Para Clasificacion Con Python](https://numerus-scriptum.netlify.app/python/2021-12-06-09-metodos-de-machine-learning-para-clasificacion-con-python)
12. [{{< fa regular file-pdf >}}](https://numerus-scriptum.netlify.app/python/2021-12-13-10-metodos-de-machine-learning-para-regresion-con-python/index.pdf) [10 Metodos De Machine Learning Para Regresion Con Python](https://numerus-scriptum.netlify.app/python/2021-12-13-10-metodos-de-machine-learning-para-regresion-con-python)
13. [{{< fa regular file-pdf >}}](https://numerus-scriptum.netlify.app/python/2025-05-10-visualizacion-de-datos-con-python/index.pdf) [Visualizacion De Datos Con Python](https://numerus-scriptum.netlify.app/python/2025-05-10-visualizacion-de-datos-con-python)


<!-- fragmento de inclusión — texto de cierre del bloque «Publicaciones similares» (incluido en cada post) -->

Esperamos que encuentres estas publicaciones igualmente interesantes y útiles. ¡Disfruta de la lectura!

