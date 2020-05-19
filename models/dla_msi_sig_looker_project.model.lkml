connection: "bigquery_semen_indonesia"

# include all the views
include: "/views/**/*.view"

datagroup: dla_msi_sig_looker_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: dla_msi_sig_looker_project_default_datagroup

explore: copa {}

explore: production_semen_gresik {}

explore: production_semen_indonesia {}

explore: production_semen_padang {}

explore: production_semen_tonasa {}

explore: production_thanglong_cement_jsc {}
