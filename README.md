# 📉 Profit Leakage Audit: Retail Supply Chain Analysis

**Role:** Junior Data Analyst  
**Tools:** SQL (BigQuery), Power BI, Excel  
**Status:** In Progress (Week 1 of 7)

## 💼 Business Problem
"SwiftCart" (a mid-sized retailer) has seen Revenue grow by 15%, but **Net Profit** has dropped by 5%. The CFO suspects "Profit Leakage" in the supply chain but cannot pinpoint the cause.

**Hypothesis:** The profit drop is driven by three "invisible" costs:
1. **Return Rates:** High-volume returns in specific categories.
2. **Operational Costs:** Shipping fees on returned items eating margins.
3. **Inventory Lag:** Products sitting in warehouses for >90 days.

## 🛠️ My Approach
I am auditing 50,000+ transaction records to isolate these leaks.
- **SQL:** Used for cleaning data, handling nulls, and calculating "True Profit" (Revenue - Returns - Cost).
- **Power BI:** Building a dashboard to visualize the "Bleeding Zones" by region.

## 💡 Initial Findings (Week 1)
- **The "Volume vs. Value" Conflict:** While **Fashion** has the highest frequency of returns (8.28%), **Electronics** is the primary source of financial loss, accounting for **$35.2M** in leaked profit.
- **Strategic Pivot:** The analysis will shift focus to high-ticket Electronic items, as reducing returns here yields the highest ROI.
- **Data Health:** Identified and isolated negative profit margins in the **Grocery** category (likely loss leaders), though impact is minimal compared to Electronics.
- **Pricing Strategy Failure (Electronics):** Beyond returns, the 'Electronics' category is suffering from **Negative Margin Sales**. High-ticket items are frequently sold at a loss (e.g., Net Profit -$134.26 per unit), indicating a pricing error or excessive discounting strategy.
- **The "Double Villain" Effect:** Electronics is the only category dominating BOTH "Profit Leakage from Returns" and "Negative Margin Sales," making it the #1 priority for intervention.

## 📂 Repository Structure
- `01_SQL_Scripts/`: Queries for data cleaning and validation.
- `02_PowerBI/`: (Coming Soon) Dashboard files.
- `03_Docs/`: Project charter and findings.
