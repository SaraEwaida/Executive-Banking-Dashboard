-- 1. Customer Analysis
-- 1.1 Write SQL query for total customers
SELECT COUNT(*) AS total_customers
FROM CUSTOMERS;

-- 1.2 Write SQL query for customers by city
SELECT city, COUNT(*) AS num_customers
FROM CUSTOMERS
GROUP BY city
ORDER BY num_customers DESC;

--1.3 Write SQL query for customers by branch
SELECT b.branch_name, b.city, COUNT(c.customer_id) AS num_customers
FROM BRANCHES b
LEFT JOIN CUSTOMERS c ON c.branch_id = b.branch_id
GROUP BY b.branch_id, b.branch_name, b.city
ORDER BY num_customers DESC;

--1.4 Write SQL query for monthly customer registrations
SELECT TO_CHAR(join_date, 'YYYY-MM') AS registration_month,
       COUNT(*) AS new_customers
FROM CUSTOMERS
GROUP BY TO_CHAR(join_date, 'YYYY-MM')
ORDER BY registration_month;

-- 2. Account Analysis
-- 2.1 Write SQL query for active and closed accounts
SELECT status, COUNT(*) AS num_accounts
FROM ACCOUNTS
GROUP BY status;

-- 2.2 Write SQL query for total account balance by branch
SELECT b.branch_name, ROUND(SUM(a.balance), 2) AS total_balance
FROM BRANCHES b
JOIN CUSTOMERS c ON c.branch_id = b.branch_id
JOIN ACCOUNTS a ON a.customer_id = c.customer_id
GROUP BY b.branch_id, b.branch_name
ORDER BY total_balance DESC;

-- 2.3 Write SQL query for average account balance
SELECT ROUND(AVG(balance), 2) AS avg_active_balance
FROM ACCOUNTS
WHERE status = 'ACTIVE';

-- 2.4 Write SQL query for savings and checking accounts
SELECT account_type, COUNT(*) AS num_accounts, ROUND(SUM(balance), 2) AS total_balance
FROM ACCOUNTS
GROUP BY account_type;

-- 2.5 Write SQL query for top customers by account balance
SELECT c.customer_id, c.first_name || ' ' || c.last_name AS customer_name,
       ROUND(SUM(a.balance), 2) AS total_balance
FROM CUSTOMERS c
JOIN ACCOUNTS a ON a.customer_id = c.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_balance DESC
FETCH FIRST 10 ROWS ONLY;

-- 3. Transaction Analysis
-- 3.1 Write SQL query for monthly transaction volume
SELECT TO_CHAR(trans_date, 'YYYY-MM') AS trans_month,
       COUNT(*) AS num_transactions,
       ROUND(SUM(amount), 2) AS total_amount
FROM TRANSACTIONS
GROUP BY TO_CHAR(trans_date, 'YYYY-MM')
ORDER BY trans_month;

-- 3.2 Write SQL query for deposits and withdrawals
SELECT trans_type, COUNT(*) AS num_transactions, ROUND(SUM(amount), 2) AS total_amount
FROM TRANSACTIONS
GROUP BY trans_type;

-- 3.3 Write SQL query for largest transactions
SELECT transaction_id, account_id, trans_type, amount, trans_date, description
FROM TRANSACTIONS
ORDER BY amount DESC
FETCH FIRST 10 ROWS ONLY;

-- 3.4 Write SQL query for most active accounts
SELECT account_id, COUNT(*) AS num_transactions, ROUND(SUM(amount), 2) AS total_amount
FROM TRANSACTIONS
GROUP BY account_id
ORDER BY num_transactions DESC
FETCH FIRST 10 ROWS ONLY;

-- 3.5 Write SQL query for average transaction amount
SELECT ROUND(AVG(amount), 2) AS avg_transaction_amount
FROM TRANSACTIONS;

-- 4. Loan Analysis
-- 4.1 Write SQL query for active and paid loans
SELECT COUNT(*) AS active_loans
FROM LOANS
WHERE status = 'ACTIVE';

-- 4.2 Write SQL query for loan amounts by type
SELECT COUNT(*) AS paid_loans
FROM LOANS
WHERE status = 'PAID';

