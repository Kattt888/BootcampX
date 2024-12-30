SELECT 
    s.name AS student_name, 
    COUNT(ar.id) AS total_assistances
FROM 
    students AS s
JOIN 
    assistance_requests AS ar 
ON 
    s.id = ar.student_id
WHERE 
    s.name = 'Elliot Dickinson'
GROUP BY 
    s.name;
