SELECT assignments.id as id, assignments.name as name, day, chapter, count(assignment_submissions.*) as total_requests
FROM assignments
JOIN assignment_submissions ON assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY  total_requests DESC;