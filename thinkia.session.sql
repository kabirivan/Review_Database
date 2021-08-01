-- SELECT nombre_organizacion COUNT(id)
-- FROM iniciativa_actor
-- GROUP BY nombre_organizacion
-- HAVING COUNT(id) > 1
-- ORDER BY COUNT(id); 



-- SELECT nombre_organizacion FROM iniciativa_actor WHERE nombre_organizacion LIKE '%AgroScan%'; 

SELECT iniciativas.id, iniciativa_informacion.nombre_iniciativa, iniciativa_actor.nombre_organizacion
FROM iniciativa_actor
INNER JOIN iniciativas 
ON iniciativa_actor.id = iniciativas.iniciativa_actor_id
INNER JOIN iniciativa_informacion
ON iniciativa_informacion.id = iniciativas.iniciativa_informacion_id

