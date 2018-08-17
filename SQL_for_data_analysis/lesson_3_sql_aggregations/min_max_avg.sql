-- When was the earliest order ever placed? You only need to return the date.
SELECT MIN(occurred_at) AS earliest_order
FROM orders;
-- 2013-12-04T04:22:44.000Z

-- Try performing the same query as in question 1 without using an aggregation function.
SELECT occurred_at AS earliest_order
FROM orders
ORDER BY occurred_at
LIMIT 1;
-- 2013-12-04T04:22:44.000Z

-- When did the most recent (latest) web_event occur?
SELECT MAX(occurred_at) AS latest_event
FROM web_events;
-- 2017-01-01T23:51:09.000Z

-- Try to perform the result of the previous query without using an aggregation function.
SELECT occurred_at AS latest_event
FROM web_events
ORDER BY occurred_at DESC
LIMIT 1;
-- 2017-01-01T23:51:09.000Z

-- Find the mean (AVERAGE) amount spent per order on each paper type, as well as the mean amount of each paper type purchased per order.
-- Your final answer should have 6 values - one for each paper type for the average number of sales, as well as the average amount.
SELECT AVG(standard_qty) AS avg_std_qty,
       AVG(gloss_qty) AS avg_gloss_qty,
       AVG(poster_qty) AS avg_poster_qty,
       AVG(standard_amt_usd) AS avg_std_usd,
       AVG(gloss_amt_usd) AS avg_gloss_usd,
       AVG(poster_amt_usd) AS avg_poster_usd
FROM orders;

-- Via the video, you might be interested in how to calculate the MEDIAN.
-- Though this is more advanced than what we have covered so far try finding - what is the MEDIAN total_usd spent on all orders?
SELECT *
FROM (SELECT total_amt_usd
      FROM orders
      ORDER BY total_amt_usd
      LIMIT 3457) AS Table1
ORDER BY total_amt_usd DESC
LIMIT 2;