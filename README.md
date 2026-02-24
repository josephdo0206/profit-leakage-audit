# 📉 Retail Supply Chain Analysis: Identified $245k in Revenue Leakage

**Role:** Junior Data Analyst  
**Tools:** SQL (BigQuery), Power BI, Excel  
**Status:** Active Analysis (Data Cleaning & Dashboarding Complete)

## 🎯 Executive Summary & Business Impact
* **Revenue Rescue:** Uncovered **$245,000** in recoverable revenue leakage driven by negative margin sales in the Electronics category.
* **Data Integrity Fix:** Detected and removed "Zombie Margins" (1,500%+ profit outliers) that were falsely skewing company Net Profit reporting by over **$700M**.
* **Scale:** Audited **25,000+** transaction records using BigQuery SQL to isolate root causes of margin slippage.

### 📊 Dashboard Preview
![Power BI Dashboard Screenshot]<img width="1429" height="801" alt="Profit_Leakage_Analysis_Dashboard" src="https://github.com/user-attachments/assets/0332b575-99a6-43db-9703-bc74dec540f3" />

## 💼 Business Problem
"SwiftCart" (a mid-sized retailer) has seen Revenue grow by 15%, but **Net Profit** has dropped by 5%. The CFO suspects "Profit Leakage" in the supply chain but cannot pinpoint the cause.

**Hypothesis:** The profit drop is driven by three "invisible" costs:
1. **Return Rates:** High-volume returns in specific categories.
2. **Operational Costs:** Shipping fees on returned items eating margins.
3. **Inventory Lag:** Products sitting in warehouses for >90 days.

## 🛠️ My Approach
I am auditing 25,000+ transaction records to isolate these leaks.
- **SQL:** Used for cleaning data, handling nulls, and calculating "True Profit" (Revenue - Returns - Cost).
- **Power BI:** Building a dashboard to visualize the "Bleeding Zones" by region.

## 💡 Initial Findings (Week 1)
- **Strategic Pivot:** The analysis will shift focus to high-ticket Electronic items, as reducing returns here yields the highest ROI.
- **Data Health:** Identified and isolated negative profit margins in the **Grocery** category (likely loss leaders), though impact is minimal compared to Electronics.
- **Pricing Strategy Failure (Electronics):** Beyond returns, the 'Electronics' category is suffering from **Negative Margin Sales**. High-ticket items are frequently sold at a loss (e.g., Net Profit -$134.26 per unit), indicating a pricing error or excessive discounting strategy.
- **The "Double Villain" Effect:** Electronics is the only category dominating BOTH "Profit Leakage from Returns" and "Negative Margin Sales," making it the #1 priority for intervention.

## 💡 Findings (Week 2 Update: Data Audit & Validation)
* **Data Quality Fix ("Zombie Margins"):** During the audit, I diagnosed a critical data error where specific transactions showed profit margins of **1,500%+**. These outliers were skewing the Total Net Profit by over **$700M**. I implemented a sanity filter (restricting margins to realistic bounds) to correct the dataset.
* **The "Volume vs. Value" Discovery:** With clean data, the analysis revealed a critical conflict:
    * **Fashion** has the highest *frequency* of returns (8.28%).
    * **Electronics** is the true financial drain, accounting for **$245,000** in Revenue Lost (due to high item cost) despite lower return frequency.

**Visual Proof: Frequency vs. Severity Analysis**
<img width="1241" height="731" alt="Dashboard_rough_draft" src="https://github.com/user-attachments/assets/841ea9d3-a3a4-4ae2-bb37-a5d900ce78f9" />

## 📂 Repository Structure
- `01_SQL_Scripts/`: Queries for data cleaning and validation.
- `02_PowerBI/`: (Coming Soon) Dashboard files.
- `03_Docs/`: Project charter and findings.
