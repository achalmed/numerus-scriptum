---
documentmode: doc
copyrightnotice: 2020
copyrightext: All rights reserved
title: Instalación y Configuración de Miniconda
abstract: Este abstract será actualizado una vez que se complete el contenido final
  del artículo.
keywords:
- keyword1
- keyword2
categories:
- Python
tags:
- anaconda
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

# ¿Qué es Anaconda?

Anaconda es una plataforma de gestión de paquetes y entornos virtuales diseñada para facilitar el desarrollo en Python y otros lenguajes de programación populares. Imagina que tienes una caja de herramientas repleta de todo lo que necesitas para construir aplicaciones, analizar datos o desarrollar proyectos de aprendizaje automático. Esa es Anaconda: una caja de herramientas poderosa y completa que te brinda todo lo que necesitas para trabajar con Python de manera eficiente.

Esta guía está diseñada específicamente para mi flujo de trabajo como economista que:

- Mantiene múltiples blogs académicos (epsilon-y-beta, axiomata, methodica, etc.)
- Desarrolla scripts de automatización en Python
- Trabaja con análisis econométrico y ciencia de datos
- Usa Quarto para publicaciones académicas
- Necesita entornos reproducibles para colaboración


# Por Qué Miniconda en Lugar de Anaconda

## Comparación

| Característica | Miniconda | Anaconda Distribution |
|----------------|-----------|----------------------|
| Tamaño inicial | ~50 MB | ~3-5 GB |
| Paquetes preinstalados | Mínimos (conda, Python, pip) | 250+ paquetes |
| Control total | Sí | Limitado |
| Velocidad de instalación | Rápida | Lenta |
| Ideal para | Usuarios avanzados, servidores | Principiantes |

## Ventajas

1. **Control Total:** Instalas solo lo que necesitas para cada proyecto
2. **Múltiples Entornos:** Ideal para tus 10+ blogs con dependencias diferentes
3. **Reproducibilidad:** Archivos `environment.yml` más pequeños y claros
4. **Velocidad:** Con Mamba, la resolución de dependencias es ultrarrápida
5. **Integración con Sistema:** Usa Quarto y R del sistema (pacman), Python de conda

# Preparación del Sistema

## 1. Verificar Instalaciones Existentes

```bash
# Verificar si conda ya está instalado
which conda

# Verificar versión (si existe)
conda --version

# Verificar entornos existentes
conda env list
```

## 2. Desinstalar Instalaciones Previas (Si Es Necesario)

**Si tienes Anaconda o Miniconda antiguo:**

```bash
# Desactivar entorno base
conda deactivate

# Eliminar directorio de instalación
rm -rf ~/miniconda3
# O si instalaste Anaconda:
rm -rf ~/anaconda3

# Limpiar configuraciones (OPCIONAL - solo si quieres empezar de cero)
rm -rf ~/.conda
rm -f ~/.condarc

# Limpiar inicialización de shells
# Fish
nano ~/.config/fish/config.fish  # Eliminar bloque conda initialize

# Bash
nano ~/.bashrc  # Eliminar bloque conda initialize

# Zsh
nano ~/.zshrc  # Eliminar bloque conda initialize
```

## 3. Verificar Herramientas del Sistema

```bash
# Verificar Quarto (debe estar instalado)
quarto --version

# Verificar R (debe estar instalado)
R --version

# Verificar LaTeX (para PDFs en Quarto)
pdflatex --version

# Si falta algo, instalar con pacman
sudo pacman -S quarto r texlive-most
```

# Instalación de Miniconda

## Método 1: Instalación Rápida (Recomendado)

```bash
# 1. Crear directorio temporal
mkdir -p ~/miniconda3

# 2. Descargar instalador (x86_64 para Arch Linux estándar)
curl https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh \
  -o ~/miniconda3/miniconda.sh

# 3. Verificar integridad (RECOMENDADO)
sha256sum ~/miniconda3/miniconda.sh
# Comparar con el hash oficial en https://repo.anaconda.com/miniconda/

# 4. Ejecutar instalador
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3

# 5. Eliminar instalador
rm ~/miniconda3/miniconda.sh
```

**opciones:**

- `-b`: Modo batch (sin prompts interactivos)
- `-u`: Actualizar instalación existente si la hay
- `-p ~/miniconda3`: Ruta de instalación

## Método 2: Instalación Interactiva

