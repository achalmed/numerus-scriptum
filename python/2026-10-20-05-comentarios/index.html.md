---
documentmode: doc
copyrightnotice: 2026
copyrightext: All rights reserved
title: Comentarios
shorttitle: COMENTARIOS
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
description: El código se escribe una vez, pero se lee muchas veces.
eval: true
citation:
  type: article-journal
  author:
  - Edison Achalma
  pdf-url: https://numerus-scriptum.netlify.app/python/2026-10-20-05-comentarios/index.pdf
date: 2026-10-20
draft: false
image: ../featured.jpg
curso: python
tema: "1.5"
---

## 🎯 Motivación

El código se escribe una vez, pero se lee muchas veces. Los comentarios son la forma en que te comunicas con otros programadores (y contigo mismo en el futuro). Un buen comentario explica el "por qué" detrás del "qué", haciendo que tu código sea más fácil de entender, mantener y depurar. Además, los comentarios son una herramienta poderosa para probar código temporalmente sin eliminarlo.

## 💡 Intuición

Imagina que estás escribiendo un libro de cocina. Las instrucciones (el código) son los pasos de la receta. Los comentarios son como notas al margen: "este paso es importante porque evita que se queme", "aquí puedes sustituir el ingrediente si no lo tienes". El chef (Python) ignora completamente tus notas al margen y solo sigue las instrucciones principales.

## 🧠 Modelo mental

Los comentarios en Python:

1. **Comienzan con `#`**: todo lo que sigue en esa línea es ignorado por Python.
2. **Pueden estar al inicio de la línea** o **al final** de una línea de código.
3. **No tienen efecto en la ejecución**: son solo para humanos.
4. **No existe sintaxis oficial para comentarios de múltiples líneas**, pero hay formas de simularlos.

## 📐 Desarrollo

### 1. Comentario de una línea

El comentario comienza con `#` y Python ignora todo lo que sigue hasta el final de la línea:

```python
# Esto es un comentario
print("Hola mundo")  # Esto también es un comentario
```

### 2. Comentarios al final de línea

Útiles para explicar una línea específica:

```python
precio = 100      # Precio base sin impuestos
iva = 0.21        # IVA del 21%
total = precio * (1 + iva)  # Cálculo del precio final
```

### 3. Desactivar código con comentarios

Comentar una línea evita que se ejecute:

```python
# print("Esta línea no se ejecuta")
print("Esta línea sí se ejecuta")
# Salida: Esta línea sí se ejecuta
```

Útil para depuración: puedes desactivar temporalmente partes del código.

### 4. Comentarios de múltiples líneas

Python no tiene un símbolo especial para comentarios de varias líneas, pero puedes:

**Opción 1: Usar `#` en cada línea**

```python
# Esto es un comentario
# que ocupa varias líneas
# y explica algo complejo
print("Hola")
```

**Opción 2: Usar cadenas de texto con triple comilla (no asignadas)**

```python
"""
Este es un comentario
que ocupa varias líneas
Python lo ignora porque no está asignado a una variable
"""
print("Hola")
```

⚠️ **Importante:** técnicamente esto es una cadena de texto (string), no un comentario. Aunque Python la ignora, la buena práctica es usar `#` para comentarios oficiales.

### 5. Comentarios en bloque y documentación

- **Comentarios de bloque**: explican secciones enteras de código.
- **Docstrings**: comentarios especiales para documentar funciones y clases (usando `"""` y asignados a la función).

```python
def calcular_area(base, altura):
    """
    Calcula el área de un rectángulo.

    Args:
        base (float): La base del rectángulo
        altura (float): La altura del rectángulo

    Returns:
        float: El área calculada
    """
    return base * altura
```

## 🔬 Ejemplos

**Mínimo —** Comentarios simples:

```python
# Saludo inicial
print("Hola")  # Muestra un saludo
```

**Progresivo —** Comentarios para explicar lógica:

```python
# Cálculo de descuento
precio_original = 120
descuento = 0.15  # 15% de descuento

# El precio final es el original menos el descuento
precio_final = precio_original - (precio_original * descuento)
print(precio_final)  # Muestra: 102.0
```

