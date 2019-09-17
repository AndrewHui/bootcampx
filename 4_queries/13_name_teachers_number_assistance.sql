-- We need to know which teachers actually assisted students during any cohort, and how many assistances they did for that cohort.

-- Perform the same query as before, but include the number of assistances as well.

SELECT DISTINCT teachers.name, cohorts.name as cohort, count(assistance_requests.*) as total_assist
FROM teachers 
JOIN assistance_requests
ON teachers.id = assistance_requests.teacher_id 
JOIN students 
ON students.id = assistance_requests.student_id 
JOIN cohorts
ON cohorts.id = students.cohort_id
where cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teachers.name;