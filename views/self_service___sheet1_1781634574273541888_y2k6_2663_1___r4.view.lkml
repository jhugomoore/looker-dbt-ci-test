# The name of this view in Looker is "Self Service Sheet1 1781634574273541888 Y2k6 2663 1 R4"
view: self_service___sheet1_1781634574273541888_y2k6_2663_1___r4 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_test.self_service___sheet1_1781634574273541888_y2k6_2663_1___r4` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Descriptions" in Explore.

  dimension: descriptions {
    type: string
    sql: ${TABLE}.descriptions ;;
  }

  dimension: product_brand {
    type: string
    sql: ${TABLE}.product_brand ;;
  }

  dimension: product_retail_price {
    type: number
    sql: ${TABLE}.product_retail_price ;;
  }

  dimension: product_type {
    type: string
    sql: ${TABLE}.product_type ;;
  }

  dimension: product_wholesale_cost {
    type: number
    sql: ${TABLE}.product_wholesale_cost ;;
  }

  dimension: someveryveryverylongtitletotestifweneedtruncationstill {
    type: number
    sql: ${TABLE}.someveryveryverylongtitletotestifweneedtruncationstill ;;
  }

  dimension: store_city {
    type: string
    sql: ${TABLE}.store_city ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
  }

  dimension: store_state {
    type: string
    sql: ${TABLE}.store_state ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: transaction {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.transaction_date ;;
  }

  dimension: transaction_id {
    type: number
    sql: ${TABLE}.transaction_id ;;
  }
  measure: count {
    type: count
  }
}
