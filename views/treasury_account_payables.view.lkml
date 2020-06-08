view: treasury_account_payables {
  sql_table_name: `poc-looker-dla-msi.SMIG.TREASURY_ACCOUNT_PAYABLES`
    ;;

  measure: amount {
    type: sum
    sql: ${TABLE}.Amount ;;
  }

  measure: amount_in_lc {
    type: sum
    sql: ${TABLE}.AmountInLC ;;
  }

  dimension: belnr {
    type: string
    sql: ${TABLE}.BELNR ;;
  }

  dimension: bil_no {
    type: number
    sql: ${TABLE}.BIL_NO ;;
  }

  dimension: company_code {
    type: number
    sql: ${TABLE}.CompanyCode ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.Currency ;;
  }

  dimension: datecol {
    type: number
    sql: ${TABLE}.DATECOL ;;
  }

  dimension: document_clearing_no {
    type: number
    sql: ${TABLE}.DocumentClearingNo ;;
  }

  dimension_group: document {
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
    sql: ${TABLE}.DocumentDate ;;
  }

  dimension: document_type {
    type: string
    sql: ${TABLE}.DocumentType ;;
  }

  dimension: due_date {
    type: number
    sql: ${TABLE}.DueDate ;;
  }

  dimension_group: entered_on {
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
    sql: ${TABLE}.EnteredOnDate ;;
  }

  dimension: local_currency {
    type: string
    sql: ${TABLE}.LocalCurrency ;;
  }

  dimension: period_year {
    type: string
    sql: ${TABLE}.PeriodYear ;;
  }

  dimension_group: posting {
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
    sql: ${TABLE}.PostingDate ;;
  }

  dimension: sgtxt {
    type: string
    sql: ${TABLE}.SGTXT ;;
  }

  dimension: tanggal_bayar {
    type: number
    sql: ${TABLE}.TanggalBayar ;;
  }

  dimension: term {
    type: string
    sql: ${TABLE}.Term ;;
  }

  dimension: vendor_id {
    type: string
    sql: ${TABLE}.VendorID ;;
  }

  dimension: zlsch {
    type: string
    sql: ${TABLE}.ZLSCH ;;
  }

  dimension: zlspr {
    type: string
    sql: ${TABLE}.ZLSPR ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
