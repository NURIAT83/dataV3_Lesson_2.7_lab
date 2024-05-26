USE sakila;
##Question 1##
SELECT category.category_id,category.name, count(film.title)
FROM film INNER JOIN film_category ON film.film_id = film_category.film_id INNER JOIN category
ON film_category.category_id=category.category_id
GROUP BY category.category_id;
##Question 2##
SELECT * FROM FILM;
SELECT f.film_id, f.title,f.length, f.rental_rate, f.rating, r.rental_date  
FROM film f
INNER JOIN inventory i ON f.film_id = i.film_id
INNER JOIN rental r ON i.inventory_id = r.inventory_id
WHERE YEAR(r.rental_date) = 2005 AND MONTH(r.rental_date) = 08;
##Question 3##
SELECT actor.first_name, actor.last_name, count(film_actor.actor_id)
FROM actor INNER JOIN film_actor ON actor.actor_id = film_actor.actor_id
GROUP BY film_actor.actor_id ORDER BY count(film_actor.actor_id) DESC;
##Question 4##
SELECT customer.first_name, customer.last_name, count(rental.customer_id)
FROM customer INNER JOIN rental ON customer.customer_id = rental.customer_id
GROUP BY rental.customer_id ORDER BY count(rental.customer_id) DESC;
##Question 5##
SELECT staff.first_name, staff.last_name, address.address_id, address.address
FROM staff INNER JOIN address ON staff.address_id = address.address_id;
##Question 6##
SELECT film.title, film.film_id, count(film_actor.actor_id)
FROM film INNER JOIN film_actor ON film.film_id = film_actor.film_id
GROUP BY film.film_id ORDER BY count(film_actor.actor_id) DESC;
##Question 7##
SELECT customer.first_name, customer.last_name, count(payment.amount)
FROM customer INNER JOIN payment ON customer.customer_id = payment.customer_id
GROUP BY customer.customer_id ORDER BY customer.last_name ASC;
##Question 8##
SELECT category.category_id, film.title, category.name
FROM film INNER JOIN film_category ON film.film_id = film_category.film_id INNER JOIN category
ON film_category.category_id=category.category_id
GROUP BY category.category_id;

