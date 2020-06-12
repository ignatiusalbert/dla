view: sales {
  sql_table_name: `poc-looker-dla-msi.SMIG.SALES`
    ;;

  dimension_group: calendar {
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
    sql: ${TABLE}.Calendar_Date ;;
  }

  dimension: company_code {
    type: number
    sql: ${TABLE}.Company_code ;;
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.Company_Name ;;
  }

  dimension: customer {
    type: number
    sql: ${TABLE}.Customer ;;
  }

  dimension: customer_desc {
    type: string
    sql: ${TABLE}.Customer_Desc ;;
  }

  measure: freight_cost_cal {
    type: sum
    sql: ${TABLE}.Freight_Cost_Cal ;;
  }

  dimension: incoterm {
    type: string
    sql: ${TABLE}.Incoterm ;;
  }

  dimension: material {
    type: string
    sql: ${TABLE}.Material ;;
  }

  dimension: material_desc {
    type: string
    sql: ${TABLE}.Material_Desc ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}.Month ;;
  }

  dimension: plant {
    type: string
    sql: ${TABLE}.Plant ;;
  }

  dimension: plant_desc {
    type: string
    sql: ${TABLE}.Plant_Desc ;;
  }

  measure: price {
    type: sum
    sql: ${TABLE}.Price ;;
  }

  dimension: province_desc {
    type: string
    sql: ${TABLE}.Provice_Desc ;;
    map_layer_name: provinces_layer
  }

  dimension: province {
    type: number
    sql: ${TABLE}.Province ;;
  }

  measure: quantity_after_conversion {
    type: sum
    sql: ${TABLE}.Quantity_After_Conversion ;;
  }

  dimension: sales_district {
    type: number
    sql: ${TABLE}.Sales_District ;;
  }

  dimension: sales_district_desc {
    type: string
    sql: ${TABLE}.Sales_District_Desc ;;
    map_layer_name: city_layer
  }

  measure: sales_revenue {
    type: sum
    sql: ${TABLE}.Sales_Revenue ;;
  }

  # measure: sales_volume {
  #  type: sum
  #  sql: ${TABLE}.Sales_Volume ;;
  #}

  measure: volume {
    type: number
    sql:IF(${price} = 0, 0, ${sales_revenue} / ${price});;
  }

  dimension: ship_to_part_desc {
    type: string
    sql: ${TABLE}.Ship_to_part_Desc ;;
  }

  dimension: ship_to_party {
    type: number
    sql: ${TABLE}.Ship_To_Party ;;
  }

  measure: count {
    type: count
    drill_fields: [company_name]
  }
}
