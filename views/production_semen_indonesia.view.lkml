view: production_semen_indonesia {
  sql_table_name: `SMIG.PRODUCTION_SEMEN_INDONESIA`
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

  measure: fm3_jop {
    type: sum
    sql: ${TABLE}.FM3_JOP ;;
  }

  measure: fm3_prod {
    type: sum
    sql: ${TABLE}.FM3_PROD ;;
  }

  measure: fm4_jop {
    type: sum
    sql: ${TABLE}.FM4_JOP ;;
  }

  measure: fm4_prod {
    type: sum
    sql: ${TABLE}.FM4_PROD ;;
  }

  measure: fm5_jop {
    type: sum
    sql: ${TABLE}.FM5_JOP ;;
  }

  measure: fm5_prod {
    type: sum
    sql: ${TABLE}.FM5_PROD ;;
  }

  measure: fm6_jop {
    type: sum
    sql: ${TABLE}.FM6_JOP ;;
  }

  measure: fm6_prod {
    type: sum
    sql: ${TABLE}.FM6_PROD ;;
  }

  measure: fm7_jop {
    type: sum
    sql: ${TABLE}.FM7_JOP ;;
  }

  measure: fm7_prod {
    type: sum
    sql: ${TABLE}.FM7_PROD ;;
  }

  measure: fm8_jop {
    type: sum
    sql: ${TABLE}.FM8_JOP ;;
  }

  measure: fm8_prod {
    type: sum
    sql: ${TABLE}.FM8_PROD ;;
  }

  measure: fm9_jop {
    type: sum
    sql: ${TABLE}.FM9_JOP ;;
  }

  measure: fm9_prod {
    type: sum
    sql: ${TABLE}.FM9_PROD ;;
  }

  measure: fma_jop {
    type: sum
    sql: ${TABLE}.FMA_JOP ;;
  }

  measure: fma_prod {
    type: sum
    sql: ${TABLE}.FMA_PROD ;;
  }

  measure: fmb_jop {
    type: sum
    sql: ${TABLE}.FMB_JOP ;;
  }

  measure: fmb_prod {
    type: sum
    sql: ${TABLE}.FMB_PROD ;;
  }

  measure: fmc_jop {
    type: sum
    sql: ${TABLE}.FMC_JOP ;;
  }

  measure: fmc_prod {
    type: sum
    sql: ${TABLE}.FMC_PROD ;;
  }

  measure: fmcgd_jop {
    type: sum
    sql: ${TABLE}.FMCGD_JOP ;;
  }

  measure: fmcgd_prod {
    type: sum
    sql: ${TABLE}.FMCGD_PROD ;;
  }

  measure: kl1_jop {
    type: sum
    sql: ${TABLE}.KL1_JOP ;;
  }

  measure: kl1_prod {
    type: sum
    sql: ${TABLE}.KL1_PROD ;;
  }

  measure: kl2_jop {
    type: sum
    sql: ${TABLE}.KL2_JOP ;;
  }

  measure: kl2_prod {
    type: sum
    sql: ${TABLE}.KL2_PROD ;;
  }

  measure: kl3_jop {
    type: sum
    sql: ${TABLE}.KL3_JOP ;;
  }

  measure: kl3_prod {
    type: sum
    sql: ${TABLE}.KL3_PROD ;;
  }

  measure: kl4_jop {
    type: sum
    sql: ${TABLE}.KL4_JOP ;;
  }

  measure: kl4_prod {
    type: sum
    sql: ${TABLE}.KL4_PROD ;;
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

  measure: rm2_jop {
    type: sum
    sql: ${TABLE}.RM2_JOP ;;
  }

  measure: rm2_prod {
    type: sum
    sql: ${TABLE}.RM2_PROD ;;
  }

  measure: rm3_jop {
    type: sum
    sql: ${TABLE}.RM3_JOP ;;
  }

  measure: rm3_prod {
    type: sum
    sql: ${TABLE}.RM3_PROD ;;
  }

  measure: rm4_jop {
    type: sum
    sql: ${TABLE}.RM4_JOP ;;
  }

  measure: rm4_prod {
    type: sum
    sql: ${TABLE}.RM4_PROD ;;
  }

  measure: count {
    type: count
    drill_fields: [opco_name]
  }
}
