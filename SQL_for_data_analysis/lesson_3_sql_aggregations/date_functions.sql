-- Find the sales in terms of total dollars for all orders in each year, ordered from greatest to least.
-- Do you notice any trends in the yearly sales totals?
SELECT DATE_PART('year', o.occurred_at) as year, SUM(o.total_amt_usd)
FROM orders o
GROUP BY year
ORDER BY year;

-- Which month did Parch & Posey have the greatest sales in terms of total dollars?
-- Are all months evenly represented by the dataset?
SELECT DATE_PART('month', o.occurred_at) as month, SUM(o.total_amt_usd) as sum_total_amt_usd
FROM orders o
WHERE occurred_at BETWEEN '2014-01-01' AND '2017-01-01'
GROUP BY month
ORDER BY sum_total_amt_usd DESC;

-- Which year did Parch & Posey have the greatest sales in terms of total number of orders?
-- Are all years evenly represented by the dataset?
SELECT DATE_PART('year', o.occurred_at) as year, COUNT(*) as orders
FROM orders o
GROUP BY year
ORDER BY orders DESC;
-- LIMIT 1;

-- Which month did Parch & Posey have the greatest sales in terms of total number of orders?
-- Are all months evenly represented by the dataset?
SELECT DATE_PART('month', o.occurred_at) as month, COUNT(*) as orders
FROM orders o
WHERE occurred_at BETWEEN '2014-01-01' AND '2017-01-01'
GROUP BY month
ORDER BY orders DESC;

-- In which month of which year did Walmart spend the most on gloss paper in terms of dollars?
SELECT DATE_TRUNC('month', o.occurred_at) ord_date, SUM(o.gloss_amt_usd) tot_spent
FROM orders o 
JOIN accounts a
ON a.id = o.account_id
WHERE a.name = 'Walmart'
GROUP BY 1
ORDER BY 2 DESC