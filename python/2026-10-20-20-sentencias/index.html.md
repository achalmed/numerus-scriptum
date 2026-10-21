---
documentmode: doc
copyrightnotice: 2026
copyrightext: All rights reserved
title: Sentencias
shorttitle: SENTENCIAS
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
description: 'Una sentencia es la unidad básica de ejecución en Python: es una instrucción que le dice al intérprete qué hacer.'
eval: true
citation:
  type: article-journal
  author:
  - Edison Achalma
  pdf-url: https://numerus-scriptum.netlify.app/python/2026-10-20-20-sentencias/index.pdf
date: 2026-10-20
draft: false
image: ../featured.jpg
curso: python
tema: "2.13"
---

## 🎯 Motivación

Una sentencia es la unidad básica de ejecución en Python: es una instrucción que le dice al intérprete qué hacer. Entender cómo funcionan las sentencias es fundamental porque todo programa, desde el más simple hasta el más complejo, está compuesto por ellas. La forma en que Python organiza y ejecuta estas sentencias define el flujo de tu programa.

## 💡 Intuición

Imagina que estás siguiendo una receta de cocina paso a paso. Cada paso es una sentencia: "Pela las papas", "Corta en cubos", "Calienta el aceite". Python ejecuta exactamente en ese orden: primero pela, luego corta, luego calienta. Así funciona un programa: el intérprete lee tus sentencias de arriba hacia abajo y las ejecuta en secuencia.

## 🧠 Modelo mental

En Python, el flujo de ejecución es **secuencial por defecto**:

1. **Una sentencia por línea** normalmente: cada línea contiene una instrucción completa.
2. **Ejecución ordenada**: se ejecutan en el mismo orden en que están escritas (de arriba a abajo).
3. **Sin punto y coma necesario**: a diferencia de Java o C, Python no requiere `;` para terminar una sentencia; el final de línea es suficiente.
4. **Sentencias compuestas**: estructuras como `if`, `for`, `while` y `def` ocupan varias líneas y definen bloques de código mediante indentación.

## 📐 Desarrollo

### 1. Sentencia básica

Una sentencia simple es una línea de código que realiza una acción:

```python
print("Hola mundo")  # Sentencia que imprime texto
x = 5                # Sentencia que asigna un valor
y = x + 3            # Sentencia que calcula y asigna
```

Cada una de estas líneas es una sentencia completa. Python las ejecuta en orden: primero imprime, luego asigna 5 a `x`, luego calcula y asigna 8 a `y`.

### 2. Múltiples sentencias en una línea (con `;`)

**Poco recomendado**, pero posible:

```python
print("Hola"); print("Mundo"); x = 5
```

Aunque técnicamente válido, esto **reduce la legibilidad**. El estilo Python (PEP 8) recomienda:

```python
print("Hola")
print("Mundo")
x = 5
```

### 3. Sentencias largas y continuación de línea

Si una sentencia es demasiado larga, puedes usar `\` para continuar en la siguiente línea:

```python
total = 100 + 200 + 300 + \
        400 + 500 + 600
```

O mejor, usar paréntesis implícitos:

```python
total = (100 + 200 + 300 +
         400 + 500 + 600)
```

### 4. Sentencias compuestas (bloques)

Algunas sentencias ocupan varias líneas y definen bloques:

```python
# Sentencia compuesta: if-else
if edad >= 18:
    print("Eres mayor de edad")
    print("Puedes votar")
else:
    print("Eres menor de edad")

# Sentencia compuesta: función
def saludar():
    print("Hola")
    print("¿Cómo estás?")

# Sentencia compuesta: bucle
for i in range(3):
    print(i)
    print("Siguiente")
```

Cada bloque indentado contiene sentencias que se ejecutan juntas.

### 5. Sentencias vacías (pass)

El `pass` es una sentencia que no hace nada. Se usa como marcador de posición:

```python
# En desarrollo: aún no implementado
def funcion_futura():
    pass  # Hacer nada por ahora
```

## 🔬 Ejemplos

**Mínimo —** Tres sentencias en su propio orden:

```python
print("Primero")
print("Segundo")
print("Tercero")
# Salida:
# Primero
# Segundo
# Tercero
```

**Progresivo —** Sentencias con cálculos:

```python
base = 10          # Sentencia 1
altura = 5         # Sentencia 2
area = base * altura / 2  # Sentencia 3
print("Área:", area)      # Sentencia 4
# Salida: Área: 25.0
```

**Real —** Programa con múltiples tipos de sentencias:

```python
# Sistema de calificaciones simple
nombre = "Ana"              # Asignación
nota = 85                   # Asignación

if nota >= 60:              # Sentencia compuesta
    estado = "Aprobado"     # Asignación dentro del bloque
    print("¡Felicidades!")  # Sentencia dentro del bloque
else:
    estado = "Reprobado"    # Asignación en el otro bloque
    print("Estudia más")    # Sentencia en el otro bloque

print(f"{nombre} está {estado}")  # Sentencia final
```

## ⚠️ Errores comunes

| Error                                 | Síntoma                                        | Cómo detectarlo                                         |
| ------------------------------------- | ---------------------------------------------- | ------------------------------------------------------- |
| **Dos sentencias en la misma línea**  | `SyntaxError: invalid syntax`                  | Asegúrate de que cada sentencia esté en su propia línea |
| **Olvidar la indentación** en bloques | `IndentationError: expected an indented block` | Revisa que los bloques estén correctamente indentados   |
| **Indentación inconsistente**         | `IndentationError: unindent does not match...` | Usa 4 espacios consistentes en todo el bloque           |
| **Punto y coma innecesario**          | No da error, pero es anticonvención            | No uses `;` a menos que sea estrictamente necesario     |

## ✅ Buenas prácticas

- **Una sentencia por línea**: mejora la legibilidad y facilita la depuración.
- **Evita el punto y coma**: no es necesario en Python y va contra las convenciones.
- **Usa paréntesis para líneas largas**: en lugar de `\`, usa paréntesis para continuar líneas.
- **Agrupa sentencias relacionadas**: usa líneas en blanco para separar secciones lógicas.
- **Sigue PEP 8**: la guía de estilo recomienda un máximo de 79 caracteres por línea.

## 📝 Ejercicio

**Básico** — Reorganiza este código para que sea válido en Python:

```python
print("Inicio del programa") print("Segunda instrucción") x=5 y=10 print(x + y) print("Fin")
```

**Requisito:** cada sentencia debe estar en su propia línea, y la legibilidad debe mejorar.

---

**Solución (no mires hasta haberlo intentado):**

```python
print("Inicio del programa")
print("Segunda instrucción")
x = 5
y = 10
print(x + y)
print("Fin")
```

## 🗂️ Síntesis

- **Sentencia = instrucción**: cada línea de código que realiza una acción.
- **Orden secuencial**: se ejecutan de arriba a abajo.
- **Sin punto y coma**: el salto de línea termina cada sentencia.
- **Sentencias compuestas**: estructuras como `if` y `for` abarcan múltiples líneas indentadas.
- **Buena práctica**: una sentencia por línea para máxima legibilidad.

## 🔗 Qué sigue

- **Relacionado:** variables y tipos de datos (cómo almacenar datos que las sentencias procesan)
- **Siguiente tema:** Variables y tipos de datos — aprenderás a declarar y manejar diferentes tipos de información en Python.

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

