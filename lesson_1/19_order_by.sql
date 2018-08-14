/*
1. Write a query to return the 10 earliest orders in the orders table. Include the id, occurred_at, and total_amt_usd.
SELECT id, occurred_at, total_amt_usd
*/
SELECT id, occurred_at, total_amt_usd
	FROM orders
    ORDER BY occurred_at DESC
    LIMIT 10;
/*
id	occurred_at	total_amt_usd
6451	2017-01-02T00:02:40.000Z	6451.76
3546	2017-01-01T23:50:16.000Z	1932.85
6454	2017-01-01T22:29:50.000Z	1854.57
3554	2017-01-01T22:17:26.000Z	2666.79
6556	2017-01-01T21:04:25.000Z	892.85
3745	2017-01-01T20:52:23.000Z	2582.40
1092	2017-01-01T17:34:10.000Z	1525.98
1364	2017-01-01T16:40:57.000Z	1036.57
3159	2017-01-01T14:05:39.000Z	1870.35
6223	2017-01-01T13:57:21.000Z	4676.25
*/

-- 2.Write a query to return the top 5 orders in terms of largest total_amt_usd. Include the id, account_id, and total_amt_usd.
SELECT id, account_id, total_amt_usd
    FROM orders
    ORDER BY total_amt_usd DESC
    LIMIT 5;
/*
id	account_id	total_amt_usd
4016	4251	232207.07
3892	4161	112875.18
3963	4211	107533.55
5791	2861	95005.82
3778	4101	93547.84
*/

-- 3. Write a query to return the bottom 20 orders in terms of least total. Include the id, account_id, and total.
SELECT id, account_id, total
    FROM orders
    ORDER BY total
    LIMIT 20;
/*
id	account_id	total
6375	3651	0
6435	3801	0
5001	1791	0
6323	3551	0
6312	3541	0
6281	3491	0
4770	1521	0
4490	1281	0
6009	3141	0
4844	1571	0
4625	1411	0
5057	1851	0
5612	2601	0
4445	1221	0
4446	1231	0
124	1131	0
2518	2881	0
1353	1951	0
6856	4451	0
6523	3991	0
*/