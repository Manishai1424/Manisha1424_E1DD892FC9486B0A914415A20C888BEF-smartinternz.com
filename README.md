# Manisha1424_E1DD892FC9486B0A914415A20C888BEF-smartinternz.com
# Exploratory Data Analysis (EDA) - Titanic Dataset

## 📌 Objective
Extract insights from the dataset using *visual* and *statistical* exploration to identify patterns, trends, and anomalies.

## 🛠 Tools & Libraries
- *Python*
- *Pandas*
- *Matplotlib*
- *Seaborn*
- *Jupyter Notebook*

## 📂 Dataset
- *Titanic Dataset*: [Click to Download](https://www.kaggle.com/c/titanic/data)  
- Or any other relevant dataset of your choice.

## 📋 Steps Performed
1. *Data Overview*
   - Loaded dataset into Pandas DataFrame.
   - Used .describe(), .info(), .value_counts() for statistical summary and structure.

2. *Data Visualization*
   - Pairplot (sns.pairplot) to observe variable relationships.
   - Heatmap (sns.heatmap) to visualize correlations.
   - Histograms, boxplots, and scatterplots to explore distributions and outliers.

3. *Insights Extraction*
   - Identified relationships and trends.
   - Detected missing values and data imbalance.
   - Observed anomalies and patterns.

4. *Findings Summary*
   - Provided key points and conclusions based on analysis.

## 📊 Key Plots
- Correlation Heatmap
- Pairplot
- Histograms
- Boxplots
- Scatterplots

## 📄 Deliverables
- *Jupyter Notebook* containing the EDA process.
- *PDF Report* summarizing:
  - Observations for each visual.
  - Overall conclusions and recommendations.

## 🎯 Outcome
- Developed skills in identifying *patterns, trends, and anomalies* in datasets.
- Improved ability to use *visual and statistical tools* for data analysis.

## 📚 Interview Preparation Questions
1. What is EDA and why is it important?
2. Which plots do you use to check correlation?
3. How do you handle skewed data?
4. How to detect multicollinearity?
5. What are univariate, bivariate, and multivariate analyses?
6. Difference between heatmap and pairplot?
7. How do you summarize your insights?

## 👤 Author
- *Name:* MANISHA
- *Email:* immanimman352@gmail.com  
- *GitHub:*

- #task5
- GitHub README for the Sales Trend Analysis task:


---

Sales Trend Analysis Using Aggregations

📌 Objective

Analyze monthly revenue and order volume from the online_sales dataset using SQL aggregation functions.


---

📂 Dataset

Table: online_sales
Columns:

order_id — Unique identifier for each order

order_date — Date of the order

amount — Revenue from the order

product_id — Product sold



---

🛠 Tools & Requirements

SQL Database: PostgreSQL / MySQL / SQLite

SQL client: pgAdmin / MySQL Workbench / DBeaver

Dataset file (online_sales)



---

📜 Steps to Complete the Task

1. Extract Month & Year

EXTRACT(YEAR FROM order_date) AS year
EXTRACT(MONTH FROM order_date) AS month


2. Group Data by Year & Month

GROUP BY year, month


3. Calculate Monthly Revenue

SUM(amount) AS total_revenue


4. Calculate Order Volume

COUNT(DISTINCT order_id) AS total_volume


5. Sort Results Chronologically

ORDER BY year, month


6. (Optional) Filter Date Range

WHERE order_date >= '2025-01-01'


7. (Optional) Top 3 Months by Sales

ORDER BY total_revenue DESC
LIMIT 3




---

💻 SQL Script

-- Monthly revenue and volume
SELECT 
    EXTRACT(YEAR FROM order_date) AS year, 
    EXTRACT(MONTH FROM order_date) AS month, 
    SUM(amount) AS total_revenue, 
    COUNT(DISTINCT order_id) AS total_volume
FROM 
    online_sales
GROUP BY 
    EXTRACT(YEAR FROM order_date), 
    EXTRACT(MONTH FROM order_date)
ORDER BY 
    year, month;


---

📊 Expected Output

year	month	total_revenue	total_volume

2024	12	14200	335
2025	01	15000	350
2025	02	13000	320
2025	03	17000	370
2025	04	16500	360
2025	05	18000	390
2025	06	15500	340
2025	07	16200	345
2025	08	17500	355

