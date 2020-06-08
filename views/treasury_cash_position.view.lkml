view: treasury_cash_position {
  sql_table_name: `poc-looker-dla-msi.SMIG.TREASURY_CASH_POSITION`
    ;;

  dimension: account_no {
    type: number
    sql: ${TABLE}.AccountNo ;;
  }

  dimension: accounting_document_no {
    type: number
    sql: ${TABLE}.AccountingDocumentNo ;;
  }

  dimension: company_code {
    type: number
    sql: ${TABLE}.CompanyCode ;;
  }

  dimension: credit_value_in_local_currency {
    type: number
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

  dimension: debit_value_in_local_currency {
    type: number
    sql: ${TABLE}.DebitValueInLocalCurrency ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: document_no {
    type: number
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

  dimension: string_field_23 {
    type: string
    sql: ${TABLE}.string_field_23 ;;
  }

  dimension: string_field_24 {
    type: string
    sql: ${TABLE}.string_field_24 ;;
  }

  dimension: string_field_25 {
    type: string
    sql: ${TABLE}.string_field_25 ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.Username ;;
  }

  dimension: value_in_loca_lcurrency {
    type: number
    sql: ${TABLE}.ValueInLocaLCurrency ;;
  }

  dimension: value_in_original_transaction_currency {
    type: number
    sql: ${TABLE}.ValueInOriginalTransactionCurrency ;;
  }

  dimension: value_in_transaction_currency {
    type: number
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
