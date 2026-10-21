---
documentmode: doc
copyrightnotice: 2026
copyrightext: All rights reserved
title: Salida de números con print()
shorttitle: SALIDA DE NÚMEROS CON PRINT()
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
description: 'Los números son el alma de la programación: cálculos, mediciones, estadísticas, todo gira en torno a ellos.'
eval: true
citation:
  type: article-journal
  author:
  - Edison Achalma
  pdf-url: https://numerus-scriptum.netlify.app/python/2026-10-20-07-salida-de-numeros-con-print/index.pdf
date: 2026-10-20
draft: false
image: ../featured.jpg
curso: python
tema: "1.7"
---

## 🎯 Motivación

Los números son el alma de la programación: cálculos, mediciones, estadísticas, todo gira en torno a ellos. Saber imprimir números correctamente te permite ver resultados de operaciones, depurar cálculos y mostrar información numérica a los usuarios. La diferencia clave con el texto es que **los números no llevan comillas** — y entender esa diferencia es fundamental.

## 💡 Intuición

Piensa en `print()` como una calculadora que también habla. Si le pides que imprima `3`, simplemente muestra el número 3. Si le pides `3 + 3`, primero hace la cuenta (como una calculadora) y luego muestra el resultado. Pero si le pides `"3"` (con comillas), lo trata como texto, como si fuera una palabra escrita con el símbolo "3".

## 🧠 Modelo mental

Python distingue entre:

1. **Números (int, float)**: valores matemáticos. **Van sin comillas.**
2. **Texto (str)**: caracteres. **Van con comillas.**

Cuando usas `print()`:

- Si pasas un número, lo muestra como número.
- Si pasas una expresión matemática, **la calcula primero** y muestra el resultado.
- Si pasas texto con comillas, lo muestra literalmente.

## 📐 Desarrollo

### 1. Imprimir números simples

```python
print(3)      # Número entero
print(3.14)   # Número decimal (float)
print(-5)     # Número negativo
# Salida:
# 3
# 3.14
# -5
```

### 2. Operaciones matemáticas dentro de `print()`

Python evalúa las operaciones antes de imprimir:

```python
print(5 + 3)      # Suma
print(10 - 4)     # Resta
print(6 * 7)      # Multiplicación
print(15 / 3)     # División (resultado decimal)
print(10 // 3)    # División entera (trunca decimales)
print(10 % 3)     # Módulo (resto de la división)
print(2 ** 4)     # Potencia
# Salida:
# 8
# 6
# 42
# 5.0
# 3
# 1
# 16
```

### 3. Combinar números y texto

Usa **comas** para separar texto y números en el mismo `print()`:

```python
print("Tengo", 25, "años")
# Salida: Tengo 25 años

print("El resultado es", 10 + 5)
# Salida: El resultado es 15

print("Precio:", 99, "€")
# Salida: Precio: 99 €
```

### 4. Texto vs números: la diferencia clave

```python
print(5)       # Muestra el número 5
print("5")     # Muestra el carácter "5" (texto)
print(5 + 3)   # Calcula 5+3, muestra 8
print("5+3")   # Muestra literalmente "5+3"
# Salida:
# 5
# 5
# 8
# 5+3
```

### 5. Múltiples números en un `print()`

```python
print(10, 20, 30)
# Salida: 10 20 30

print(1, 2, 3, sep=" - ")
# Salida: 1 - 2 - 3

print(5, 10, 15, sep=", ")
# Salida: 5, 10, 15
```

## 🔬 Ejemplos

**Mínimo —** Números y operaciones básicas:

```python
print(100)
print(50 + 50)
print(10 * 2)
# Salida:
# 100
# 100
# 20
```

**Progresivo —** Cálculos más complejos:

```python
print(15 + 3 * 4)        # Prioridad: multiplicación primero
print((15 + 3) * 4)      # Paréntesis cambian el orden
# Salida:
# 27   (15 + 12)
# 72   (18 * 4)
```

