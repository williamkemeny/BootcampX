SELECT DISTINCT teachers.name AS teacher,
cohorts.name AS cohort,
COUNT(assistance_requests.*)
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON students.cohort_id = cohorts.id 
JOIN teachers ON teachers.id = teacher_id
WHERE cohorts.name = 'JUL02'
GROUP BY teacher, cohort
ORDER BY teacher;