```bash
# 1. Descargar instalador
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

# 2. Ejecutar instalador interactivo
bash Miniconda3-latest-Linux-x86_64.sh

# Seguir instrucciones:
# - Aceptar licencia: yes
# - Ubicación: /home/achalmaedison/miniconda3 (default)
# - Inicializar conda: yes (IMPORTANTE)

# 3. Eliminar instalador
rm Miniconda3-latest-Linux-x86_64.sh
```

# Configuración Inicial

## 1. Inicializar Conda para Todos los Shells

```bash
# Activar conda temporalmente
source ~/miniconda3/bin/activate

# Inicializar para todos los shells disponibles
conda init --all

# Resultado: Modifica automáticamente:
# - ~/.bashrc (Bash)
# - ~/.zshrc (Zsh)
# - ~/.config/fish/config.fish (Fish)
```

## 2. Recargar Shell

```bash
# Fish
exec fish

# Bash
source ~/.bashrc

# Zsh
source ~/.zshrc
```

**Verificación:** Deberías ver `(base)` al inicio de tu prompt.

## 3. Desactivar Auto-Activación de Base (RECOMENDADO)

```bash
# Evitar que base se active automáticamente
conda config --set auto_activate_base false

# Recargar shell
exec fish  # o source ~/.bashrc / source ~/.zshrc
```

**Razón:** Es mejor práctica activar entornos específicos manualmente.


# Instalación de Mamba

Mamba es un solver ultrarrápido para conda que acelera la instalación de paquetes hasta 10x.

## 1. Instalar Mamba en el Entorno Base

```bash
# Activar base
conda activate base

# Instalar mamba desde conda-forge
conda install mamba -c conda-forge -y

# Configurar mamba como solver por defecto
conda config --set solver libmamba
```

## 2. Verificar Instalación

```bash
# Verificar versión
mamba --version

# Debería mostrar algo como: mamba 1.5.x
```

# Configuración de Fish Shell

## 1. Inicialización Automática

**Conda ya debería haber configurado Fish automáticamente.** Verificar:

```fish
# Abrir configuración de Fish
nano ~/.config/fish/config.fish
```

**Debe contener algo como:**

```fish
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/achalmaedison/miniconda3/bin/conda
    eval /home/achalmaedison/miniconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/achalmaedison/miniconda3/etc/fish/conf.d/conda.fish"
        . "/home/achalmaedison/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/achalmaedison/miniconda3/bin" $PATH
    end
end
# <<< conda initialize <<<
```

## 2. Agregar Alias Útiles

```fish
# Editar configuración de Fish
nano ~/.config/fish/config.fish
```

**Agregar al final:**

```fish
# ========================================================================
# ALIASES DE CONDA Y PROYECTOS
# ========================================================================

# Gestión de entornos
alias ce="conda env list"
alias ca="conda activate"
alias cda="conda deactivate"

# Blogs
alias blog="conda activate econblog && cd ~/Proyectos/epsilon-y-beta"
alias blogoff="conda deactivate"

# Scripts
alias scripts="conda activate scripts-env && cd ~/Proyectos/scripts"
alias scriptsoff="conda deactivate"

# Limpieza
alias conda-clean="conda clean --all -y"

# Actualización
alias conda-update="conda update -n base conda -y && mamba update --all -y"
```

**Recargar configuración:**

```fish
source ~/.config/fish/config.fish
```

## 3. Configuración para Bash/Zsh (Opcional)

**Si también usas Bash o Zsh:**

```bash
# Bash: ~/.bashrc
# Zsh: ~/.zshrc

# Agregar aliases
alias ce="conda env list"
alias ca="conda activate"
alias cda="conda deactivate"
alias blog="conda activate econblog && cd ~/Proyectos/epsilon-y-beta"
alias scripts="conda activate scripts-env && cd ~/Proyectos/scripts"
alias conda-clean="conda clean --all -y"
alias conda-update="conda update -n base conda -y && mamba update --all -y"
```

# Configuración Óptima de Conda

## 1. Crear Archivo de Configuración

```bash
# El archivo ~/.condarc almacena la configuración global de conda
nano ~/.condarc
```

## 2. Mi Configuración

