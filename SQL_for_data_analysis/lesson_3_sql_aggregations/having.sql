-- How many of the sales reps have more than 5 accounts that they manage?
SELECT s.name rep_name, COUNT(a.sales_rep_id) AS num_of_accounts
FROM sales_reps s
JOIN accounts a
ON s.id = a.sales_rep_id
GROUP BY rep_name
HAVING COUNT(a.sales_rep_id) > 5
ORDER BY num_of_accounts DESC;

-- How many accounts have more than 20 orders?
SELECT a.name AS account_name, COUNT(*) num_of_orders
FROM accounts a
JOIN orders o
ON o.account_id = a.id
GROUP BY account_name
HAVING COUNT(*) > 20
ORDER BY num_of_orders DESC;

-- Which account has the most orders?
SELECT a.name AS account_name, COUNT(*) num_of_orders
FROM accounts a
JOIN orders o
ON o.account_id = a.id
GROUP BY account_name
HAVING COUNT(*) > 20
ORDER BY num_of_orders DESC
LIMIT 1;

-- How many accounts spent more than 30,000 usd total across all orders?
SELECT a.name AS account_name,
       SUM(o.total_amt_usd) AS total_across_all
FROM accounts a
JOIN orders o
ON a.id = o.account_id
GROUP BY account_name
HAVING SUM(o.total_amt_usd) > 30000;

-- How many accounts spent less than 1,000 usd total across all orders?
SELECT a.name AS account_name, SUM(o.total_amt_usd) AS total_across_all
FROM accounts a
JOIN orders o
ON a.id = o.account_id
GROUP BY account_name
HAVING SUM(o.total_amt_usd) < 1000;

-- Which account has spent the most with us?
SELECT a.name AS account_name,
       SUM(o.total_amt_usd) AS total_across_all
FROM accounts a
JOIN orders o
ON a.id = o.account_id
GROUP BY account_name
ORDER BY total_across_all DESC
LIMIT 1;

-- Which account has spent the least with us?
SELECT a.name AS account_name,
       SUM(o.total_amt_usd) AS total_across_all
FROM accounts a
JOIN orders o
ON a.id = o.account_id
GROUP BY account_name
ORDER BY total_across_all
LIMIT 1;

-- Which accounts used facebook as a channel to contact customers more than 6 times?
SELECT a.id, a.name, w.channel, COUNT(*) use_of_channel
FROM accounts a
JOIN web_events w
ON a.id = w.account_id
GROUP BY a.id, a.name, w.channel
HAVING COUNT(*) > 6 AND w.channel = 'facebook'
ORDER BY use_of_channel;

-- Which account used facebook most as a channel?
SELECT a.id, a.name, w.channel, COUNT(*) use_of_channel
FROM accounts a
JOIN web_events w
ON a.id = w.account_id
GROUP BY a.id, a.name, w.channel
HAVING w.channel = 'facebook'
ORDER BY use_of_channel DESC
LIMIT 1;

-- Which channel was most frequently used by most accounts?
SELECT a.id, a.name, w.channel, COUNT(*) use_of_channel
FROM accounts a
JOIN web_events w
ON a.id = w.account_id
GROUP BY a.id, a.name, w.channel
ORDER BY use_of_channel DESC;