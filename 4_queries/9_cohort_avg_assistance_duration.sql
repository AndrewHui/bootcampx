-- We also need to know the average total amount of time being spent on an assistance request for each cohort. This is just the average of the total_duration column from the previous query.

-- Calculate the average total duration of assistance requests for each cohort.

-- Use the previous query as a sub query to determine the duration per cohort.
-- Return a single row average_total_duration




SELECT avg(total_duration) from (SELECT cohorts.name, sum(assistance_requests.completed_at - assistance_requests.started_at) as total_duration
FROM assistance_requests 
JOIN students 
ON students.id = assistance_requests.student_id
JOIN cohorts
ON cohorts.id = students.cohort_id
group by cohorts.name
order by total_duration) request;