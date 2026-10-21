---
documentmode: doc
copyrightnotice: 2026
copyrightext: All rights reserved
title: Tipos de datos
shorttitle: TIPOS DE DATOS
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
description: Los tipos de datos son la base de la programación.
eval: true
citation:
  type: article-journal
  author:
  - Edison Achalma
  pdf-url: https://numerus-scriptum.netlify.app/python/2026-10-20-14-tipos-de-datos/index.pdf
date: 2026-10-20
draft: false
image: ../featured.jpg
curso: python
tema: "2.7"
---

## 🎯 Motivación

Los tipos de datos son la base de la programación. Determinan qué tipo de información puede almacenar una variable, qué operaciones puedes realizar con ella y cómo se comporta en diferentes situaciones. Entender los tipos de datos te permite escribir código más eficiente, evitar errores inesperados y aprovechar al máximo las capacidades de Python.

## 💡 Intuición

Imagina que tienes diferentes tipos de contenedores:

- **Números** son como una calculadora: puedes sumarlos, restarlos, multiplicarlos.
- **Texto (strings)** son como palabras: puedes unirlas, dividirlas, buscar letras.
- **Listas** son como una bandeja con compartimentos: puedes guardar varios elementos ordenados.
- **Booleanos** son como un interruptor: solo pueden estar encendidos (True) o apagados (False).

Cada contenedor tiene sus propias reglas y operaciones, y Python necesita saber con qué tipo está trabajando para actuar correctamente.

## 🧠 Modelo mental

En Python:

1. **Tipado dinámico**: no declaras el tipo; Python lo deduce al asignar.
2. **Todo es un objeto**: incluso los números y el texto son objetos con métodos.
3. **Los tipos determinan el comportamiento**: lo que puedes hacer con una variable depende de su tipo.
4. **`type()`**: tu herramienta para verificar el tipo de cualquier variable.

## 📐 Desarrollo

### 1. Tipos de datos principales

| Categoría      | Tipos                              | Ejemplo                        | Cuándo usar                        |
| -------------- | ---------------------------------- | ------------------------------ | ---------------------------------- |
| **Texto**      | `str`                              | `"Hola"`                       | Cualquier cadena de caracteres     |
| **Números**    | `int`, `float`, `complex`          | `5`, `3.14`, `1j`              | Operaciones matemáticas            |
| **Booleanos**  | `bool`                             | `True`, `False`                | Condiciones lógicas                |
| **Secuencias** | `list`, `tuple`, `range`           | `[1,2,3]`, `(1,2)`, `range(5)` | Colecciones de elementos ordenados |
| **Mapeo**      | `dict`                             | `{"clave": "valor"}`           | Pares clave-valor                  |
| **Conjuntos**  | `set`, `frozenset`                 | `{1,2,3}`                      | Colecciones sin duplicados         |
| **Binarios**   | `bytes`, `bytearray`, `memoryview` | `b"Hello"`                     | Datos binarios                     |
| **Nulo**       | `NoneType`                         | `None`                         | Valor "vacío" o "sin valor"        |

### 2. Verificar el tipo con `type()`

```python
x = 5
print(type(x))  # <class 'int'>

y = "Hola"
print(type(y))  # <class 'str'>

z = 3.14
print(type(z))  # <class 'float'>

w = True
print(type(w))  # <class 'bool'>
```

### 3. Asignación automática de tipo

Python asigna el tipo cuando asignas un valor:

```python
# Asignación automática
nombre = "Ana"        # str
edad = 25             # int
precio = 99.99        # float
es_valido = True      # bool
lista = [1, 2, 3]     # list
```

### 4. Casting (conversión explícita)

Puedes convertir entre tipos usando funciones constructoras:

```python
# Convertir a string
str(25)        # "25"
str(3.14)      # "3.14"

# Convertir a entero
int("25")      # 25
int(3.14)      # 3 (trunca decimales)

# Convertir a float
float("3.14")  # 3.14
float(5)       # 5.0

# Convertir a booleano
bool(0)        # False (cero es False)
bool(1)        # True
bool("")       # False (string vacío es False)
bool("Hola")   # True
```

### 5. Verificar el tipo en código

A veces necesitas saber el tipo para tomar decisiones:

```python
dato = 25

if type(dato) == int:
    print("Es un entero")
elif type(dato) == str:
    print("Es texto")

# Alternativa más idiomática
if isinstance(dato, int):
    print("Es un entero")
```

## 🔬 Ejemplos

**Mínimo —** Tipos básicos:

```python
texto = "Python"          # str
entero = 42              # int
decimal = 3.14           # float
booleano = True          # bool
none = None              # NoneType

print(type(texto))    # <class 'str'>
print(type(entero))   # <class 'int'>
```

**Progresivo —** Conversión entre tipos:

```python
# Conversión de tipos
edad = "25"
print(type(edad))      # str
print(type(int(edad))) # int

# Problemas comunes
# print("Edad: " + 25)  # ❌ Error
print("Edad: " + str(25))  # ✅ Convierte a string

# Operaciones con números
x = 5
y = 2
print(x / y)   # 2.5 (float)
print(x // y)  # 2 (int, división entera)
print(x % y)   # 1 (resto)
```

**Real —** Sistema de usuario con validación:

