-- is query from a view to get the total sales by client

SELECT * from part2."invoice_total";

SELECT customer as Client, Sum(total) AS Total_Sales 
FROM part2."invoice_total"
GROUP BY customer
ORDER BY Sum(total) DESC;