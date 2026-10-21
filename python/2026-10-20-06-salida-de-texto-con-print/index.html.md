---
documentmode: doc
copyrightnotice: 2026
copyrightext: All rights reserved
title: Salida de texto con print()
shorttitle: SALIDA DE TEXTO CON PRINT()
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
description: 'Imagina que print() es como un altavoz: le das un mensaje y lo reproduce en voz alta para que todos lo escuchen.'
eval: true
citation:
  type: article-journal
  author:
  - Edison Achalma
  pdf-url: https://numerus-scriptum.netlify.app/python/2026-10-20-06-salida-de-texto-con-print/index.pdf
date: 2026-10-20
draft: false
image: ../featured.jpg
curso: python
tema: "1.6"
---

## 🎯 Motivación

`print()` es tu ventana al mundo: es cómo ves lo que tu programa está haciendo. Sin `print()`, estarías programando a ciegas, sin saber si tus variables tienen los valores correctos o si tu lógica funciona. Dominar `print()` te permite ver, depurar y comunicar resultados de manera efectiva.

## 💡 Intuición

Imagina que `print()` es como un altavoz: le das un mensaje y lo reproduce en voz alta para que todos lo escuchen. Puedes usarlo tantas veces como quieras, y cada vez que lo usas, empieza una "nueva línea" automáticamente, como si presionaras Enter después de cada mensaje.

## 🧠 Modelo mental

La función `print()` funciona así:

1. **Acepta uno o más argumentos**: puede recibir texto, números, variables, o combinaciones.
2. **Convierte todo a texto**: si le pasas un número, lo convierte a texto antes de mostrarlo.
3. **Añade un salto de línea al final**: por defecto, después de imprimir pasa a la siguiente línea.
4. **Puede personalizarse**: con parámetros como `end` y `sep` cambias su comportamiento.

## 📐 Desarrollo

### 1. Sintaxis básica

```python
print("texto")
print(variable)
print("texto", variable)
```

### 2. Comillas: simples o dobles

Python acepta ambos tipos de comillas. La única regla: **abre y cierra con el mismo tipo**.

```python
print("Hola")      # ✅ Válido
print('Hola')      # ✅ Válido
print("Hola')      # ❌ Error: mezcla de comillas
```

**¿Cuándo usar cada una?**

- Si tu texto contiene comillas simples, usa dobles: `print("It's awesome")`
- Si contiene comillas dobles, usa simples: `print('Ella dijo "Hola"')`
- O usa `\` para escapar: `print("It\'s awesome")`

### 3. Múltiples `print()`: cada uno en nueva línea

Por defecto, cada `print()` comienza en una línea nueva:

```python
print("Línea 1")
print("Línea 2")
print("Línea 3")
# Salida:
# Línea 1
# Línea 2
# Línea 3
```

### 4. Múltiples argumentos en un `print()`

Puedes pasar varios elementos separados por comas:

```python
nombre = "Ana"
edad = 25
print("Nombre:", nombre, "Edad:", edad)
# Salida: Nombre: Ana Edad: 25
```

### 5. Personalizar el final: `end`

El parámetro `end` controla qué se añade al final (por defecto es `\n`, salto de línea):

```python
print("Hola", end=" ")
print("Mundo")
# Salida: Hola Mundo

print("Manzana", end=", ")
print("Pera", end=", ")
print("Banana")
# Salida: Manzana, Pera, Banana
```

### 6. Personalizar el separador: `sep`

El parámetro `sep` controla qué se pone entre múltiples argumentos (por defecto es espacio):

```python
print("uno", "dos", "tres", sep="-")
# Salida: uno-dos-tres

