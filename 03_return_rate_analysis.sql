/* Project: Profit Leakage Audit
   Script: 03_return_rate_analysis.sql
   Author: Joseph Do
   Description: Calculates return rates and total lost profit by product category.

   KEY INSIGHTS: While Fashion has the highest frequency of returns (8.28%), Electronics is the primary source of financial loss, accounting for $35.2M in leaked profit.
*/

SELECT 
    product_category,
    
    -- 1. Volume Stats
    COUNT(*) AS total_orders,
    SUM(CASE WHEN return_flag = true THEN 1 ELSE 0 END) AS returned_items,
    
    -- 2. Return Rate % (The "Frequency" of the problem)
    ROUND(
        (SUM(CASE WHEN return_flag = true THEN 1 ELSE 0 END) / COUNT(*)) * 100, 
        2
    ) AS return_rate_pct,
    
    -- 3. Financial Impact (The "Cost" of the problem)
    ROUND(SUM(leaked_profit), 2) AS total_money_lost

FROM `portfolio-2026-485302.profit_leakage.cleaned_transactions`
GROUP BY product_category
ORDER BY total_money_lost DESC; -- Show the biggest financial losers first