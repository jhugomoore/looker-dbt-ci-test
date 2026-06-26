connection: "bigquery-dbt"

include: "/views/**/*.view.lkml" # or path to your view files

explore: users {} # <-- Defines the explore for the SQL Validator to test
