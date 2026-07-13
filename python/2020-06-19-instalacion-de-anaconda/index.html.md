---
documentmode: doc
copyrightnotice: 2020
copyrightext: All rights reserved
title: Guía completa de instalación de Miniconda y Anaconda
abstract: Esta publicación detalla el proceso de instalación y configuración óptima de Miniconda (en lugar de la distribución completa de Anaconda) en sistemas Linux (con énfasis en Arch Linux), orientada a usuarios avanzados, economistas, investigadores y desarrolladores que trabajan con múltiples proyectos de ciencia de datos, econometría y publicación académica mediante Quarto. Se explican paso a paso; la preparación del sistema, instalación silenciosa o interactiva, configuración inicial con desactivación de auto-activación del entorno base, integración acelerada mediante Mamba, configuración recomendada del archivo .condarc, personalización del shell Fish, aliases útiles para flujos de trabajo con múltiples blogs/proyectos, integración con herramientas del sistema (Quarto, R y LaTeX) y resolución de problemas frecuentes. El enfoque prioriza ligereza (~50 MB), control total, reproducibilidad mediante environment.yml y máxima velocidad de instalación/resolución de dependencias.
keywords:
- Miniconda
- Mamba
- Entornos conda
categories:
- Python
tags:
- anaconda
- miniconda
- python
- conda
- anaconda_instalacion
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
description: Guía paso a paso para descargar e instalar Anaconda, gestionar entornos
  y paquetes en Windows, Linux y macOS.
eval: false
citation:
  type: article-journal
  author:
  - Edison Achalma
  pdf-url: https://numerus-scriptum.netlify.app/python/2020-06-19-instalacion-de-anaconda/index.pdf
date: 06/19/2020
draft: false
image: ../featured.jpg
---

# Guía completa de instalación de Miniconda y Anaconda

> Referencia técnica independiente sobre la **instalación** de Miniconda y Anaconda Distribution en Kubuntu/Ubuntu, Arch Linux y Windows, basada en la documentación oficial de **conda** (docs.conda.io), **Anaconda** (anaconda.com/docs) y **ArchWiki** (wiki.archlinux.org/title/Conda). Esta guía cubre **únicamente instalación y desinstalación**; la configuración del entorno (canales, `.condarc`, gestión de entornos virtuales, integración con shells, etc.) se tratará en una guía aparte.

---

## Tabla de contenidos

