# Dashboard PPC Multicanal — LookML package

Este paquete reconstruye como proyecto LookML la estructura funcional visible en las
capturas proporcionadas del dashboard "Dashboard PPC Multicanal" de Looker Studio.

## Importante
Esto NO es una exportación nativa de Looker Studio. Looker Studio no entrega desde
el enlace público un archivo LookML/LKML editable. Por eso este ZIP contiene una
reconstrucción inicial en LookML basada en las capturas.

## Contenido

- `models/ppc_multicanal.model.lkml` — modelo principal.
- `views/ppc_multicanal.view.lkml` — campos, dimensiones y métricas inferidos.
- `dashboards/ppc_multicanal.dashboard.lookml` — dashboard con las páginas/secciones
  visibles en las capturas.
- `images/` — capturas originales entregadas.
- `sql/` — espacio para la consulta o vista SQL real de origen.
- `manifest.lkml` — configuración básica del proyecto.

## Campos observados

Filtros:
- Fecha
- Fuente
- Tipo de campaña
- Nombre de campaña

Métricas:
- Inversión
- Impresiones
- Clics
- Cantidad de campañas
- CTR
- CPM
- Record Count

Dimensiones:
- Fuente
- Tipo de campaña
- Nombre de campaña
- Fecha

Fuentes/canales visibles:
- Google Ads
- Facebook Ads
- LinkedIn Ads
- Twitter Ads
- TikTok Ads
- Instagram Ads
- Quora Ads
- Bing Ads

## Siguiente paso para dejarlo productivo

Reemplazar la fuente SQL de ejemplo por la tabla/vista real y validar los nombres
y tipos de columnas. Las fórmulas de CTR, CPM y CPC deben contrastarse con la
lógica original del dashboard.
