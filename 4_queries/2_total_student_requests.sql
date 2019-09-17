select students.name, count(assistance_requests.*)
from assistance_requests 
join students
ON students.id = assistance_requests.student_id
where students.name = 'Elliot Dickinson'
group by students.name;