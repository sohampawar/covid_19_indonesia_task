{{ config(materialized='table') }}
with covid_loc as (
    select DATE, LOCATION, TOTAL_CASES, TOTAL_DEATHS, TOTAL_RECOVERED, TOTAL_ACTIVE_CASES, 
    POPULATION from "INTERVIEW_DB"."PLAYGROUND_SOHAM_PAWAR"."Covid_19_Table"
    order by DATE DESC
),

final_stats as (
    select * from covid_loc
)

select * from final_stats