**Real —** Calculando propina en un restaurante:

```python
cuenta = 45.50
propina_porcentaje = 15
propina = cuenta * propina_porcentaje / 100
total = cuenta + propina

print("Cuenta:", cuenta, "€")
print("Propina (15%):", propina, "€")
print("Total a pagar:", total, "€")
# Salida:
# Cuenta: 45.5 €
# Propina (15%): 6.825 €
# Total a pagar: 52.325 €
```

## ⚠️ Errores comunes

| Error                    | Síntoma                                                 | Cómo detectarlo                                      |
| ------------------------ | ------------------------------------------------------- | ---------------------------------------------------- |
| **Número con comillas**  | `print("5")` muestra texto "5", no número               | Si necesitas hacer operaciones, **no** uses comillas |
| **Texto sin comillas**   | `print(Hola)` → `NameError: name 'Hola' is not defined` | El texto siempre va entre comillas                   |
| **Dividir por cero**     | `print(5 / 0)` → `ZeroDivisionError: division by zero`  | Asegura que el denominador no sea 0                  |
| **Operaciones en texto** | `print("5+3")` muestra "5+3", no 8                      | Las comillas hacen que todo sea literal              |
| **Confundir separador**  | `print("Hola" 25)` → `SyntaxError`                      | Usa comas para separar: `print("Hola", 25)`          |

## ✅ Buenas prácticas

- **Números sin comillas**: siempre que quieras un valor numérico o una operación.

- **Usa paréntesis** para clarificar el orden de las operaciones.

- **Nombra variables** en lugar de números "mágicos":
  
  ```python
  # ❌ Poco legible
  print(45.50 * 0.15)
  
  # ✅ Legible
  cuenta = 45.50
  propina = cuenta * 0.15
  print(propina)
  ```

- **Separa texto y números con comas** para que Python los muestre correctamente.

- **Usa f-strings** para formateo avanzado (lo veremos más adelante).

## 📝 Ejercicio

**Básico** — Calculadora de presupuesto

Escribe un programa que:

1. Tenga un presupuesto de **500** euros
2. Un gasto en comida de **125.50** euros
3. Un gasto en transporte de **45.75** euros
4. Calcule el **total gastado** y el **saldo restante**
5. Imprima los resultados con mensajes descriptivos

**Requisitos:** los números deben ser calculados, no escritos directamente en los `print()`.

---

**Solución (no mires hasta haberlo intentado):**

```python
presupuesto = 500
gasto_comida = 125.50
gasto_transporte = 45.75

total_gastado = gasto_comida + gasto_transporte
saldo = presupuesto - total_gastado

print("Presupuesto inicial:", presupuesto, "€")
print("Gasto en comida:", gasto_comida, "€")
print("Gasto en transporte:", gasto_transporte, "€")
print("Total gastado:", total_gastado, "€")
print("Saldo restante:", saldo, "€")
```

**Salida esperada:**

```
Presupuesto inicial: 500 €
Gasto en comida: 125.5 €
Gasto en transporte: 45.75 €
Total gastado: 171.25 €
Saldo restante: 328.75 €
```

## 🗂️ Síntesis

- **Números sin comillas**: `print(5)` muestra el número 5.
- **Texto con comillas**: `print("5")` muestra el texto "5".
- **Operaciones matemáticas** se calculan antes de imprimir.
- **Mezcla texto y números** con comas: `print("Edad:", 30)`.
- **Jerarquía de operadores**: respeta la matemática estándar (paréntesis primero).
- **Puedes usar `sep` y `end`** para personalizar el formato de salida.

## 🔗 Qué sigue

- **Relacionado:** variables (guardar números en variables), tipos de datos (int, float, str)
- **Siguiente tema:** Variables y tipos de datos — aprenderás a almacenar y manipular números y texto de forma estructurada.

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

