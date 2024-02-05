# DBT-POSTGRES-GDS-BIGQUERY


to run the dbt we use 
## dbt run

# 
dbt run --select stg_yellow_taxi_data

 git add . ; git commit -m "Done" ; git push -u origin main

 ## To sownload the dependencies we use below code
 dbt deps

 -- {{ config(materialized="view") }}

-- select * from {{ source('staging','yellow_taxi_data') }}
-- limit 100



dbt seed

dbt seed --full-refresh