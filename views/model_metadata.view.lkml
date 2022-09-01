view: model_metadata {
  sql_table_name: `probable-summer-238718.bqmlga4_noisesite.model_metadata`
    ;;

  dimension: last_retrain {
    type: date
    datatype:  date
    sql: CAST(${TABLE}.last_retrain AS DATE) ;;
  }

  dimension: model_name {
    type: string
    sql: ${TABLE}.model_name ;;
  }

  measure: count {
    type: count
    drill_fields: [model_name]
  }
}
