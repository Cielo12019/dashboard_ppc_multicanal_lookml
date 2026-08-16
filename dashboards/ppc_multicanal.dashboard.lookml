- dashboard: ppc_multicanal
  title: "Dashboard PPC Multicanal"
  layout: newspaper

  filters:
    - name: ppc_multicanal.fecha
      title: "Fecha"
    - name: ppc_multicanal.fuente
      title: "Fuente"
    - name: ppc_multicanal.tipo_campania
      title: "Tipo de campaña"
    - name: ppc_multicanal.nombre_campania
      title: "Nombre de campaña"

  elements:

    - title: "Inversión"
      name: kpi_inversion
      type: single_value
      model: ppc_multicanal
      explore: ppc_multicanal
      fields: [ppc_multicanal.total_inversion]

    - title: "Impresiones"
      name: kpi_impresiones
      type: single_value
      model: ppc_multicanal
      explore: ppc_multicanal
      fields: [ppc_multicanal.total_impresiones]

    - title: "Clics"
      name: kpi_clics
      type: single_value
      model: ppc_multicanal
      explore: ppc_multicanal
      fields: [ppc_multicanal.total_clics]

    - title: "Cantidad de campañas"
      name: kpi_campanias
      type: single_value
      model: ppc_multicanal
      explore: ppc_multicanal
      fields: [ppc_multicanal.cantidad_campanias_total]

    - title: "CTR"
      name: kpi_ctr
      type: single_value
      model: ppc_multicanal
      explore: ppc_multicanal
      fields: [ppc_multicanal.ctr]

    - title: "CPM"
      name: kpi_cpm
      type: single_value
      model: ppc_multicanal
      explore: ppc_multicanal
      fields: [ppc_multicanal.cpm]

    - title: "Importe gastado por fecha"
      name: gasto_fecha
      type: looker_line
      model: ppc_multicanal
      explore: ppc_multicanal
      fields: [ppc_multicanal.fecha, ppc_multicanal.total_inversion]
      sorts: [ppc_multicanal.fecha asc]

    - title: "Impresiones y clics por fecha"
      name: impresiones_clics_fecha
      type: looker_line
      model: ppc_multicanal
      explore: ppc_multicanal
      fields:
        [ppc_multicanal.fecha, ppc_multicanal.total_impresiones,
         ppc_multicanal.total_clics]
      sorts: [ppc_multicanal.fecha asc]

    - title: "Impresiones y CTR a lo largo del tiempo"
      name: impresiones_ctr
      type: looker_column
      model: ppc_multicanal
      explore: ppc_multicanal
      fields:
        [ppc_multicanal.fecha, ppc_multicanal.total_impresiones,
         ppc_multicanal.ctr]
      sorts: [ppc_multicanal.fecha asc]

    - title: "Rendimiento de los clics a lo largo del tiempo"
      name: rendimiento_clics
      type: looker_column
      model: ppc_multicanal
      explore: ppc_multicanal
      fields:
        [ppc_multicanal.fecha, ppc_multicanal.total_clics,
         ppc_multicanal.cpm]
      sorts: [ppc_multicanal.fecha asc]

    - title: "Clics por fuente"
      name: clics_fuente
      type: looker_pie
      model: ppc_multicanal
      explore: ppc_multicanal
      fields: [ppc_multicanal.fuente, ppc_multicanal.total_clics]

    - title: "Resumen por fuente"
      name: resumen_fuente
      type: looker_grid
      model: ppc_multicanal
      explore: ppc_multicanal
      fields:
        [ppc_multicanal.fuente, ppc_multicanal.total_impresiones,
         ppc_multicanal.total_clics, ppc_multicanal.record_count_total,
         ppc_multicanal.total_inversion, ppc_multicanal.ctr,
         ppc_multicanal.cpm]

    - title: "Importe gastado por fecha y fuente"
      name: gasto_fecha_fuente
      type: looker_column
      model: ppc_multicanal
      explore: ppc_multicanal
      fields:
        [ppc_multicanal.fecha, ppc_multicanal.fuente,
         ppc_multicanal.total_inversion]
      sorts: [ppc_multicanal.fecha asc]

    - title: "Costo por clic (CPC) por fecha y fuente"
      name: cpc_fecha_fuente
      type: looker_column
      model: ppc_multicanal
      explore: ppc_multicanal
      fields:
        [ppc_multicanal.fecha, ppc_multicanal.fuente,
         ppc_multicanal.cpc]
      sorts: [ppc_multicanal.fecha asc]

    - title: "Importe gastado por tipo de campaña"
      name: gasto_tipo_campania
      type: looker_column
      model: ppc_multicanal
      explore: ppc_multicanal
      fields: [ppc_multicanal.tipo_campania, ppc_multicanal.total_inversion]

    - title: "Clics por tipo de campaña"
      name: clics_tipo_campania
      type: looker_bar
      model: ppc_multicanal
      explore: ppc_multicanal
      fields: [ppc_multicanal.tipo_campania, ppc_multicanal.total_clics]

    - title: "CPC por tipo de campaña"
      name: cpc_tipo_campania
      type: looker_bar
      model: ppc_multicanal
      explore: ppc_multicanal
      fields: [ppc_multicanal.tipo_campania, ppc_multicanal.cpc]

    - title: "Detalle de campañas"
      name: detalle_campanias
      type: looker_grid
      model: ppc_multicanal
      explore: ppc_multicanal
      fields:
        [ppc_multicanal.nombre_campania, ppc_multicanal.tipo_campania,
         ppc_multicanal.fuente, ppc_multicanal.total_inversion,
         ppc_multicanal.total_impresiones, ppc_multicanal.total_clics,
         ppc_multicanal.record_count_total, ppc_multicanal.ctr,
         ppc_multicanal.cpm]
