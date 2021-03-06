-- Begin Death Criteria
select C.person_id, C.person_id as event_id, C.death_date as start_date, DATEADD(d,1,C.death_date) as end_date, coalesce(C.cause_concept_id,0) as TARGET_CONCEPT_ID, NULL as visit_occurrence_id
from 
(
  select d.*
  FROM @cdm_database_schema.DEATH d
@codesetClause
) C
@joinClause
@whereClause
-- End Death Criteria

