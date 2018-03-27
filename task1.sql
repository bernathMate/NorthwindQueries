SELECT products.ProductName AS Product, suppliers.CompanyName AS Company
	FROM products, suppliers
	WHERE products.SupplierID = suppliers.SupplierID
	ORDER BY products.ProductName ASC, suppliers.CompanyName ASC;