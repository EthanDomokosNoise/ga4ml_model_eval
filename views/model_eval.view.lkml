view: model_eval {
  sql_table_name: `probable-summer-238718.bqmlga4_noisesite.model_eval`
    ;;

  dimension: accuracy {
    type: number
    sql: ${TABLE}.accuracy ;;
  }

  dimension: f1_score {
    type: number
    sql: ${TABLE}.f1_score ;;
  }

  dimension: log_loss {
    type: number
    sql: ${TABLE}.log_loss ;;
  }

  dimension: modelname {
    type: string
    sql: ${TABLE}.modelname ;;
  }

  dimension: precision {
    type: number
    sql: ${TABLE}.precision ;;
  }

  dimension: recall {
    type: number
    sql: ${TABLE}.recall ;;
  }

  dimension: roc_auc {
    type: number
    sql: ${TABLE}.roc_auc ;;
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
    drill_fields: [modelname]
  }
}