-- 4.3 Write SQL query for average loan interest rate
SELECT loan_type, COUNT(*) AS num_loans, ROUND(SUM(amount), 2) AS total_amount,
       ROUND(AVG(amount), 2) AS avg_amount
FROM LOANS
GROUP BY loan_type
ORDER BY total_amount DESC;

-- 4.4 Write SQL query for outstanding loan balances
SELECT ROUND(AVG(interest_rate), 2) AS avg_interest_rate_overall
FROM LOANS;
 
SELECT loan_type, ROUND(AVG(interest_rate), 2) AS avg_interest_rate
FROM LOANS
GROUP BY loan_type
ORDER BY avg_interest_rate DESC;

-- 4.5 Write SQL query for loan amounts by branch

-- 5. Card Analysis
-- 5.1 Write SQL query for active cards
-- 5.2 Write SQL query for credit and debit cards
-- 5.3 Write SQL query for expired cards

-- 6. Branch Performance
-- 6.1 Write SQL query for customers per branch
-- 6.2 Write SQL query for employees per branch
-- 6.3 Write SQL query for accounts per branch
-- 6.4 Write SQL query for total balances per branch
-- 6.5 Validate and organize all SQL queries

-- 1. Customer Analysis
-- 1.1 Write SQL query for total customers
SELECT COUNT(*) AS total_customers
FROM CUSTOMERS;

-- 1.2 Write SQL query for customers by city
SELECT city, COUNT(*) AS num_customers
FROM CUSTOMERS
GROUP BY city
ORDER BY num_customers DESC;

--1.3 Write SQL query for customers by branch
SELECT b.branch_name, b.city, COUNT(c.customer_id) AS num_customers
FROM BRANCHES b
LEFT JOIN CUSTOMERS c ON c.branch_id = b.branch_id
GROUP BY b.branch_id, b.branch_name, b.city
ORDER BY num_customers DESC;

--1.4 Write SQL query for monthly customer registrations
SELECT TO_CHAR(join_date, 'YYYY-MM') AS registration_month,
       COUNT(*) AS new_customers
FROM CUSTOMERS
GROUP BY TO_CHAR(join_date, 'YYYY-MM')
ORDER BY registration_month;

-- 2. Account Analysis
-- 2.1 Write SQL query for active and closed accounts
SELECT status, COUNT(*) AS num_accounts
FROM ACCOUNTS
GROUP BY status;

-- 2.2 Write SQL query for total account balance by branch
SELECT b.branch_name, ROUND(SUM(a.balance), 2) AS total_balance
FROM BRANCHES b
JOIN CUSTOMERS c ON c.branch_id = b.branch_id
JOIN ACCOUNTS a ON a.customer_id = c.customer_id
GROUP BY b.branch_id, b.branch_name
ORDER BY total_balance DESC;

-- 2.3 Write SQL query for average account balance
SELECT ROUND(AVG(balance), 2) AS avg_active_balance
FROM ACCOUNTS
WHERE status = 'ACTIVE';

-- 2.4 Write SQL query for savings and checking accounts
SELECT account_type, COUNT(*) AS num_accounts, ROUND(SUM(balance), 2) AS total_balance
FROM ACCOUNTS
GROUP BY account_type;

-- 2.5 Write SQL query for top customers by account balance
SELECT c.customer_id, c.first_name || ' ' || c.last_name AS customer_name,
       ROUND(SUM(a.balance), 2) AS total_balance
FROM CUSTOMERS c
JOIN ACCOUNTS a ON a.customer_id = c.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_balance DESC
FETCH FIRST 10 ROWS ONLY;

-- 3. Transaction Analysis
-- 3.1 Write SQL query for monthly transaction volume
SELECT TO_CHAR(trans_date, 'YYYY-MM') AS trans_month,
       COUNT(*) AS num_transactions,
       ROUND(SUM(amount), 2) AS total_amount
FROM TRANSACTIONS
GROUP BY TO_CHAR(trans_date, 'YYYY-MM')
ORDER BY trans_month;

