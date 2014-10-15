SELECT li.order_id,
		sum(p.price)
FROM line_items li
JOIN products p on p.id = li.product_id
GROUP BY li.order_id
ORDER BY li.order_id asc;
