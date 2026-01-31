/* Project: Profit Leakage Audit
   Script: 04_negative_margin_audit.sql
   Author: Joseph Do
   Description: Audit for "Bad Sales." Identifies transactions where we lost money 
   despite a successful sale (likely due to excessive discounts).

   KEY INSIGHT: Electronics is the only category dominating BOTH "Profit Leakage from Returns" and "Negative Margin Sales," making it the #1 priority for intervention.
*/

SELECT 
    product_category,
    order_id,
    quantity,
    unit_price,
    gross_revenue,
    profit_margin,
    net_profit -- This will be negative
FROM `portfolio-2026-485302.profit_leakage.cleaned_transactions`
WHERE 
    net_profit < 0 
    AND return_flag = false -- Important: Ignore returns. We want to see BAD SALES.
    AND product_category != 'Grocery' -- Removes the main culprit
ORDER BY net_profit ASC -- Show the biggest dollar losses first
LIMIT 50;