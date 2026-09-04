select o.order_id, c.company_name, o.order_date from orders o 
join customers c on o.customer_id = c.customer_id order by o.order_date DESC
limit 20;

select p.product_name, c.category_name, p.unit_price from products p join categories c
on p.category_id = c.category_id order by c.category_name;

select o.order_id, e.last_name, e.first_name, o.order_date from orders o
join employees e on o.employee_id = e.employee_id limit 20;