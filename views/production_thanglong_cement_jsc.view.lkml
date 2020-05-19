view: production_thanglong_cement_jsc {
  sql_table_name: `SMIG.PRODUCTION_THANGLONG_CEMENT_JSC`
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

  measure: fmhcm_jop {
    type: sum
    sql: ${TABLE}.FMHCM_JOP ;;
  }

  measure: fmhcm_prod {
    type: sum
    sql: ${TABLE}.FMHCM_PROD ;;
  }

  measure: fmmp_jop {
    type: sum
    sql: ${TABLE}.FMMP_JOP ;;
  }

  measure: fmmp_prod {
    type: sum
    sql: ${TABLE}.FMMP_PROD ;;
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
