---
documentmode: doc
copyrightnotice: 2026
copyrightext: All rights reserved
title: Números
shorttitle: NÚMEROS
abstract: Este abstract será actualizado una vez que se complete el contenido final del artículo.
keywords: []
categories:
- Python
tags:
- python
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
description: 'Los números son fundamentales en programación: desde operaciones aritméticas básicas hasta cálculos científicos y análisis de datos.'
eval: true
citation:
  type: article-journal
  author:
  - Edison Achalma
  pdf-url: https://numerus-scriptum.netlify.app/python/2026-10-20-15-numeros/index.pdf
date: 2026-10-20
draft: false
image: ../featured.jpg
curso: python
tema: "2.8"
---

## 🎯 Motivación

Los números son fundamentales en programación: desde operaciones aritméticas básicas hasta cálculos científicos y análisis de datos. Python maneja tres tipos numéricos principales, cada uno con propósitos específicos. Entender sus diferencias te permite elegir el tipo correcto para cada situación y evitar errores de precisión o conversión.

## 💡 Intuición

Imagina tres tipos de contenedores para números:

- **int (enteros)**: como una hoja de papel donde escribes números sin decimales: 5, -3, 42.
- **float (decimales)**: como una calculadora científica que maneja decimales y notación exponencial: 3.14, -0.5, 1.5e10.
- **complex (complejos)**: como un plano cartesiano con dos ejes (real e imaginario): 3+5j.

Cada uno tiene sus propias reglas y usos, y Python te permite convertir entre ellos cuando es necesario.

## 🧠 Modelo mental

- **int**: precisión exacta, sin límite de tamaño (puede ser tan grande como la memoria lo permita).
- **float**: precisión limitada (aproximación decimal, típicamente 15-17 dígitos significativos).
- **complex**: dos floats (parte real e imaginaria) combinados.
- **Conversión**: posible entre int y float (puede perder precisión), pero no directamente desde complex.

## 📐 Desarrollo

### 1. Tipos Numéricos en Python

| Tipo        | Ejemplo                  | Descripción                                | Cuándo usar                                                      |
| ----------- | ------------------------ | ------------------------------------------ | ---------------------------------------------------------------- |
| **int**     | `5`, `-3`, `1000000`     | Números enteros sin decimales              | Conteos, índices, cantidades exactas                             |
| **float**   | `3.14`, `-0.5`, `1.5e10` | Números con decimales (precisión limitada) | Mediciones, cálculos científicos, dinero (cuidado con precisión) |
| **complex** | `3+5j`, `1j`, `-5j`      | Números complejos (real + imaginario)      | Matemáticas avanzadas, ingeniería, física                        |

### 2. Enteros (int)

Los enteros son números sin decimales, sin límite de tamaño:

```python
# Enteros positivos y negativos
x = 42
y = -7
z = 12345678901234567890  # Puede ser enorme

print(type(x))  # <class 'int'>
print(type(z))  # <class 'int'>
```

### 3. Floats (decimales)

Los floats representan números con decimales:

```python
# Floats básicos
x = 3.14
y = -0.5
z = 1.0

print(type(x))  # <class 'float'>

# Notación científica
a = 35e3   # 35 * 10^3 = 35000.0
b = 12E4   # 12 * 10^4 = 120000.0
c = -87.7e100  # Número muy pequeño (científico)

print(a)  # 35000.0
```

### 4. Números Complejos (complex)

Los números complejos tienen parte real e imaginaria:

```python
# Números complejos
x = 3 + 5j
y = 5j          # Solo parte imaginaria
z = -5j         # Imaginario negativo

print(type(x))  # <class 'complex'>
print(x)        # (3+5j)
print(x.real)   # 3.0 (parte real)
print(x.imag)   # 5.0 (parte imaginaria)
```

### 5. Conversión entre Tipos (Casting)

Puedes convertir entre tipos numéricos:

```python
# Conversiones básicas
x = 5        # int
y = 3.14     # float
z = 1j       # complex

# int → float
a = float(x)      # 5.0
print(type(a))    # <class 'float'>

# float → int (trunca decimales)
b = int(y)        # 3 (pierde .14)
print(type(b))    # <class 'int'>

# int → complex
c = complex(x)    # (5+0j)
print(type(c))    # <class 'complex'>

# ❌ No se puede convertir complex → int/float
# d = int(z)      # TypeError: can't convert complex to int
```

### 6. Operaciones Numéricas Comunes

```python
a = 10
b = 3

# Operaciones básicas
print(a + b)   # 13 (suma)
print(a - b)   # 7  (resta)
print(a * b)   # 30 (multiplicación)
print(a / b)   # 3.333... (float)
print(a // b)  # 3  (división entera)
print(a % b)   # 1  (resto/modulo)
print(a ** b)  # 1000 (potencia)
```

### 7. Números Aleatorios

Python tiene un módulo `random` para generar números aleatorios:

```python
import random

# Número aleatorio entre 1 y 9 (inclusive)
numero = random.randrange(1, 10)
print(numero)

# Número aleatorio entre 0.0 y 1.0
print(random.random())

# Número aleatorio entre 1 y 10 (float)
print(random.uniform(1, 10))
```

### 8. Precisión de Floats

⚠️ **Importante:** los floats tienen precisión limitada:

