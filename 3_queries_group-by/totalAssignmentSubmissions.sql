-- Get the total number of assignment submissions for each cohort.

-- Select the cohort name and total submissions.
-- Order the results from greatest to least submissions.

SELECT cohorts.name as Cohort, count(assignment_submissions.*) as total_submissions
FROM cohorts join students
ON cohorts.id = students.cohort_id 
join assignment_submissions
ON students.id = assignment_submissions.student_id
GROUP BY cohorts.name
order by total_submissions DESC;
