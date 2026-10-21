---
documentmode: doc
copyrightnotice: 2026
copyrightext: All rights reserved
title: Asignación múltiple de variables
shorttitle: ASIGNACIÓN MÚLTIPLE DE VARIABLES
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
description: Python permite asignar valores a múltiples variables en una sola línea, haciendo el código más compacto y legible.
eval: true
citation:
  type: article-journal
  author:
  - Edison Achalma
  pdf-url: https://numerus-scriptum.netlify.app/python/2026-10-20-10-asignacion-multiple-de-variables/index.pdf
date: 2026-10-20
draft: false
image: ../featured.jpg
curso: python
tema: "2.3"
---

## 🎯 Motivación

Python permite asignar valores a múltiples variables en una sola línea, haciendo el código más compacto y legible. Esta característica es especialmente útil cuando trabajas con colecciones de datos, intercambias valores o inicializas varias variables con el mismo valor. Dominar estas técnicas hace tu código más **Pythonico** y eficiente.

## 💡 Intuición

Imagina que tienes tres cajas (variables) y tres objetos (valores). Normalmente, pondrías un objeto en cada caja por separado. La asignación múltiple es como hacerlo todo de una vez: colocas el primer objeto en la primera caja, el segundo en la segunda, y el tercero en la tercera, simultáneamente. Es más rápido y más limpio.

## 🧠 Modelo mental

Python evalúa el lado derecho primero y luego asigna a la izquierda:

1. **Asignación múltiple**: los valores se asignan en orden a las variables correspondientes.
2. **Desempaquetado**: los elementos de una colección se "desempaquetan" en variables individuales.
3. **Intercambio**: Python permite intercambiar valores de manera elegante sin variable temporal.

## 📐 Desarrollo

### 1. Asignación múltiple en una línea

Asigna diferentes valores a diferentes variables:

```python
x, y, z = "Manzana", "Banana", "Cereza"
print(x)  # Manzana
print(y)  # Banana
print(z)  # Cereza

# También funciona con números
a, b, c = 1, 2, 3
print(a, b, c)  # 1 2 3

# Y con tipos mixtos
nombre, edad, ciudad = "Ana", 25, "Madrid"
```

⚠️ **Importante:** el número de variables debe coincidir con el número de valores:

```python
# ❌ Error: demasiados valores
x, y = 1, 2, 3  # ValueError: too many values to unpack

# ❌ Error: pocos valores
x, y, z = 1, 2  # ValueError: not enough values to unpack
```

### 2. Mismo valor para múltiples variables

Asigna el mismo valor a varias variables:

```python
x = y = z = "Naranja"
print(x)  # Naranja
print(y)  # Naranja
print(z)  # Naranja

# Con números
a = b = c = 0
print(a, b, c)  # 0 0 0
```

### 3. Desempaquetado (unpacking)

Extrae valores de una colección (lista, tupla, etc.) en variables individuales:

```python
# Desempaquetando una lista
frutas = ["manzana", "banana", "cereza"]
x, y, z = frutas
print(x)  # manzana
print(y)  # banana
print(z)  # cereza

# Desempaquetando una tupla
coordenadas = (10, 20)
x, y = coordenadas
print(x)  # 10
print(y)  # 20
```

### 4. Intercambio de valores (swapping)

Python permite intercambiar valores de forma elegante:

```python
# Método tradicional (en otros lenguajes)
a = 5
b = 10
temp = a
a = b
b = temp
print(a, b)  # 10 5

# Método Pythonico
a, b = 5, 10
a, b = b, a  # Intercambio en una línea
print(a, b)  # 10 5
```

### 5. Desempaquetado con asterisco (`*`)

Recoge múltiples valores en una lista:

```python
# Recoge el resto de elementos
a, b, *resto = 1, 2, 3, 4, 5
print(a)      # 1
print(b)      # 2
print(resto)  # [3, 4, 5]

# También funciona en medio
a, *medio, b = 1, 2, 3, 4, 5
print(a)      # 1
print(medio)  # [2, 3, 4]
print(b)      # 5
```

## 🔬 Ejemplos

**Mínimo —** Asignación básica:

```python
# Múltiples valores
nombre, edad, ciudad = "Ana", 25, "Madrid"
print(nombre, edad, ciudad)  # Ana 25 Madrid

# Mismo valor
x = y = z = 100
print(x, y, z)  # 100 100 100
```

