--1
select * from customers c

--2 number of different products
select count(product_id), product_name from products p
group by product_name 

--3
select count(1) from employees e 

--4 total overall revenue
select sum(quantity * unit_price * (1-discount)) from order_details od

--5 total revenue for one specific year
select sum(quantity * unit_price * (1-discount)) from order_details od
left join orders o on od.order_id = o.order_id 
where extract (year from o.order_date) = '1996'

--6
select distinct o.ship_country as country from orders o 
order by country

--7list of available transporters
select company_name from shippers s 


--8 number of customer per countries
select count(c.customer_id)as cnt, c.country from customers c 
group by c.country 
order by cnt desc 

--9 number of orders which are "ordered" but not shipped
select count(order_id) from orders o 
where shipped_date is null 

--10 all the orders from france and belgium
select * from orders 
where orders.ship_country ilike 'FRANCE' or orders.ship_country ilike 'BELGIUM'
where upper(orders.ship_country) in ('FRANCE' , 'BELGIUM')

--11 most expensive products
select * from products p 
order by p.unit_price desc

--12 list of discontinued products
select p.discontinued, p.product_name from products p
where p.discontinued = 1
order by p.product_name 

--13 count of product per category
select count(product_id), category_name from products p
right join categories c on p.category_id = c.category_id
group by category_name 

--14 average order price
select avg(unit_price*quantity*(1-discount))from order_details od

select avg(sumPerOrder)
from(
	select od.order_id, sum(unit_price*quantity*(1-discount)) as sumPerOrder from order_details od 
	group by od.order_id
) sumselect;

--15 revenue per category
select sum(od.quantity * od.unit_price * (1-od.discount)), c.category_name from order_details od
join products p on od.product_id = p.product_id
join categories c on p.category_id = c.category_id 
group by c.category_name

--16 number of orders per shipper
select count(order_id), s.shipper_id from orders o 
right join shippers s on o.ship_via = s.shipper_id 
group by s.shipper_id 

--17 number of orders per employee
select count(order_id), employee_id from orders o 
group by employee_id 

--18-a total revenue per supplier
select sum(od.quantity * od.unit_price * (1-od.discount)), s.supplier_id from order_details od
join products p on od.product_id = p.product_id
join suppliers s on p.supplier_id = s.supplier_id
group by s.supplier_id

--18-b:find the total revenue per region
select sum(od.quantity * od.unit_price * (1-od.discount)), o.ship_region from order_details od
left join orders o on od.order_id = o.order_id
group by o.ship_region

--19 insert a product with its category
insert into 