```python
# Problemas de precisión
print(0.1 + 0.2)  # 0.30000000000000004 (no es exactamente 0.3)

# Comparar floats
# ❌ No recomendado
if 0.1 + 0.2 == 0.3:
    print("Igual")  # No se ejecuta

# ✅ Mejor usar tolerancia
tolerancia = 1e-10
if abs((0.1 + 0.2) - 0.3) < tolerancia:
    print("Aproximadamente igual")
```

## 🔬 Ejemplos

**Mínimo —** Tipos numéricos básicos:

```python
entero = 42
decimal = 3.14
complejo = 2 + 3j

print(type(entero))   # <class 'int'>
print(type(decimal))  # <class 'float'>
print(type(complejo)) # <class 'complex'>
```

**Progresivo —** Conversiones y operaciones:

```python
precio = 19.99
cantidad = 3
total = precio * cantidad
print(total)  # 59.97 (float)

# Convertir a entero (trunca)
total_entero = int(total)
print(total_entero)  # 59

# Redondear
total_redondeado = round(total)
print(total_redondeado)  # 60
```

**Real —** Cálculo de IMC (Índice de Masa Corporal):

```python
# Datos del usuario
peso_kg = 72.5    # float
altura_m = 1.75   # float

# Cálculo del IMC
imc = peso_kg / (altura_m ** 2)
print(f"IMC: {imc:.2f}")  # 23.67 (con 2 decimales)

# Categorización
if imc < 18.5:
    categoria = "Bajo peso"
elif imc < 25:
    categoria = "Peso normal"
elif imc < 30:
    categoria = "Sobrepeso"
else:
    categoria = "Obesidad"

print(f"Categoría: {categoria}")
```

## ⚠️ Errores comunes

| Error                          | Síntoma                              | Solución                                           |
| ------------------------------ | ------------------------------------ | -------------------------------------------------- |
| **Dividir por cero**           | `ZeroDivisionError`                  | Verifica que el denominador no sea 0               |
| **Precisión de floats**        | Resultados inesperados (`0.1 + 0.2`) | Usa `Decimal` para dinero o compara con tolerancia |
| **Conversión de complex**      | `TypeError`                          | No se puede convertir complex a int/float          |
| **Concatenar número + string** | `TypeError`                          | Convierte: `str(numero)` o usa f-strings           |
| **División con ints**          | `5 / 2` da `2.5` (float), no `2`     | Usa `//` para división entera                      |

## ✅ Buenas prácticas

1. **Usa `int` para conteos e índices**, `float` para mediciones y cálculos.

2. **Para dinero**, considera `decimal.Decimal` en lugar de float:
   
   ```python
   from decimal import Decimal
   precio = Decimal('19.99')
   ```

3. **Usa `//` para división entera** y `%` para obtener el resto:
   
   ```python
   minutos = 125
   horas = minutos // 60   # 2
   minutos_restantes = minutos % 60  # 5
   ```

4. **Redondea explícitamente** cuando necesites controlar la precisión:
   
   ```python
   resultado = 3.14159265
   print(round(resultado, 2))  # 3.14
   ```

5. **Prefiere `isinstance()` para verificar tipos**:
   
   ```python
   if isinstance(valor, (int, float)):
       print("Es numérico")
   ```

6. **Usa `_` para separar números grandes** (Python 3.6+):
   
   ```python
   poblacion = 1_000_000_000  # Más legible que 1000000000
   ```

## 📝 Ejercicio

**Intermedio** — Calculadora de Prestación

Escribe un programa que:

1. Pida al usuario (simula con variables):
   - Salario mensual (float)
   - Años trabajados (int)
   - Edad (int)
2. Calcule:
   - Salario anual (salario * 12)
   - Prestación por antigüedad: 5% del salario anual por cada año trabajado
   - Edad en 10 años
3. Muestre todos los resultados con 2 decimales
4. Convierta el resultado de la prestación a entero para mostrar la cantidad "redondeada"

---

**Solución (no mires hasta haberlo intentado):**

```python
# Datos
salario_mensual = 2500.50
años_trabajados = 8
edad = 32

# Cálculos
salario_anual = salario_mensual * 12
prestacion_porcentaje = 0.05 * años_trabajados
prestacion = salario_anual * prestacion_porcentaje
edad_futura = edad + 10

# Mostrar resultados
print("=== Cálculo de Prestación ===")
print(f"Salario mensual: ${salario_mensual:.2f}")
print(f"Salario anual: ${salario_anual:.2f}")
print(f"Años trabajados: {años_trabajados}")
print(f"Prestación: ${prestacion:.2f}")
print(f"Prestación redondeada: ${int(prestacion)}")
print(f"Edad actual: {edad}")
print(f"Edad en 10 años: {edad_futura}")
```

## 🗂️ Síntesis

- **`int`**: números enteros sin decimales, sin límite de tamaño.
- **`float`**: números con decimales, precisión limitada.
- **`complex`**: números complejos (real + imaginario, con `j`).
- **`type()`**: verifica el tipo de un número.
- **Conversiones**: `int()`, `float()`, `complex()`.
- **Operaciones**: `+`, `-`, `*`, `/`, `//`, `%`, `**`.
- **Precisión**: los floats son aproximados (problemas con decimales).
- **`random`**: módulo para generar números aleatorios.

## 🔗 Qué sigue

- **Relacionado:** operadores matemáticos, módulo `math`, formateo de números
- **Siguiente tema:** Strings — aprenderás a trabajar con texto y todas sus operaciones.

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