```python
# Simulación de entrada de usuario
nombre = "Carlos"        # str
edad = 28               # int
altura = 1.75           # float
es_estudiante = True    # bool

# Validaciones
print(f"Tipo de nombre: {type(nombre)}")
print(f"Tipo de edad: {type(edad)}")
print(f"Tipo de altura: {type(altura)}")
print(f"Tipo de estudiante: {type(es_estudiante)}")

# Conversiones necesarias
edad_texto = str(edad)
altura_texto = str(altura)

print(f"Edad: {edad_texto} años")
print(f"Altura: {altura_texto} metros")
```

## ⚠️ Errores comunes

| Error                                   | Síntoma                               | Solución                                   |
| --------------------------------------- | ------------------------------------- | ------------------------------------------ |
| **Sumar string + número**               | `TypeError`                           | Convierte: `str(edad)` o usa coma en print |
| **Dividir por cero**                    | `ZeroDivisionError`                   | Verifica que el divisor no sea 0           |
| **Índice fuera de rango**               | `IndexError`                          | Verifica la longitud de la lista           |
| **Comparar tipos incompatibles**        | `TypeError`                           | Convierte al mismo tipo antes de comparar  |
| **Usar `==` en lugar de `is` con None** | Comparación válida pero no idiomática | Usa `is None` para verificar None          |

## ✅ Buenas prácticas

1. **Usa `isinstance()` en lugar de `type()` para verificar tipos**:
   
   ```python
   # ✅ Más flexible
   if isinstance(valor, int):
       print("Es entero")
   
   # ❌ Menos flexible (no maneja herencia)
   if type(valor) == int:
       print("Es entero")
   ```

2. **Convierte tipos explícitamente cuando sea necesario**:
   
   ```python
   edad = input("Edad: ")  # input siempre devuelve str
   edad_int = int(edad)    # Convierte a int
   ```

3. **Sé consciente de los tipos en operaciones mixtas**:
   
   ```python
   # La división siempre da float
   print(5 / 2)   # 2.5 (float)
   print(5 // 2)  # 2 (int)
   
   # Suma de int + float da float
   print(5 + 2.0) # 7.0 (float)
   ```

4. **Usa nombres de variables que indiquen el tipo** (implícitamente):
   
   ```python
   # Convención
   nombres_lista = ["Ana", "Carlos"]
   contador_int = 5
   es_valido_bool = True
   ```

5. **Documenta los tipos en funciones** (type hints):
   
   ```python
   def saludar(nombre: str) -> str:
       return f"Hola, {nombre}"
   ```

## 📝 Ejercicio

**Básico** — Exploración de tipos

Escribe un programa que:

1. Cree variables de los siguientes tipos: `str`, `int`, `float`, `bool`, `list`, `dict`, `NoneType`
2. Muestre el tipo de cada variable con `type()`
3. Convierta las siguientes variables:
   - El `str` a `int`
   - El `int` a `float`
   - El `float` a `str`
   - El `bool` a `int`
4. Muestre los resultados de cada conversión y sus tipos

---

**Solución (no mires hasta haberlo intentado):**

```python
# 1. Variables de diferentes tipos
texto = "42"
numero_entero = 25
numero_decimal = 3.14
logico = True
lista_ejemplo = [1, 2, 3]
diccionario_ejemplo = {"nombre": "Ana"}
nulo = None

# 2. Mostrar tipos originales
print("Tipos originales:")
print(f"texto: {type(texto)}")
print(f"numero_entero: {type(numero_entero)}")
print(f"numero_decimal: {type(numero_decimal)}")
print(f"logico: {type(logico)}")
print(f"lista: {type(lista_ejemplo)}")
print(f"diccionario: {type(diccionario_ejemplo)}")
print(f"nulo: {type(nulo)}")

print("\n" + "-" * 40)

# 3. Conversiones
texto_a_int = int(texto)
entero_a_float = float(numero_entero)
decimal_a_str = str(numero_decimal)
bool_a_int = int(logico)

# 4. Mostrar resultados
print("Resultados de conversiones:")
print(f"'{texto}' → {texto_a_int} (tipo: {type(texto_a_int)})")
print(f"{numero_entero} → {entero_a_float} (tipo: {type(entero_a_float)})")
print(f"{numero_decimal} → '{decimal_a_str}' (tipo: {type(decimal_a_str)})")
print(f"{logico} → {bool_a_int} (tipo: {type(bool_a_int)})")
```

## 🗂️ Síntesis

- **Tipos principales**: `str`, `int`, `float`, `bool`, `list`, `tuple`, `dict`, `set`, `NoneType`
- **`type()`**: verifica el tipo de una variable
- **Tipado dinámico**: Python infiere el tipo automáticamente
- **Casting**: conversión explícita con funciones constructoras
- **Operaciones**: dependen del tipo de dato
- **`isinstance()`**: mejor que `type()` para verificar tipos en herencia
- **Type hints**: documentación opcional de tipos (Python 3.5+)

## 🔗 Qué sigue

- **Relacionado:** variables (asignación y alcance), strings y métodos de string
- **Siguiente tema:** Strings — aprenderás a trabajar con texto en Python, incluyendo métodos, formateo y manipulación avanzada.

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

