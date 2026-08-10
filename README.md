# 📊 Customer Churn Analysis | Excel, SQL & Power BI

## 📌 Project Overview

This project presents an end-to-end **Customer Churn Analysis** using Excel, SQL, and Power BI.

The objective is to analyze customer behavior, identify customer segments associated with higher churn, understand key churn patterns, and provide data-driven recommendations to improve customer retention.

The project covers the complete analytics workflow:

**Data Cleaning → SQL Analysis → Exploratory Analysis → Power BI Dashboard → Business Insights → Recommendations**

---

## 🎯 Business Problem

Customer churn can negatively impact recurring revenue and customer lifetime value.

The objective of this analysis is to answer the following business questions:

* What is the overall customer churn rate?
* Which contract types have higher churn?
* How does customer tenure relate to churn?
* Which payment methods are associated with higher churn?
* How does technical support relate to customer churn?
* How does online security relate to churn?
* Which customer segments should be prioritized for retention?
* How can businesses use customer-level analysis to identify high-priority segments?

---

## 🛠️ Tools & Technologies

* **Microsoft Excel** – Data cleaning and preprocessing
* **SQL** – Data analysis and business queries
* **Power BI** – Interactive dashboards and visualization
* **DAX** – Calculated measures and KPIs
* **GitHub** – Project documentation and portfolio

---

## 📂 Project Structure

```text
customer-churn-analysis/
│
├── 📁 data/
│   └── Customer_Churn_Analysis.xlsx
│
├── 📁 powerbi/
│   └── Customer_Churn_Dashboard.pbix
│
├── 📁 screenshot/
│   ├── dashboard_overview.png
│   ├── churn_drivers.png
│   └── customer_risk.png
│
├── 📁 sql/
│   └── churn_analysis.sql
│
└── README.md
```

---

## 🧹 Data Preparation

The dataset was prepared and cleaned before analysis.

Key data preparation activities included:

* Removing unnecessary data inconsistencies
* Checking missing and duplicate records
* Standardizing categorical values
* Converting data types where required
* Creating tenure groups for analysis
* Preparing customer-level data for Power BI
* Validating churn-related fields

---

# 📈 Key Performance Indicators

The analysis focuses on the following KPIs:

* **Total Customers**
* **Churned Customers**
* **Overall Churn Rate**
* **Average Monthly Charges**
* **Total Charges**

The overall churn rate in the analyzed dataset is approximately **26.54%**.

---

# 🔎 SQL Analysis

SQL was used to perform customer-level and segment-level analysis.

The analysis includes:

* Total customer count
* Churned customer count
* Overall churn rate
* Churn by contract type
* Churn by customer tenure
* Churn by payment method
* Churn by technical support
* Churn by online security
* Churn by internet service
* Customer segmentation for churn analysis

The SQL queries used for the analysis are available in:

`sql/churn_analysis.sql`

---

# 📊 Power BI Dashboard

The Power BI report contains three analytical pages.

## 1️⃣ Executive Overview

The Executive Overview provides a high-level summary of customer churn performance.

It includes:

* Total Customers
* Churned Customers
* Churn Rate
* Average Monthly Charges
* Total Charges
* Customer Churn Distribution
* Churn Rate by Contract
* Churn Rate by Tenure
* Churn Rate by Internet Service
* Key Business Insights

### Dashboard Preview

![Executive Overview](Screenshot-Executive-Overview.png)

---

## 2️⃣ Churn Drivers & Customer Segments

This page analyzes customer characteristics associated with different churn levels.

The analysis covers:

* Churn Rate by Payment Method
* Churn Rate by Technical Support
* Churn Rate by Online Security
* Churn Rate by Paperless Billing
* Churn Rate by Senior Citizen Status
* Churn Rate by Contract Type
* Churn Rate by Customer Tenure

### Dashboard Preview

![Churn Drivers](Screenshot-Churn-Drivers.png)

---

## 3️⃣ Customer Risk Analysis

This interactive page allows users to analyze customer segments using multiple filters.

### Available Filters

* Contract
* Tenure
* Monthly Charges
* Internet Service
* Technical Support
* Payment Method

The dashboard also provides filtered KPIs such as:

* Filtered Customers
* Filtered Churned Customers
* Filtered Churn Rate

A customer-level table allows deeper investigation using:

* Customer ID
* Contract
* Tenure
* Monthly Charges
* Internet Service
* Technical Support
* Payment Method
* Churn Status

### Dashboard Preview

![Customer Risk Analysis](Screenshot-Customer-Risk-Analysis.png)

---

# 💡 Key Insights

### 1. Overall Churn

The overall customer churn rate is approximately **26.54%**, indicating a significant customer retention challenge.

### 2. Contract Type

Month-to-month customers show the highest observed churn rate at approximately **42.71%**, while two-year contract customers show a much lower observed churn rate of approximately **2.83%**.

### 3. Customer Tenure

Customers in their first **0–6 months** show the highest observed churn rate at approximately **52.94%**.

The observed churn rate declines as customer tenure increases.

### 4. Payment Method

Customers using **Electronic Check** show the highest observed churn rate among the analyzed payment methods, at approximately **45.29%**.

### 5. Technical Support

Customers without technical support show a substantially higher observed churn rate than customers with technical support.

### 6. Online Security

Customers without online security show a higher observed churn rate compared with customers who have the service.

---

# 🎯 Business Recommendations

Based on the observed patterns in the dataset, the following actions could be considered:

### 1. Focus on New Customers

Develop stronger onboarding and early-stage engagement programs for customers during their first few months.

### 2. Target Month-to-Month Customers

Identify month-to-month customers for targeted retention campaigns and suitable long-term contract offers.

### 3. Improve Support Engagement

Investigate whether better technical support adoption and customer service engagement could contribute to improved retention.

### 4. Investigate Electronic Check Customers

Analyze the payment experience of electronic-check customers and consider promoting convenient alternative payment options where appropriate.

### 5. Develop Customer Segmentation

Use customer-level filters and churn patterns to create targeted retention campaigns instead of applying the same strategy to all customers.

---

# 🧠 Skills Demonstrated

* Data Cleaning
* Data Preprocessing
* Exploratory Data Analysis
* SQL Data Analysis
* DAX
* Power BI Dashboard Development
* Data Visualization
* Customer Segmentation
* Churn Analysis
* KPI Development
* Business Intelligence
* Business Insights
* Data-Driven Recommendations

---

# 📌 Project Outcome

This project demonstrates an end-to-end data analytics workflow, transforming raw customer data into meaningful business insights using **Excel, SQL, and Power BI**.

The final solution enables stakeholders to:

* Monitor overall churn
* Identify customer segments with higher observed churn
* Analyze churn patterns
* Filter customer segments interactively
* Investigate high-priority customer groups
* Develop targeted customer retention strategies

---

## 👨‍💻 Author

**Sachin**

Aspiring Data Analyst | Excel | SQL | Power BI | Data Analytics

---

⭐ If you found this project useful, feel free to explore the repository and review the analysis.