```yaml
# ========================================================================
# CONFIGURACIÓN GLOBAL DE CONDA
# Usuario: Edison Achalma (achalmaedison)
# Sistema: Arch Linux
# Fecha: Enero 2026
# ========================================================================

# ------------------------------------------------------------------------
# Canales (Prioridad de búsqueda de paquetes)
# ------------------------------------------------------------------------
channels:
  - conda-forge        # Canal principal (comunidad, actualizado)
  - defaults           # Canal oficial de Anaconda

# Prioridad estricta (usar en orden de la lista)
channel_priority: strict

# ------------------------------------------------------------------------
# Solver (Motor de resolución de dependencias)
# ------------------------------------------------------------------------
solver: libmamba      # Usar mamba (mucho más rápido que classic)

# ------------------------------------------------------------------------
# Activación Automática
# ------------------------------------------------------------------------
auto_activate_base: false   # NO activar base automáticamente

# ------------------------------------------------------------------------
# Notificaciones y Actualizaciones
# ------------------------------------------------------------------------
auto_update_conda: false    # NO actualizar conda automáticamente
notify_outdated_conda: true # Notificar si hay nueva versión

# ------------------------------------------------------------------------
# Gestión de Paquetes
# ------------------------------------------------------------------------
pip_interop_enabled: true   # Permitir interoperabilidad con pip
always_yes: false           # Pedir confirmación antes de instalar

# ------------------------------------------------------------------------
# Almacenamiento
# ------------------------------------------------------------------------
pkgs_dirs:
  - ~/.conda/pkgs           # Directorio de caché de paquetes

envs_dirs:
  - ~/miniconda3/envs       # Directorio de entornos
  - ~/.conda/envs           # Directorio adicional de entornos

# ------------------------------------------------------------------------
# Interfaz de Usuario
# ------------------------------------------------------------------------
show_channel_urls: true     # Mostrar URL del canal en listados
json: false                 # Salida en texto (no JSON)
quiet: false                # Mostrar mensajes normales

# ------------------------------------------------------------------------
# Seguridad
# ------------------------------------------------------------------------
ssl_verify: true            # Verificar certificados SSL

# ------------------------------------------------------------------------
# Proxy (Descomentar si usas proxy corporativo)
# ------------------------------------------------------------------------
# proxy_servers:
#   http: http://proxy.empresa.com:8080
#   https: https://proxy.empresa.com:8080
```

## 3. Verificar Configuración

```bash
# Ver configuración actual
conda config --show

# Ver solo configuraciones modificadas
conda config --show-sources
```

# Integración con Herramientas del Sistema

## 1. Usar Quarto del Sistema (No de Conda)

**Ventaja:** Quarto de pacman es más estable y actualizado.

```bash
# Verificar que Quarto está en PATH del sistema
which quarto
# Debe mostrar: /usr/bin/quarto

# Verificar versión
quarto --version
```

**En entornos conda, Quarto del sistema se usará automáticamente.**

## 2. Usar R del Sistema (No de Conda)

**Ventaja:** RStudio funciona mejor con R de pacman.

```bash
# Verificar R del sistema
which R
# Debe mostrar: /usr/bin/R

# Verificar versión
R --version
```

**R del sistema estará disponible en todos los entornos conda.**

## 3. Usar LaTeX del Sistema

```bash
# Verificar LaTeX
which pdflatex
# Debe mostrar: /usr/bin/pdflatex

# Verificar distribución
pdflatex --version
```

# Verificación de la Instalación

## 1. Verificación Básica

```bash
# Versión de conda
conda --version

# Versión de mamba
mamba --version

# Versión de Python (en base)
python --version

# Información del sistema
conda info
```

## 2. Verificación de Configuración

```bash
# Ver configuración
conda config --show

# Ver canales
conda config --show channels

# Ver solver
conda config --show solver
```

## 3. Prueba de Funcionamiento

```bash
# Crear entorno de prueba
mamba create -n test-env python=3.12 pandas -y

# Activar entorno
conda activate test-env

# Verificar instalación
python -c "import pandas; print(f'Pandas {pandas.__version__} funcionando correctamente')"

# Desactivar
conda deactivate

# Eliminar entorno de prueba
conda env remove -n test-env -y
```

---

# Resolución de Problemas

## Problema 1: "conda: command not found"

**Causa:** Conda no está inicializado en tu shell.

**Solución:**

```bash
# Inicializar manualmente
source ~/miniconda3/bin/activate
conda init fish  # o bash / zsh

# Recargar shell
exec fish
```

