# The name of this view in Looker is "Fiscal Cal 2009"
view: fiscal_cal_2009 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_test.fiscal_cal_2009` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Fisc Day of Mo Period" in Explore.

  dimension: fisc_day_of_mo_period {
    type: number
    sql: ${TABLE}.FISC_DAY_OF_MO_PERIOD ;;
  }

  dimension: fisc_day_of_year {
    type: number
    sql: ${TABLE}.FISC_DAY_OF_YEAR ;;
  }

  dimension: fisc_mo_period {
    type: number
    sql: ${TABLE}.FISC_MO_PERIOD ;;
  }

  dimension: fisc_mo_period_ly {
    type: number
    sql: ${TABLE}.FISC_MO_PERIOD_LY ;;
  }

  dimension: fisc_month_no {
    type: number
    sql: ${TABLE}.FISC_MONTH_NO ;;
  }

  dimension: fisc_quarter {
    type: string
    sql: ${TABLE}.FISC_QUARTER ;;
  }

  dimension: fisc_quarter_no {
    type: number
    sql: ${TABLE}.FISC_QUARTER_NO ;;
  }

  dimension: fisc_week_no {
    type: number
    sql: ${TABLE}.FISC_WEEK_NO ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fisc_week_start {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FISC_WEEK_START_DATE ;;
  }

  dimension: fisc_year {
    type: number
    sql: ${TABLE}.FISC_YEAR ;;
  }

  dimension: prev_day_of_year {
    type: number
    sql: ${TABLE}.PREV_DAY_OF_YEAR ;;
  }

  dimension: prev_fisc_day_of_mo_period {
    type: number
    sql: ${TABLE}.PREV_FISC_DAY_OF_MO_PERIOD ;;
  }

  dimension: prev_fisc_mo_period {
    type: number
    sql: ${TABLE}.PREV_FISC_MO_PERIOD ;;
  }

  dimension: prev_fisc_month_no {
    type: number
    sql: ${TABLE}.PREV_FISC_MONTH_NO ;;
  }

  dimension: prev_fisc_week_no {
    type: number
    sql: ${TABLE}.PREV_FISC_WEEK_NO ;;
  }

  dimension: prev_fisc_year {
    type: number
    sql: ${TABLE}.PREV_FISC_YEAR ;;
  }

  dimension_group: ref {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.REF_DATE ;;
  }
  measure: count {
    type: count
  }
}
