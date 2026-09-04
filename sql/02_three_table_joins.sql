select o.order_id, p.product_name, od.quantity, od.unit_price from orders o 
join order_details od on o.order_id = od.order_id 
join products p on od.product_id = p.product_id
order by o.order_id desc
limit 20;



select p.product_name, 
	sum(od.quantity * od.unit_price) as total_revenue 
from order_details od 
join products p on od.product_id = p.product_id
group by p.product_name 
order by total_revenue desc
limit 20;