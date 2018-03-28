SELECT suppliers.companyname, products.productname, products.unitprice
FROM suppliers
JOIN products ON suppliers.supplierid = products.supplierid
WHERE products.unitprice = (SELECT MAX(products.unitprice) FROM products WHERE products.supplierid = suppliers.supplierid)
ORDER BY products.unitprice DESC, suppliers.companyname ASC, products.productname ASC;




