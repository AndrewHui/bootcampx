SELECT sum(assignment_submissions.duration)
FROM assignment_submissions join students on
assignment_submissions.student_id = students.id
join cohorts on cohorts.id = students.cohort_id
where cohorts.name = 'FEB12';