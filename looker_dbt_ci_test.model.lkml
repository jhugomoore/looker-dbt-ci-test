connection: "bigquery-dbt"

include: "/views/**/*.view.lkml"

explore: my_first_dbt_model {}
explore: users {}
