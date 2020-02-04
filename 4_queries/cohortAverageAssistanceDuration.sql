SELECT AVG(duration)  AS average_total_duration
FROM (SELECT SUM(completed_at - started_at) as duration
           FROM assistance_requests
           JOIN students ON students.id = assistance_requests.student_id
           JOIN cohorts ON cohorts.id = cohort_id
           GROUP BY cohorts.name)
x;