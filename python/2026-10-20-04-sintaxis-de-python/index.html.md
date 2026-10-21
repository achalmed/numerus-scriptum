---
documentmode: doc
copyrightnotice: 2026
copyrightext: All rights reserved
title: Sintaxis de Python
shorttitle: SINTAXIS DE PYTHON
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
description: La sintaxis es el conjunto de reglas que definen cómo se escribe código válido en Python.
eval: true
citation:
  type: article-journal
  author:
  - Edison Achalma
  pdf-url: https://numerus-scriptum.netlify.app/python/2026-10-20-04-sintaxis-de-python/index.pdf
date: 2026-10-20
draft: false
image: ../featured.jpg
curso: python
tema: "1.4"
---

## 🎯 Motivación

La sintaxis es el conjunto de reglas que definen cómo se escribe código válido en Python. A diferencia de otros lenguajes donde la sintaxis es más permisiva, Python fue diseñado para ser **legible y consistente**. Entender la sintaxis desde el principio te ahorrará errores frustrantes y hará que tu código sea más claro para otros (y para ti mismo cuando lo releas).

## 💡 Intuición

Piensa en la sintaxis de Python como las reglas gramaticales de un idioma. En español, "El perro come" es válido; "Perro el come" suena mal. En Python, la indentación es como la puntuación: no es opcional, es parte de la gramática. Si olvidas los espacios, Python no entiende dónde termina un bloque y empieza otro, igual que si escribieras una oración sin puntos.

## 🧠 Modelo mental

La sintaxis de Python se basa en tres pilares fundamentales:

1. **Indentación como estructura**: en lugar de llaves (`{}`) o palabras clave (`begin/end`), Python usa espacios para agrupar código. Esto obliga a escribir código limpio y legible.

2. **Instrucciones línea por línea**: cada línea suele ser una instrucción completa. No necesitas punto y coma (`;`) al final.

3. **Comentarios documentan, no ejecutan**: todo lo que escribas después de `#` es ignorado por Python. Son para ti y para otros humanos.

## 📐 Desarrollo

### 1. Indentación: la regla de oro

En Python, la indentación **define bloques de código**. Esto aplica a:

- Condicionales (`if`, `elif`, `else`)
- Bucles (`for`, `while`)
- Funciones (`def`)
- Clases (`class`)

```python
if 5 > 2:
    print("Cinco es mayor que dos")  # Esta línea está indentada
    print("Esto también pertenece al if")
print("Esto ya está fuera del if")   # Sin indentación = fuera del bloque
```

**Reglas de indentación:**

- Debe haber **al menos un espacio** o un tabulador.
- El **número de espacios debe ser consistente** dentro del mismo bloque.
- La convención más común es **4 espacios** (recomendado por PEP 8).

### 2. Variables: creación sin declaración

En Python, **no declaras** variables. Se crean cuando les asignas un valor:

```python
nombre = "Ana"      # Variable de texto (str)
edad = 25           # Variable numérica (int)
precio = 99.99      # Variable decimal (float)
es_valido = True    # Variable booleana (bool)
```

Python infiere el tipo automáticamente. Las variables pueden cambiar de tipo durante la ejecución (tipado dinámico).

### 3. Comentarios: documenta tu código

Los comentarios son líneas que Python ignora completamente. Sirven para explicar qué hace tu código:

```python
# Esto es un comentario de una línea
print("Hola")  # También puedes poner comentarios al final de una línea

# Los comentarios son útiles para:
# - Explicar lógica compleja
# - Desactivar temporalmente código
# - Dejar notas para ti mismo o para otros
```

### 4. Convenciones de sintaxis (PEP 8)

- **Sensibilidad a mayúsculas**: `miVariable` y `mivariable` son diferentes.
- **Nombres en minúsculas con guiones bajos**: `nombre_usuario` (no `nombreUsuario`).
- **Constantes en mayúsculas**: `MAXIMO = 100`.
- **Una línea en blanco** entre funciones y clases para legibilidad.

## 🔬 Ejemplos

**Mínimo —** Un programa que combina sintaxis válida:

