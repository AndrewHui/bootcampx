-- Get the average duration of assistance requests for each cohort.

-- Select the cohort's name and the average assistance request time.
-- Order the results from shortest average to longest.

SELECT cohorts.name, avg(assistance_requests.completed_at - assistance_requests.started_at) as avgTime
FROM assistance_requests join students
on students.id = assistance_requests.student_id 
JOIN cohorts 
ON cohorts.id = students.cohort_id
GROUP by cohorts.name
order by avgTime;