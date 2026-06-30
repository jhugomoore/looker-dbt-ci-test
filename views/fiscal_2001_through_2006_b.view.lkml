# The name of this view in Looker is "Fiscal 2001 Through 2006 B"
view: fiscal_2001_through_2006_b {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_test.fiscal_2001_through_2006_b` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cust Period" in Explore.

  dimension: cust_period {
    type: string
    sql: ${TABLE}.CUST_Period ;;
  }

  dimension: cust_quarter {
    type: string
    sql: ${TABLE}.CUST_Quarter ;;
  }

  dimension: cust_week {
    type: string
    sql: ${TABLE}.CUST_Week ;;
  }

  dimension: cust_year {
    type: string
    sql: ${TABLE}.CUST_YEAR ;;
  }

  dimension: day_of_year_num {
    type: number
    sql: ${TABLE}.DAY_OF_YEAR_NUM ;;
  }

  dimension: p_num {
    type: number
    sql: ${TABLE}.P_NUM ;;
  }

  dimension: prev_d_num {
    type: number
    sql: ${TABLE}.PREV_D_NUM ;;
  }

  dimension: prev_wk_num {
    type: number
    sql: ${TABLE}.PREV_WK_NUM ;;
  }

  dimension: q_num {
    type: number
    sql: ${TABLE}.Q_NUM ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: reference {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.Reference_Date ;;
  }

  dimension: season_num {
    type: number
    sql: ${TABLE}.SEASON_NUM ;;
  }

  dimension: wk_num {
    type: number
    sql: ${TABLE}.WK_NUM ;;
  }

  dimension: year_num {
    type: number
    sql: ${TABLE}.YEAR_NUM ;;
  }
  measure: count {
    type: count
  }
}
