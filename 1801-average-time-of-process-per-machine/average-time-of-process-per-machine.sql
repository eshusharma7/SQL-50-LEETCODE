SELECT a.machine_id, ROUND(AVG(a1.timestamp - a.timestamp),3) AS processing_time
FROM Activity a
JOIN Activity a1
ON a.process_id = a1.process_id 
AND a.machine_id = a1.machine_id 
#AND a.timestamp < a1.timestamp
AND a.activity_type = 'start'
AND a1.activity_type = 'end'
GROUP BY a.machine_id;