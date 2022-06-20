-- can use to view to filter quantity sold by a any amount as per example below.
SELECT product, quantity_sold, product_total_sales 
	FROM part2.product_qty_total_per_item
	GROUP BY (product, quantity_sold,product_total_sales)
  	HAVING SUM(quantity_sold) > 10;
	