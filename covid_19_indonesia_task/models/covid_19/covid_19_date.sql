with covid_date as (
    select DATE, NEW_CASES from "INTERVIEW_DB"."PLAYGROUND_SOHAM_PAWAR"."Covid_19_Table"
    ORDER BY NEW_CASES DESC
),

final_stats as (
    select * from covid_date
)

select * from final_stats