-- 3.2 Write SQL query for deposits and withdrawals
SELECT trans_type, COUNT(*) AS num_transactions, ROUND(SUM(amount), 2) AS total_amount
FROM TRANSACTIONS
GROUP BY trans_type;

-- 3.3 Write SQL query for largest transactions
SELECT transaction_id, account_id, trans_type, amount, trans_date, description
FROM TRANSACTIONS
ORDER BY amount DESC
FETCH FIRST 10 ROWS ONLY;

-- 3.4 Write SQL query for most active accounts
SELECT account_id, COUNT(*) AS num_transactions, ROUND(SUM(amount), 2) AS total_amount
FROM TRANSACTIONS
GROUP BY account_id
ORDER BY num_transactions DESC
FETCH FIRST 10 ROWS ONLY;

-- 3.5 Write SQL query for average transaction amount
SELECT ROUND(AVG(amount), 2) AS avg_transaction_amount
FROM TRANSACTIONS;

-- 4. Loan Analysis
-- 4.1 Write SQL query for active and paid loans
SELECT COUNT(*) AS active_loans
FROM LOANS
WHERE status = 'ACTIVE';

-- 4.2 Write SQL query for loan amounts by type
SELECT COUNT(*) AS paid_loans
FROM LOANS
WHERE status = 'PAID';

-- 4.3 Write SQL query for average loan interest rate
SELECT loan_type, COUNT(*) AS num_loans, ROUND(SUM(amount), 2) AS total_amount,
       ROUND(AVG(amount), 2) AS avg_amount
FROM LOANS
GROUP BY loan_type
ORDER BY total_amount DESC;

-- 4.4 Write SQL query for outstanding loan balances
SELECT ROUND(AVG(interest_rate), 2) AS avg_interest_rate_overall
FROM LOANS;
 
SELECT loan_type, ROUND(AVG(interest_rate), 2) AS avg_interest_rate
FROM LOANS
GROUP BY loan_type
ORDER BY avg_interest_rate DESC;

-- 4.5 Write SQL query for loan amounts by branch

-- 5. Card Analysis
-- 5.1 Write SQL query for active cards
-- 5.2 Write SQL query for credit and debit cards
-- 5.3 Write SQL query for expired cards

-- 6. Branch Performance
-- 6.1 Write SQL query for customers per branch
-- 6.2 Write SQL query for employees per branch
-- 6.3 Write SQL query for accounts per branch
-- 6.4 Write SQL query for total balances per branch
-- 6.5 Validate and organize all SQL queries

-- 1. Customer Analysis
-- 1.1 Write SQL query for total customers
SELECT COUNT(*) AS total_customers
FROM CUSTOMERS;

-- 1.2 Write SQL query for customers by city
SELECT city, COUNT(*) AS num_customers
FROM CUSTOMERS
GROUP BY city
ORDER BY num_customers DESC;

--1.3 Write SQL query for customers by branch
SELECT b.branch_name, b.city, COUNT(c.customer_id) AS num_customers
FROM BRANCHES b
LEFT JOIN CUSTOMERS c ON c.branch_id = b.branch_id
GROUP BY b.branch_id, b.branch_name, b.city
ORDER BY num_customers DESC;

--1.4 Write SQL query for monthly customer registrations
SELECT TO_CHAR(join_date, 'YYYY-MM') AS registration_month,
       COUNT(*) AS new_customers
FROM CUSTOMERS
GROUP BY TO_CHAR(join_date, 'YYYY-MM')
ORDER BY registration_month;

-- 2. Account Analysis
-- 2.1 Write SQL query for active and closed accounts
SELECT status, COUNT(*) AS num_accounts
FROM ACCOUNTS
GROUP BY status;

-- 2.2 Write SQL query for total account balance by branch
SELECT b.branch_name, ROUND(SUM(a.balance), 2) AS total_balance
FROM BRANCHES b
JOIN CUSTOMERS c ON c.branch_id = b.branch_id
JOIN ACCOUNTS a ON a.customer_id = c.customer_id
GROUP BY b.branch_id, b.branch_name
ORDER BY total_balance DESC;

