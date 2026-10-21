---
documentmode: doc
copyrightnotice: 2026
copyrightext: All rights reserved
title: Rebanado de cadenas
shorttitle: REBANADO DE CADENAS
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
description: 'A menudo necesitas trabajar con partes de un texto: extraer el nombre de usuario de un email, obtener la extensión de un archivo, o simplemente tomar una porción de un mensaje.'
eval: true
citation:
  type: article-journal
  author:
  - Edison Achalma
  pdf-url: https://numerus-scriptum.netlify.app/python/2026-10-20-18-rebanado-de-cadenas/index.pdf
date: 2026-10-20
draft: false
image: ../featured.jpg
curso: python
tema: "2.11"
---

## 🎯 Motivación

A menudo necesitas trabajar con partes de un texto: extraer el nombre de usuario de un email, obtener la extensión de un archivo, o simplemente tomar una porción de un mensaje. El slicing (rebanado) te permite hacer esto de manera elegante y eficiente, sin necesidad de bucles o lógica compleja.

## 💡 Intuición

Imagina que tienes una fila de personas (string) y quieres seleccionar a las personas de las posiciones 2 a 5. El slicing es como decir: "dame desde la posición 2 hasta la posición 5". En Python, `[2:5]` significa: empieza en el índice 2 y **detente antes** del índice 5. Es como un cuchillo que corta exactamente donde le indicas.

## 🧠 Modelo mental

La sintaxis de slicing es `[inicio:fin:paso]`:

- **`inicio`** (opcional): dónde empezar (incluido). Por defecto es el principio.
- **`fin`** (opcional): dónde parar (no incluido). Por defecto es el final.
- **`paso`** (opcional): cada cuántos caracteres tomar. Por defecto es 1.

La regla clave: **el índice final es exclusivo**, es decir, no se incluye en el resultado.

## 📐 Desarrollo

### 1. Sintaxis básica

```python
texto = "Hello, World!"

# [inicio:fin] - fin no incluido
print(texto[2:5])   # "llo" (índices 2, 3, 4)
print(texto[7:12])  # "World" (índices 7-11)
```

### 2. Slice desde el inicio

Omite el inicio para empezar desde el primer carácter:

```python
texto = "Hello, World!"
print(texto[:5])   # "Hello" (índices 0-4)
print(texto[:7])   # "Hello, " (índices 0-6)
```

### 3. Slice hasta el final

Omite el fin para ir hasta el último carácter:

```python
texto = "Hello, World!"
print(texto[7:])   # "World!" (índices 7-12)
print(texto[2:])   # "llo, World!" (índices 2-12)
```

### 4. Slice completo

```python
texto = "Hello, World!"
print(texto[:])    # "Hello, World!" (copia completa)
```

### 5. Índices negativos

Empieza desde el final (último carácter es -1):

```python
texto = "Hello, World!"

# Últimos 5 caracteres
print(texto[-5:])   # "orld!"
print(texto[-6:-1]) # "World" (desde -6 hasta antes de -1)
print(texto[-5:-2]) # "orl" (desde -5 hasta antes de -2)
```

### 6. Slice con paso (`[inicio:fin:paso]`)

Controlas el salto entre caracteres:

```python
texto = "Python"

# Cada 2 caracteres
print(texto[::2])   # "Pto" (índices 0, 2, 4)
print(texto[1::2])  # "yhn" (índices 1, 3, 5)

# Invertir string (paso -1)
print(texto[::-1])  # "nohtyP"

# Desde el final con paso -2
print(texto[::-2])  # "nhy"
```

### 7. Tabla de ejemplos de slicing

| Slicing  | Resultado (para "Python") | Explicación                      |
| -------- | ------------------------- | -------------------------------- |
| `[0:3]`  | `"Pyt"`                   | Posiciones 0, 1, 2               |
| `[2:5]`  | `"tho"`                   | Posiciones 2, 3, 4               |
| `[:4]`   | `"Pyth"`                  | Desde el inicio hasta posición 3 |
| `[3:]`   | `"hon"`                   | Desde posición 3 hasta el final  |
| `[-3:]`  | `"hon"`                   | Últimos 3 caracteres             |
| `[:-2]`  | `"Pyth"`                  | Hasta antes de los últimos 2     |
| `[::2]`  | `"Pto"`                   | Caracteres en posiciones pares   |
| `[::-1]` | `"nohtyP"`                | String invertido                 |

## 🔬 Ejemplos

**Mínimo —** Slicing básico:

```python
fruta = "Manzana"
print(fruta[0:3])  # "Man"
print(fruta[3:6])  # "ana"
print(fruta[2:5])  # "nza"
```

**Progresivo —** Extracción de datos:

```python
email = "usuario@gmail.com"

# Extraer nombre de usuario (hasta el @)
nombre_usuario = email[:email.index("@")]
print(nombre_usuario)  # "usuario"

# Extraer dominio (después del @)
dominio = email[email.index("@") + 1:]
print(dominio)  # "gmail.com"

# Extraer extensión (últimos 3 caracteres)
extension = email[-3:]
print(extension)  # "com"
```

**Real —** Procesamiento de nombres de archivo:

