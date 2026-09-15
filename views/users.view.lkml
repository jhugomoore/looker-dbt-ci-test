view: users {
  sql_table_name: public.users ;;
  dimension: FirstName {
    type: string
    sql: ${TABLE}.first_name ;;
  }
  dimension: LastName {
    type: string
    sql: ${TABLE}.last_name ;;
  }
  dimension: broken_ref {
    type: string
    sql: ${does_not_exist} ;;
  }
}
