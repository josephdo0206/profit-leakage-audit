/* Project: Profit Leakage Audit
   Author: Joseph Do
   Date: January 26, 2026
   Description: Creates the master analytic table. Fixes column names and calculates leakage.
*/

CREATE OR REPLACE TABLE `portfolio-2026-485302.profit_leakage.cleaned_transactions` AS

SELECT 
    order_id, 
    customer_id,
    -- Mapping the source column 'category' to a more standard name
    category AS product_category, 
    
    -- 1. Date Logic
    order_date,
    -- Calculate Arrival Date
    DATE_ADD(order_date, INTERVAL delivery_time_days DAY) AS arrival_date,
    delivery_time_days AS shipping_days,

    -- 2. Financials
    quantity,
    price AS unit_price,
    total_amount AS gross_revenue,
    
    -- Potential Profit (Money we expected to make)
    ROUND(total_amount * profit_margin, 2) AS potential_profit,
    
    -- 3. Leakage Logic
    returned AS return_flag, 
    
    -- Net Profit: If returned, profit becomes 0
    CASE 
        WHEN returned = true THEN 0 
        ELSE ROUND(total_amount * profit_margin, 2) 
    END AS net_profit,

    -- Leaked Profit: The money lost specifically due to returns
    CASE 
        WHEN returned = true THEN ROUND(total_amount * profit_margin, 2)
        ELSE 0 
    END AS leaked_profit

FROM `portfolio-2026-485302.profit_leakage.ecommerce_sales`