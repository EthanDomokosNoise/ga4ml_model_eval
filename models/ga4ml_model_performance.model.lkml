connection: "ga4ml_model_performance"

datagroup: ga4ml_model_performance_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ga4ml_model_performance_default_datagroup
