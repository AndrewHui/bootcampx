-- Get the total duration of all assistance requests for each cohort.

-- Select the cohort's name and the total duration the assistance requests.
-- Order by total_duration.
-- Look at the ERD to see how to join the tables.


SELECT cohorts.name, sum(assistance_requests.completed_at - assistance_requests.started_at) as total_duration
FROM assistance_requests 
JOIN students 
ON students.id = assistance_requests.student_id
JOIN cohorts
ON cohorts.id = students.cohort_id
group by cohorts.name
order by total_duration;