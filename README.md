Cost Control & Material Flow Optimizer Dashboard
Project Overview
An interactive Power BI dashboard designed for Senior DC Cost Control and Operations Management to monitor financial metrics, optimize material workflows, and track processing delays. The dashboard provides clear data granularity combined with high-level executive insights to drive cost-efficiency.
Dashboard Preview
![Dashboard Final View](Screenshot%20(494).png)
Key Features & Visual Hierarchy
Executive KPIs:** Real-time tracking of Estimated Value ($84.00M), Total Rows, Unique MO Numbers, and Average Delay Days.
Visual Data Breakdown:** High-contrast column charts for *Estimated Value by Villa Name* and a clear donut chart for *Zone Distribution*.
Granular Data Table:** A fully aligned data grid featuring strict visual hierarchy, highlighting operational totals for precise auditing.
Optimized Status Filter:** Clean, modern tile slicers allowing seamless toggling between "Approved" and "Canceled" material requests.
Database & SQL Data Extraction
To prepare the dataset for this dashboard, optimized SQL queries were developed to extract and transform live data from Oracle/SQL databases. The included `.sql` file showcases:
 Complex Joins to merge Material Orders (MO) with Cost Control records.
 Data Aggregations for calculating `Estimated_Value` and `Avg_Delay` days.
 Data Cleaning filters to format nulls and handle pending transaction statuses.
Tech Stack & Tools Used
Data Querying & Prep:** SQL / Power Query
Data Visualization:** Power BI Desktop
Design Principles:** Visual Hierarchy, Negative Space Optimization, and Corporate Consistent Layouts.
How to Use
1. Clone this repository.
2. Review the database logic in `query.sql`.
3. Open `Cost Control & Material Flow Optimizer 2026.pbix` using Power BI Desktop to interact with the live layout.
