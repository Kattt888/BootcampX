SELECT cohort.name AS cohort
COUNT(assignment_submissions.id) AS total_submissions
FROM assignment_submissions
JOIN students ON assignment_submissions.student_id = students.id
JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY cohort.name
ORDER BY total_submissions DESC