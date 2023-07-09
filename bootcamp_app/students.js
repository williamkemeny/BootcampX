const { Pool } = require("pg");

const commandLine = process.argv.slice(2);

const pool = new Pool({
  user: "vagrant",
  password: "123",
  host: "localhost",
  database: "bootcampx",
});

pool
  .query(
    `
SELECT students.id, students.name as name, cohorts.name as cohort_name
FROM students
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = '${commandLine}'
LIMIT 5;
`
  )
  .then((res) => {
    res.rows.forEach((user) => {
      console.log(
        `${user.name} has an id of ${user.id} and was in the ${user.cohort_name} cohort`
      );
    });
  });
