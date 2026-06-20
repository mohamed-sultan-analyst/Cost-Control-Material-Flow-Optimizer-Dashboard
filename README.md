# Cost Control & Material Flow Optimizer Dashboard

## Project Overview
An advanced, data-driven Power BI dashboard integrated with an optimized SQL backend pipeline engineered for Senior Cost Control and Logistics Management. This project focuses on monitoring real-time material flows, tracking supply-chain latency, and identifying critical project delays. By synthesizing active warehouse inventories with construction material requests, the pipeline exposes financial exposure and accelerates site operational efficiency.

## Dashboard Preview

### 1. Material Flow & Procurement Optimization
![Material Flow Overview](Screenshot%20(494).png)

## Core Features and Visual Hierarchy
* **Supply Chain Latency Alarms:** High-priority tracking isolating pending material orders by their exact duration of delay to mitigate site downtime.
* **Estimated Financial Exposure:** Dynamic quantification of material asset values based on volumetric requests multiplied by localized contract rates.
* **Zonal Logistics Breakdown:** Granular geospatial slicing mapping individual villa material consumption directly to macro-project Zones.
* **Order Status Normalization:** Consolidated operational tracking categorized cleanly into standardized execution states (Approved vs. Canceled workflows).

## Backend Data Engineering (Advanced SQL Pipeline)
To bypass relational database limitations and deliver hyper-accurate datasets to Power BI, a high-performance SQLite pipeline was engineered utilizing advanced data transformations:
* **Dynamic Price Recency Capture (CTE):** Implemented a specialized Common Table Expression (`Latest_Rates_2026`) that leverages internal table structures (`MAX(ROWID)`) to programmatically extract only the most recently updated unit rate per material item for the current fiscal year.
* **Geospatial De-duplication Routing:** Constructed structural subqueries (`Unique_Zones`) to map and sanitize complex villa references to discrete project zones, ensuring 100% database normalization and preventing double-counting during lookups.
* **Programmatic Aging Analytics (`JULIANDAY` Engine):** Engineered an automated chronological conversion layer using absolute conditional string extraction (`SUBSTR` / `CASE`) to transform standard site date stamps into standardized ISO timelines, calculating active operational latency (`Delay_Days`) relative to live system executions (`JULIANDAY('now')`).
* **Strict Transaction Filtering:** Enforces hard data quality controls by isolating strict procurement scopes (`PL1-` order prefixes), weeding out historical redundancies (`Closed`/`Complete` statuses), and safeguarding accounting data integrity via logical null-handling (`COALESCE`).

## Technical Stack
* **Data Engineering & Query Optimization:** SQL / SQLite (Advanced CTEs, Chronological Calculations, and Structural Joins)
* **Analytics and Visualization:** Power BI Desktop
* **Data Architecture:** Star Schema Modeling, Performance-Driven Indexing, and Negative Space Optimization

## Deployment and Usage
1. Execute the backend SQL optimization script on the target transactional dataset to construct the standardized views.
2. Open the `.pbix` file using Power BI Desktop to inspect the fully interactive visual matrices and drill-down KPI ledgers.
