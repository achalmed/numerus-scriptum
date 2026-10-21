---
documentmode: doc
copyrightnotice: 2026
copyrightext: All rights reserved
title: Modificación de cadenas
shorttitle: MODIFICACIÓN DE CADENAS
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
description: Los strings son uno de los tipos de datos más manipulados en programación.
eval: true
citation:
  type: article-journal
  author:
  - Edison Achalma
  pdf-url: https://numerus-scriptum.netlify.app/python/2026-10-20-19-modificacion-de-cadenas/index.pdf
date: 2026-10-20
draft: false
image: ../featured.jpg
curso: python
tema: "2.12"
---

## 🎯 Motivación

Los strings son uno de los tipos de datos más manipulados en programación. A menudo necesitas limpiar texto (eliminar espacios), cambiar formato (mayúsculas/minúsculas), reemplazar contenido o dividir texto en partes. Python ofrece métodos integrados que hacen estas operaciones simples y eficientes sin necesidad de escribir código complejo.

## 💡 Intuición

Imagina que tienes un texto en un procesador de palabras y quieres aplicar diferentes transformaciones: poner todo en mayúsculas, eliminar espacios extra, o buscar y reemplazar palabras. Los métodos de string en Python son como los botones de formato en tu editor de texto: hacen exactamente eso, pero desde tu código.

## 🧠 Modelo mental

- **Strings son inmutables**: estos métodos **no modifican** el string original, devuelven uno **nuevo**.
- **Métodos encadenables**: puedes aplicar múltiples métodos en secuencia.
- **La mayoría devuelven un nuevo string** o una lista (en el caso de `split()`).
- **Sintaxis**: `string.metodo()` donde `string` es tu variable o literal.

## 📐 Desarrollo

### 1. Cambiar mayúsculas/minúsculas

```python
texto = "Hola Mundo"

# A mayúsculas
print(texto.upper())   # "HOLA MUNDO"

# A minúsculas
print(texto.lower())   # "hola mundo"

# Capitalizar (primera letra mayúscula)
print(texto.capitalize())  # "Hola mundo"

# Título (cada palabra con mayúscula inicial)
print(texto.title())   # "Hola Mundo"

# Swap case (invierte mayúsculas/minúsculas)
print("Hola Mundo".swapcase())  # "hOLA mUNDO"
```

### 2. Eliminar espacios (whitespace)

```python
texto = "  Hola Mundo  "

# Eliminar espacios al inicio y final
print(texto.strip())      # "Hola Mundo"

# Solo al inicio (left)
print(texto.lstrip())     # "Hola Mundo  "

# Solo al final (right)
print(texto.rstrip())     # "  Hola Mundo"

# También funciona con caracteres específicos
texto2 = "***Hola***"
print(texto2.strip("*"))  # "Hola"
```

### 3. Reemplazar texto

```python
texto = "Hola Mundo"

# Reemplazar una subcadena
print(texto.replace("Mundo", "Python"))  # "Hola Python"

# Reemplazar un carácter
print(texto.replace("o", "0"))  # "H0la Mund0"

# Reemplazar múltiples veces (con límite)
texto2 = "uno dos tres cuatro"
print(texto2.replace(" ", "-", 2))  # "uno-dos-tres cuatro"
```

### 4. Dividir texto (split)

```python
texto = "Hola Mundo Python"

# Dividir por espacios (por defecto)
print(texto.split())       # ['Hola', 'Mundo', 'Python']

# Dividir por un separador específico
csv = "manzana,pera,banana"
print(csv.split(","))      # ['manzana', 'pera', 'banana']

# Dividir con límite
print(csv.split(",", 1))   # ['manzana', 'pera,banana']

# Dividir por saltos de línea
multilinea = "Línea 1\nLínea 2\nLínea 3"
print(multilinea.split("\n"))  # ['Línea 1', 'Línea 2', 'Línea 3']
```

### 5. Unir texto (join) - el inverso de split

```python
# Unir una lista en un string
palabras = ["Hola", "Mundo", "Python"]
print(" ".join(palabras))     # "Hola Mundo Python"
print("-".join(palabras))     # "Hola-Mundo-Python"
print(" | ".join(palabras))   # "Hola | Mundo | Python"
```

## 🔬 Ejemplos

**Mínimo —** Métodos básicos:

```python
texto = "  python es genial  "
print(texto.strip().upper())   # "PYTHON ES GENIAL"
print(texto.title())           # "  Python Es Genial  "
```

**Progresivo —** Limpieza de datos:

```python
# Datos sucios de entrada
nombre = "  ana  "
email = "ANA@GMAIL.COM"
archivo = "imagen.JPG"
comentario = "  ¡Excelente!   "

# Limpieza
nombre_limpio = nombre.strip().title()  # "Ana"
email_limpio = email.lower()            # "ana@gmail.com"
archivo_limpio = archivo.lower()        # "imagen.jpg"
comentario_limpio = comentario.strip()  # "¡Excelente!"

print(f"Nombre: {nombre_limpio}")
print(f"Email: {email_limpio}")
print(f"Archivo: {archivo_limpio}")
print(f"Comentario: {comentario_limpio}")
```

