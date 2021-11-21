{{ config(materialized='table') }}
with covid_loc_death_stat as (
    select DISTINCT LOCATION,  SUM(TOTAL_CASES) as "Total Cases", SUM(TOTAL_DEATHS) as "Total Deaths",
    AVG((TOTAL_DEATHS/TOTAL_CASES)*100) as "Average Death Percentage"
    from "INTERVIEW_DB"."PLAYGROUND_SOHAM_PAWAR"."Covid_19_Table" 
    group by 1
    order by 4 DESC
),


final_stats as (
    select * from covid_loc_death_stat
)

Select * from final_stats