---
tipo: readme
estado: activo
---
# pub_numerus-scriptum/ — Programación y software: blog satélite del hub `04 index` (repo numerus-scriptum, numerus-scriptum.netlify.app)

<!-- GENERADO por `04 index/scripts/pubs.py readme --aplicar` desde `04 index/_pubs/pubs.yml` (2026-09-20); no editar aquí: se regenera desde el hub -->

## Qué es

R, Python, Stata, LaTeX, Quarto, Linux y herramientas para ciencia de datos; una sección por herramienta. Es uno de los 11 blogs satélite de la familia Quarto de Edison Achalma: un sitio Quarto
con repositorio y sitio Netlify propios, incluido como submódulo git en el hub `04 index` (repo
`website-achalma`) bajo `04 index/_pubs/pub_numerus-scriptum/`. El mismo blog tiene tres nombres: carpeta `pub_numerus-scriptum`, repo
GitHub `achalmed/numerus-scriptum` y dominio `numerus-scriptum.netlify.app`; el registro de los tres es `04 index/_pubs/pubs.yml`.

El tema visual (SCSS, JS, extensiones, filtros, `scripts/build-page-css.sh`) **no se edita aquí**: vive en el hub y
llega por `04 index/scripts/sync-theme-pubs.sh`. Lo propio de este blog es `_quarto.yml`, `index.qmd`, `_contenido-*.qmd`,
`assets/img/` y las entradas.

## Uso

```bash
quarto preview                              # vista previa local
quarto render                               # regenera _site/ (freeze: true: el código no se re-ejecuta)
git add -A && git commit -m "post: …"       # confirmar AQUÍ primero…
git push                                    # …al remoto propio (ssh git@github.com:achalmed/numerus-scriptum.git)
cd ../.. && git add _pubs/pub_numerus-scriptum && git commit -m "pubs: numerus-scriptum al último commit"   # y mover el puntero en el hub
```

## Estructura

| carpeta | qué es | entradas |
|---|---|--:|
| `eviews/` | sección temática | 6 |
| `fundamentos-programacion/` | sección temática | 5 |
| `latex/` | sección temática | 6 |
| `matlab/` | sección temática | 11 |
| `ofimatica/` | sección temática | 13 |
| `power-bi/` | sección temática | 7 |
| `python/` | sección temática | 14 |
| `r/` | sección temática | 10 |
| `stata/` | sección temática | 8 |
| `_quarto.yml`, `index.qmd`, `404.qmd`, `_contenido-inicio.qmd`, `_contenido-final.qmd` | configuración y portada propias del blog | |
| `assets/`, `_extensions/`, `_filters/`, `_partials/`, `scripts/` | tema propagado desde el hub (salvo `assets/img/`) | |
| `_site/` | sitio generado por `quarto render`; versionado mientras Netlify lo publique tal cual (D1) | |

80 entradas. Cada entrada es `<sección>/AAAA-MM-DD-slug/index.qmd` con frontmatter apaquarto y fecha ISO;
sus metadatos se editan en masa desde `scripts_quarto_studio` (`metadata_manager`).

## Documentación

Toda la familia se documenta una vez, en el hub: `04 index/README.md` (qué es la familia y cómo se opera),
`04 index/docs/pubs-submodulos.md` (submódulos y flujo de commit), `04 index/docs/publicar-un-post.md` (de
principio a fin), `04 index/docs/despliegue-netlify.md` (cómo publica cada sitio) y `assets/scss/README.md` (el tema).

## Límite honesto

- Este README es el único documento propio del blog y se regenera desde el hub: lo escrito aquí a mano se pierde.
- `_site/` sigue en git: Netlify publica _site/ empujado (sin build); D1 pendiente. `SECURITY.md` es la plantilla de GitHub sin rellenar.
- Licencia: código MPL-2.0 (`LICENSE`), contenido CC-BY-SA-4.0 según `license.qmd` del hub; unificarlas en los 12 sitios es la decisión D9.
