SELECT driver_id FROM data.driver_rating
GROUP BY driver_id,skill
HAVING MIN(skill) > 4
ORDER BY skill;

SELECT user_id FROM data.driver
INTERSECT
SELECT user_id FROM data.passenger
ORDER BY user_id;

SELECT model FROM data.car
ORDER BY id
LIMIT 10 OFFSET 40;

SELECT user_id FROM data.driver
UNION
SELECT user_id FROM data.passenger;

SELECT user_id FROM data.driver
EXCEPT
SELECT user_id FROM data.passenger;

SELECT * FROM data.passenger
INNER JOIN data.driver ON passenger.user_id = driver.user_id;

SELECT * FROM data.passenger
LEFT JOIN data.driver ON passenger.user_id = driver.user_id;

SELECT * FROM data.passenger
RIGHT JOIN data.driver ON passenger.user_id = driver.user_id;

SELECT * FROM data.passenger
FULL OUTER JOIN data.driver ON passenger.user_id = driver.user_id;