**Real —** Procesamiento de CSV y validación:

```python
# Datos de una línea CSV
linea = "  Ana García, 28, ana@email.com, activo  "

# Limpiar y dividir
datos = linea.strip().split(",")
nombre = datos[0].strip().title()
edad = int(datos[1].strip())
email = datos[2].strip().lower()
estado = datos[3].strip().lower()

print(f"Nombre: {nombre}")
print(f"Edad: {edad}")
print(f"Email: {email}")
print(f"Estado: {estado}")

# Validación
if not email.endswith("@email.com"):
    print("Email no válido")

if estado == "activo":
    print("Usuario activo")
```

## ⚠️ Errores comunes

| Error                                           | Síntoma                                | Solución                                              |
| ----------------------------------------------- | -------------------------------------- | ----------------------------------------------------- |
| **Esperar que el método modifique el original** | El string original no cambia           | Asigna el resultado: `texto = texto.upper()`          |
| **Encadenar métodos en orden incorrecto**       | `strip().upper()` vs `upper().strip()` | El orden importa: primero limpias, luego transformas  |
| **Confundir `split()` con `join()`**            | Uso incorrecto de separadores          | `split()` → string a lista; `join()` → lista a string |
| **Llamar método en literal**                    | `"texto".upper()` es válido            | Los métodos funcionan en literales también            |

## ✅ Buenas prácticas

1. **Encadena métodos para limpieza**:
   
   ```python
   # ✅ Limpio y eficiente
   texto_limpio = texto.strip().lower().replace(" ", "_")
   
   # ❌ Más verbose
   texto = texto.strip()
   texto = texto.lower()
   texto = texto.replace(" ", "_")
   ```

2. **Usa `.strip()` para limpiar entrada de usuario**:
   
   ```python
   nombre = input("Nombre: ").strip().title()
   email = input("Email: ").strip().lower()
   ```

3. **Verifica contenido antes de operar**:
   
   ```python
   if nombre:  # No está vacío
       nombre = nombre.strip()
   ```

4. **Usa `split()` con límite para casos específicos**:
   
   ```python
   # Primera parte antes del primer espacio
   primero, resto = "Hola mundo Python".split(" ", 1)
   print(primero)  # "Hola"
   print(resto)    # "mundo Python"
   ```

5. **Prefiere `join()` en lugar de `+` para unir muchos strings**:
   
   ```python
   # ✅ Eficiente
   resultado = "".join(lista_de_strings)
   
   # ❌ Ineficiente (crea muchos objetos)
   resultado = ""
   for s in lista_de_strings:
       resultado += s
   ```

## 📝 Ejercicio

**Intermedio** — Procesamiento de texto de archivo

Escribe un programa que procese el siguiente texto:

```python
texto = """
  nombre: Ana García  
  email: ANA@GMAIL.COM  
  ciudad:  Madrid   
  profesión:  Ingeniera de Software  
  años_exp:  8  
"""
```

Requisitos:

1. Limpiar cada línea (eliminar espacios)
2. Separar cada línea en clave: valor usando `:`
3. Limpiar las claves (strip, lower)
4. Limpiar los valores (strip, formatear según el caso)
5. Mostrar los datos formateados

**Pista:** usa `split("\n")` para dividir el texto en líneas.

---

**Solución (no mires hasta haberlo intentado):**

```python
texto = """
  nombre: Ana García  
  email: ANA@GMAIL.COM  
  ciudad:  Madrid   
  profesión:  Ingeniera de Software  
  años_exp:  8  
"""

# Dividir en líneas y limpiar
lineas = texto.strip().split("\n")
datos = {}

for linea in lineas:
    if ":" in linea:
        # Dividir por el primer ":"
        clave, valor = linea.split(":", 1)

        # Limpiar
        clave = clave.strip().lower()
        valor = valor.strip()

        # Formatear según el tipo de dato
        if clave == "email":
            valor = valor.lower()
        elif clave == "nombre":
            valor = valor.title()
        elif clave == "ciudad":
            valor = valor.strip().title()
        elif clave == "años_exp":
            valor = int(valor)  # Convertir a entero

        datos[clave] = valor

# Mostrar resultados
print("=== Datos Procesados ===")
for clave, valor in datos.items():
    print(f"{clave}: {valor}")

print(f"\nTipo de años_exp: {type(datos['años_exp'])}")
```

## 🗂️ Síntesis

- **`.upper()` / `.lower()`**: cambio de mayúsculas/minúsculas.
- **`.strip()` / `.lstrip()` / `.rstrip()`**: eliminar espacios al inicio/final.
- **`.replace()`**: reemplaza texto por otro.
- **`.split()`**: divide un string en lista según separador.
- **`.join()`**: une una lista en string (inverso de split).
- **Inmutabilidad**: todos los métodos devuelven strings nuevos.
- **Encadenamiento**: puedes aplicar múltiples métodos secuencialmente.
- **`title()` / `capitalize()`**: formatos especiales de capitalización.

## 🔗 Qué sigue

- **Relacionado:** métodos de string avanzados, f-strings, expresiones regulares
- **Siguiente tema:** Concatenación y formateo de strings — aprende las mejores formas de combinar texto y variables.

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

