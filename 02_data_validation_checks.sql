/* Project: Profit Leakage Audit
   Script: 02_data_validation_checks.sql
   Author: Joseph Do
   Description: Performs 3 critical health checks (Duplicates, Nulls, Logic)
*/

-- CHECK 1: The "Duplicate" Hunt
-- Goal: Ensure no Order ID appears twice (which would double-count revenue).
-- Success Criteria: This should return 0 rows.
SELECT 
    order_id, 
    COUNT(*) as duplicate_count
FROM `portfolio-2026-485302.profit_leakage.cleaned_transactions`
GROUP BY order_id
HAVING COUNT(*) > 1;

-- CHECK 2: The "Ghost Record" Hunt
-- Goal: Find rows where critical data (Date, Revenue, Customer) is missing.
-- Success Criteria: This should return 0 rows.
SELECT *
FROM `portfolio-2026-485302.profit_leakage.cleaned_transactions`
WHERE 
    order_date IS NULL 
    OR gross_revenue IS NULL 
    OR customer_id IS NULL;

-- CHECK 3: The "Time Travel" Hunt
-- Goal: Ensure no order arrived BEFORE it was placed.
-- Success Criteria: This should return 0 rows.
SELECT *
FROM `portfolio-2026-485302.profit_leakage.cleaned_transactions`
WHERE arrival_date < order_date;