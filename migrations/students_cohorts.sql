--  id  |           name           |               email               |    phone     |     github     | start_date |  end_date  | cohort_id
-- -----+--------------------------+-----------------------------------+--------------+----------------+------------+------------+-----------
--    1 | Armand Hilll             | lera_hahn@dickens.org             | 778-349-3299 | aspernatur     | 2018-02-12 | 2018-04-20 |         1

CREATE TABLE cohorts (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  start_date DATE,
  end_date DATE
);

CREATE TABLE students (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255),
  phone VARCHAR(32),
  github VARCHAR(255),
  start_date DATE,
  end_date DATE,
  cohort_id INTEGER REFERENCES cohorts(id) ON DELETE CASCADE
);