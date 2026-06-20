# Cost Control and Material Flow Optimizer

## Project Overview
An interactive Power BI dashboard designed for Senior DC Cost Control and Operations Management to monitor financial metrics, optimize material workflows, and track processing delays. This project focuses on driving cost-efficiency by providing high-level executive insights alongside granular operational data.

## Dashboard Preview
![Dashboard Final View](Screenshot%20(494).png)

## Core Features and Visual Hierarchy
* Executive KPIs: Tracks total estimated value, row counts, unique document numbers, and average delays.
* Visual Data Breakdown: High-contrast charts for estimated value distribution by villa name and zone tracking.
* Hierarchical Data Table: Clean, formatted grid emphasizing strict total balances for financial auditing.
* Operational Slicers: Simplified filter toggles to dynamically isolate approved and canceled workflows.

## Database and SQL Integration
To support the reporting layer, structural SQL queries were developed to pull and transform raw operational logs. The query file covers:
* Relational joins between material orders and cost control documents.
* Aggregations for calculating financial values and time metrics.
* Data cleaning processes to format missing fields and handle pending transaction statuses.

## Technical Stack
* Data Querying: SQL / Power Query
* Data Visualization: Power BI Desktop
* Design Principles: Clean Layouts, High-Contrast Readability, and Functional Alignment

## Deployment and Usage
1. Review the data pipeline details in the query.sql file.
2. Open the Cost Control & Material Flow Optimizer 2026.pbix file via Power BI Desktop to interact with the full dashboard.
