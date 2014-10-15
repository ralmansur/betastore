SELECT count(*) as order_count,
		c.name
FROM orders o
JOIN customers c on c.id = o.customer_id
group by c.name
order by order_count desc;