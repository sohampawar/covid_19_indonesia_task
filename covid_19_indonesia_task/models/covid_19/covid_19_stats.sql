with covid_stats as (
    select TOTAL_CASES, TOTAL_DEATHS, TOTAL_RECOVERED  from "INTERVIEW_DB"."PLAYGROUND_SOHAM_PAWAR"."Covid_19_Table"
    order by TOTAL_CASES, TOTAL_DEATHS, TOTAL_RECOVERED DESC
),

final_stats as (
    select * from covid_stats
)

select * from final_stats

