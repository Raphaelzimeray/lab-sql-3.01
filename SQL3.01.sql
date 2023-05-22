-- 1 e question 

ALTER TABLE STAFF DROP COLUMN picture;


-- 2 E question 

-- check if she exist 

SELECT *
FROM customer 
WHERE first_name = 'TAMMY' AND last_name = 'SANDERS';

-- she exist, so we don't have to insert her in the base

-- insert in the table staff 

INSERT INTO staff(first_name, last_name, address_id, email, store_id, active, username, password)
VALUES ('TAMMY', 'SANDERS', 79, 'TAMMY.SANDERS@sakilacustomer.org', 1, 1, 'TAMMY','SANDERS');

-- 3RD QUESTION 

SELECT customer_id
FROM customer
WHERE first_name = 'Charlotte' AND last_name = 'Hunter';

SELECT inventory_id
         FROM inventory
         WHERE film_id = (SELECT film_id
                          FROM film
                          WHERE title = 'Academy Dinosaur') AND store_id = 1;
                          
					
SELECT staff_id
         FROM staff
         WHERE first_name = 'Mike' AND last_name = 'Hillyer';
         

INSERT INTO rental (rental_date, inventory_id, customer_id, staff_id)
VALUES (CURRENT_DATE(), 1,130,1);