**Real —** Documentación en un script de configuración:

```python
# ==========================================
# CONFIGURACIÓN DEL SISTEMA
# ==========================================

# Configuración de la base de datos
# Usamos SQLite para desarrollo local
DB_HOST = "localhost"
DB_PORT = 5432

# Límites del sistema
MAX_USERS = 100  # Máximo de usuarios simultáneos
TIMEOUT = 30     # Tiempo de espera en segundos

# DEBUG = True   # Descomentar para modo depuración
DEBUG = False    # Modo producción
```

## ⚠️ Errores comunes

| Error                               | Síntoma                                       | Cómo detectarlo                                                           |
| ----------------------------------- | --------------------------------------------- | ------------------------------------------------------------------------- |
| **Olvidar `#`**                     | El texto se interpreta como código y da error | Asegúrate de que todo comentario comienza con `#`                         |
| **Espacio después de `#`**          | No da error, pero es una convención           | Pon un espacio después de `#` para legibilidad: `# Esto es un comentario` |
| **Confundir comentario con string** | `"Esto no es un comentario"` es código válido | Los comentarios usan `#`, no comillas                                     |
| **Anidar comentarios**              | No se puede anidar `#` dentro de `#`          | Cada línea es independiente                                               |

## ✅ Buenas prácticas

- **Comenta el "por qué", no el "qué"**: el código ya dice qué hace.
  
  ```python
  # ❌ Poco útil
  x = x + 1  # Incrementa x en 1
  
  # ✅ Útil
  x = x + 1  # Contador de intentos fallidos
  ```

- **Mantén los comentarios actualizados**: un comentario desactualizado es peor que ninguno.

- **Usa comentarios de bloque** para secciones largas:
  
  ```python
  # ==========================================
  # SECCIÓN: VALIDACIÓN DE DATOS
  # ==========================================
  ```

- **Documenta funciones con docstrings** (triple comilla):
  
  ```python
  def saludar(nombre):
      """Saluda al usuario por su nombre."""
      print(f"Hola, {nombre}")
  ```

- **No abuses de los comentarios**: el código limpio y autoexplicativo es mejor que el código lleno de comentarios.

## 📝 Ejercicio

**Básico** — Agrega comentarios apropiados

El siguiente código funciona pero no tiene comentarios. Agrega comentarios que:

1. Expliquen qué hace cada sección
2. Documenten qué hace la función
3. Desactiven temporalmente una línea de código (sin eliminarla)

```python
def calcular_total(precio, cantidad):
    return precio * cantidad

precio_producto = 25.50
unidades = 4
total = calcular_total(precio_producto, unidades)
print(total)
print("Fin del cálculo")
```

---

**Solución (no mires hasta haberlo intentado):**

```python
# Función que calcula el total de una compra
def calcular_total(precio, cantidad):
    """Multiplica el precio por la cantidad para obtener el total."""
    return precio * cantidad

# Datos del producto
precio_producto = 25.50  # Precio unitario en euros
unidades = 4             # Cantidad de unidades compradas

# Cálculo del total
total = calcular_total(precio_producto, unidades)

# Mostrar resultados
print(total)            # Muestra el total
# print("Fin del cálculo")  # Desactivado temporalmente
```

## 🗂️ Síntesis

- **`#`** inicia un comentario de una línea.
- **Todo después de `#`** es ignorado por Python.
- **Comentarios al final de línea** explican código específico.
- **Múltiples `#`** para comentarios de varias líneas (o triple comilla).
- **Desactivar código** comentando líneas es útil para pruebas.
- **Docstrings** (`"""`) documentan funciones y clases.
- **Buen comentario**: explica el "por qué", no repite el "qué".

## 🔗 Qué sigue

- **Relacionado:** variables (cómo nombrar bien las variables para reducir necesidad de comentarios)
- **Siguiente tema:** Variables — aprenderás a almacenar datos con nombres claros y autoexplicativos.

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

