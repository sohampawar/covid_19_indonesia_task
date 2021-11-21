
{{ config(materialized='table') }}

with covid_million as (
    select  NEW_CASES_PER_MILLION, TOTAL_CASES_PER_MILLION, NEW_DEATHS_PER_MILLION, TOTAL_DEATHS_PER_MILLION  
    from "INTERVIEW_DB"."PLAYGROUND_SOHAM_PAWAR"."Covid_19_Table"
    order by TOTAL_CASES_PER_MILLION DESC
),

final_stats as (
    select * from covid_million
)

select * from final_stats

