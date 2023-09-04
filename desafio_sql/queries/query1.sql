-- This query fetches the number of films per category and orders the result by the number of films in descending order.

SELECT 
    c.name AS category_name, COUNT(f.film_id) AS number_of_films
FROM 
    category c
JOIN 
    film_category ON c.category_id = fc.category_id
JOIN 
    film ON fc.film_id = f.film_id
GROUP BY 
    c.name
ORDER BY 
    number_of_films DESC;
