--18-b:find the total revenue per region
--The reason why the result is inaccurate is that NULL value(we can find some ship_region are NULL) leads to the inaccurete sum of 
--the data after using group by. Aggregate functions such as sum(), avg() return NULL values
--instead of real results and NULL value combine any value return NULL.
select sum(od.quantity * od.unit_price * (1-od.discount)), o.ship_region from order_details od
left join orders o on od.order_id = o.order_id
group by o.ship_region
