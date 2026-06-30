# The name of this view in Looker is "Lr 8 Ardr1782255257206 My Explore My Agg Table"
view: lr_8_ardr1782255257206_my_explore_my_agg_table {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_test.LR_8ARDR1782255257206_my_explore_my_agg_table` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "My Explore Count" in Explore.

  dimension: my_explore_count {
    type: number
    sql: ${TABLE}.my_explore_count ;;
  }

  dimension: my_explore_id {
    type: number
    sql: ${TABLE}.my_explore_id ;;
  }
  measure: count {
    type: count
  }
}