-- 2.3 Write SQL query for average account balance
SELECT ROUND(AVG(balance), 2) AS avg_active_balance
FROM ACCOUNTS
WHERE status = 'ACTIVE';

-- 2.4 Write SQL query for savings and checking accounts
SELECT account_type, COUNT(*) AS num_accounts, ROUND(SUM(balance), 2) AS total_balance
FROM ACCOUNTS
GROUP BY account_type;

-- 2.5 Write SQL query for top customers by account balance
SELECT c.customer_id, c.first_name || ' ' || c.last_name AS customer_name,
       ROUND(SUM(a.balance), 2) AS total_balance
FROM CUSTOMERS c
JOIN ACCOUNTS a ON a.customer_id = c.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_balance DESC
FETCH FIRST 10 ROWS ONLY;

-- 3. Transaction Analysis
-- 3.1 Write SQL query for monthly transaction volume
SELECT TO_CHAR(trans_date, 'YYYY-MM') AS trans_month,
       COUNT(*) AS num_transactions,
       ROUND(SUM(amount), 2) AS total_amount
FROM TRANSACTIONS
GROUP BY TO_CHAR(trans_date, 'YYYY-MM')
ORDER BY trans_month;

-- 3.2 Write SQL query for deposits and withdrawals
SELECT trans_type, COUNT(*) AS num_transactions, ROUND(SUM(amount), 2) AS total_amount
FROM TRANSACTIONS
GROUP BY trans_type;

-- 3.3 Write SQL query for largest transactions
SELECT transaction_id, account_id, trans_type, amount, trans_date, description
FROM TRANSACTIONS
ORDER BY amount DESC
FETCH FIRST 10 ROWS ONLY;

-- 3.4 Write SQL query for most active accounts
SELECT account_id, COUNT(*) AS num_transactions, ROUND(SUM(amount), 2) AS total_amount
FROM TRANSACTIONS
GROUP BY account_id
ORDER BY num_transactions DESC
FETCH FIRST 10 ROWS ONLY;

-- 3.5 Write SQL query for average transaction amount
SELECT ROUND(AVG(amount), 2) AS avg_transaction_amount
FROM TRANSACTIONS;

-- 4. Loan Analysis
-- 4.1 Write SQL query for active and paid loans
SELECT COUNT(*) AS active_loans
FROM LOANS
WHERE status = 'ACTIVE';

-- 4.2 Write SQL query for loan amounts by type
SELECT COUNT(*) AS paid_loans
FROM LOANS
WHERE status = 'PAID';

-- 4.3 Write SQL query for average loan interest rate
SELECT loan_type, COUNT(*) AS num_loans, ROUND(SUM(amount), 2) AS total_amount,
       ROUND(AVG(amount), 2) AS avg_amount
FROM LOANS
GROUP BY loan_type
ORDER BY total_amount DESC;

-- 4.4 Write SQL query for outstanding loan balances
SELECT ROUND(AVG(interest_rate), 2) AS avg_interest_rate_overall
FROM LOANS;
 
SELECT loan_type, ROUND(AVG(interest_rate), 2) AS avg_interest_rate
FROM LOANS
GROUP BY loan_type
ORDER BY avg_interest_rate DESC;

-- 4.5 Write SQL query for loan amounts by branch

-- 5. Card Analysis
-- 5.1 Write SQL query for active cards
-- 5.2 Write SQL query for credit and debit cards
-- 5.3 Write SQL query for expired cards

-- 6. Branch Performance
-- 6.1 Write SQL query for customers per branch
-- 6.2 Write SQL query for employees per branch
-- 6.3 Write SQL query for accounts per branch
-- 6.4 Write SQL query for total balances per branch
-- 6.5 Validate and organize all SQL queries

-- 1. Customer Analysis
-- 1.1 Write SQL query for total customers
SELECT COUNT(*) AS total_customers
FROM CUSTOMERS;

-- 1.2 Write SQL query for customers by city
SELECT city, COUNT(*) AS num_customers
FROM CUSTOMERS
GROUP BY city
ORDER BY num_customers DESC;

