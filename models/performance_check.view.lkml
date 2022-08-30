view: performance_check {
  sql_table_name: `probable-summer-238718.bqmlga4_noisesite.performance_check`
    ;;

  dimension: check {
    type: string
    sql: ${TABLE}.check ;;
  }

  dimension_group: timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.timestamp ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