```python
# Calcular descuento simple
precio = 100
descuento = 20
precio_final = precio - descuento
print("Precio final:", precio_final)
# Salida: Precio final: 80
```

**Progresivo —** Indentación y bloques correctos vs incorrectos:

```python
# ✅ CORRECTO - mismo número de espacios (4)
if 10 > 5:
    print("Diez es mayor")
    print("Este mensaje también está dentro del if")

# ❌ INCORRECTO - indentación inconsistente
if 10 > 5:
    print("Diez es mayor")
  print("Este mensaje tiene 2 espacios")  # Error: indentación inconsistente
```

**Real —** Un script que usa sintaxis básica con comentarios:

```python
# config.py - Configuración simple de usuario
nombre = input("¿Cómo te llamas? ")  # Captura entrada del usuario
print(f"Hola, {nombre}")            # f-string: formatea cadenas

# Ejecución condicional
if nombre == "admin":
    print("Modo administrador activado")
    print("Tienes acceso completo")
else:
    print("Modo usuario")
    print("Acceso limitado")
```

## ⚠️ Errores comunes

| Error                                  | Síntoma                                                                 | Cómo detectarlo                                                   |
| -------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------- |
| **Indentación faltante**               | `IndentationError: expected an indented block`                          | Busca la línea marcada; debe tener espacios antes del código      |
| **Indentación inconsistente**          | `IndentationError: unindent does not match any outer indentation level` | Usa espacios o tabs, pero NO mezcles ambos                        |
| **Confundir `=` con `==`**             | La variable se reasigna en lugar de comparar                            | Revisa condicionales: `=` es asignación, `==` es comparación      |
| **Olvidar cerrar paréntesis/comillas** | `SyntaxError: unexpected EOF while parsing`                             | Cuenta paréntesis y comillas; deben abrirse y cerrarse            |
| **Espacios en nombres de variables**   | `SyntaxError: invalid syntax`                                           | Las variables no pueden tener espacios: `mi nombre` → `mi_nombre` |

## ✅ Buenas prácticas

- **Usa 4 espacios para indentar** (configura tu editor para que TAB inserte 4 espacios).
- **Comenta el "por qué"**, no el "qué": el código ya dice qué hace.
- **Nombra variables de forma descriptiva**: `precio_con_descuento` en lugar de `pcd`.
- **No uses palabras reservadas** como variables (`print`, `if`, `while`, `class`).
- **Agrupa lógica relacionada** con líneas en blanco para separar secciones.

## 📝 Ejercicio

**Básico** — Corrección de errores

El siguiente código tiene **4 errores de sintaxis**. Encuéntralos y corrígelos:

```python
# calculadora simple
numero1 = 10
numero2 = 5
suma = numero1 + numero2
print("La suma es", suma)
if suma > 10:
print("La suma es mayor que 10")
    resta = numero1 - numero2
print("La resta es", resta)
   print("Fin del programa")
```

**Pista:** busca problemas de indentación y nombres mal escritos.

---

**Solución (no mires hasta haberlo intentado):**

```python
# calculadora simple
numero1 = 10
numero2 = 5
suma = numero1 + numero2
print("La suma es", suma)
if suma > 10:
    print("La suma es mayor que 10")  # Faltaba indentación
    resta = numero1 - numero2
print("La resta es", resta)
print("Fin del programa")  # La indentación extra no es necesaria
```

## 🗂️ Síntesis

- **Indentación = bloques de código**: esencial, no opcional (4 espacios por convención).
- **Variables se crean al asignar**: no necesitan declaración previa.
- **Comentarios con `#`**: documentan, no ejecutan.
- **Sintaxis sensible a mayúsculas**: `Variable` ≠ `variable`.
- **Usa PEP 8**: guía de estilo para código limpio y consistente.

## 🔗 Qué sigue

- **Relacionado:** variables y tipos de datos (manejo de texto, números, booleanos)
- **Siguiente tema:** Variables y tipos de datos — aprenderás a almacenar y manipular información con distintos tipos de datos en Python.

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

