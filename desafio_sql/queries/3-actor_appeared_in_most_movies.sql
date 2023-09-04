-- Query to find the actor with the most film appearances

SELECT CONCAT (a.first_name, ' ', a.last_name) as actor_name, COUNT(DISTINCT fa.film_id) AS appearances
FROM actor a
JOIN film_actor fa ON a.actor_id = fa.actor_id
GROUP BY a.first_name, a.last_name
ORDER BY appearances DESC
LIMIT 1;