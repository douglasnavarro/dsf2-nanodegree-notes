-- Which account (by name) placed the earliest order? Your solution should have the account name and the date of the order.
SELECT a.name, o.occurred_at
FROM accounts AS a
JOIN orders AS o
ON o.account_id = a.id
ORDER BY o.occurred_at
LIMIT 1;

-- Find the total sales in usd for each account.
-- You should include two columns - the total sales for each company's orders in usd and the company name.
SELECT a.name, SUM(total_amt_usd) total_sales
FROM orders o
JOIN accounts a
ON a.id = o.account_id
GROUP BY a.name;

-- Via what channel did the most recent (latest) web_event occur, which account was associated with this web_event? Your query should return only three values - the date, channel, and account name.


-- Find the total number of times each type of channel from the web_events was used.
-- Your final table should have two columns - the channel and the number of times the channel was used.


-- Who was the primary contact associated with the earliest web_event?

-- What was the smallest order placed by each account in terms of total usd.
-- Provide only two columns - the account name and the total usd.
-- Order from smallest dollar amounts to largest.

-- Find the number of sales reps in each region.
-- Your final table should have two columns - the region and the number of sales_reps.
-- Order from fewest reps to most reps.

