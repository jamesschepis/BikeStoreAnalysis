-- sales trends view
SELECT 
	DATETRUNC(month, order_date) as order_date,
	SUM(sales_amount) as sales,
	COUNT(product_key) as buyers,
	SUM(quantity) as units,
	-- month on month growth:
	CONCAT
	(
		ROUND
		(
			(CAST(SUM(sales_amount) AS FLOAT)  - LAG(SUM(sales_amount)) OVER (ORDER BY DATETRUNC(month, order_date)))
			/ LAG(SUM(sales_amount)) OVER (ORDER BY DATETRUNC(month, order_date))
			* 100
			, 0
		)
		, '%'
	) as sales_growth
FROM gold.fact_sales
WHERE order_date IS NOT NULL 
AND order_date <= '2013-12-31' AND order_date > '2010-12-31'
GROUP BY DATETRUNC(month, order_date)
ORDER BY DATETRUNC(month, order_date);


-- product view for 2013
-- CTE
WITH product_view AS (
SELECT 
	p.category,
	p.subcategory,
	p.product_line,
	AVG(p.cost) as avg_cost,
	AVG(f.sales_amount) as avg_sales,
	SUM(f.quantity) as units,
	-- margin
	CONCAT
	(
		ROUND
		(
			(CAST(AVG(f.sales_amount) as FLOAT) - AVG(p.cost))
			/ AVG(f.sales_amount)
			*100 
			, 0
		)
		, '%'
	) as margin,
	SUM(f.sales_amount) as sales
FROM gold.dim_products p
INNER JOIN gold.fact_sales f
ON p.product_key = f.product_key
WHERE f.order_date IS NOT NULL 
AND order_date <= '2013-12-31' 
AND order_date > '2012-12-31'
GROUP BY 
	p.category,
	p.subcategory,
	p.product_line)
-- final view
SELECT
	category,
	subcategory,
	product_line,
	avg_cost,
	avg_sales,
	units,
	margin,
	sales,
	-- % of total sales
	ROUND
	(
		((CAST(sales AS FLOAT) / SUM(sales) OVER ()) * 100),
		1
	) AS percentage_of_total
FROM product_view
ORDER BY sales DESC;