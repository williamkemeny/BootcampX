SELECT SUM(duration) as total_duration
FROM cohorts
JOIN students ON cohort_id = cohorts.id 
JOIN assignment_submissions ON  student_id = students.id
WHERE cohorts.name = 'FEB12'