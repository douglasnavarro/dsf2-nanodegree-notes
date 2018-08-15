/*
Use the accounts table to find the account name, primary poc, and sales rep id for all stores except Walmart, Target, and Nordstrom.
*/
SELECT name,
       primary_poc,
       sales_rep_id
    FROM accounts
    WHERE name NOT IN('Walmart', 'Target', 'Nordstrom');
/*
Use the web_events table to find all information regarding individuals who were contacted via any method except using organic or adwords methods.
*/
SELECT *
    FROM web_events
    WHERE channel NOT IN ('organic', 'adwords');