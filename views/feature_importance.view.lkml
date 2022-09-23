view: feature_importance {
  sql_table_name: `probable-summer-238718.bqmlga4_noisesite.feature_importance`
      ;;

  dimension: timestamp {
    type: date
    datatype:  date
    sql: CAST(${TABLE}.timestamp AS DATE) ;;
  }

  dimension: feature {
    type: string
    sql: ${TABLE}.feature ;;
  }

  dimension: importance_weight {
    type: string
    sql: ${TABLE}.importance_weight ;;
  }

  dimension: importance_gain {
    type: string
    sql: ${TABLE}.importance_gain ;;
  }

  dimension: importance_cover {
    type: string
    sql: ${TABLE}.importance_cover ;;
  }

 }
