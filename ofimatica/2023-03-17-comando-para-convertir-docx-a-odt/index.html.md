---
copyrightnotice: 2023
copyrightext: All rights reserved
title: Convertir DOCX a ODT desde línea comandos
abstract: Este abstract será actualizado una vez que se complete el contenido final
  del artículo.
keywords:
- keyword1
- keyword2
categories:
- Ofimatica
tags:
- ofimatica
- conversion_documentos
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
description: Uso de herramientas como LibreOffice headless y pandoc para conversión
  masiva de documentos Word a formato abierto ODT.
eval: false
citation:
  type: article-journal
  author:
  - Edison Achalma
  pdf-url: https://numerus-scriptum.netlify.app/ofimatica/2023-03-17-comando-para-convertir-docx-a-odt/index.pdf
date: 03/17/2023
draft: true
image: ../featured.jpg
---

Para convertir varios archivos con extensión `.docx` a `.odt` a través de una línea de comando de Linux, puede utilizar la herramienta `soffice` que viene con LibreOffice. Aquí hay un ejemplo de cómo hacerlo de `docx` a `odt`

`soffice --headless --convert-to odt *.docx `

Comados para recuperar docx dañados

`sudo apt-get install docx2txt`

de doc a odt

`soffice --headless --convert-to odt *.doc`

de doc a docx

`soffice --headless --convert-to docx *.doc`

#### Extensiones de ODF

Entre las extensiones típicas de los archivos ODF están las siguientes:

- **.odt** – documento de texto
- **.ods** – libro de hojas de cálculo
- **.odp** – presentación de diapositivas
- **.odg** – ilustración o gráfico

# me manera masiva:

Para convertir archivos de Microsoft Office a formatos de LibreOffice utilizando la línea de comandos, puedes utilizar la herramienta `soffice` (LibreOffice). Aquí tienes el comando general para convertir archivos `.docx` a `.odt`:

```bash
soffice --headless --convert-to odt *.docx
```

Si deseas convertir varios tipos de archivos en varias carpetas, puedes usar un script de shell para recorrer las carpetas y convertir los archivos. A continuación, se presenta un ejemplo de cómo podrías hacerlo en un entorno Unix (como Linux o macOS):

1. Abre una terminal.
2. Navega a la carpeta principal que contiene las subcarpetas con los archivos que deseas convertir.
3. Crea y ejecuta un script de shell con el siguiente contenido:

```bash
#!/bin/bash

# Convert DOCX to ODT
find . -type f -name "*.docx" -exec soffice --headless --convert-to odt {} \;

# Convert XLSX to ODS
find . -type f -name "*.xlsx" -exec soffice --headless --convert-to ods {} \;

# Convert PPTX to ODP
find . -type f -name "*.pptx" -exec soffice --headless --convert-to odp {} \;
```

Guarda el script con un nombre, por ejemplo `convert_files.sh`, y dale permisos de ejecución:

```bash
chmod +x convert_files.sh
```

Luego, ejecuta el script:

```bash
./convert_files.sh
```

Este script hará lo siguiente:
- `find . -type f -name "*.docx"`: Encuentra todos los archivos `.docx` en el directorio actual y sus subdirectorios.
- `-exec soffice --headless --convert-to odt {}`: Para cada archivo `.docx` encontrado, ejecuta el comando `soffice --headless --convert-to odt` para convertirlo a `.odt`.

El mismo proceso se aplica a los archivos `.xlsx` y `.pptx` para convertirlos a `.ods` y `.odp`, respectivamente.

**Nota:** Asegúrate de tener `soffice` (LibreOffice) instalado y accesible desde la línea de comandos.

# con variants:


Si deseas convertir diferentes tipos de archivos de Microsoft Office a sus respectivos formatos de LibreOffice (por ejemplo, `.docx` y `.doc` a `.odt`, `.xlsx` y `.xls` a `.ods`, y `.pptx` y `.ppt` a `.odp`), puedes modificar el script para incluir todos los tipos de archivos que quieres convertir.

Aquí tienes un ejemplo de un script de shell que maneja múltiples tipos de archivos:

```bash
#!/bin/bash

# Convert DOCX and DOC to ODT
find . -type f \( -name "*.docx" -o -name "*.doc" \) -exec soffice --headless --convert-to odt {} \;

# Convert XLSX and XLS to ODS
find . -type f \( -name "*.xlsx" -o -name "*.xls" \) -exec soffice --headless --convert-to ods {} \;

# Convert PPTX and PPT to ODP
find . -type f \( -name "*.pptx" -o -name "*.ppt" \) -exec soffice --headless --convert-to odp {} \;
```

Guarda el script con un nombre, por ejemplo `convert_all_files.sh`, y dale permisos de ejecución:

```bash
chmod +x convert_all_files.sh
```

Luego, ejecuta el script:

```bash
./convert_all_files.sh
```

Este script hará lo siguiente:

1. **Convertir archivos de Word (`.docx` y `.doc`) a ODT:**
   - `find . -type f \( -name "*.docx" -o -name "*.doc" \)`: Encuentra todos los archivos `.docx` y `.doc` en el directorio actual y sus subdirectorios.
   - `-exec soffice --headless --convert-to odt {}`: Para cada archivo encontrado, ejecuta el comando `soffice --headless --convert-to odt` para convertirlo a `.odt`.

2. **Convertir archivos de Excel (`.xlsx` y `.xls`) a ODS:**
   - `find . -type f \( -name "*.xlsx" -o -name "*.xls" \)`: Encuentra todos los archivos `.xlsx` y `.xls` en el directorio actual y sus subdirectorios.
   - `-exec soffice --headless --convert-to ods {}`: Para cada archivo encontrado, ejecuta el comando `soffice --headless --convert-to ods` para convertirlo a `.ods`.

3. **Convertir archivos de PowerPoint (`.pptx` y `.ppt`) a ODP:**
   - `find . -type f \( -name "*.pptx" -o -name "*.ppt" \)`: Encuentra todos los archivos `.pptx` y `.ppt` en el directorio actual y sus subdirectorios.
   - `-exec soffice --headless --convert-to odp {}`: Para cada archivo encontrado, ejecuta el comando `soffice --headless --convert-to odp` para convertirlo a `.odp`.

Este script asegurará que todos los archivos de los tipos especificados en el directorio actual y sus subdirectorios se conviertan al formato adecuado de LibreOffice.


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


