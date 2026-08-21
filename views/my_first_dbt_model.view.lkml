view: my_first_dbt_model {
  sql_table_name: `{{ _user_attributes['dbt_schema'] }}.my_first_dbt_model` ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: color {
    type: string
    sql: ${TABLE}.color ;;
  }

  measure: count {
    type: count
  }
}