print(1, 2, 3, sep=" + ")
# Salida: 1 + 2 + 3
```

## 🔬 Ejemplos

**Mínimo —** Texto simple:

```python
print("Hola Mundo")
# Salida: Hola Mundo
```

**Progresivo —** Variaciones de comillas:

```python
print('Python es "genial"')
print("It's a beautiful day")
print("Ella dijo: \"Hola\"")  # Escapando comillas
# Salida:
# Python es "genial"
# It's a beautiful day
# Ella dijo: "Hola"
```

**Real —** Menú de opciones con formato:

```python
print("=== MENÚ PRINCIPAL ===")
print("1. Ver perfil")
print("2. Editar configuración", end=" ")
print("(requiere permisos)")
print("3. Salir")
print("======================")
# Salida:
# === MENÚ PRINCIPAL ===
# 1. Ver perfil
# 2. Editar configuración (requiere permisos)
# 3. Salir
# ======================
```

## ⚠️ Errores comunes

| Error                             | Síntoma                                               | Cómo detectarlo                                            |
| --------------------------------- | ----------------------------------------------------- | ---------------------------------------------------------- |
| **Olvidar comillas**              | `SyntaxError: invalid syntax`                         | El texto siempre va entre `" "` o `' '`                    |
| **Comillas desbalanceadas**       | `SyntaxError: unterminated string literal`            | Cuenta que abres y cierras el mismo número de comillas     |
| **Confundir `print` con `Print`** | `NameError: name 'Print' is not defined`              | Python es sensible a mayúsculas: usa `print` en minúsculas |
| **Olvidar paréntesis**            | `SyntaxError: Missing parentheses in call to 'print'` | Python 3 requiere `()`                                     |
| **Espacio extra al final**        | No da error, pero puede afectar formato               | Usa `end=""` sin espacio si no quieres separador           |

## ✅ Buenas prácticas

- **Usa f-strings** para combinar texto y variables (lo veremos pronto):
  
  ```python
  nombre = "Ana"
  print(f"Hola, {nombre}")  # Más legible que concatenar
  ```
- **Comillas simples por defecto**, usa dobles solo cuando el texto contenga comillas simples.
- **`end=" "`** con espacio para mejor legibilidad al unir líneas.
- **No concatenes con `+`** innecesariamente: usa múltiples argumentos en `print()` con comas.
- **Mensajes descriptivos**: en lugar de `print(x)`, usa `print("El resultado es:", x)`.

## 📝 Ejercicio

**Básico** — Formato de salida

Escribe un programa que:

1. Imprima "--- BIENVENIDO ---" en una línea
2. Imprima "Usuario:" y luego el nombre "Carlos" en la misma línea, separados por un espacio
3. Imprima "Edad:" y luego "30" en la misma línea
4. Imprima "Estado: Activo" con un guión bajo (`_`) entre las palabras
5. Imprima "--- FIN ---" con un punto final (`.`) al final, sin salto de línea

**Pista:** usa los parámetros `sep`, `end` y múltiples argumentos.

---

**Solución (no mires hasta haberlo intentado):**

```python
print("--- BIENVENIDO ---")
print("Usuario:", "Carlos", sep=" ")
print("Edad:", 30, sep=" ")
print("Estado", "Activo", sep="_")
print("--- FIN ---", end=".")
```

**Salida esperada:**

```
--- BIENVENIDO ---
Usuario: Carlos
Edad: 30
Estado_Activo
--- FIN ---.
```

## 🗂️ Síntesis

- **`print()`** muestra texto y valores en la consola.
- **Comillas simples o dobles** son válidas, pero deben coincidir.
- **Cada `print()`** añade un salto de línea por defecto.
- **`end`** personaliza el final de línea (por defecto `\n`).
- **`sep`** personaliza el separador entre argumentos (por defecto espacio).
- **Múltiples argumentos** separados por comas se imprimen con espacio entre ellos.

## 🔗 Qué sigue

- **Relacionado:** variables (cómo almacenar datos para imprimir después), f-strings (formato avanzado)
- **Siguiente tema:** Variables y tipos de datos — aprenderás a crear y manejar datos que luego podrás imprimir.

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

