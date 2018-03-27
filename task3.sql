SELECT suppliers.companyname AS Company
	FROM suppliers
	JOIN products ON suppliers.supplierid = products.supplierid
	GROUP BY companyname
	HAVING COUNT(products.supplierid) = 5
	ORDER BY Company ASC;