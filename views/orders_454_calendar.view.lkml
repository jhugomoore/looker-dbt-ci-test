# The name of this view in Looker is "Orders 454 Calendar"
view: orders_454_calendar {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_test.orders_454_calendar` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date {
    type: time
    description: "Gregorian date"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Date ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Day of Year" in Explore.

  dimension: day_of_year {
    type: number
    description: "Day number within the NRF fiscal year (1-364 or 1-371)"
    sql: ${TABLE}.DayOfYear ;;
  }

  dimension: month_index {
    type: number
    description: "Month number within the NRF fiscal year (1-12)"
    sql: ${TABLE}.MonthIndex ;;
  }

  dimension: quarter_index {
    type: number
    description: "Quarter number within the NRF fiscal year (1-4)"
    sql: ${TABLE}.QuarterIndex ;;
  }

  dimension: week_index {
    type: number
    description: "Week number within the NRF fiscal year (1-52 or 1-53)"
    sql: ${TABLE}.WeekIndex ;;
  }

  dimension: year {
    type: number
    description: "NRF Fiscal Year"
    sql: ${TABLE}.Year ;;
  }
  measure: count {
    type: count
  }
}
