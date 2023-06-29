SELECT day, count(assignments) as total_assignments
FROM assignments
GROUP BY day
HAVING count(assignments) > 9
ORDER BY day;