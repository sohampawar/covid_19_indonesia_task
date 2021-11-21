{{ config(materialized='table') }}
with covid_new_case as (
    select DATE, NEW_CASES, CASE_FATALITY_RATE, CASE_RECOVERED_RATE from "INTERVIEW_DB"."PLAYGROUND_SOHAM_PAWAR"."Covid_19_Table"
    order by NEW_CASES DESC
),

final_stats as (
    select * from covid_new_case
)

select * from final_stats

