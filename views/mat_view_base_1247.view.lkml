# The name of this view in Looker is "Mat View Base 1247"
view: mat_view_base_1247 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_test.mat_view_base_1247` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Fav String" in Explore.

  dimension: fav_string {
    type: string
    sql: ${TABLE}.fav_string ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: is_working {
    type: yesno
    sql: ${TABLE}.is_working ;;
  }
  measure: count {
    type: count
  }
}
