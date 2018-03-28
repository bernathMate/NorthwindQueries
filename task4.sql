SELECT customers.companyname AS CompanyName, ARRAY_TO_STRING(ARRAY_AGG(orders.orderid), ',') AS Orders
FROM orders
RIGHT JOIN customers ON orders.customerid = customers.customerid
GROUP BY CompanyName
ORDER BY CompanyName;