1. [¿Qué son Miniconda y Anaconda?](#1-qué-son-miniconda-y-anaconda)
2. [¿Cuál elegir: Miniconda o Anaconda Distribution?](#2-cuál-elegir-miniconda-o-anaconda-distribution)
3. [Nota importante sobre los Términos de Servicio de Anaconda](#3-nota-importante-sobre-los-términos-de-servicio-de-anaconda)
4. [Verificación de integridad del instalador (todas las plataformas)](#4-verificación-de-integridad-del-instalador-todas-las-plataformas)
5. [Instalación en Kubuntu / Ubuntu — Miniconda](#5-instalación-en-kubuntu--ubuntu--miniconda)
6. [Instalación en Kubuntu / Ubuntu — Anaconda Distribution](#6-instalación-en-kubuntu--ubuntu--anaconda-distribution)
7. [Instalación en Arch Linux — Miniconda](#7-instalación-en-arch-linux--miniconda)
8. [Instalación en Arch Linux — Anaconda Distribution](#8-instalación-en-arch-linux--anaconda-distribution)
9. [Instalación en Windows — Miniconda](#9-instalación-en-windows--miniconda)
10. [Instalación en Windows — Anaconda Distribution](#10-instalación-en-windows--anaconda-distribution)
11. [Instalación en modo silencioso (avanzado)](#11-instalación-en-modo-silencioso-avanzado)
12. [Verificación final de la instalación](#12-verificación-final-de-la-instalación)
13. [Desinstalación en Kubuntu / Ubuntu](#13-desinstalación-en-kubuntu--ubuntu)
14. [Desinstalación en Arch Linux](#14-desinstalación-en-arch-linux)
15. [Desinstalación en Windows](#15-desinstalación-en-windows)
16. [Solución de problemas comunes de instalación](#16-solución-de-problemas-comunes-de-instalación)
17. [Referencias oficiales](#17-referencias-oficiales)

---

## 1. ¿Qué son Miniconda y Anaconda?

**Conda** es el gestor de paquetes y entornos en el que se basan tanto Miniconda como Anaconda Distribution. Existen dos formas oficiales de obtenerlo:

- **Miniconda**: según la documentación oficial, es una instalación **mínima y gratuita** de Anaconda Distribution que incluye únicamente `conda`, Python, los paquetes de los que ambos dependen, y un pequeño número de paquetes adicionales útiles. Si se necesitan más paquetes, se usa el comando `conda install` para instalarlos desde miles de paquetes disponibles por defecto en el repositorio público de Anaconda, o desde otros canales como `conda-forge` o `bioconda`.

- **Anaconda Distribution**: es la distribución completa, que incluye conda, Python, y **miles de paquetes preinstalados** orientados a ciencia de datos y machine learning (NumPy, pandas, Jupyter Notebook, scikit-learn, entre otros), además de **Anaconda Navigator**, una aplicación de escritorio para gestionar paquetes y entornos sin usar la línea de comandos.

Ambas instalan el mismo gestor `conda` por debajo; la diferencia está en cuánto software adicional viene preinstalado de fábrica.

---

## 2. ¿Cuál elegir: Miniconda o Anaconda Distribution?

Esta es una pregunta que la propia documentación oficial de Anaconda responde explícitamente en su página de comparación ("Choosing between Anaconda Distribution and Miniconda"). A modo de resumen orientativo:

- **Miniconda** es preferible si se quiere mantener una huella de instalación pequeña, control total sobre qué paquetes se instalan, o se trabaja en un entorno con espacio en disco o ancho de banda limitado.
- **Anaconda Distribution** es preferible si se quiere tener de inmediato, en un solo paso, Python junto con miles de paquetes de ciencia de datos ya instalados y verificados, además de una interfaz gráfica (Navigator) para quienes prefieren no usar la terminal.

Ambas opciones son válidas para Kubuntu, Arch Linux y Windows; esta guía cubre la instalación de **ambas** en los tres sistemas.

---

## 3. Nota importante sobre los Términos de Servicio de Anaconda

Según la documentación oficial de conda, **tanto Miniconda como Anaconda Distribution vienen preconfiguradas para usar el repositorio de Anaconda** (Anaconda Repository), y instalar o usar paquetes desde ese repositorio está sujeto a los **Términos de Servicio de Anaconda**, lo cual puede requerir una licencia comercial de pago según el caso. Existen excepciones para individuos, universidades y empresas con menos de 200 empleados (vigente desde septiembre de 2024).

> **Relevante para tu contexto académico (UNSCH)**: como individuo afiliado a una universidad, normalmente caes dentro de las excepciones declaradas por Anaconda para uso académico/de investigación, pero se recomienda revisar los términos vigentes y el documento oficial "Update on Anaconda's Terms of Service for Academia and Research" antes de un uso institucional o de gran escala, ya que estas políticas pueden cambiar.

Esta nota aplica por igual a Kubuntu, Arch Linux y Windows, ya que es una condición del repositorio de paquetes de Anaconda, no del sistema operativo.

---

## 4. Verificación de integridad del instalador (todas las plataformas)

La documentación oficial recomienda **verificar el hash SHA-256** del instalador descargado antes de ejecutarlo, para confirmar que no fue alterado ni corrompido durante la descarga. No se recomienda usar verificación MD5, ya que SHA-256 es más seguro.

### 4.1. Dónde obtener el hash oficial

- Para Miniconda: visita **repo.anaconda.com/miniconda**, donde se lista el hash SHA-256 oficial correspondiente a cada instalador.
- Para Anaconda Distribution: el hash se publica junto al archivo de descarga correspondiente en la documentación oficial de Anaconda.

### 4.2. Verificación en Linux (Kubuntu y Arch)

```bash
sha256sum nombre-del-archivo.sh
```

Compara el valor mostrado con el hash oficial publicado. Si coinciden, el instalador es seguro de usar.

### 4.3. Verificación en Windows

Puedes usar la herramienta de verificación en línea de Microsoft, o desde el símbolo del sistema (Command Prompt):

```cmd
CertUtil -hashfile nombre-del-archivo.exe SHA256
```

Compara el resultado con el hash oficial publicado para ese instalador.

---

## 5. Instalación en Kubuntu / Ubuntu — Miniconda

### 5.1. Descargar el instalador

Desde la documentación oficial de conda, el instalador de Miniconda para Linux se descarga desde la página oficial de Miniconda (docs.anaconda.com/miniconda) o directamente desde el repositorio de archivos:

```bash
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
```

> **Nota**: `Miniconda3-latest-Linux-x86_64.sh` apunta siempre a la versión más reciente disponible para arquitectura x86_64 (la habitual en la mayoría de laptops y PCs de escritorio). Si tu hardware usa otra arquitectura (por ejemplo ARM/aarch64), ajusta el nombre del archivo según lo indicado en repo.anaconda.com/miniconda.

### 5.2. Verificar el hash (recomendado)

```bash
sha256sum Miniconda3-latest-Linux-x86_64.sh
```

Compara contra el hash oficial publicado en repo.anaconda.com/miniconda.

### 5.3. Ejecutar el instalador

```bash
bash Miniconda3-latest-Linux-x86_64.sh
```

### 5.4. Seguir las indicaciones del instalador

El procedimiento documentado oficialmente es:

1. Presiona `Enter` para revisar el acuerdo de licencia.
2. Desplázate (barra espaciadora) hasta el final del acuerdo.
3. Escribe `yes` y presiona `Enter` para aceptar los términos.
4. Confirma o cambia la ruta de instalación (por defecto, algo como `/home/<usuario>/miniconda3`). Presiona `Enter` para aceptar la ruta por defecto, o escribe una ruta alternativa.
5. Al finalizar la instalación, el instalador preguntará si deseas **inicializar conda** (`conda init`). Se recomienda responder `yes`: esto modifica la configuración de tu shell (por ejemplo `~/.bashrc` o `~/.zshrc`) para que conda se inicialice automáticamente cada vez que abras una nueva terminal y reconozca los comandos `conda` sin pasos adicionales.

> **Nota para usuarios de zsh**: dado que tu entorno usa `zsh` con `kitty`, el instalador detecta y modifica automáticamente `~/.zshrc` si esa es tu shell por defecto al ejecutar el instalador. Si usas múltiples shells, puedes ejecutar `conda init` manualmente más adelante para shells adicionales (esto se profundizará en la guía de configuración).

### 5.5. Aplicar los cambios

Para que los cambios tengan efecto, cierra y vuelve a abrir tu terminal (o tu sesión de `kitty`).

### 5.6. Probar la instalación

```bash
conda list
```

Si la instalación fue correcta, aparecerá una lista de los paquetes instalados.

---

## 6. Instalación en Kubuntu / Ubuntu — Anaconda Distribution

### 6.1. Descargar el instalador

Según la documentación oficial de Anaconda para Linux, se descarga el instalador con `wget` o `curl` desde la terminal, según la arquitectura del sistema (la URL exacta cambia con cada versión; se recomienda copiar el enlace vigente desde la página oficial de descargas, anaconda.com/download):

```bash
wget https://repo.anaconda.com/archive/Anaconda3-<version>-Linux-x86_64.sh
```

> **Nota oficial sobre Raspberry Pi / ARM**: los paquetes para `linux-aarch64` podrían no ser compatibles con ciertas configuraciones de Raspberry Pi, ya que Anaconda Distribution usa opciones de compilador orientadas a la microarquitectura de clase servidor Neoverse N1/N2.

### 6.2. Verificar el hash (recomendado)

```bash
sha256sum Anaconda3-<version>-Linux-x86_64.sh
```

### 6.3. Ejecutar el instalador

```bash
bash Anaconda3-<version>-Linux-x86_64.sh
```

### 6.4. Seguir las indicaciones del instalador

El procedimiento documentado oficialmente es:

1. Presiona `Enter` para continuar y revisar los Términos de Servicio (puedes consultarlos también en anaconda.com/legal).
2. Escribe `yes` para aceptar los Términos de Servicio.
3. Presiona `Enter` para aceptar la ubicación de instalación por defecto (`PREFIX=/home/<usuario>/anaconda3`), o escribe otra ruta para especificar un directorio alternativo.
4. La instalación puede tardar varios minutos en completarse (Anaconda Distribution es considerablemente más grande que Miniconda).
5. Cuando se pregunte si deseas inicializar conda, elige `yes`. Esto modifica la configuración de tu shell para inicializar conda automáticamente cada vez que abras una nueva terminal.

### 6.5. Dependencias de sistema para Anaconda Navigator (importante en Kubuntu)

Anaconda Navigator (la interfaz gráfica) y sus dependencias de Qt se instalan automáticamente junto con Anaconda Distribution. Sin embargo, en instalaciones Linux mínimas —lo cual puede aplicar a ciertas configuraciones de Kubuntu, especialmente si no usas el entorno de escritorio KDE completo— podrías necesitar instalar bibliotecas de sistema adicionales para que las aplicaciones gráficas funcionen correctamente. La documentación oficial de Anaconda indica, para distribuciones basadas en Debian/Ubuntu:

```bash
sudo apt-get install libgl1 libegl1 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2t64 libxi6 libxtst6 libxcb-cursor0 libxkbcommon0
```

Las bibliotecas clave de las que depende Navigator, según la documentación oficial, son: OpenGL (`libGL`, `libEGL`), bibliotecas de visualización X11/XCB (`libxcb-cursor`, `libxkbcommon`, `libXi`, `libXtst`, `libXrandr`, `libXcomposite`, `libXcursor`, `libXScrnSaver`), y audio ALSA (`libasound`).

> Dado que Kubuntu usa KDE Plasma como entorno de escritorio completo, es probable que la mayoría de estas bibliotecas ya estén presentes; este paso es más relevante en instalaciones de servidor o entornos minimalistas sin entorno gráfico completo.

### 6.6. Aplicar cambios y probar

Cierra y vuelve a abrir la terminal. Anaconda Navigator se abre automáticamente al completarse la instalación; si necesitas abrirlo manualmente más adelante:

```bash
anaconda-navigator
```

Para verificar la instalación de conda:

```bash
conda list
```

---

## 7. Instalación en Arch Linux — Miniconda

> **Importante**: ni Miniconda ni Anaconda forman parte de los repositorios oficiales de Arch (`core`/`extra`). Según la **ArchWiki oficial** (wiki.archlinux.org/title/Conda), las opciones disponibles son: el paquete **`python-conda`** (AUR) si solo se desea el gestor `conda`, el paquete **`miniconda3`** (AUR) para una instalación tipo Miniconda, o **Miniforge** (descargado directamente desde su repositorio en GitHub, que usa `conda-forge` como canal por defecto en vez del canal por defecto de Anaconda Inc.).

Esta sección cubre la vía AUR para `miniconda3` y también la vía de instalación manual del script oficial (recomendada por la comunidad de Arch cuando se prefiere evitar dependencias de AUR para software que se autoactualiza por su cuenta).

### 7.1. Opción A — Vía AUR (paquete `miniconda3`)

Con un ayudante de AUR como `yay` o `paru`:

```bash
yay -S miniconda3
```

Esto instala Miniconda típicamente en `/opt/miniconda3`.

**Activación del entorno conda tras instalar vía AUR**: a diferencia de la instalación manual (que ofrece inicializar conda automáticamente), el paquete de AUR no modifica tu shell por ti. Debes activarlo manualmente. Para Bash o variantes Bourne, para el usuario actual:

```bash
echo "[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh" >> ~/.bashrc
```

Para `zsh` (tu shell), el equivalente es agregar la misma línea a `~/.zshrc`:

```bash
echo "[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh" >> ~/.zshrc
```

O, para habilitarlo para todos los usuarios del sistema:

```bash
sudo ln -s /opt/miniconda3/etc/profile.d/conda.sh /etc/profile.d/conda.sh
```

### 7.2. Opción B — Instalación manual del script oficial (alternativa recomendada por la comunidad)

Esta vía evita depender del mantenimiento del paquete AUR y te da control total sobre la ubicación de instalación, instalando en tu directorio personal en vez de `/opt` (que requiere privilegios de root para escribir):

```bash
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
sha256sum Miniconda3-latest-Linux-x86_64.sh   # verificación recomendada
bash Miniconda3-latest-Linux-x86_64.sh
```

Sigue las mismas indicaciones descritas en la sección 5.4 (aceptar licencia, elegir ruta de instalación, aceptar inicialización de conda). Al estar en tu `$HOME` (por ejemplo `~/miniconda3`), no se requieren privilegios de administrador.

### 7.3. Nota sobre actualizaciones del paquete AUR

Los comentarios oficiales del mantenedor del paquete `miniconda3` en AUR (consultable en aur.archlinux.org/packages/miniconda3) indican un procedimiento particular para actualizar sin romper la integración con tu shell: antes de actualizar, comenta temporalmente la línea de activación de conda en tu `~/.bashrc`/`~/.zshrc`, realiza la actualización del paquete con tu ayudante de AUR habitual, y luego descomenta la línea nuevamente.

### 7.4. Verificación de la instalación

Cierra y vuelve a abrir tu terminal, luego:

```bash
conda list
```

---

## 8. Instalación en Arch Linux — Anaconda Distribution

> Igual que con Miniconda, Anaconda Distribution no está en los repositorios oficiales de Arch; según ArchWiki, la vía documentada es a través de AUR.

### 8.1. Vía AUR (paquete `anaconda`)

```bash
yay -S anaconda
```

Esto compila/instala el paquete `anaconda` desde AUR, típicamente también orientado a `/opt`. Como con cualquier paquete AUR, este es contenido producido por la comunidad, no por Anaconda Inc. ni por los desarrolladores oficiales de Arch; revisa los comentarios recientes del paquete en aur.archlinux.org antes de instalar, por si hay incidencias activas sin resolver.

### 8.2. Consideración importante sobre permisos en `/opt` (discutida en los foros oficiales de Arch)

Una discusión documentada en los foros oficiales de Arch Linux (bbs.archlinux.org) señala un punto operativo relevante: Anaconda, por defecto, instala en `/opt`, lo cual requiere permisos de root para escribir, y mezclar esto con los entornos propios de conda gestionados habitualmente por el propio usuario puede ser inconveniente. La recomendación de la comunidad de Arch, cuando se prefiere evitar esto, es descargar el instalador oficial como usuario sin privilegios e instalarlo directamente en el directorio personal (`$HOME`), igual que se describió para Miniconda en la sección 7.2, en vez de usar el paquete de AUR que apunta a `/opt`.

### 8.3. Opción alternativa — Instalación manual del script oficial

```bash
wget https://repo.anaconda.com/archive/Anaconda3-<version>-Linux-x86_64.sh
sha256sum Anaconda3-<version>-Linux-x86_64.sh   # verificación recomendada
bash Anaconda3-<version>-Linux-x86_64.sh
```

Sigue las mismas indicaciones descritas en la sección 6.4, eligiendo una ruta dentro de tu `$HOME` (por ejemplo `~/anaconda3`) si prefieres evitar `/opt`.

### 8.4. Dependencias gráficas para Anaconda Navigator en Arch

Si usas Archcraft (basado en gestores de ventanas minimalistas tipo *tiling*), es más probable que falten algunas de las bibliotecas gráficas que Navigator requiere, comparado con un entorno de escritorio completo como KDE Plasma en Kubuntu. Si al ejecutar `anaconda-navigator` encuentras errores relacionados con OpenGL, X11/XCB o ALSA, instala los paquetes equivalentes de Arch para las bibliotecas listadas en la sección 6.5 (`libgl`/mesa, `libxrandr`, `libxss`, `libxcursor`, `libxcomposite`, `alsa-lib`, `libxi`, `libxtst`, `libxcb`, `libxkbcommon`), usando `pacman -S` con los nombres de paquete correspondientes de los repositorios oficiales de Arch.

### 8.5. Verificación de la instalación

```bash
conda list
```

---

## 9. Instalación en Windows — Miniconda

### 9.1. Descargar el instalador

Descarga el instalador `.exe` de Miniconda para Windows desde la página oficial: **docs.anaconda.com/miniconda** (o directamente desde repo.anaconda.com/miniconda).

### 9.2. Verificar el hash (recomendado)

Desde el símbolo del sistema (Command Prompt), en la carpeta donde se descargó el archivo:

```cmd
CertUtil -hashfile Miniconda3-latest-Windows-x86_64.exe SHA256
```

Compara contra el hash oficial publicado en repo.anaconda.com/miniconda.

### 9.3. Ejecutar el instalador

Ve a tu carpeta de Descargas (o a la carpeta Home si se descargó vía línea de comandos) y haz doble clic en el instalador para lanzarlo.

> **Advertencia oficial**: para evitar errores de permisos, no lances el instalador desde la carpeta de "Favoritos" (*Favorites*). Si encuentras problemas durante la instalación, desactiva temporalmente tu software antivirus durante el proceso, y vuelve a activarlo al finalizar.

### 9.4. Seguir el asistente de instalación

1. Lee las instrucciones del archivo "Read Me" y haz clic en **Continuar**.
2. Lee los Términos de Servicio (TOS) de Anaconda y haz clic en **Continuar**, luego en **Agree** (Aceptar) para aceptar los términos.
3. Selecciona el tipo de instalación:
   - **Just Me (Recommended)** — instala Miniconda para la cuenta de usuario actual únicamente. Esta es la opción recomendada por la documentación oficial.
   - **All Users** — instala Miniconda para todas las cuentas de usuario del equipo (requiere privilegios de administrador de Windows).
4. Haz clic en **Next** (Siguiente) y luego en **Install** (Instalar).

> **Nota oficial de seguridad importante**: desde Anaconda Distribution 2022.05 y Miniconda 4.12.0, la opción de agregar Anaconda a la variable de entorno `PATH` durante una instalación **All Users** fue **deshabilitada**, como medida para abordar una vulnerabilidad de seguridad documentada (CVE-2022-26526). Aún es posible agregar Anaconda al `PATH` durante una instalación **Just Me**.

5. Si instalaste para "All Users" y luego tienes problemas, la documentación recomienda desinstalar Miniconda y reinstalarlo únicamente con la opción "Just Me".

### 9.5. Finalizar

Cuando la instalación finalice, abre desde el menú **Start** ("Inicio") la aplicación **"Anaconda Prompt"** (también disponible la opción de PowerShell). Deberías ver `(base)` al inicio de la línea de comandos, lo que indica que estás dentro del entorno base de conda.

### 9.6. Probar la instalación

```cmd
conda list
```

---

## 10. Instalación en Windows — Anaconda Distribution

### 10.1. Descargar el instalador

Descarga el instalador `.exe` de Anaconda Distribution para Windows desde **anaconda.com/download**.

### 10.2. Verificar el hash (recomendado)

```cmd
CertUtil -hashfile Anaconda3-<version>-Windows-x86_64.exe SHA256
```

### 10.3. Ejecutar el instalador

Haz doble clic en el archivo `.exe` descargado (evita lanzarlo desde la carpeta de "Favoritos"; desactiva temporalmente el antivirus si hay problemas durante la instalación, y reactívalo después).

### 10.4. Seguir el asistente de instalación

El procedimiento es equivalente al de Miniconda (sección 9.4):

1. Acepta los Términos de Servicio (TOS).
2. Elige **Just Me (Recommended)** o **All Users** según tu necesidad (recuerda la limitación de PATH para instalaciones All Users explicada en la sección 9.4).
3. Confirma o cambia la ruta de instalación.
4. Haz clic en **Install**. Dado que Anaconda Distribution es considerablemente más grande que Miniconda, este paso puede tardar varios minutos.

### 10.5. Finalizar

Al completarse la instalación, busca **"Anaconda Prompt"** en la barra de búsqueda del menú **Start** y selecciónalo. Verás `(base)` al inicio de la línea de comandos.

Anaconda Navigator se instala automáticamente junto con Anaconda Distribution en Windows; puedes buscarlo también desde el menú Start como **"Anaconda Navigator"**.

### 10.6. Probar la instalación

```cmd
conda list
conda --version
```

---

## 11. Instalación en modo silencioso (avanzado)

La documentación oficial cubre instalación silenciosa para automatización, pruebas, o despliegue (por ejemplo en GitHub Actions u otros sistemas de construcción), aplicable tanto a Miniconda como a Anaconda Distribution.

### 11.1. Modo silencioso en Linux (Kubuntu y Arch)

Se especifican los argumentos `-b` y `-p` del instalador bash:

- `-b`: modo *batch*, sin modificar scripts de shell (`.bashrc`, `.zshrc`, etc.). Asume que aceptas el acuerdo de licencia.
- `-p`: ruta de instalación.

```bash
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh
bash ~/miniconda.sh -b -p $HOME/miniconda
```

Tras la instalación silenciosa, para inicializar conda manualmente:

```bash
source <ruta-de-instalación>/bin/activate
conda init --all
```

### 11.2. Modo silencioso en Windows

Se usa el argumento `/S`, con argumentos opcionales adicionales (todos sensibles a mayúsculas/minúsculas):

- `/InstallationType=[JustMe|AllUsers]` — por defecto `JustMe`.
- `/AddToPath=[0|1]` — por defecto `0`.
- `/RegisterPython=[0|1]` — si se registra como el Python por defecto del sistema.
- `/S` — instala en modo silencioso.
- `/D=<ruta de instalación>` — debe ser el último argumento, sin comillas; obligatorio si se usa `/S`.

Ejemplo oficial, instalando Miniconda para el usuario actual sin registrar Python como el predeterminado del sistema:

```cmd
start /wait "" Miniconda3-latest-Windows-x86_64.exe /InstallationType=JustMe /RegisterPython=0 /S /D=%UserProfile%\Miniconda3
```

---

## 12. Verificación final de la instalación

Independientemente del sistema operativo o de si instalaste Miniconda o Anaconda, estos comandos confirman que la instalación fue exitosa:

```bash
conda --version
conda list
conda info
```

- `conda --version` muestra la versión instalada de conda.
- `conda list` muestra los paquetes instalados en el entorno actualmente activo (por defecto, `base`).
- `conda info` muestra información detallada del sistema conda: rutas de instalación, canales configurados, versión de Python base, plataforma, entre otros.

En la línea de comandos, deberías ver el prefijo `(base)` antes del prompt habitual, indicando que el entorno base de conda está activo.

---

## 13. Desinstalación en Kubuntu / Ubuntu

Según la documentación oficial de conda para Linux:

### 13.1. Eliminar el directorio de instalación

```bash
rm -rf ~/miniconda3   # o la ruta donde hayas instalado Miniconda/Anaconda
```

(la ruta puede variar según lo que hayas indicado durante la instalación, por ejemplo `~/anaconda3` para Anaconda Distribution).

### 13.2. (Opcional) Revertir cambios en los scripts de inicialización de shell

```bash
conda init --reverse --all
```

### 13.3. (Opcional) Eliminar archivos y carpetas ocultos asociados

```bash
rm -rf ~/.condarc ~/.conda ~/.continuum
```

---

## 14. Desinstalación en Arch Linux

### 14.1. Si instalaste manualmente (script oficial, fuera de AUR)

El procedimiento es idéntico al de Kubuntu/Ubuntu (sección 13), ya que en ambos casos se trata del mismo instalador oficial de conda:

```bash
rm -rf ~/miniconda3   # o la ruta de instalación que hayas usado
conda init --reverse --all
rm -rf ~/.condarc ~/.conda ~/.continuum
```

### 14.2. Si instalaste vía AUR (`miniconda3` o `anaconda`)

Usa tu ayudante de AUR habitual para desinstalar el paquete, igual que con cualquier paquete de pacman/AUR:

```bash
yay -Rns miniconda3
# o
yay -Rns anaconda
```

Esto elimina el paquete gestionado por pacman, pero **no elimina automáticamente** la línea de activación de conda que hayas agregado manualmente a `~/.bashrc` o `~/.zshrc` (ver sección 7.1); revisa y elimina esa línea manualmente si ya no usarás conda en el sistema.

---

## 15. Desinstalación en Windows

Según la documentación oficial de conda para Windows:

1. Abre el **Panel de Control** de Windows.
2. Haz clic en **Agregar o quitar programas** (*Add or Remove Program*).
3. Selecciona **"Python X.X (Miniconda)"** (donde X.X es tu versión de Python), o el nombre correspondiente si instalaste Anaconda Distribution.
4. Haz clic en **Quitar programa** (*Remove Program*).

> **Nota oficial**: el proceso de eliminar un programa varía ligeramente en Windows 10 respecto a versiones anteriores; sigue el flujo estándar de desinstalación de aplicaciones de tu versión específica de Windows.

---

## 16. Solución de problemas comunes de instalación

### 16.1. El comando `conda` no se reconoce tras instalar (Linux)

Asegúrate de haber cerrado y vuelto a abrir la terminal después de la instalación, para que los cambios en `~/.bashrc`/`~/.zshrc` surtan efecto. Si instalaste vía AUR en Arch, recuerda que la activación de conda **no** es automática (ver sección 7.1): debes agregar manualmente la línea de `source` correspondiente a tu archivo de configuración de shell.

### 16.2. Error de OpenSSL / `cryptography` al ejecutar `conda` (reportado específicamente en Arch Linux)

Es un problema documentado en los comentarios oficiales del paquete `miniconda3` en AUR, relacionado con la versión de OpenSSL del sistema y el "legacy provider" de la librería `cryptography`. La solución reportada por la comunidad es exportar la siguiente variable de entorno (por ejemplo, agregándola a `/etc/profile.d/conda.sh` o a tu `~/.zshrc`):

```bash
export CRYPTOGRAPHY_OPENSSL_NO_LEGACY='1'
```

### 16.3. Falla la actualización del paquete `miniconda3` de AUR

Reportado en los comentarios oficiales del paquete: si una actualización vía AUR falla a mitad de proceso, purgar los remanentes de la instalación fallida y volver a intentar (o, si es urgente, reinstalar la versión previa que funcionaba) suele resolver el problema. Recuerda también el procedimiento de la sección 7.3 (comentar la línea de activación de conda antes de actualizar).

### 16.4. Anaconda Navigator no abre o muestra errores gráficos (Linux)

Revisa la sección 6.5 (Kubuntu) o 8.4 (Arch) sobre dependencias de sistema para interfaces gráficas (OpenGL, X11/XCB, ALSA). Esto es más probable en instalaciones minimalistas o entornos sin un entorno de escritorio completo.

### 16.5. Errores de permisos al instalar en `/opt` (Arch, vía AUR)

Como se discute en los foros oficiales de Arch Linux (sección 8.2), instalar en `/opt` requiere privilegios de root, lo cual puede generar fricciones de permisos al gestionar entornos conda posteriormente como usuario normal. La alternativa documentada por la comunidad es instalar manualmente el script oficial directamente en tu `$HOME`, evitando `/opt` por completo.

### 16.6. Quiero usar conda con `fish shell`, no `zsh`/`bash`

Aunque tu configuración habitual usa `zsh`, si en algún momento necesitas integrarlo con `fish` (documentación oficial de conda para Linux):

```fish
fish_add_path <ruta-de-instalación-conda>/condabin
conda init fish
```

---

## 17. Referencias oficiales

- **Documentación oficial de conda — Instalación (índice)**: https://docs.conda.io/projects/conda/en/stable/user-guide/install/index.html
- **Documentación oficial de conda — Instalación en Linux**: https://docs.conda.io/projects/conda/en/stable/user-guide/install/linux.html
- **Documentación oficial de conda — Instalación en Windows**: https://docs.conda.io/projects/conda/en/stable/user-guide/install/windows.html
- **Documentación oficial de conda — Instalación en macOS** (referencia para instalación silenciosa): https://docs.conda.io/projects/conda/en/stable/user-guide/install/macos.html
- **Anaconda — Página de descargas (Miniconda y Anaconda Distribution)**: https://www.anaconda.com/download
- **Anaconda — Documentación oficial: instalación de Miniconda**: https://www.anaconda.com/docs/getting-started/miniconda/main
- **Anaconda — Documentación oficial: instalación de Anaconda Distribution en Linux**: https://www.anaconda.com/docs/getting-started/anaconda/install/linux-install
- **Anaconda — Archivo de instaladores y hashes de Miniconda**: https://repo.anaconda.com/miniconda
- **Anaconda — Archivo de instaladores de Anaconda Distribution**: https://repo.anaconda.com/archive
- **ArchWiki — Conda (oficial)**: https://wiki.archlinux.org/title/Conda
- **AUR — Paquete `miniconda3`**: https://aur.archlinux.org/packages/miniconda3
- **AUR — Paquete `anaconda`**: https://aur.archlinux.org/packages/anaconda
- **AUR — Paquete `python-conda`**: https://aur.archlinux.org/packages/python-conda
- **Foros oficiales de Arch Linux — Discusión sobre instalación de Anaconda**: https://bbs.archlinux.org/viewtopic.php?id=249731


---

**Edison Achalma**
Economista — Universidad Nacional de San Cristóbal de Huamanga (UNSCH)
Ayacucho, Perú
ORCID: [0000-0001-6996-3364](https://orcid.org/0000-0001-6996-3364)

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

