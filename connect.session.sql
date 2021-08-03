SELECT nombre_organizacion, COUNT(id)
FROM iniciativa_actor
GROUP BY nombre_organizacion
HAVING COUNT(id) > 1 
ORDER BY COUNT(id); 



