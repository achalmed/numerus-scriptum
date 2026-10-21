---
documentmode: doc
copyrightnotice: 2026
copyrightext: All rights reserved
title: Nombres de variables
shorttitle: NOMBRES DE VARIABLES
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
description: Los nombres de variables son la forma en que te comunicas con otros programadores y contigo mismo.
eval: true
citation:
  type: article-journal
  author:
  - Edison Achalma
  pdf-url: https://numerus-scriptum.netlify.app/python/2026-10-20-09-nombres-de-variables/index.pdf
date: 2026-10-20
draft: false
image: ../featured.jpg
curso: python
tema: "2.2"
---

## 🎯 Motivación

Los nombres de variables son la forma en que te comunicas con otros programadores y contigo mismo. Un buen nombre hace que tu código sea **autoexplicativo**, reduciendo la necesidad de comentarios y facilitando el mantenimiento. Elegir nombres claros no es solo estilo: es una habilidad fundamental que distingue a un programador novato de uno profesional.

## 💡 Intuición

Piensa en los nombres de variables como las etiquetas de los cajones en una oficina. Si cada cajón tiene una etiqueta clara ("Facturas", "Contratos", "Informes"), cualquiera puede encontrar lo que busca. Si usas etiquetas como "Cosa1", "Cosa2" o "Eso", nadie (ni tú) sabrá qué hay dentro. En programación pasa igual: `total_ventas` es mucho mejor que `x` o `temp`.

## 🧠 Modelo mental

Las reglas de nombres en Python son **estrictas** (el intérprete te dará error si no las cumples) y **convencionales** (buenas prácticas que no son obligatorias pero que mejoran la legibilidad).

### Reglas obligatorias

- Solo letras (A-Z, a-z), números (0-9) y guión bajo (`_`)
- No puede empezar con número
- No puede ser una palabra reservada de Python
- Sensible a mayúsculas y minúsculas

### Convenciones

- `snake_case` (recomendado por PEP 8)
- Nombres descriptivos
- Constantes en `MAYUSCULAS`
- Clases en `PascalCase`

## 📐 Desarrollo

### 1. Reglas estrictas (lo que es legal o ilegal)

**Nombres legales** ✅:

```python
nombre = "Ana"        # Letras
_nombre = "Ana"       # Empieza con guión bajo
nombre2 = "Ana"       # Termina con número
nombre_completo = "Ana"  # Guión bajo
Nombre = "Ana"        # Mayúscula inicial (pero no recomendado)
NOMBRE = "Ana"        # Todo mayúsculas (para constantes)
```

**Nombres ilegales** ❌:

```python
2nombre = "Ana"       # Empieza con número
mi-nombre = "Ana"     # Contiene guión (-)
mi nombre = "Ana"     # Contiene espacio
if = "Ana"            # Palabra reservada
```

### 2. Convenciones de estilo para nombres compuestos

Cuando un nombre tiene varias palabras, usa una de estas convenciones:

| Estilo          | Ejemplo              | Uso recomendado                           |
| --------------- | -------------------- | ----------------------------------------- |
| **Snake Case**  | `mi_nombre_variable` | Variables y funciones (PEP 8)             |
| **Camel Case**  | `miNombreVariable`   | A veces usado en JavaScript, no en Python |
| **Pascal Case** | `MiNombreVariable`   | Clases en Python                          |

**Recomendación:** usa `snake_case` para variables en Python:

```python
# ✅ Snake Case (recomendado)
precio_total = 100
nombre_usuario = "Carlos"
lista_productos = ["manzana", "pera"]

# ❌ Camel Case (no recomendado en Python)
precioTotal = 100
nombreUsuario = "Carlos"
```

### 3. Palabras reservadas (no usar)

Estas palabras tienen un significado especial en Python y no pueden usarse como nombres:

```python
# No usar como variables
# False, class, finally, is, return, None, continue, for, lambda, try,
# True, def, from, nonlocal, while, and, del, global, not, with,
# as, elif, if, or, yield, assert, else, import, pass, break, except, in, raise
```

### 4. Convenciones especiales (por contexto)

| Convención                  | Ejemplo           | Significado                  |
| --------------------------- | ----------------- | ---------------------------- |
| **Mayúsculas**              | `PI = 3.14159`    | Constante (no debe cambiar)  |
| **Guión bajo al inicio**    | `_interno`        | "Privado" (por convención)   |
| **Doble guión bajo**        | `__magico__`      | Métodos especiales de Python |
| **Minúsculas y guión bajo** | `variable_normal` | Variables estándar           |

## 🔬 Ejemplos

**Mínimo —** Nombres legales e ilegales:

