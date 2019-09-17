Select assignments.day, COUNT(assignments.name)
from assignments
group by day
order by assignments.day;