**Progresivo —** Desempaquetado:

```python
# Desempaquetado de lista
colores = ["rojo", "verde", "azul"]
primero, segundo, tercero = colores
print(primero)   # rojo
print(segundo)   # verde
print(tercero)   # azul
```

**Real —** Sistema de ventas:

```python
# Datos de un producto
producto = ["Laptop", 850.50, 15]  # nombre, precio, stock
nombre, precio, stock = producto

# Cálculo de venta
cantidad = 3
total = precio * cantidad
nuevo_stock = stock - cantidad

print("Producto:", nombre)
print("Precio unitario: $", precio)
print("Total venta: $", total)
print("Stock restante:", nuevo_stock)
```

## ⚠️ Errores comunes

| Error                             | Síntoma                                            | Cómo evitarlo                                          |
| --------------------------------- | -------------------------------------------------- | ------------------------------------------------------ |
| **Número de variables ≠ valores** | `ValueError: too many/few values to unpack`        | Cuenta variables y valores                             |
| **Desempaquetar no iterable**     | `TypeError: cannot unpack non-iterable int object` | Solo puedes desempaquetar colecciones                  |
| **Usar `*` sin necesidad**        | Funciona, pero puede ser confuso                   | Usa `*` solo cuando el número de elementos es variable |
| **Olvidar el orden**              | Asignación incorrecta                              | Los valores se asignan en orden                        |

## ✅ Buenas prácticas

1. **Usa asignación múltiple para intercambiar valores**:
   
   ```python
   # ✅ Más limpio
   a, b = b, a
   
   # ❌ Menos elegante
   temp = a
   a = b
   b = temp
   ```

2. **Desempaqueta colecciones para mejorar legibilidad**:
   
   ```python
   # ✅ Legible
   coordenadas = (10, 20, 30)
   x, y, z = coordenadas
   
   # ❌ Confuso
   x = coordenadas[0]
   y = coordenadas[1]
   z = coordenadas[2]
   ```

3. **Usa `_` para valores que no necesitas**:
   
   ```python
   # Ignora el segundo valor
   x, _, z = 1, 2, 3
   print(x, z)  # 1 3
   ```

4. **No abuses de la asignación múltiple**: si tienes muchas variables (>3), considera usar una estructura de datos.

## 📝 Ejercicio

**Básico** — Asignación y desempaquetado

Escribe un programa que:

1. Cree una lista `datos_usuario` con: nombre, edad, email, ciudad
2. Desempaquete la lista en variables individuales
3. Cree una variable `telefono` y asígnale el valor "555-1234"
4. Cree tres variables `a`, `b`, `c` con el mismo valor 0
5. Intercambie los valores de `x = 10` y `y = 20` en una línea
6. Imprima todos los resultados

---

**Solución (no mires hasta haberlo intentado):**

```python
# 1. Lista de datos
datos_usuario = ["Ana Martínez", 28, "ana@email.com", "Barcelona"]

# 2. Desempaquetado
nombre, edad, email, ciudad = datos_usuario

# 3. Variable individual
telefono = "555-1234"

# 4. Mismo valor para múltiples variables
a = b = c = 0

# 5. Intercambio de valores
x, y = 10, 20
x, y = y, x

# 6. Resultados
print("Nombre:", nombre)
print("Edad:", edad)
print("Email:", email)
print("Ciudad:", ciudad)
print("Teléfono:", telefono)
print("a, b, c:", a, b, c)
print("x, y después del intercambio:", x, y)
```

## 🗂️ Síntesis

- **Asignación múltiple**: `x, y, z = 1, 2, 3` (coincidir número de variables y valores).
- **Mismo valor**: `x = y = z = 0` (todas apuntan al mismo valor).
- **Desempaquetado**: extrae elementos de listas/tuplas en variables.
- **Intercambio**: `a, b = b, a` para intercambiar valores (muy Pythonico).
- **Asterisco (`*`)**: recolecta múltiples valores en una lista.
- **Guión bajo (`_`)**: ignora valores no deseados.

## 🔗 Qué sigue

- **Relacionado:** listas y tuplas (estructuras de datos), desempaquetado avanzado
- **Siguiente tema:** Tipos de datos — aprenderás a manejar diferentes tipos de datos como strings, números y booleanos.

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

