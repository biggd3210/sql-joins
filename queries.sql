-- write your queries here

-- Query no. 1 Join the two tables so that every column and record appears, regardless of if there is not an owner_id.  --

SELECT * FROM owners FULL JOIN vehicles ON owner_id = owners.id;

-- Query No. 2 --

SELECT first_name, last_name, COUNT(owner_id)                                             
FROM owners o                                                                                              
JOIN vehicles v ON o.id=v.owner_id                                                                         
GROUP BY (first_name, last_name)                                                                           
ORDER BY first_name;

-- Query No. 3 --

SELECT first_name, last_name, AVG(price) AS average_price, COUNT(owner_id) AS count
FROM owners o 
JOIN vehicles v
ON o.id = v.owner_id
GROUP BY (first_name, last_name)
HAVING COUNT(owner_id) > 1 AND ROUND(AVG(price)) > 10000
ORDER BY first_name DESC;