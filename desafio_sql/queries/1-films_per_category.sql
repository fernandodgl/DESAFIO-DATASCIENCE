-- This query fetches the number of films per category and orders the result by the number of films in descending order.

SELECT category.name AS category_name, COUNT(film.film_id) AS number_of_films
FROM category
JOIN film_category ON category.category_id = film_category.category_id
JOIN film ON film_category.film_id = film.film_id
GROUP BY category.name
ORDER BY number_of_films DESC;
