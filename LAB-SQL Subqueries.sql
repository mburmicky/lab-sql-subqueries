
#LAB | SQL Subqueries

USE sakila;

#1) Determine the number of copies of the film "Hunchback Impossible" that exist in the inventory system.

SELECT COUNT(b.inventory_id) AS number_of_copies
FROM sakila.film a
JOIN sakila.inventory b
USING (film_id)
WHERE a.title = "Hunchback Impossible";

#2) List all films whose length is longer than the average length of all the films in the Sakila database.

SELECT title, length
FROM sakila.film
WHERE length > (
SELECT AVG(length)
FROM sakila.film);


#3) Use a subquery to display all actors who appear in the film "Alone Trip"

SELECT first_name, last_name
FROM actor
WHERE actor_id IN (
SELECT actor_id
FROM sakila.film_actor a
JOIN sakila.film b
USING (film_id)
WHERE b.title = "Alone Trip");