```python
archivo = "documento_2024.pdf"

# Obtener extensión
extension = archivo.split(".")[-1]  # "pdf"
# Con slicing:
punto = archivo.index(".")
extension_slice = archivo[punto + 1:]  # "pdf"

# Obtener nombre sin extensión
nombre_base = archivo[:archivo.index(".")]  # "documento_2024"

# Año (últimos 4 dígitos antes del punto)
año = archivo[-8:-4]  # "2024"

print(f"Archivo: {nombre_base}")
print(f"Extensión: {extension_slice}")
print(f"Año: {año}")
```

## ⚠️ Errores comunes

| Error                          | Síntoma                                 | Solución                                 |
| ------------------------------ | --------------------------------------- | ---------------------------------------- |
| **Índice fuera de rango**      | `IndexError: string index out of range` | Verifica que el índice sea < len(string) |
| **Confundir `[inicio:fin]`**   | No incluir el último carácter           | Recuerda: `fin` no se incluye            |
| **Olvidar `:`**                | Intenta acceder a un solo carácter      | Usa `[inicio:fin]` no `[inicio, fin]`    |
| **Índices negativos confusos** | Resultados inesperados                  | Recuerda: -1 es el último carácter       |

## ✅ Buenas prácticas

1. **Usa índices negativos para "desde el final"**:
   
   ```python
   # ✅ Obtener últimos 4 caracteres
   ultimos_4 = texto[-4:]
   
   # ❌ Menos claro
   ultimos_4 = texto[len(texto)-4:]
   ```

2. **Combina slicing con `len()`** para cortar dinámicamente:
   
   ```python
   texto = "Hola mundo"
   # Primeros 3
   texto[:3]
   # Últimos 3
   texto[-3:]
   # Mitad
   mitad = len(texto) // 2
   texto[:mitad]  # Primera mitad
   texto[mitad:]  # Segunda mitad
   ```

3. **Usa `[::-1]` para invertir strings**:
   
   ```python
   palabra = "Python"
   print(palabra[::-1])  # "nohtyP"
   ```

4. **Verifica que los índices sean válidos** antes de hacer slicing si no estás seguro:
   
   ```python
   texto = "abc"
   # Slice con índices fuera de rango es seguro (no da error)
   print(texto[0:10])  # "abc" (no da error)
   # Pero acceso directo sí da error
   # print(texto[5])  # ❌ IndexError
   ```

5. **Usa slicing para copiar strings**:
   
   ```python
   original = "Hola"
   copia = original[:]  # Crea una copia
   ```

## 📝 Ejercicio

**Intermedio** — Manipulación de nombres de archivo

Escribe un programa que:

1. Tenga un string `ruta_archivo` = "C:/Users/Ana/Documents/proyecto_final_v2.py"
2. Extraiga y muestre:
   - El nombre del archivo (última parte después de /)
   - La extensión del archivo
   - El nombre base (sin extensión)
   - La carpeta donde está el archivo (todo antes del último /)
   - Una versión con solo las iniciales de cada carpeta: C:/U/A/D/proyecto_final_v2.py

**Pista:** usa `rfind()` para encontrar la última ocurrencia de un carácter, y luego slicing.

---

**Solución (no mires hasta haberlo intentado):**

```python
ruta_archivo = "C:/Users/Ana/Documents/proyecto_final_v2.py"

# 1. Nombre del archivo (último segmento)
ultimo_slash = ruta_archivo.rfind("/")
nombre_archivo = ruta_archivo[ultimo_slash + 1:]
print(f"Archivo: {nombre_archivo}")  # "proyecto_final_v2.py"

# 2. Extensión
punto = nombre_archivo.rfind(".")
extension = nombre_archivo[punto + 1:]
print(f"Extensión: {extension}")  # "py"

# 3. Nombre base (sin extensión)
nombre_base = nombre_archivo[:punto]
print(f"Nombre base: {nombre_base}")  # "proyecto_final_v2"

# 4. Carpeta (todo antes del último /)
carpeta = ruta_archivo[:ultimo_slash]
print(f"Carpeta: {carpeta}")  # "C:/Users/Ana/Documents"

# 5. Iniciales de carpetas
partes = ruta_archivo.split("/")
iniciales = "/".join([p[:1] if p else "" for p in partes[:-1]]) + "/" + partes[-1]
print(f"Con iniciales: {iniciales}")  # "C:/U/A/D/proyecto_final_v2.py"
```

## 🗂️ Síntesis

- **Sintaxis**: `[inicio:fin:paso]` donde `fin` no se incluye.
- **Inicio por defecto**: `[:fin]` empieza desde el principio.
- **Fin por defecto**: `[inicio:]` va hasta el final.
- **Índices negativos**: cuentan desde el final (-1 es el último).
- **Paso**: controla el salto entre caracteres. `[::-1]` invierte.
- **Slicing seguro**: índices fuera de rango no dan error (a diferencia de acceso directo).
- **Strings inmutables**: el slicing devuelve un nuevo string, no modifica el original.

## 🔗 Qué sigue

- **Relacionado:** métodos de string, indexación, f-strings
- **Siguiente tema:** Métodos de strings — aprende todas las herramientas para manipular texto.

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

