SELECT 
    c.name AS cohort_name, 
    SUM(ar.completed_at - ar.started_at) AS total_duration
FROM 
    assistance_requests AS ar
JOIN 
    students AS s ON ar.student_id = s.id
JOIN 
    cohorts AS c ON s.cohort_id = c.id
GROUP BY 
    c.name
ORDER BY 
    total_duration;
