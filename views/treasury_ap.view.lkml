view: treasury_account_payables {
  sql_table_name: `poc-looker-dla-msi.SMIG.TREASURY_AP`
    ;;

  measure: amount {
    type: sum
    sql: ${TABLE}.Amount ;;
  }

  measure: amount_in_lc {
    type: sum
    sql: ${TABLE}.AmountInLC ;;
  }

  dimension: account_payable_status {
    type: string
    sql: ${TABLE}.APStatus ;;
  }

  dimension: belnr {
    type: number
    sql: ${TABLE}.BELNR ;;
  }

  dimension: bil_no {
    type: number
    sql: ${TABLE}.BIL_NO ;;
  }

  dimension: company_code {
    type: string
    sql: to_string(${TABLE}.CompanyCode) ;;
  }

  dimension: company_name {
    type: string
    sql: if(${TABLE}.CompanyName = null, ${company_code}, ${TABLE}.CompanyName)  ;;
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
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
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
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.EnteredOnDate ;;
  }

  #dimension: lifnr {
  #  type: number
  #  sql: ${TABLE}.LIFNR ;;
  #}


  dimension: local_currency {
    type: string
    sql: ${TABLE}.LocalCurrency ;;
  }

  #dimension: name1 {
  #  type: string
  #  sql: ${TABLE}.NAME1 ;;
  #}

  dimension: vendor_name {
    type: string
    sql:IF(${TABLE}.NAME1 = NULL, ${TABLE}.VendorID , ${TABLE}.NAME1);;
  }

  dimension: period_year {
    type: number
    sql: ${TABLE}.PeriodYear ;;
  }

  dimension_group: posting {
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
    type: number
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
    drill_fields: [company_name]
  }
}
