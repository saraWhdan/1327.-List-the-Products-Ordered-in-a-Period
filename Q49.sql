select p.product_name, q.unit from  Products p join 
(select product_id ,
sum(unit) as unit
from Orders
where order_date like '2020-02%'
group by product_id
having sum(unit) >= 100) as q
on p.product_id = q.product_id