--1.3 Write SQL query for customers by branch
SELECT b.branch_name, b.city, COUNT(c.customer_id) AS num_customers
FROM BRANCHES b
LEFT JOIN CUSTOMERS c ON c.branch_id = b.branch_id
GROUP BY b.branch_id, b.branch_name, b.city
ORDER BY num_customers DESC;

--1.4 Write SQL query for monthly customer registrations
SELECT TO_CHAR(join_date, 'YYYY-MM') AS registration_month,
       COUNT(*) AS new_customers
FROM CUSTOMERS
GROUP BY TO_CHAR(join_date, 'YYYY-MM')
ORDER BY registration_month;

-- 2. Account Analysis
-- 2.1 Write SQL query for active and closed accounts
SELECT status, COUNT(*) AS num_accounts
FROM ACCOUNTS
GROUP BY status;

-- 2.2 Write SQL query for total account balance by branch
SELECT b.branch_name, ROUND(SUM(a.balance), 2) AS total_balance
FROM BRANCHES b
JOIN CUSTOMERS c ON c.branch_id = b.branch_id
JOIN ACCOUNTS a ON a.customer_id = c.customer_id
GROUP BY b.branch_id, b.branch_name
ORDER BY total_balance DESC;

-- 2.3 Write SQL query for average account balance
SELECT ROUND(AVG(balance), 2) AS avg_active_balance
FROM ACCOUNTS
WHERE status = 'ACTIVE';

-- 2.4 Write SQL query for savings and checking accounts
SELECT account_type, COUNT(*) AS num_accounts, ROUND(SUM(balance), 2) AS total_balance
FROM ACCOUNTS
GROUP BY account_type;

-- 2.5 Write SQL query for top customers by account balance
SELECT c.customer_id, c.first_name || ' ' || c.last_name AS customer_name,
       ROUND(SUM(a.balance), 2) AS total_balance
FROM CUSTOMERS c
JOIN ACCOUNTS a ON a.customer_id = c.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_balance DESC
FETCH FIRST 10 ROWS ONLY;

-- 3. Transaction Analysis
-- 3.1 Write SQL query for monthly transaction volume
SELECT TO_CHAR(trans_date, 'YYYY-MM') AS trans_month,
       COUNT(*) AS num_transactions,
       ROUND(SUM(amount), 2) AS total_amount
FROM TRANSACTIONS
GROUP BY TO_CHAR(trans_date, 'YYYY-MM')
ORDER BY trans_month;

-- 3.2 Write SQL query for deposits and withdrawals
SELECT trans_type, COUNT(*) AS num_transactions, ROUND(SUM(amount), 2) AS total_amount
FROM TRANSACTIONS
GROUP BY trans_type;

-- 3.3 Write SQL query for largest transactions
SELECT transaction_id, account_id, trans_type, amount, trans_date, description
FROM TRANSACTIONS
ORDER BY amount DESC
FETCH FIRST 10 ROWS ONLY;

-- 3.4 Write SQL query for most active accounts
SELECT account_id, COUNT(*) AS num_transactions, ROUND(SUM(amount), 2) AS total_amount
FROM TRANSACTIONS
GROUP BY account_id
ORDER BY num_transactions DESC
FETCH FIRST 10 ROWS ONLY;

-- 3.5 Write SQL query for average transaction amount
SELECT ROUND(AVG(amount), 2) AS avg_transaction_amount
FROM TRANSACTIONS;

-- 4. Loan Analysis
-- 4.1 Write SQL query for active and paid loans
SELECT COUNT(*) AS active_loans
FROM LOANS
WHERE status = 'ACTIVE';

-- 4.2 Write SQL query for loan amounts by type
SELECT COUNT(*) AS paid_loans
FROM LOANS
WHERE status = 'PAID';

-- 4.3 Write SQL query for average loan interest rate
SELECT loan_type, COUNT(*) AS num_loans, ROUND(SUM(amount), 2) AS total_amount,
       ROUND(AVG(amount), 2) AS avg_amount
FROM LOANS
GROUP BY loan_type
ORDER BY total_amount DESC;

-- 4.4 Write SQL query for outstanding loan balances
SELECT ROUND(AVG(interest_rate), 2) AS avg_interest_rate_overall
FROM LOANS;
 
