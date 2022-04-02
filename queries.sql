-- write your queries here

-- #1
SELECT *
FROM owners 
FULL JOIN vehicles 
ON owners.id = vehicles.owner_id;

-- #2
SELECT first_name, last_name, COUNT(vehicles) 
FROM owners 
JOIN vehicles 
ON owners.id = vehicles.owner_id 
GROUP BY owners.id 
ORDER BY first_name;

-- #3 
SELECT first_name, last_name, 
CAST(AVG(price) AS INTEGER) AS average_price, 
COUNT(vehicles) 
FROM owners 
JOIN vehicles 
ON owners.id = vehicles.owner_id 
GROUP BY owners.id 
HAVING COUNT(vehicles) > 1 AND AVG(price) > 10000 
ORDER BY first_name DESC;