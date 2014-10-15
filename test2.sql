select count(*) as order_count, customer_id
from orders
group by customer_id
order by order_count desc, customer_id asc
limit 5;
