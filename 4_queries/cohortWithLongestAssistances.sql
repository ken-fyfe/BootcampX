SELECT cohorts.name, avg(completed_at - started_at) as average_assistance_time
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time DESC
LIMIT 1;

-- I attempted this with nested select statements to avoid nested aggregate functions,
-- but I could not get it to go!
-- SELECT
--   cohorts.name,
--   MAX((SELECT AVG(completed_at - started_at)
--        FROM assistance_requests
--        JOIN students ON students.id = student_id
--        JOIN cohorts ON cohorts.id = students.cohort_id
--        GROUP BY cohorts.name))
--        AS average_assistance_time
-- FROM cohorts;
