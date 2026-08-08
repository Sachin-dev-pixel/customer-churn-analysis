# customer-churn-analysis
# Customer Churn Analysis | SQL, Excel & Power BI

## 📌 Project Overview

Customer churn is a major business problem for subscription-based companies. This project analyzes customer data to identify the key factors associated with customer churn and provides data-driven recommendations for improving customer retention.

The analysis was performed using **Excel, SQL and Power BI**.

---

## 🎯 Business Problem

The objective of this project is to answer the following questions:

* What percentage of customers are churning?
* Which contract types have the highest churn?
* Which customer segments are most likely to churn?
* Does customer tenure affect churn?
* Which payment methods have higher churn?
* Does technical support affect customer retention?
* Which services are associated with higher churn?
* Which customer segments should the business target for retention?

---

## 📊 Dataset

The dataset contains customer-level information including:

* Customer demographics
* Tenure
* Contract type
* Internet service
* Payment method
* Monthly charges
* Total charges
* Technical support
* Online security
* Churn status

### Dataset Size

* **Total Customers:** 7,043
* **Total Columns:** 21
* **Churned Customers:** 1,869
* **Overall Churn Rate:** 26.54%

---

## 🛠️ Tools & Technologies

* **Microsoft Excel** – Data cleaning and exploratory analysis
* **MySQL** – Data analysis and SQL queries
* **Power BI** – Interactive dashboard and visualization
* **GitHub** – Project documentation and portfolio

---

## 🧹 Data Cleaning

The following data-cleaning activities were performed:

1. Checked duplicate Customer IDs.
2. Converted `TotalCharges` into a numeric data type.
3. Handled blank values in `TotalCharges`.
4. Converted `SeniorCitizen` from 0/1 into Yes/No.
5. Created a `ChurnFlag` column for analysis.
6. Created tenure groups for customer segmentation.
7. Checked data types and missing values.

---

## 📈 Key Performance Indicators

| KPI                     |       Result |
| ----------------------- | -----------: |
| Total Customers         |        7,043 |
| Churned Customers       |        1,869 |
| Churn Rate              |       26.54% |
| Average Monthly Charges |        64.76 |
| Average Tenure          | 32.37 Months |

---

## 🔍 Key Insights

### 1. Contract Type

Month-to-month customers have a significantly higher churn rate compared with customers on long-term contracts.

* Month-to-month: **42.71%**
* One year: **11.27%**
* Two year: **2.83%**

### 2. Customer Tenure

Customers in their first six months have the highest churn rate.

* 0–6 months: **52.94%**
* 7–12 months: **35.89%**
* 49–72 months: **9.51%**

### 3. Payment Method

Customers using electronic checks have a significantly higher churn rate.

* Electronic check: **45.29%**
* Mailed check: **19.11%**
* Bank transfer: **16.71%**
* Credit card: **15.24%**

### 4. Technical Support

Customers without technical support show substantially higher churn.

* No Tech Support: **41.64%**
* Tech Support: **15.17%**

### 5. Internet Service

Fiber optic customers show a higher observed churn rate than DSL customers.

* Fiber optic: **41.89%**
* DSL: **18.96%**

---

## 💡 Business Recommendations

Based on the analysis, the following actions are recommended:

1. Encourage month-to-month customers to move to long-term contracts through targeted offers.
2. Introduce a dedicated retention program for customers during their first six months.
3. Promote technical support and security services as part of retention-focused packages.
4. Investigate pricing and service experience among high-churn fiber optic customers.
5. Review the electronic-check payment experience and promote smoother payment alternatives.
6. Create a high-risk customer segment in Power BI for targeted retention campaigns.

---

## 📊 Power BI Dashboard

The Power BI dashboard contains:

### Executive Overview

* Total Customers
* Churned Customers
* Churn Rate
* Average Monthly Charges
* Total Charges
* Churn distribution

### Churn Drivers

* Churn by Contract
* Churn by Tenure
* Churn by Payment Method
* Churn by Internet Service
* Churn by Technical Support
* Churn by Online Security

### Customer Risk Analysis

The dashboard allows users to identify high-risk customer segments using filters such as:

* Contract
* Tenure
* Monthly Charges
* Internet Service
* Technical Support
* Payment Method

---

## 📁 Project Structure

```text
customer-churn-analysis/
│
├── data/
│   └── Customer_Churn_Cleaned.xlsx
│
├── sql/
│   └── churn_analysis.sql
│
├── powerbi/
│   └── Customer_Churn_Dashboard.pbix
│
├── screenshots/
│   ├── dashboard_overview.png
│   ├── churn_drivers.png
│   └── customer_risk.png
│
└── README.md
```

---

## 📌 Conclusion

The analysis indicates that customer churn is strongly associated with factors such as contract type, tenure, payment method, technical support and internet service.

The highest-priority retention segments include **month-to-month customers, new customers and customers without technical support**.

This project demonstrates an end-to-end data analytics workflow involving **data cleaning, SQL analysis, business insights and Power BI visualization**.
