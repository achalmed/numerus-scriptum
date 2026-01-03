---
documentmode: doc
copyrightnotice: 2021
copyrightext: All rights reserved
title: Objetos y tipos de datos en Python
shorttitle: OBJETOS PYTHON
abstract:
  Este abstract será actualizado una vez que se complete el contenido final
  del artículo.
keywords:
  - keyword1
  - keyword2
categories:
  - Python
tags:
  - python
  - objetos_python
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
description:
  "Todo es objeto en Python: inmutabilidad, referencias y principales tipos
  built-in (int, str, list, dict)."
eval: true
citation:
  type: article-journal
  author:
    - Edison Achalma
  pdf-url: https://numerus-scriptum.netlify.app/python/2021-06-07-03-objetos-de-python/index.pdf
date: 06/07/2021
draft: true
image: ../featured.jpg
---

# Listas

Las listas son objetos mutables e iterables en python. Son muy
versátiles pues permiten coleccionar de manera ordenada cualquier objeto
(incluso otras listas). Las listas además te permiten acceder a los
elementos que contiene adentro utilizando índices.

::: {#5ac98b2a .cell}
``` {.python .cell-code}
frutas = ['manzana', 'banana', 'durazno']
print(frutas)
```
:::


::: {#a9a06430 .cell}
``` {.python .cell-code}
carnes = list(['cerdo', 'vaca', 'pollo'])
print(carnes)
```
:::


::: {#4dc74f14 .cell}
``` {.python .cell-code}
mix = [123, ['Python', 'Stata'], 'iPhone']
print(mix)
```
:::


# Asignación como referencia o como valor

Muchos cometen el error de 'copiar' una lista de manera directa y luego
editarla. El resultado es que todas las ediciones que hagamos en la
lista referida se replicaran en la lista original. Esto ocurre cuando
asignamos una lista como referencia en lugar de copiarla.

Cuando la asignamos como referencia lo unico que hace python es usar el
nuevo nombre de variable para referenciar la variable original. Esto
permite a python salvar memoria ram porque no estamos creando más
objetos en el ambiente de python.

<img src="assign_reference.png" alt="Drawing" style="width: 600px;"/>

::: {#76366637 .cell}
``` {.python .cell-code}
import copy

miPrimeraLista = [1, 2, 3, 4, 5]
miPrimeraLista1 = miPrimeraLista # Esto asigna como referencia
miPrimeraLista2 = copy.copy(miPrimeraLista) # Esto asigna como valor
#miPrimeraLista[0]
miPrimeraLista[0] = 3
miPrimeraLista[1] = 9

print('miPrimeraLista :',miPrimeraLista)
print('miPrimeraLista1:',miPrimeraLista1)
print('miPrimeraLista2:',miPrimeraLista2)
```
:::


En el caso de listas de listas la función que nos permite copiar el
objeto completo es la rutina deepcopy. Basicamente lo que hace deepcopy
es copiar como valor no solo la lista inicial, sino tambien las listas
que se contienen adentro.

::: {#8a825251 .cell}
``` {.python .cell-code}
#List of lists:
miSegundaLista = [["Jose", "Pablo"], [26, 25]]
miSegundaListaNombres = miSegundaLista # Esto asigna como referencia
miSegundaListaNombres2 = copy.deepcopy(miSegundaLista) # Deepcopy asigna como valor las listas y sublistas
miSegundaLista[1][1] = 24
print('Lista original:',miSegundaLista)
print('Lista copiada como referencia:',miSegundaListaNombres)
print('Lista copiada como valor:',miSegundaListaNombres2)
```
:::


Para eliminar elementos dentro de una lista, podemos indexar el objeto y
con el comando del, podemos eliminar dicho objeto.

::: {#f656b509 .cell}
``` {.python .cell-code}
del miSegundaLista[1]
miSegundaLista
```
:::


::: {#2ac0a1f5 .cell}
``` {.python .cell-code}
# Combinar listas
mylist = [1, 2] + [3, 4]
print(mylist)
```
:::


::: {#871176d2 .cell}
``` {.python .cell-code}
[1, 2]*2
```
:::


# Evaluando la existencia de objetos en una lista

En python es posible evaluar la membresía de un elemento en colecciones
de elementos como listas, sets, diccionarios y tuplas. Para ello existen
los comandos "in", "not in".

Así mismo es posible evaluar si un objeto en python es identico a otro.
Esta rutina evalúa si un objeto tiene el mismo valor y propiedades que
otro, para ello se usa la rutina "is".

::: {#c15c48eb .cell}
``` {.python .cell-code}
# Evaluar si un objeto se encuentra en una lista
print(mylist)
print(1 in mylist)
print(5 in mylist)
print(1 not in mylist)
print(5 not in mylist)
```
:::


::: {#da00db5d .cell}
``` {.python .cell-code}
print(5 is 5)
print(5 is 5.)
```
:::


# Otros metodos para modificar listas.

Existen además otros métodos que nos permiten modificar las listas. Por
ejemplo, podemos obtener el valor máximo, el mínimo, el tamaño de la
lista, así como tambien podemos agregar y remover elementos a una lista.

::: {#a3d1aab5 .cell}
``` {.python .cell-code}
# Metodos en listas
print(len(mylist)) #Tamano de lista
print(min(mylist)) #Valor minimo en la lista
print(max(mylist)) #Valor maximo en la lista
```
:::


::: {#8bc628dc .cell}
``` {.python .cell-code}
# Metodos para agregar y eliminar elementos de una lista:
mylist.append(5) #Agregar elemento
mylist
```
:::


::: {#1aed5ced .cell}
``` {.python .cell-code}
mylist.append([6,7])
mylist
```
:::


::: {#7a45bfd7 .cell}
``` {.python .cell-code}
mylist.remove([6,7]) # Remover elemento
mylist
```
:::


::: {#f38e33e9 .cell}
``` {.python .cell-code}
mylist.extend([6,7]) # Extender lista con mas elementos
mylist
```
:::


::: {#23149449 .cell}
``` {.python .cell-code}
mylist.insert(1,10) # insert element to a list at a location other than the end
mylist
```
:::


::: {#ead80788 .cell}
``` {.python .cell-code}
mylist.sort()
print(mylist) # Ordenar lista de menor a mayor
mylist.index(2) # Retorna el indice del valor que solicitamos
```
:::


::: {#ff57d896 .cell}
``` {.python .cell-code}
mylistExample = [1,2,2,4,2]
mylistExample.index(2) # Retorna el indice del valor que solicitamos
```
:::


# Trabajando con tuplas.

Las tuplas son colecciones ordenadas de elementos que son inmutables. El
beneficio de que sea inmutable es que definir una tupla requiere poca
memoria ram pues no tiene muchas rutinas asociadas a comparación de las
listas. Usualmente definimos las tuplas entre paréntesis "(,)".

::: {#16f9d318 .cell}
``` {.python .cell-code}
import sys

# Uso de ram para tuplas vs listas:
myTuple = tuple([i for i in range(1000)])
myList  = [i for i in range(1000)]
print(sys.getsizeof(myTuple),
      sys.getsizeof(myList))
```
:::


::: {#6b570f62 .cell}
``` {.python .cell-code}
#Evaluando el tipo de elemento
myTuple = 1,2,3
#print(myTuple)
type(myTuple)
```
:::


::: {#af6152e7 .cell}
``` {.python .cell-code}
# Convirtiendo una lista en tupla
tuple([1,2])
```
:::


::: {#75eaab39 .cell}
``` {.python .cell-code}
# Indexando una tupla
myTuple[0]
```
:::


# Diccionarios:

Los diccionarios son colecciones de elementos de manera no ordenada, son
mutables y posibles de indexar. En python la forma de crear diccionarios
es usando llaves "{}". Los diccionarios se utilizan para elaborar
estructuras de datos que contienen multiples objetos y usualmente se
pueden referenciar on un "key name" que suele ser un string. Por lo
general los diccionarios siguen la siguiente estructura:

```         
                                   dictorinary = { 'key1': obj1,
                                                   'key2': obj2,
                                                   'key3': obj3}
```

::: {#1f34adc5 .cell}
``` {.python .cell-code}
# Diccionarios
miDict = {}

miDict = {'a':'perro', 'b':'gato'}
print(miDict['a'])
```
:::


::: {#c5aa6a2c .cell}
``` {.python .cell-code}
miDict['a'] = 'canario'
miDict['c'] = 'conejo'

print(miDict)
```
:::


::: {#6c812172 .cell}
``` {.python .cell-code}
#Acceder a llaves (keys) en los diccionarios:
print('a' in miDict,
'canario' in miDict)
```
:::


::: {#65a2fe23 .cell}
``` {.python .cell-code}
list(miDict)
```
:::


::: {#fec40b76 .cell}
``` {.python .cell-code}
miDict.keys()
```
:::


::: {#ac59cdb3 .cell}
``` {.python .cell-code}
miDict.values()
```
:::


::: {#2be64a4d .cell}
``` {.python .cell-code}
miDict.items()
```
:::


# Publicaciones Similares

Si te interesó este artículo, te recomendamos que explores otros blogs y recursos relacionados que pueden ampliar tus conocimientos. Aquí te dejo algunas sugerencias:


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
13. [{{< fa regular file-pdf >}}](https://numerus-scriptum.netlify.app/python/2022-10-31-11-validacion-cruzada-y-composicion-del-modelo-con-python/index.pdf) [11 Validacion Cruzada Y Composicion Del Modelo Con Python](https://numerus-scriptum.netlify.app/python/2022-10-31-11-validacion-cruzada-y-composicion-del-modelo-con-python)
14. [{{< fa regular file-pdf >}}](https://numerus-scriptum.netlify.app/python/2025-05-10-visualizacion-de-datos-con-python/index.pdf) [Visualizacion De Datos Con Python](https://numerus-scriptum.netlify.app/python/2025-05-10-visualizacion-de-datos-con-python)


Esperamos que encuentres estas publicaciones igualmente interesantes y útiles. ¡Disfruta de la lectura!

