SELECT name, email, id, cohort_id
from students
where phone is NULL and 
email <> '%gmail%';