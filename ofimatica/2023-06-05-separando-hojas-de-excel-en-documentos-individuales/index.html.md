---
copyrightnotice: 2023
copyrightext: All rights reserved
title: Separar hojas Excel en archivos VBA
shorttitle: COMBINAR HOJAS DE EXCEL
abstract: This article introduces a simple VBA macro designed to merge all sheets
  from multiple Excel files into a single workbook. The macro automates the process
  of data consolidation, which is particularly useful for repetitive tasks in econometrics
  or any field requiring data aggregation from various sources. The method involves
  opening each file in read-only mode, copying all sheets to a target workbook, and
  then closing the source workbook to proceed to the next file in the directory.
keywords:
- VBA
- Excel
- Data Automation
- Macros
- Consolidation
categories:
- Ofimatica
tags:
- ofimatica
- separar_hojas
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
description: Script VBA que exporta cada hoja de un libro Excel como archivo independiente
  preservando formato.
eval: false
citation:
  type: article-journal
  author:
  - Edison Achalma
  pdf-url: https://numerus-scriptum.netlify.app/ofimatica/2023-06-05-separando-hojas-de-excel-en-documentos-individuales/index.pdf
date: 06/05/2023
draft: false
image: ../featured.jpg
---

SEPARAR HOJAS DE EXCEL EN DOCUMENTOS INDIVIDUALES
Seguramente en cualquier ocasion les han pedido que deben separar un documento en excel, el cual contiene varias hojas, ya que por facilidad de visualización y trabajo el documento se debe tener de esta manera, pero al final debemos tener documentos individuales para ser enviados por separado o simplemente para darle otro tratamiento.
En este articulo aprenderemos a separar ese documento el cual contiene varias hojas y dejarlo en documentos individuales. Para ello solamente debemos ingresar al modo desarrollador en excel y copiar unas lineas de codigo y ejecutar y se realizara automaticamente la separacion.
Se deben seguir los siguientes pasos:

1- Creamos una carpeta donde vamos a guardar el documento el cual vamos a separar.
2- Abrimos el documento y pulsamos las teclas `alt+F11`.
3- De esta manera se abrirá el modo desarrollador, en la parte izquierda encontramos un icono que dice ver código. damos clic en el y se abrirá una ventana para insertar el código. Copiamos y pegamos el siguiente fragmento de código:

```
Sub Splitbook()
'Updateby20140612
Dim xPath As String
xPath = Application.ActiveWorkbook.Path
Application.ScreenUpdating = False
Application.DisplayAlerts = False
For Each xWs In ThisWorkbook.Sheets
    xWs.Copy
    Application.ActiveWorkbook.SaveAs Filename:=xPath & "\" & xWs.Name & ".xlsx"
    Application.ActiveWorkbook.Close False
Next
Application.DisplayAlerts = True
Application.ScreenUpdating = True
End Sub
```

4- Damos clic en el icono **Ejecutar Sub** el cual lo encontramos en la barra superior con un icono triangular.
5- Inmediatamente se ejecutará el código y vamos a visualizar la carpeta, encontrando las hojas ya separadas en documentos individuales.

De esta manera se habrá solucionado esa tarea que tal vez puede resultar tediosa si no conocemos mucho del modo desarrollador en excel.

# Publicaciones Similares

Si te interesó este artículo, te recomendamos que explores otros blogs y recursos relacionados que pueden ampliar tus conocimientos. Aquí te dejo algunas sugerencias:


