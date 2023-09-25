# 1327. List the Products Ordered in a Period
### Problem Link & Description : [List the Products Ordered in a Period](https://leetcode.com/problems/list-the-products-ordered-in-a-period/description/?envType=study-plan-v2&envId=top-sql-50)
## Solution
```sql
select p.product_name, q.unit from  Products p join 
(select product_id ,
sum(unit) as unit
from Orders
where order_date like '2020-02%'
group by product_id
having sum(unit) >= 100) as q
on p.product_id = q.product_id
