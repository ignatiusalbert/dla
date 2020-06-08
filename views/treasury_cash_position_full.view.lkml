view: treasury_cash_position {
  sql_table_name: `poc-looker-dla-msi.SMIG.TREASURY_CASH_POSITION_FULL`
    ;;

  dimension: account_no {
    type: string
    sql: ${TABLE}.AccountNo ;;
  }

  dimension: accounting_document_no {
    type: string
    sql: ${TABLE}.AccountingDocumentNo ;;
  }

  dimension: cash_position {
    type: string
    sql: ${TABLE}.CashPosition ;;
  }

  dimension: cash_position_full {
    type: string
    sql: ${TABLE}.CashPositionFull ;;
  }

  dimension: company_code {
    type: number
    sql: ${TABLE}.CompanyCode ;;
  }

  measure: credit_value_in_local_currency {
    type: sum
    sql: ${TABLE}.CreditValueInLocalCurrency ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.Currency ;;
  }

  dimension: customer {
    type: number
    sql: ${TABLE}.Customer ;;
  }

  dimension: customer_desc {
    type: string
    sql: ${TABLE}.CustomerDesc ;;
  }

  dimension: debit_credit_note {
    type: string
    sql: ${TABLE}.DebitCreditNote ;;
  }

  measure: debit_value_in_local_currency {
    type: sum
    sql: ${TABLE}.DebitValueInLocalCurrency ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: document_no {
    type: string
    sql: ${TABLE}.DocumentNo ;;
  }

  dimension: document_type {
    type: string
    sql: ${TABLE}.DocumentType ;;
  }

  dimension: period_year {
    type: number
    sql: ${TABLE}.PeriodYear ;;
  }

  dimension_group: posting_date_in_document {
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
    sql: ${TABLE}.PostingDateInDocument ;;
  }

  dimension: posting_key {
    type: number
    sql: ${TABLE}.PostingKey ;;
  }

  dimension: profit_center {
    type: string
    sql: ${TABLE}.ProfitCenter ;;
  }

  dimension: segment {
    type: number
    sql: ${TABLE}.SEGMENT ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.Username ;;
  }

  measure: value_in_local_currency {
    type: sum
    sql: ${TABLE}.ValueInLocaLCurrency ;;
  }

  measure: value_in_original_transaction_currency {
    type: sum
    sql: ${TABLE}.ValueInOriginalTransactionCurrency ;;
  }

  measure: value_in_transaction_currency {
    type: sum
    sql: ${TABLE}.ValueInTransactionCurrency ;;
  }

  dimension: vendor {
    type: number
    sql: ${TABLE}.Vendor ;;
  }

  dimension: vendor_desc {
    type: string
    sql: ${TABLE}.VendorDesc ;;
  }

  measure: count {
    type: count
    drill_fields: [username]
  }
}
