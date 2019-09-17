Select assignments.day, COUNT(assignments.name) as total_assignments
from assignments
group by day
having count(assignments.name) >= 10
order by assignments.day;
