--  id  |           name           |               email               |    phone     |     github     | start_date |  end_date  | cohort_id
-- -----+--------------------------+-----------------------------------+--------------+----------------+------------+------------+-----------
--    1 | Armand Hilll             | lera_hahn@dickens.org             | 778-349-3299 | aspernatur     | 2018-02-12 | 2018-04-20 |         1
SELECT count(*)
FROM students
WHERE cohort_id = 1
ORDER BY name