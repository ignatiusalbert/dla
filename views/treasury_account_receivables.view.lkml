view: treasury_account_receivables {
  sql_table_name: `poc-looker-dla-msi.SMIG.TREASURY_ACCOUNT_RECEIVABLES`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: account_no {
    type: number
    sql: ${TABLE}.AccountNo ;;
  }

  dimension: acct_doc_no {
    type: number
    sql: ${TABLE}.AcctDocNo ;;
  }

  measure: amount_doc {
    type: sum
    sql: ${TABLE}.AmountDoc ;;
  }

  measure: amount_lcl {
    type: sum
    sql: ${TABLE}.AmountLCL ;;
  }

  dimension: company_code {
    type: number
    sql: ${TABLE}.CompanyCode ;;
  }

  dimension: currency_key {
    type: string
    sql: ${TABLE}.CurrencyKey ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.CustomerID ;;
  }

  dimension: days_in_arrears {
    type: number
    sql: ${TABLE}.DaysInArrears ;;
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

  dimension: dunning_date {
    type: number
    sql: ${TABLE}.DunningDate ;;
  }

  dimension: dunning_level {
    type: number
    sql: ${TABLE}.DunningLevel ;;
  }

  measure: exchange_rate {
    type: sum
    sql: ${TABLE}.ExchangeRate ;;
  }

  dimension: invoice_no {
    type: number
    sql: ${TABLE}.InvoiceNo ;;
  }

  dimension: item_text {
    type: string
    sql: ${TABLE}.ItemText ;;
  }

  dimension: line_item {
    type: number
    sql: ${TABLE}.LineItem ;;
  }

  dimension: local_currency {
    type: string
    sql: ${TABLE}.LocalCurrency ;;
  }

  dimension_group: net_due {
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
    sql: ${TABLE}.NetDueDate ;;
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

  dimension: receipt_date {
    type: number
    sql: ${TABLE}.ReceiptDate ;;
  }

  dimension: sales_tax_code {
    type: string
    sql: ${TABLE}.SalesTaxCode ;;
  }

  dimension: AR_Age {
    type: tier
    tiers: [0,1,31,61,91,181]
    style: integer
    sql: ${TABLE}.DaysInArrears ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