## Problema 2: "(base) No Aparece en el Prompt"

**Causa:** `auto_activate_base` está en `false`.

**Solución (si quieres que aparezca):**

```bash
conda config --set auto_activate_base true
exec fish
```

**O activar manualmente:**

```bash
conda activate base
```

## Problema 3: "Mamba No Funciona"

**Causa:** Mamba no está instalado o no está en PATH.

**Solución:**

```bash
# Verificar instalación
conda activate base
conda list | grep mamba

# Si no está, instalar
conda install mamba -c conda-forge -y

# Configurar como solver
conda config --set solver libmamba
```

## Problema 4: "Instalación de Paquetes es Muy Lenta"

**Causa:** Usando solver clásico en lugar de mamba.

**Solución:**

```bash
# Configurar mamba como solver
conda config --set solver libmamba

# O usar mamba directamente
mamba install paquete-nombre
```

## Problema 5: "Conflictos de Dependencias"

**Causa:** Paquetes incompatibles en el mismo entorno.

**Solución:**

```bash
# Opción 1: Usar mamba (mejor resolución)
mamba install paquete-nombre

# Opción 2: Crear entorno nuevo limpio
mamba create -n nuevo-env python=3.12 paquete-nombre

# Opción 3: Actualizar todos los paquetes
mamba update --all
```

## Problema 6: "Espacio en Disco Lleno"

**Causa:** Caché de paquetes acumulado.

**Solución:**

```bash
# Limpiar caché de paquetes
conda clean --all -y

# Ver espacio usado
du -sh ~/.conda/pkgs

# Eliminar entornos no usados
conda env list
conda env remove -n nombre-entorno-viejo
```

## Problema 7: "Fish No Reconoce Conda"

**Causa:** Inicialización incorrecta de Fish.

**Solución:**

```bash
# Verificar bloque de inicialización
cat ~/.config/fish/config.fish | grep conda

# Si no existe, agregar manualmente
nano ~/.config/fish/config.fish
```

**Agregar:**

```fish
# >>> conda initialize >>>
eval /home/achalmaedison/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<
```

**Recargar:**

```fish
exec fish
```

---

# Comandos de Referencia Rápida

## Gestión de Conda

```bash
# Actualizar conda
conda update -n base conda -y

# Actualizar mamba
mamba update mamba -y

# Información del sistema
conda info

# Ver configuración
conda config --show

# Limpiar caché
conda clean --all -y
```

## Gestión de Entornos

```bash
# Listar entornos
conda env list

# Crear entorno
mamba create -n nombre-env python=3.12 paquete1 paquete2 -y

# Activar entorno
conda activate nombre-env

# Desactivar entorno
conda deactivate

# Eliminar entorno
conda env remove -n nombre-env -y

# Exportar entorno
conda env export --no-builds > environment.yml

# Crear desde archivo
conda env create -f environment.yml
```

## Gestión de Paquetes

```bash
# Listar paquetes (entorno activo)
conda list

# Buscar paquete
conda search nombre-paquete

# Instalar paquete
mamba install nombre-paquete -y

# Instalar desde canal específico
mamba install -c conda-forge nombre-paquete -y

# Instalar versión específica
mamba install nombre-paquete=1.2.3 -y

# Actualizar paquete
mamba update nombre-paquete -y

# Actualizar todos los paquetes
mamba update --all -y

# Desinstalar paquete
conda remove nombre-paquete -y
```

## Uso con Pip

```bash
# Instalar con pip (dentro de entorno conda)
pip install nombre-paquete

# Listar paquetes pip
pip list

# Actualizar paquete pip
pip install --upgrade nombre-paquete

# Desinstalar paquete pip
pip uninstall nombre-paquete
```

## Información y Debugging

```bash
# Información de entorno activo
conda info --envs

# Información de paquete específico
conda list nombre-paquete

# Ver dependencias de paquete
conda search nombre-paquete --info

# Verificar integridad de entorno
conda doctor

# Modo verbose (más información)
conda install --debug nombre-paquete
```

# Recursos Adicionales

**Documentación Oficial:**

- Conda: https://docs.conda.io/
- Mamba: https://mamba.readthedocs.io/
- Conda-Forge: https://conda-forge.org/

**Comunidad:**

- Conda Discourse: https://conda.discourse.group/
- GitHub Issues: https://github.com/conda/conda/issues



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

