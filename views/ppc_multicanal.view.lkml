view: ppc_multicanal {
  sql_table_name: `PROJECT.DATASET.PPC_MULTICANAL` ;;

  dimension: fecha {
    type: date
    sql: ${TABLE}.fecha ;;
  }

  dimension: fuente {
    type: string
    sql: ${TABLE}.fuente ;;
  }

  dimension: tipo_campania {
    type: string
    sql: ${TABLE}.tipo_campania ;;
  }

  dimension: nombre_campania {
    type: string
    sql: ${TABLE}.nombre_campania ;;
  }

  dimension: inversion {
    type: number
    value_format_name: decimal_2
    sql: ${TABLE}.inversion ;;
  }

  dimension: impresiones {
    type: number
    sql: ${TABLE}.impresiones ;;
  }

  dimension: clics {
    type: number
    sql: ${TABLE}.clics ;;
  }

  dimension: cantidad_campanias {
    type: number
    sql: ${TABLE}.cantidad_campanias ;;
  }

  dimension: record_count {
    type: number
    hidden: yes
    sql: 1 ;;
  }

  measure: total_inversion {
    type: sum
    value_format_name: decimal_2
    sql: ${inversion} ;;
    label: "Inversión"
  }

  measure: total_impresiones {
    type: sum
    sql: ${impresiones} ;;
    label: "Impresiones"
  }

  measure: total_clics {
    type: sum
    sql: ${clics} ;;
    label: "Clics"
  }

  measure: cantidad_campanias_total {
    type: sum
    sql: ${cantidad_campanias} ;;
    label: "Cantidad de campañas"
  }

  measure: record_count_total {
    type: count
    label: "Record Count"
  }

  measure: ctr {
    type: number
    value_format: "0.00%"
    sql: SAFE_DIVIDE(${total_clics}, ${total_impresiones}) ;;
    label: "CTR"
  }

  measure: cpm {
    type: number
    value_format_name: decimal_2
    sql: SAFE_DIVIDE(${total_inversion} * 1000, ${total_impresiones}) ;;
    label: "CPM"
  }

  measure: cpc {
    type: number
    value_format_name: decimal_2
    sql: SAFE_DIVIDE(${total_inversion}, ${total_clics}) ;;
    label: "CPC"
  }
}
