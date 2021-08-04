-- SELECT nombre_organizacion, COUNT(id)
-- FROM iniciativa_actor
-- GROUP BY nombre_organizacion
-- HAVING COUNT(id) > 1 
-- ORDER BY COUNT(id); 

-- SELECT id, COUNT(id)
-- FROM iniciativas
-- GROUP BY iniciativas.iniciativa_actor_id
-- HAVING COUNT(iniciativas.iniciativa_actor_id) > 1 
-- ORDER BY COUNT(iniciativas.iniciativa_actor_id); 


-- SELECT COUNT(iniciativa_actor_id)
-- FROM iniciativas
-- GROUP BY iniciativa_actor_id
-- HAVING COUNT(iniciativa_actor_id) > 1
-- ORDER BY COUNT(iniciativa_actor_id);

-- get iniciativa actor repetidas comprobacion
-- SELECT iniciativa_actor_id, COUNT(id)
-- FROM iniciativas
-- GROUP BY iniciativa_actor_id
-- HAVING COUNT(id) > 1
-- ORDER BY COUNT(id);

-- encontrar iniciativas que tienen organizaciones repetidas
-- SELECT iniciativa_actor.nombre_organizacion, SUBQUERY.iniciativa_actor_id, SUBQUERY.count
-- FROM 
-- (SELECT iniciativa_actor_id, COUNT(id)
-- FROM iniciativas
-- GROUP BY iniciativa_actor_id
-- HAVING COUNT(id) > 1
-- ORDER BY COUNT(id)) AS SUBQUERY
-- INNER JOIN iniciativa_actor ON iniciativa_actor.id = SUBQUERY.iniciativa_actor_id
-- ORDER BY SUBQUERY.count;

-- Primera Eliminacion
-- SELECT id, iniciativa_actor_id 
-- FROM iniciativas 
-- WHERE iniciativa_actor_id IN (46, 69, 42, 340, 270, 147, 296, 100, 269, 38, 63, 32, 115, 228, 39, 177, 51, 188, 103, 224, 195, 106, 273, 212, 164, 191, 300, 255, 59, 238, 206, 93, 246, 331, 250, 336, 320, 277, 49, 200, 86, 258)

-- Segunda Eliminacion
-- SELECT id, iniciativa_actor_id 
-- FROM iniciativas 
-- WHERE iniciativa_actor_id IN (274, 213, 165, 189, 309, 256, 116, 239, 207, 94, 249, 332, 251, 338, 317, 323, 180, 201, 85, 260)

--Tercera Eliminacion
-- SELECT id, iniciativa_actor_id 
-- FROM iniciativas 
-- WHERE iniciativa_actor_id IN (324, 329, 333, 202, 84, 261)

-- Cuarta Eliminacion
-- SELECT id, iniciativa_actor_id 
-- FROM iniciativas 
-- WHERE iniciativa_actor_id IN (334, 203, 82, 262)


-- SELECT id, nombre_organizacion
-- FROM iniciativa_actor
-- ORDER BY nombre_organizacion DESC


-- Quinta Eliminacion
SELECT id, iniciativa_actor_id 
FROM iniciativas 
WHERE iniciativa_actor_id IN (126, 87, 47, 114, 288, 25, 337 , 283, 95, 266, 13, 14)