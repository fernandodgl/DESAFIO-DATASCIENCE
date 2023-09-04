-- Query to find the film with the most actors

SELECT f.title AS film_name, COUNT(DISTINCT fa.actor_id) AS number_of_actors
from film f
JOIN film_actor fa ON f.film_id = fa.film_id
GROUP BY f.title
ORDER BY number_of_actors DESC;