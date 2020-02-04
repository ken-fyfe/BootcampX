-- Get all cohorts with 18 or more students.
-- Select the cohort name and the total students.
-- Order by total students from smallest to greatest.
SELECT cohorts.name as cohort_name, count(students.cohort_id) as student_count
FROM cohorts
JOIN students ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
HAVING count(students.cohort_id) > 17
ORDER BY student_count;