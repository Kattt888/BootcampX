const { Pool } = require('pg');

const pool = new Pool({
  user: 'development',
  password: 'development',
  host: 'localhost',
  database: 'bootcampx',
});

const cohortName = process.argv[2];
const limit = process.argv[3];

const queryString = `
  SELECT students.id, students.name, cohorts.name as cohort
  FROM students
  JOIN cohorts ON cohorts.id = students.cohort_id
  WHERE cohorts.name LIKE $1
  LIMIT $2;
`;
const values = [`%${cohortName}%`, limit];
pool.query(queryString, values);

