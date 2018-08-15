/*
Write a query that returns all the orders where the standard_qty is over 1000, the poster_qty is 0, and the gloss_qty is 0.
*/
SELECT *
    FROM orders
    WHERE standard_qty > 1000 AND poster_qty = 0 AND gloss_qty = 0;
/*
Using the accounts table find all the companies whose names do not start with 'C' and end with 's'.
*/
SELECT name
    FROM accounts
    WHERE name NOT LIKE 'C%' AND name LIKE '%s';

SELECT *
FROM web_events
WHERE channel IN ('organic', 'adwords') AND occurred_at BETWEEN '2016-01-01' AND '2017-01-01' -- between is generally inclusive!
ORDER BY occurred_at DESC;