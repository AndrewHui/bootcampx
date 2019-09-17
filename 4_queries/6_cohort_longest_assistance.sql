
-- Get the cohort with the longest average duration of assistance requests.

-- The same requirements as the previous query, but only return the single row with the longest average.

SELECT cohorts.name, avg(assistance_requests.completed_at - assistance_requests.started_at) as avgTime
FROM assistance_requests join students
on students.id = assistance_requests.student_id 
JOIN cohorts 
ON cohorts.id = students.cohort_id
WHERE ROWNUM = 1
GROUP by cohorts.name
order by avgTime DESC;