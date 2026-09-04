select c.category_name, 
	sum(od.quantity * od.unit_price) as total_revenue 
from orders o 
join order_details od on o.order_id = od.order_id 
join products p on p.product_id = od.product_id
join categories c on c.category_id = p.category_id
group by c.category_name
order by total_revenue desc;


select e.first_name, e.last_name,
	sum(od.quantity * od.unit_price) as total_sales 
from employees e
join orders o on o.employee_id = e.employee_id
join order_details od on od.order_id = o.order_id
group by e.employee_id, e.first_name, e.last_name 
order by total_sales desc;


select c.category_name,
	extract(quarter from o.order_date) as quarter,
	extract(year from o.order_date) as year, 
	SUM(od.quantity * od.unit_price) as total_revenue 
from orders o 
join order_details od on od.order_id = o.order_id
join products p on p.product_id = od.product_id
join categories c on c.category_id = p.category_id
group by c.category_name, quarter, year
order by year , quarter, total_revenue DESC;