SELECT loan_type, ROUND(AVG(interest_rate), 2) AS avg_interest_rate
FROM LOANS
GROUP BY loan_type
ORDER BY avg_interest_rate DESC;

-- 4.5 Write SQL query for loan amounts by branch

-- 5. Card Analysis
-- 5.1 Write SQL query for active cards
-- 5.2 Write SQL query for credit and debit cards
-- 5.3 Write SQL query for expired cards

-- 6. Branch Performance
-- 6.1 Write SQL query for customers per branch
-- 6.2 Write SQL query for employees per branch
-- 6.3 Write SQL query for accounts per branch
-- 6.4 Write SQL query for total balances per branch
-- 6.5 Validate and organize all SQL queries



-- 1. Customer Analysis
-- 1.1 Write SQL query for total customers
SELECT COUNT(*) AS total_customers
FROM CUSTOMERS;

-- 1.2 Write SQL query for customers by city
SELECT city, COUNT(*) AS num_customers
FROM CUSTOMERS
GROUP BY city
ORDER BY num_customers DESC;

--1.3 Write SQL query for customers by branch
SELECT b.branch_name, b.city, COUNT(c.customer_id) AS num_customers
FROM BRANCHES b
LEFT JOIN CUSTOMERS c ON c.branch_id = b.branch_id
GROUP BY b.branch_id, b.branch_name, b.city
ORDER BY num_customers DESC;

--1.4 Write SQL query for monthly customer registrations
SELECT TO_CHAR(join_date, 'YYYY-MM') AS registration_month,
       COUNT(*) AS new_customers
FROM CUSTOMERS
GROUP BY TO_CHAR(join_date, 'YYYY-MM')
ORDER BY registration_month;

-- 2. Account Analysis
-- 2.1 Write SQL query for active and closed accounts
SELECT status, COUNT(*) AS num_accounts
FROM ACCOUNTS
GROUP BY status;

-- 2.2 Write SQL query for total account balance by branch
SELECT b.branch_name, ROUND(SUM(a.balance), 2) AS total_balance
FROM BRANCHES b
JOIN CUSTOMERS c ON c.branch_id = b.branch_id
JOIN ACCOUNTS a ON a.customer_id = c.customer_id
GROUP BY b.branch_id, b.branch_name
ORDER BY total_balance DESC;

-- 2.3 Write SQL query for average account balance
SELECT ROUND(AVG(balance), 2) AS avg_active_balance
FROM ACCOUNTS
WHERE status = 'ACTIVE';

-- 2.4 Write SQL query for savings and checking accounts
SELECT account_type, COUNT(*) AS num_accounts, ROUND(SUM(balance), 2) AS total_balance
FROM ACCOUNTS
GROUP BY account_type;

-- 2.5 Write SQL query for top customers by account balance
SELECT c.customer_id, c.first_name || ' ' || c.last_name AS customer_name,
       ROUND(SUM(a.balance), 2) AS total_balance
FROM CUSTOMERS c
JOIN ACCOUNTS a ON a.customer_id = c.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_balance DESC
FETCH FIRST 10 ROWS ONLY;

-- 3. Transaction Analysis
-- 3.1 Write SQL query for monthly transaction volume
SELECT TO_CHAR(trans_date, 'YYYY-MM') AS trans_month,
       COUNT(*) AS num_transactions,
       ROUND(SUM(amount), 2) AS total_amount
FROM TRANSACTIONS
GROUP BY TO_CHAR(trans_date, 'YYYY-MM')
ORDER BY trans_month;

-- 3.2 Write SQL query for deposits and withdrawals
SELECT trans_type, COUNT(*) AS num_transactions, ROUND(SUM(amount), 2) AS total_amount
FROM TRANSACTIONS
GROUP BY trans_type;

-- 3.3 Write SQL query for largest transactions
SELECT transaction_id, account_id, trans_type, amount, trans_date, description
FROM TRANSACTIONS
ORDER BY amount DESC
FETCH FIRST 10 ROWS ONLY;

