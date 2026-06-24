# The name of this view in Looker is "Nested and Repeated"
view: nested_and_repeated {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_test.nested_and_repeated` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: doubly_nested_and_repeated {
    hidden: yes
    sql: ${TABLE}.doubly_nested_and_repeated ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "ID" in Explore.

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: nested_field__this_inner_float {
    type: number
    sql: ${TABLE}.nested_field.this_inner_float ;;
    group_label: "Nested Field"
    group_item_label: "This Inner Float"
  }

  dimension: nested_field__this_inner_string {
    type: string
    sql: ${TABLE}.nested_field.this_inner_string ;;
    group_label: "Nested Field"
    group_item_label: "This Inner String"
  }

  dimension: repeated_field {
    hidden: yes
    sql: ${TABLE}.repeated_field ;;
  }
  measure: count {
    type: count
  }
}

# The name of this view in Looker is "Nested and Repeated Repeated Field"
view: nested_and_repeated__repeated_field {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Nested and Repeated Repeated Field" in Explore.

  dimension: nested_and_repeated__repeated_field {
    type: string
    sql: nested_and_repeated__repeated_field ;;
  }
}

# The name of this view in Looker is "Nested and Repeated Doubly Nested and Repeated"
view: nested_and_repeated__doubly_nested_and_repeated {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: inner_repeated {
    hidden: yes
    sql: inner_repeated ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Nested and Repeated Doubly Nested and Repeated" in Explore.

  dimension: nested_and_repeated__doubly_nested_and_repeated {
    type: string
    hidden: yes
    sql: nested_and_repeated__doubly_nested_and_repeated ;;
  }

  dimension: other_field {
    type: number
    sql: other_field ;;
  }
}

# The name of this view in Looker is "Nested and Repeated Doubly Nested and Repeated Inner Repeated"
view: nested_and_repeated__doubly_nested_and_repeated__inner_repeated {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Nested and Repeated Doubly Nested and Repeated Inner Repeated" in Explore.

  dimension: nested_and_repeated__doubly_nested_and_repeated__inner_repeated {
    type: string
    sql: nested_and_repeated__doubly_nested_and_repeated__inner_repeated ;;
  }
}
