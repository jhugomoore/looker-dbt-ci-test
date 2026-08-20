# The name of this view in Looker is "Lr 8 Aubv1782255251010 My Pdt"
view: lr_8_aubv1782255251010_my_pdt {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_test.LR_8AUBV1782255251010_my_pdt` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "ID" in Explore.

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }
  measure: count {
    type: count
  }
}
