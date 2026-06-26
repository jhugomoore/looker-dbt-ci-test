/*
    Welcome to your first dbt model!
    This model generates static mock data and materializes it as a table.
*/

{{ config(materialized='table') }}

with source_data as (

    select 1 as id, 'orange' as color
    union all
    select 2 as id, 'blue' as color
    union all
    select 3 as id, 'green' as color

)

select *
from source_data

-- silly dummy comment to trigger CI run
-- fifth dummy comment for PR 4
-- sixth dummy comment for PR 4 trigger again


