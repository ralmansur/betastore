SELECT count(*) as order_count,
		c.email
FROM orders o 
JOIN customers c on c.id = o.customer_id
GROUP BY c.email
HAVING count(*) > 1
ORDER BY order_count desc;