view: production_semen_gresik {
  sql_table_name: `SMIG.PRODUCTION_SEMEN_GRESIK`
    ;;

  dimension_group: date_prod {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DATE_PROD ;;
  }

  measure: fm1_jop {
    type: sum
    sql: ${TABLE}.FM1_JOP ;;
  }

  measure: fm1_prod {
    type: sum
    sql: ${TABLE}.FM1_PROD ;;
  }

  measure: fm2_jop {
    type: sum
    sql: ${TABLE}.FM2_JOP ;;
  }

  measure: fm2_prod {
    type: sum
    sql: ${TABLE}.FM2_PROD ;;
  }

  measure: kl1_jop {
    type: sum
    sql: ${TABLE}.KL1_JOP ;;
  }

  measure: kl1_prod {
    type: sum
    sql: ${TABLE}.KL1_PROD ;;
  }

  dimension: opco_code {
    type: number
    sql: ${TABLE}.OPCO_CODE ;;
  }

  dimension: opco_name {
    type: string
    sql: ${TABLE}.OPCO_NAME ;;
  }

  measure: rm1_jop {
    type: sum
    sql: ${TABLE}.RM1_JOP ;;
  }

  measure: rm1_prod {
    type: sum
    sql: ${TABLE}.RM1_PROD ;;
  }

  measure: count {
    type: count
    drill_fields: [opco_name]
  }
}
