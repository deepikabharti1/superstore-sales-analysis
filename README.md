# superstore Sales Analysis

An end-to-end analysis of the Superstore sales dataset — I used MySQL to clean and query the data, then built an interactive Power BI dashboard to explore sales, profit, and regional performance.

## Why I built this

I wanted to answer a simple business question: which regions, categories, and products are actually driving profit — and which ones are quietly losing money despite decent sales numbers? This dataset (a popular retail dataset used across BI portfolios) was a good fit for practicing the full analyst workflow — cleaning messy real-world data, writing SQL to pull out insights, and visualizing it in a way a business team could actually use.

## About the dataset

- **Source:** Superstore Sales dataset (Kaggle)
- **Size:** ~9,800 rows
- **Time period:** 2014–2017
- **Columns:** Order/Ship dates, Customer info, Region, Category/Sub-Category, Product, Sales, Profit, Quantity, Discount

## Tools used

- **MySQL Workbench** – data cleaning, table setup, and analysis queries
- **Power BI Desktop** – interactive dashboard and visualizations
- **github** – project hosting and documentation

## Approach

1. Imported the raw CSV into MySQL and cleaned it up (fixed date formats, handled import issues)
2. Wrote SQL queries to explore sales/profit trends by region, category, product, and segment
3. Connected Power BI directly to the MySQL database
4. Built a dashboard with slicers for Region, so the whole report updates when you click into a specific region
5. Added a monthly Year-over-Year trend view, a US sales map, and category/segment breakdowns

## Key findings

- Total sales across the dataset: **2.3M**, with **286K** in profit and **38K** units sold
- **West** is the strongest-performing region — 32% of total sales — followed by East (28%), Central (23%), and South (17%)
- **Consumer** is the biggest customer segment at 52% of sales, followed by Corporate (30%) and Home Office (18%)
- **Technology** is the top category overall (0.84M), but this shifts by region — in the West, for example, Furniture actually leads
- Sub-category performance varies a lot by region too — Chairs and Phones tend to be strong everywhere, but which one comes out on top changes depending on where you filter

## Dashboard

<img width="1296" height="753" alt="image" src="https://github.com/user-attachments/assets/c3ce9360-6b5c-4236-93ae-d2284aa43a09" />

The dashboard is fully interactive — clicking any region button filters every visual on the page (KPIs, category breakdown, map, YoY trend, segment split) to just that region.
<img width="1297" height="759" alt="image" src="https://github.com/user-attachments/assets/747e5921-64a9-4457-b5cc-cef74ce88a5d" />

## Project structure

```
retail-sales-analysis/
├── superstore_sql_queries.sql   
├── retail_dashboard.pbix
└── README.md
```

## How to run this

- Open `superstore_sql_queries.sql` in MySQL Workbench to see the queries behind the analysis
- Open `retail_dashboard.pbix` in Power BI Desktop to explore the dashboard yourself

## Connect

Feel free to reach out if you'd like to discuss this project — [deepikabharti096@gmail.com] | [linkedin.com/in/deepikabharti1]
