SELECT
  assignments.day AS day,
  COUNT(assignments.name) AS number_of_assignments,
  SUM(assignments.duration) AS duration
FROM assignments
GROUP BY day
ORDER BY day;