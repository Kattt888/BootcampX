SELECT 
    a.id, 
    a.name, 
    a.day, 
    a.chapter, 
    COUNT(ar.id) AS total_requests
FROM 
    assistance_requests AS ar
JOIN 
    assignments AS a ON ar.assignment_id = a.id
GROUP BY 
    a.id, a.name, a.day, a.chapter
ORDER BY 
    total_requests DESC;
