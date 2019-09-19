-- We need to know which assignments are causing the most assistance requests.

-- List each assignment with the total number of assistance requests with it.

-- Select the assignment's id, day, chapter, name and the total assistances.
-- Order by total assistances in order of most to least.


SELECT assignments.id, assignments.day, assignments.chapter, assignments.name, count(assistance_requests.assignment_id) as total_count
FROM assignments 
JOIN assistance_requests 
ON assistance_requests.assignment_id = assignments.id
GROUP BY assignments.id
ORDER by total_count DESC;