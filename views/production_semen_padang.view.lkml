view: production_semen_padang {
  sql_table_name: `SMIG.PRODUCTION_SEMEN_PADANG`
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

  measure: fm41_jop {
    type: sum
    sql: ${TABLE}.FM41_JOP ;;
  }

  measure: fm41_prod {
    type: sum
    sql: ${TABLE}.FM41_PROD ;;
  }

  measure: fm42_jop {
    type: sum
    sql: ${TABLE}.FM42_JOP ;;
  }

  measure: fm42_prod {
    type: sum
    sql: ${TABLE}.FM42_PROD ;;
  }

  measure: fm51_jop {
    type: sum
    sql: ${TABLE}.FM51_JOP ;;
  }

  measure: fm51_prod {
    type: sum
    sql: ${TABLE}.FM51_PROD ;;
  }

  measure: fm52_jop {
    type: sum
    sql: ${TABLE}.FM52_JOP ;;
  }

  measure: fm52_prod {
    type: sum
    sql: ${TABLE}.FM52_PROD ;;
  }

  measure: fm61_jop {
    type: sum
    sql: ${TABLE}.FM61_JOP ;;
  }

  measure: fm61_prod {
    type: sum
    sql: ${TABLE}.FM61_PROD ;;
  }

  measure: fmdm_jop {
    type: sum
    sql: ${TABLE}.FMDM_JOP ;;
  }

  measure: fmdm_prod {
    type: sum
    sql: ${TABLE}.FMDM_PROD ;;
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

  measure: kl5_jop {
    type: sum
    sql: ${TABLE}.KL5_JOP ;;
  }

  measure: kl5_prod {
    type: sum
    sql: ${TABLE}.KL5_PROD ;;
  }

  measure: kl6_jop {
    type: sum
    sql: ${TABLE}.KL6_JOP ;;
  }

  measure: kl6_prod {
    type: sum
    sql: ${TABLE}.KL6_PROD ;;
  }

  dimension: opco_code {
    type: number
    sql: ${TABLE}.OPCO_CODE ;;
  }

  dimension: opco_name {
    type: string
    sql: ${TABLE}.OPCO_NAME ;;
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

  measure: rm41_jop {
    type: sum
    sql: ${TABLE}.RM41_JOP ;;
  }

  measure: rm41_prod {
    type: sum
    sql: ${TABLE}.RM41_PROD ;;
  }

  measure: rm42_jop {
    type: sum
    sql: ${TABLE}.RM42_JOP ;;
  }

  measure: rm42_prod {
    type: sum
    sql: ${TABLE}.RM42_PROD ;;
  }

  measure: rm51_jop {
    type: sum
    sql: ${TABLE}.RM51_JOP ;;
  }

  measure: rm51_prod {
    type: sum
    sql: ${TABLE}.RM51_PROD ;;
  }

  measure: rm52_jop {
    type: sum
    sql: ${TABLE}.RM52_JOP ;;
  }

  measure: rm52_prod {
    type: sum
    sql: ${TABLE}.RM52_PROD ;;
  }

  measure: rm6_jop {
    type: sum
    sql: ${TABLE}.RM6_JOP ;;
  }

  measure: rm6_prod {
    type: sum
    sql: ${TABLE}.RM6_PROD ;;
  }

  measure: count {
    type: count
    drill_fields: [opco_name]
  }
}
