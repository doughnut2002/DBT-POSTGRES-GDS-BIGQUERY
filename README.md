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





## dbt build runs both seed and models whereas dbt eun only runs models not seed

## dbt build --slect +fact_trips iw will run all the models and seeds which are required to run fact trips first then run the fact trips