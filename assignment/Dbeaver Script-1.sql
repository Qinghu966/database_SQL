--select * from customers c
--select count(1) from products p 
--select count(1) from employees e 

--qty * unit price * (1-discount) on all rows from order_details table
--select sum(quantity * unit_price * (1-discount)) from order_details od; 

select sum(quantity * unit_price * (1-discount)) from order_details od 
left join orders o on od.order_id = o.order_id 
where extract (year from o.order_date) = '1996'

select ship_country from orders o 
group by ship_country 