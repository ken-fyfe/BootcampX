-- Get the total number of assignments for each day of bootcamp.
-- Select the day and the total assignments.
-- Order the results by day.
-- Only include days with number of assignments > 9
SELECT day, COUNT(day) AS total_assignments
FROM assignments
GROUP BY day
HAVING COUNT(day) > 9
ORDER BY day;