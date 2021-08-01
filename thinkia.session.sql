SELECT nombre_organizacion, COUNT(id)
FROM iniciativa_actor
GROUP BY nombre_organizacion
HAVING COUNT(id) > 1 
ORDER BY COUNT(id); 

-- SELECT nombre_organizacion FROM iniciativa_actor WHERE nombre_organizacion LIKE '%AgroScan%'; 
-- SELECT nombre_organizacion, COUNT(SUBQUERY.organizacion_id)
-- FROM (
--         SELECT iniciativas.id AS iniciativa_id,
--             iniciativa_actor.id as organizacion_id,
--             iniciativa_informacion.nombre_iniciativa,
--             iniciativa_actor.nombre_organizacion
--         FROM iniciativa_actor
--             INNER JOIN iniciativas ON iniciativa_actor.id = iniciativas.iniciativa_actor_id
--             INNER JOIN iniciativa_informacion ON iniciativa_informacion.id = iniciativas.iniciativa_informacion_id
--     ) AS SUBQUERY
-- GROUP BY SUBQUERY.nombre_organizacion
--
-- HAVING COUNT(SUBQUERY.organizacion_id) > 1 -- ORDER BY COUNT(SUBQUERY.organizacion_id); 