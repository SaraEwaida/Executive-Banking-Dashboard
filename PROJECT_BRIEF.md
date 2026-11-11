# Project Brief: Executive Banking Dashboard

This is the original assignment brief for the project. Each part maps to a folder in this repository.

## Business Scenario

The Head of Retail Banking has asked for an interactive dashboard that lets management monitor customer activity, account performance, the loan portfolio, branch performance and transaction trends.

The analyst has access to the bank's database and is expected to deliver a professional BI solution.

## Deliverables at a Glance

| Part | Topic | Weight | Folder |
| --- | --- | --- | --- |
| 1 | Database Analysis | 10% | [Part1-Database-Analysis](Part1-Database-Analysis) |
| 2 | SQL | 30% | [Part2-SQL](Part2-SQL) |
| 3 | Excel | 10% | [Part3-Excel](Part3-Excel) |
| 4 | Power BI Dashboard | 35% | [Part4-5-PowerBI](Part4-5-PowerBI) |
| 5 | DAX Measures | 10% | [Part4-5-PowerBI](Part4-5-PowerBI) |
| 6 | Business Insights | 5% | [Part6-Business-Insights](Part6-Business-Insights) |
| Bonus | Extra dashboard page | +10% | [Part4-5-PowerBI](Part4-5-PowerBI) |

---

## Part 1 - Database Analysis (10%)

Understand the database before writing any SQL.

- Identify the purpose of each table.
- Draw an ER diagram showing the relationships.
- Explain how the tables are connected.
- Identify the fact tables and dimension tables.

The database includes Branches, Customers, Accounts, Transactions, Loans, Employees, Cards, Transfers, Fees, Loan Payments, Standing Orders, ATMs and other entities, linked by foreign keys.

## Part 2 - SQL (30%)

Write SQL queries that answer business questions.

| Area | Questions |
| --- | --- |
| Customer Analysis | Total customers; customers by city; customers by branch; monthly customer registrations |
| Account Analysis | Active vs closed accounts; total balances by branch; average account balance; savings vs checking accounts |
| Transaction Analysis | Monthly transaction volume; deposits vs withdrawals; largest transactions; most active accounts |
| Loan Analysis | Active loans; paid loans; loan amounts by type; average interest rate; outstanding loans |
| Card Analysis | Active cards; credit vs debit cards; expired cards |
| Branch Performance | Customers, employees and accounts per branch; total balances |

## Part 3 - Excel (10%)

Export the SQL results to Excel and prepare the dataset for Power BI:

- Data validation
- Duplicate checking
- Missing value checks
- Formatting
- Pivot tables
- Basic charts

## Part 4 - Power BI Dashboard (35%)

| Page | Content |
| --- | --- |
| 1. Executive Overview | KPIs: Total Customers, Total Accounts, Total Balance, Total Transactions, Total Loans, Total Branches |
| 2. Customer Insights | Customers by Branch, Customers by City, Monthly New Customers, Customer Distribution |
| 3. Accounts | Account Types, Active vs Closed, Balance by Branch, Top 10 Customers by Balance |
| 4. Transactions | Deposits vs Withdrawals, Monthly Trend, Largest Transactions, Average Transaction Amount |
| 5. Loans | Loans by Type, Loan Status, Loan Amount by Branch, Average Interest Rate |
| 6. Branch Performance | Branch Ranking, Employees, Customers, Accounts, Total Deposits |

**Required slicers:** Date, Branch, City, Customer, Loan Type, Account Type.

## Part 5 - DAX Measures (10%)

Create at least 15 measures, for example:

| Volume | Value | Time and Ranking |
| --- | --- | --- |
| Total Customers | Total Balance | Running Total Balance |
| Total Accounts | Average Balance | YTD Transactions |
| Active Accounts | Total Loan Amount | Monthly Growth % |
| Transaction Count | Average Interest Rate | Rank Branch |
| | Deposit Amount | Average Loan Size |
| | Withdrawal Amount | |

## Part 6 - Business Insights (5%)

A one-page report answering:

- Which branch performs best?
- Which account type is most popular?
- Which loan type generates the highest portfolio?
- Are customer registrations increasing?
- Which branches need attention?
- What recommendations would you make to management?

## Bonus Challenge (+10%)

Without additional guidance, build one extra dashboard page that adds value for management using any of the remaining tables (Fees, Cards, ATMs, Standing Orders, Audit Log or Transfers). Explain why it was chosen and which business decisions it supports.
