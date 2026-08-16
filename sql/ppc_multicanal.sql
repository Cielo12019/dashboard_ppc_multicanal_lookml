-- Reemplazar por la consulta real que alimenta el dashboard.
-- Columnas mínimas esperadas:
-- fecha
-- fuente
-- tipo_campania
-- nombre_campania
-- inversion
-- impresiones
-- clics
-- cantidad_campanias

SELECT
  fecha,
  fuente,
  tipo_campania,
  nombre_campania,
  inversion,
  impresiones,
  clics,
  cantidad_campanias
FROM `PROJECT.DATASET.PPC_MULTICANAL`;
