SELECT suppliers.companyname AS Company, COUNT(products.supplierid) AS NumberOfProducts
	FROM suppliers
	JOIN products ON suppliers.supplierid = products.supplierid
	GROUP BY companyname
	ORDER BY NumberOfProducts DESC, Company ASC;