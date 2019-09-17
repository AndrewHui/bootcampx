SELECT sum(assignment_submissions.duration) 
FROM assignment_submissions join students on assignment_submissions.student_id = students.id
where students.name = 'Ibrahim Schimmel';