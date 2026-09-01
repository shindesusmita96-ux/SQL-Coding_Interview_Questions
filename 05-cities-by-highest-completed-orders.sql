-- Question Link: https://datalemur.com/questions/completed-trades

-- Solution:

SELECT us.city, 
COUNT(DISTINCT order_id) AS total_orders
FROM trades td
JOIN users us 
ON td.user_id = us.user_id
WHERE status= 'Completed'
GROUP BY us.city
ORDER BY total_orders DESC
LIMIT 3;
