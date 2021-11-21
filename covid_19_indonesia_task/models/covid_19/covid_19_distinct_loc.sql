{{ config(materialized='table') }}
with covid_loc_stat as (
    select DISTINCT LOCATION,  POPULATION , SUM(TOTAL_CASES) as "Total Cases", SUM(TOTAL_DEATHS) as "Total Deaths", 
    SUM(TOTAL_RECOVERED) as "Total Recovered", SUM(TOTAL_ACTIVE_CASES) as "Total Active Cases"
    from "INTERVIEW_DB"."PLAYGROUND_SOHAM_PAWAR"."Covid_19_Table" 
    group by 1,2
    order by 2 DESC
),


final_stats as (
    select * from covid_loc_stat
)

Select * from final_stats