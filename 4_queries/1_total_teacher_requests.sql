select teachers.name, count(assistance_requests.*)
from assistance_requests 
join teachers 
ON teachers.id = assistance_requests.teacher_id
where teachers.name = 'Waylon Boehm'
group by teachers.name;