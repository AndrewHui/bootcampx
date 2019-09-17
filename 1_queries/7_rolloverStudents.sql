SELECT students.name as students_name, cohorts.name as cohort_name, 
cohorts.start_date as cohorts_start_date, students.start_date as students_start_date
from students 
join cohorts on cohort_id = cohorts.id
WHERE cohorts.start_date != students.start_date;