1. [{{< fa regular file-pdf >}}](https://numerus-scriptum.netlify.app/ofimatica/2022-12-05-01-introduccion-al-lenguaje-y-editor-vba/index.pdf) [01 Introduccion Al Lenguaje Y Editor Vba](https://numerus-scriptum.netlify.app/ofimatica/2022-12-05-01-introduccion-al-lenguaje-y-editor-vba)
2. [{{< fa regular file-pdf >}}](https://numerus-scriptum.netlify.app/ofimatica/2022-12-12-02-grabar-y-modificar/index.pdf) [02 Grabar Y Modificar](https://numerus-scriptum.netlify.app/ofimatica/2022-12-12-02-grabar-y-modificar)
3. [{{< fa regular file-pdf >}}](https://numerus-scriptum.netlify.app/ofimatica/2022-12-19-03-procedimientos/index.pdf) [03 Procedimientos](https://numerus-scriptum.netlify.app/ofimatica/2022-12-19-03-procedimientos)
4. [{{< fa regular file-pdf >}}](https://numerus-scriptum.netlify.app/ofimatica/2022-12-26-04-funciones-en-vba/index.pdf) [04 Funciones En Vba](https://numerus-scriptum.netlify.app/ofimatica/2022-12-26-04-funciones-en-vba)
5. [{{< fa regular file-pdf >}}](https://numerus-scriptum.netlify.app/ofimatica/2023-01-02-05-funciones-condicionales-estructuras-condicionales/index.pdf) [05 Funciones Condicionales Estructuras Condicionales](https://numerus-scriptum.netlify.app/ofimatica/2023-01-02-05-funciones-condicionales-estructuras-condicionales)
6. [{{< fa regular file-pdf >}}](https://numerus-scriptum.netlify.app/ofimatica/2023-01-09-06-funciones-iterativas-estructuras-repetitivas-o-bucles/index.pdf) [06 Funciones Iterativas Estructuras Repetitivas O Bucles](https://numerus-scriptum.netlify.app/ofimatica/2023-01-09-06-funciones-iterativas-estructuras-repetitivas-o-bucles)
7. [{{< fa regular file-pdf >}}](https://numerus-scriptum.netlify.app/ofimatica/2023-01-16-07-formularios/index.pdf) [07 Formularios](https://numerus-scriptum.netlify.app/ofimatica/2023-01-16-07-formularios)
8. [{{< fa regular file-pdf >}}](https://numerus-scriptum.netlify.app/ofimatica/2023-01-23-08-eventos/index.pdf) [08 Eventos](https://numerus-scriptum.netlify.app/ofimatica/2023-01-23-08-eventos)
9. [{{< fa regular file-pdf >}}](https://numerus-scriptum.netlify.app/ofimatica/2023-03-17-comando-para-convertir-docx-a-odt/index.pdf) [Comando Para Convertir Docx A Odt](https://numerus-scriptum.netlify.app/ofimatica/2023-03-17-comando-para-convertir-docx-a-odt)
10. [{{< fa regular file-pdf >}}](https://numerus-scriptum.netlify.app/ofimatica/2023-04-03-buscar-reemplazar-en-libreoffice/index.pdf) [Buscar Reemplazar En Libreoffice](https://numerus-scriptum.netlify.app/ofimatica/2023-04-03-buscar-reemplazar-en-libreoffice)
11. [{{< fa regular file-pdf >}}](https://numerus-scriptum.netlify.app/ofimatica/2023-05-21-anclaje-envoltura-alineacion-y-organizacion-de-objetos-en-llibreoffice/index.pdf) [Anclaje Envoltura Alineacion Y Organizacion De Objetos En Llibreoffice](https://numerus-scriptum.netlify.app/ofimatica/2023-05-21-anclaje-envoltura-alineacion-y-organizacion-de-objetos-en-llibreoffice)
12. [{{< fa regular file-pdf >}}](https://numerus-scriptum.netlify.app/ofimatica/2023-05-31-combinando-hojas-de-excel-con-vba/index.pdf) [Combinando Hojas De Excel Con Vba](https://numerus-scriptum.netlify.app/ofimatica/2023-05-31-combinando-hojas-de-excel-con-vba)
13. [{{< fa regular file-pdf >}}](https://numerus-scriptum.netlify.app/ofimatica/2023-06-05-separando-hojas-de-excel-en-documentos-individuales/index.pdf) [Separando Hojas De Excel En Documentos Individuales](https://numerus-scriptum.netlify.app/ofimatica/2023-06-05-separando-hojas-de-excel-en-documentos-individuales)


Esperamos que encuentres estas publicaciones igualmente interesantes y útiles. ¡Disfruta de la lectura!

