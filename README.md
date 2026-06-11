# Digital Music Store Analysis (SQL)

## Project Overview
This project involves a comprehensive data analysis of a digital music store's database using SQL. The analysis focuses on understanding business performance across multiple dimensions, including employee hierarchies, customer purchasing patterns, geographic sales distribution, and detailed track and artist performance. 

By querying and analyzing relational tables like invoices, customers, tracks, and artists, these scripts extract actionable insights—helping to identify top-performing markets, high-value customers, and major musical trends within the store's inventory.


## Analysis Framework & Key Questions
The analysis is structured into progressive tiers of complexity (Basic and Moderate) to address foundational business metrics and deeper operational insights:

### 1. Basic Metrics & Retail Operations
* Who is the senior-most employee based on organizational levels and job titles?
* Which countries generate the highest volume of invoices, indicating the store's largest markets?
* What are the top individual invoice totals recorded in the system?
* Which city brings in the highest cumulative revenue, and what is its total invoice spending?
* Who is the store's best customer based on total lifetime spending?

### 2. Track & Artist Insights (Moderate)
* Which tracks have a duration longer than the average track length across the entire catalog?
* Who are the top 10 Rock artists based on the total number of Rock songs they have in the database?
* How does the overall average song length compare against individual track durations when sorting from longest to shortest?


## Database Schema & Structure
The analysis utilizes a standard relational music store schema containing the following core tables:
* **`employee`:** Stores staff details, hierarchy levels, and reporting structures.
* **`customer`:** Tracks customer profile information and locations.
* **`invoice` & `invoice_line`:** Contains transaction-level header data (billing cities, countries, totals) and line-item details.
* **`track` & `album`:** Stores specific song metrics (such as duration in milliseconds) and links them to their respective albums.
* **`artist`:** Contains the names and identifiers of the musicians and bands.
* **`genre` & `media_type`:** Provides classifications for the music categories (e.g., Rock) and file formats.


## Key Technical Skills Demonstrated
* **Multi-Table Joins:** Combining data across up to four tables (`track`, `album`, `artist`, and `genre`) using `JOIN` clauses to cross-reference track sales with artist details.
* **Subqueries & Sub-selects:** Implementing independent subqueries to dynamically calculate the average track length (`AVG(milliseconds)`) and filter out datasets based on that benchmark.
* **Aggregation & Grouping:** Employing `SUM`, `COUNT`, and `AVG` alongside `GROUP BY` to aggregate regional sales data and customer lifetime values.
* **Data Sorting & Constraints:** Utilizing `ORDER BY` with descending modifiers (`DESC`) and strict `LIMIT` clauses to isolate top-tier performance metrics (e.g., top 10 artists, highest spending customer).


## Author

Priya Patel  
Aspiring Data Analyst  
Email: priyapatel18217@gmail.com  
