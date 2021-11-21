{{ config(materialized='table') }}
with covid_loc as (
    select DISTINCT LOCATION, AVG(CASE_FATALITY_RATE) as "Average Fatality Rate"
    from "INTERVIEW_DB"."PLAYGROUND_SOHAM_PAWAR"."Covid_19_Table"
    group by 1
    order by 2 DESC
),

final_stats as (
    select * from covid_loc
)

select * from final_stats