```python
# ✅ Legales
nombre = "Ana"
_edad = 25
precio_producto = 99.99
total_1 = 100

# ❌ Ilegales (descomentar da error)
# 1er_lugar = "primero"     # Empieza con número
# mi-variable = 10          # Tiene guión
# class = "programacion"    # Palabra reservada
# mi variable = "texto"     # Tiene espacio
```

**Progresivo —** Nombres descriptivos vs. nombres confusos:

```python
# ❌ Malos nombres (difíciles de entender)
a = 12.5
b = "Juan"
c = a * 1.21
print(c)

# ✅ Buenos nombres (autoexplicativos)
precio_base = 12.5
nombre_cliente = "Juan"
precio_con_iva = precio_base * 1.21
print(precio_con_iva)
```

**Real —** Sistema de gestión de inventario:

```python
# Configuración del sistema
LIMITE_INVENTARIO = 100          # Constante (mayúsculas)
ruta_archivo = "/data/inventario.csv"  # Variable normal
_contador_interno = 0            # Variable "privada"

# Datos de productos
producto_nombre = "Laptop"
producto_precio = 850.50
producto_stock = 15
producto_activo = True

# Mensaje de estado
print("Producto:", producto_nombre)
print("Stock:", producto_stock, "unidades")
print("Stock bajo:", producto_stock < 10)  # Resultado: False
```

## ⚠️ Errores comunes

| Error                            | Síntoma                              | Cómo evitarlo                                            |
| -------------------------------- | ------------------------------------ | -------------------------------------------------------- |
| **Espacio en nombre**            | `SyntaxError: invalid syntax`        | Usa `_` en lugar de espacio                              |
| **Número al inicio**             | `SyntaxError: invalid syntax`        | Empieza con letra o `_`                                  |
| **Palabra reservada**            | `SyntaxError: invalid syntax`        | Consulta la lista de palabras reservadas                 |
| **Guión en lugar de guión bajo** | `SyntaxError: invalid syntax`        | Usa `_` no `-`                                           |
| **Mayúsculas incorrectas**       | `NameError: name 'x' is not defined` | Python es sensible a mayúsculas: `Variable` ≠ `variable` |

## ✅ Buenas prácticas

1. **Nombres descriptivos pero concisos**:
   
   ```python
   # ❌ Demasiado corto
   a = 100
   
   # ❌ Demasiado largo
   precio_total_de_la_compra_sin_iva = 100
   
   # ✅ Justo
   precio_base = 100
   ```

2. **Usa verbos para funciones, sustantivos para variables**:
   
   ```python
   # Función: acción (verbo)
   def calcular_total():
       pass
   
   # Variable: dato (sustantivo)
   total = 100
   ```

3. **Sé consistente**:
   
   ```python
   # ❌ Inconsistente
   nombre_usuario = "Ana"
   user_email = "ana@mail.com"
   
   # ✅ Consistente
   nombre_usuario = "Ana"
   email_usuario = "ana@mail.com"
   ```

4. **Evita abreviaturas no estándar**:
   
   ```python
   # ❌ Confuso
   prv = "Programación"
   
   # ✅ Claro
   curso = "Programación"
   ```

5. **Usa nombres que tengan sentido en el contexto del programa**.

## 📝 Ejercicio

**Básico** — Corrige nombres ilegales

Los siguientes nombres de variables tienen errores. Corrígelos para que sean válidos y sigan las convenciones de Python:

```python
# Corrige estos nombres ilegales/malos
1er_trimestre = 2024
total-ventas = 15000
mi variable = "casa"
class = "Python"
NombreDeUsuario = "ana"
precioTotal = 99.99
```

---

**Solución (no mires hasta haberlo intentado):**

```python
# Versión corregida (snake case)
primer_trimestre = 2024
total_ventas = 15000
mi_variable = "casa"
clase = "Python"  # O mejor: nombre_clase
nombre_usuario = "ana"
precio_total = 99.99
```

## 🗂️ Síntesis

- **Reglas obligatorias**: letras, números, `_`; no empezar con número; sin espacios ni `-`; sin palabras reservadas.
- **Sensible a mayúsculas**: `nombre` ≠ `Nombre` ≠ `NOMBRE`.
- **Snake Case**: convención recomendada para variables (`mi_variable`).
- **Descriptivos**: usa nombres que revelen el propósito de la variable.
- **Constantes en mayúsculas**: `LIMITE = 100`.
- **Palabras reservadas**: no usar `if`, `for`, `class`, `while`, etc.

## 🔗 Qué sigue

- **Relacionado:** variables (asignación, tipos), palabras reservadas
- **Siguiente tema:** Tipos de datos — aprenderás a manejar diferentes tipos de datos y sus propiedades.

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

