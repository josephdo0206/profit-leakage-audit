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

## 📂 Repository Structure
- `01_SQL_Scripts/`: Queries for data cleaning and validation.
- `02_PowerBI/`: (Coming Soon) Dashboard files.
- `03_Docs/`: Project charter and findings.
