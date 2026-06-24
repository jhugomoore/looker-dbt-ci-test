# The name of this view in Looker is "Us Births"
view: us_births {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_test.us_births` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Avg Weight" in Explore.

  dimension: avg_weight {
    type: number
    sql: ${TABLE}.avg_weight ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: birth {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.birth_date ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: total_births {
    type: number
    sql: ${TABLE}.total_births ;;
  }

  dimension: weight {
    type: string
    sql: ${TABLE}.weight ;;
  }
  measure: count {
    type: count
  }
}