-- 3.4 Write SQL query for most active accounts
SELECT account_id, COUNT(*) AS num_transactions, ROUND(SUM(amount), 2) AS total_amount
FROM TRANSACTIONS
GROUP BY account_id
ORDER BY num_transactions DESC
FETCH FIRST 10 ROWS ONLY;

-- 3.5 Write SQL query for average transaction amount
SELECT ROUND(AVG(amount), 2) AS avg_transaction_amount
FROM TRANSACTIONS;

-- 4. Loan Analysis
-- 4.1 Write SQL query for active and paid loans
SELECT COUNT(*) AS active_loans
FROM LOANS
WHERE status = 'ACTIVE';

-- 4.2 Write SQL query for loan amounts by type
SELECT COUNT(*) AS paid_loans
FROM LOANS
WHERE status = 'PAID';

-- 4.3 Write SQL query for average loan interest rate
SELECT loan_type, COUNT(*) AS num_loans, ROUND(SUM(amount), 2) AS total_amount,
       ROUND(AVG(amount), 2) AS avg_amount
FROM LOANS
GROUP BY loan_type
ORDER BY total_amount DESC;

-- 4.4 Write SQL query for outstanding loan balances
SELECT ROUND(AVG(interest_rate), 2) AS avg_interest_rate_overall
FROM LOANS;

SELECT loan_type, ROUND(AVG(interest_rate), 2) AS avg_interest_rate
FROM LOANS
GROUP BY loan_type
ORDER BY avg_interest_rate DESC;

-- 4.5 Write SQL query for loan amounts by branch
SELECT b.branch_name, b.city,
       COUNT(l.loan_id) AS num_loans,
       ROUND(SUM(l.amount), 2) AS total_loan_amount
FROM BRANCHES b
JOIN CUSTOMERS c ON c.branch_id = b.branch_id
JOIN LOANS l ON l.customer_id = c.customer_id
GROUP BY b.branch_id, b.branch_name, b.city
ORDER BY total_loan_amount DESC;

-- 5. Card Analysis
-- 5.1 Write SQL query for active cards
SELECT COUNT(*) AS active_cards
FROM CARDS
WHERE status = 'ACTIVE';

-- 5.2 Write SQL query for credit and debit cards
SELECT card_type, COUNT(*) AS num_cards
FROM CARDS
GROUP BY card_type
ORDER BY num_cards DESC;

-- 5.3 Write SQL query for expired cards
SELECT COUNT(*) AS expired_cards
FROM CARDS
WHERE status = 'EXPIRED';

-- 6. Branch Performance
-- 6.1 Write SQL query for customers per branch
SELECT b.branch_name, COUNT(c.customer_id) AS num_customers
FROM BRANCHES b
LEFT JOIN CUSTOMERS c ON c.branch_id = b.branch_id
GROUP BY b.branch_id, b.branch_name
ORDER BY num_customers DESC;

-- 6.2 Write SQL query for employees per branch
SELECT b.branch_name, COUNT(e.employee_id) AS num_employees
FROM BRANCHES b
LEFT JOIN EMPLOYEES e ON e.branch_id = b.branch_id
GROUP BY b.branch_id, b.branch_name
ORDER BY num_employees DESC;

-- 6.3 Write SQL query for accounts per branch
SELECT b.branch_name, COUNT(a.account_id) AS num_accounts
FROM BRANCHES b
JOIN CUSTOMERS c ON c.branch_id = b.branch_id
JOIN ACCOUNTS a ON a.customer_id = c.customer_id
GROUP BY b.branch_id, b.branch_name
ORDER BY num_accounts DESC;

-- 6.4 Write SQL query for total balances per branch (branch performance ranking)
SELECT b.branch_name, b.city,
       COUNT(DISTINCT c.customer_id) AS num_customers,
       COUNT(a.account_id) AS num_accounts,
       ROUND(SUM(a.balance), 2) AS total_balance,
       RANK() OVER (ORDER BY SUM(a.balance) DESC) AS branch_rank
FROM BRANCHES b
JOIN CUSTOMERS c ON c.branch_id = b.branch_id
JOIN ACCOUNTS a ON a.customer_id = c.customer_id
GROUP BY b.branch_id, b.branch_name, b.city
ORDER BY total_balance DESC;


