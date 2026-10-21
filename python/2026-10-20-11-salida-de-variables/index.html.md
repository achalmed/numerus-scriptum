---
documentmode: doc
copyrightnotice: 2026
copyrightext: All rights reserved
title: Salida de variables
shorttitle: SALIDA DE VARIABLES
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
description: Una vez que tienes datos almacenados en variables, necesitas poder mostrarlos.
eval: true
citation:
  type: article-journal
  author:
  - Edison Achalma
  pdf-url: https://numerus-scriptum.netlify.app/python/2026-10-20-11-salida-de-variables/index.pdf
date: 2026-10-20
draft: false
image: ../featured.jpg
curso: python
tema: "2.4"
---

## 🎯 Motivación

Una vez que tienes datos almacenados en variables, necesitas poder mostrarlos. Python te ofrece varias formas de combinar y mostrar variables con `print()`. Elegir el método correcto hace tu código más legible y evita errores comunes como mezclar tipos de datos incorrectamente.

## 💡 Intuición

Imagina que tienes piezas de un rompecabezas (variables) y quieres mostrarlas juntas. Puedes:

- **Colocarlas una al lado de la otra** (usando comas): `print(x, y)` → cada pieza se muestra con un espacio entre ellas.
- **Pegarlas** (usando `+`): `print(x + y)` → las piezas se unen formando una sola pieza (solo funciona con texto).
- **No puedes pegar una pieza de madera con una de plástico** (string + número) → da error.

## 🧠 Modelo mental

El `print()` maneja variables de diferentes maneras:

1. **Múltiples argumentos (con comas)**: muestra cada valor separado por un espacio (por defecto).
2. **Concatenación con `+`**: une valores en un solo valor (solo funciona con el mismo tipo).
3. **Diferencias clave**: `+` une, la coma separa.
4. **Restricción**: no puedes usar `+` entre texto y número.

## 📐 Desarrollo

### 1. Imprimir una variable

La forma más simple:

```python
nombre = "Ana"
print(nombre)  # Ana

edad = 25
print(edad)    # 25
```

### 2. Múltiples variables con comas

Separa variables con comas para mostrarlas juntas:

```python
nombre = "Ana"
apellido = "García"
edad = 25

print(nombre, apellido, edad)
# Salida: Ana García 25
```

Python añade un espacio entre cada valor automáticamente.

### 3. Concatenación con `+` (solo texto)

Une texto con `+` para formar un solo valor:

```python
nombre = "Ana"
apellido = "García"

print(nombre + " " + apellido)
# Salida: Ana García
```

⚠️ **Importante:** `+` solo funciona si todos los elementos son texto (strings).

### 4. `+` con números (operación matemática)

Cuando usas `+` con números, Python suma:

```python
x = 5
y = 10
print(x + y)  # 15 (suma matemática)
```

### 5. Error común: mezclar texto y números con `+`

```python
x = 5
y = "John"
print(x + y)  # ❌ TypeError: unsupported operand type(s) for +: 'int' and 'str'
```

### 6. Solución: usar comas para mezclar tipos

```python
x = 5
y = "John"
print(x, y)  # ✅ 5 John (funciona con diferentes tipos)
```

### 7. Personalizar el separador con `sep`

Puedes cambiar el espacio entre elementos usando `sep`:

```python
x = "Ana"
y = "García"
z = 25

print(x, y, z, sep=" - ")
# Salida: Ana - García - 25

print(x, y, z, sep="")
# Salida: AnaGarcía25

print(x, y, z, sep=", ")
# Salida: Ana, García, 25
```

### 8. Comparativa de métodos

| Método            | Ejemplo                | Resultado    | Cuándo usar                            |
| ----------------- | ---------------------- | ------------ | -------------------------------------- |
| **Coma**          | `print(x, y)`          | `Hola Mundo` | Siempre que tengas diferentes tipos    |
| **`+` (texto)**   | `print(x + y)`         | `HolaMundo`  | Cuando quieras unir texto sin espacios |
| **`+` (números)** | `print(x + y)`         | `15`         | Para sumar números                     |
| **`sep`**         | `print(x, y, sep="-")` | `Hola-Mundo` | Cuando quieras controlar el separador  |

## 🔬 Ejemplos

**Mínimo —** Variables simples:

```python
nombre = "Carlos"
print(nombre)  # Carlos
```

**Progresivo —** Múltiples variables:

