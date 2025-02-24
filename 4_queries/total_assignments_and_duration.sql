SELECT 
    day, 
    COUNT(*) AS number_of_assignments, 
    SUM(duration) AS total_duration
FROM 
    assignments
GROUP BY 
    day
ORDER BY 
    day;