```python
# Con comas (recomendado para diferentes tipos)
nombre = "Ana"
edad = 25
ciudad = "Madrid"
print(nombre, edad, ciudad)  # Ana 25 Madrid

# Con + (solo texto)
saludo = "Hola"
nombre = "Ana"
print(saludo + " " + nombre)  # Hola Ana

# Con sep
print(nombre, edad, ciudad, sep=" | ")  # Ana | 25 | Madrid
```

**Real —** Informe de ventas:

```python
# Datos de venta
producto = "Laptop"
precio = 850.50
cantidad = 3
total = precio * cantidad

# Método recomendado (comas)
print("Producto:", producto)
print("Precio unitario:", precio, "€")
print("Cantidad:", cantidad)
print("Total:", total, "€")

# También puedes usar f-strings (lo veremos después)
print(f"Total: {total}€")  # Más elegante
```

## ⚠️ Errores comunes

| Error                                  | Síntoma                                  | Solución                                     |
| -------------------------------------- | ---------------------------------------- | -------------------------------------------- |
| **Texto + número**                     | `TypeError: unsupported operand type(s)` | Usa comas en lugar de `+`                    |
| **Olvidar espacio en `+`**             | `"Hola""Mundo"` → `HolaMundo`            | Añade espacio explícito: `"Hola " + "Mundo"` |
| **Confundir `+` para texto y números** | `"10" + 5` → error                       | Convierte: `int("10") + 5` o usa comas       |
| **Olvidar convertir números**          | `"Total: " + 100` → error                | Usa comas o convierte a texto: `str(100)`    |

## ✅ Buenas prácticas

1. **Usa comas cuando tengas diferentes tipos**:
   
   ```python
   # ✅ Recomendado
   print("Edad:", edad, "años")
   
   # ❌ Propenso a error
   print("Edad: " + str(edad) + " años")
   ```

2. **Usa f-strings para formato avanzado** (más elegante):
   
   ```python
   nombre = "Ana"
   edad = 25
   print(f"{nombre} tiene {edad} años")  # Ana tiene 25 años
   ```

3. **Para unir texto, prefiere comas o f-strings** en lugar de `+`:
   
   ```python
   # ✅ Más legible
   print(nombre, apellido)
   
   # ✅ Más control
   print(f"{nombre} {apellido}")
   
   # ❌ Menos legible
   print(nombre + " " + apellido)
   ```

4. **Usa `sep` para separadores consistentes**:
   
   ```python
   print(nombre, edad, ciudad, sep=", ")
   # Ana, 25, Madrid
   ```

## 📝 Ejercicio

**Básico** — Mostrar variables

Escribe un programa que:

1. Cree variables para: `nombre` (texto), `edad` (número), `altura` (decimal), `ciudad` (texto)
2. Muestre los datos con comas (usando diferentes tipos)
3. Muestre un mensaje completo usando `+` (solo la parte de texto)
4. Muestre la edad que tendrá en 10 años (operación matemática)
5. Use `sep` para mostrar los datos separados por " | "

---

**Solución (no mires hasta haberlo intentado):**

```python
# Datos
nombre = "Carlos"
edad = 28
altura = 1.75
ciudad = "Barcelona"

# 1. Con comas (diferentes tipos)
print("Datos personales:")
print("Nombre:", nombre)
print("Edad:", edad, "años")
print("Altura:", altura, "metros")
print("Ciudad:", ciudad)

# 2. Con + (solo texto)
print("Bienvenido " + nombre + " de " + ciudad)

# 3. Operación con números
edad_futura = edad + 10
print("Edad en 10 años:", edad_futura)

# 4. Usando sep
print(nombre, edad, altura, ciudad, sep=" | ")
```

**Salida esperada:**

```
Datos personales:
Nombre: Carlos
Edad: 28 años
Altura: 1.75 metros
Ciudad: Barcelona
Bienvenido Carlos de Barcelona
Edad en 10 años: 38
Carlos | 28 | 1.75 | Barcelona
```

## 🗂️ Síntesis

- **Comas** (`print(x, y)`) → separa con espacio, funciona con cualquier tipo.
- **`+` (texto)** → une strings, solo funciona con strings.
- **`+` (números)** → suma matemática.
- **Error común**: `texto + número` → TypeError.
- **Solución**: usa comas o convierte con `str()`.
- **`sep`**: personaliza el separador entre elementos.
- **f-strings**: la forma más elegante (lo veremos más adelante).

## 🔗 Qué sigue

- **Relacionado:** f-strings (formato avanzado), strings y métodos de string
- **Siguiente tema:** Tipos de datos — aprenderás sobre strings, números, booleanos y más.

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

