-- CUSTOMER CHURN ANALYSIS
-- Database: MySQL 8+
-- Purpose: Clean, validate and analyze customer churn data.

CREATE DATABASE IF NOT EXISTS customer_churn_db;
USE customer_churn_db;

-- Recommended table structure
CREATE TABLE IF NOT EXISTS customer_churn (
    customerID VARCHAR(20) PRIMARY KEY,
    gender VARCHAR(20),
    SeniorCitizen VARCHAR(10),
    Partner VARCHAR(10),
    Dependents VARCHAR(10),
    tenure INT,
    PhoneService VARCHAR(30),
    MultipleLines VARCHAR(30),
    InternetService VARCHAR(30),
    OnlineSecurity VARCHAR(30),
    OnlineBackup VARCHAR(30),
    DeviceProtection VARCHAR(30),
    TechSupport VARCHAR(30),
    StreamingTV VARCHAR(30),
    StreamingMovies VARCHAR(30),
    Contract VARCHAR(30),
    PaperlessBilling VARCHAR(10),
    PaymentMethod VARCHAR(50),
    MonthlyCharges DECIMAL(10,2),
    TotalCharges DECIMAL(12,2),
    Churn VARCHAR(10)
);

-- 1. Basic validation
SELECT COUNT(*) AS total_customers FROM customer_churn;
SELECT COUNT(DISTINCT customerID) AS unique_customers FROM customer_churn;
SELECT COUNT(*) AS duplicate_customer_ids
FROM (
    SELECT customerID
    FROM customer_churn
    GROUP BY customerID
    HAVING COUNT(*) > 1
) d;

-- 2. Overall churn KPIs
SELECT
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate_pct,
    ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charges,
    ROUND(SUM(TotalCharges), 2) AS total_revenue,
    ROUND(AVG(tenure), 2) AS avg_tenure
FROM customer_churn;

-- 3. Churn by contract
SELECT
    Contract,
    COUNT(*) AS customers,
    SUM(Churn = 'Yes') AS churned,
    ROUND(SUM(Churn = 'Yes') * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM customer_churn
GROUP BY Contract
ORDER BY churn_rate_pct DESC;

-- 4. Churn by internet service
SELECT
    InternetService,
    COUNT(*) AS customers,
    SUM(Churn = 'Yes') AS churned,
    ROUND(SUM(Churn = 'Yes') * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM customer_churn
GROUP BY InternetService
ORDER BY churn_rate_pct DESC;

-- 5. Churn by payment method
SELECT
    PaymentMethod,
    COUNT(*) AS customers,
    SUM(Churn = 'Yes') AS churned,
    ROUND(SUM(Churn = 'Yes') * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM customer_churn
GROUP BY PaymentMethod
ORDER BY churn_rate_pct DESC;

-- 6. Churn by technical support
SELECT
    TechSupport,
    COUNT(*) AS customers,
    SUM(Churn = 'Yes') AS churned,
    ROUND(SUM(Churn = 'Yes') * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM customer_churn
GROUP BY TechSupport
ORDER BY churn_rate_pct DESC;

-- 7. Churn by online security
SELECT
    OnlineSecurity,
    COUNT(*) AS customers,
    SUM(Churn = 'Yes') AS churned,
    ROUND(SUM(Churn = 'Yes') * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM customer_churn
GROUP BY OnlineSecurity
ORDER BY churn_rate_pct DESC;

-- 8. Churn by paperless billing
SELECT
    PaperlessBilling,
    COUNT(*) AS customers,
    SUM(Churn = 'Yes') AS churned,
    ROUND(SUM(Churn = 'Yes') * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM customer_churn
GROUP BY PaperlessBilling
ORDER BY churn_rate_pct DESC;

-- 9. Churn by senior citizen
SELECT
    SeniorCitizen,
    COUNT(*) AS customers,
    SUM(Churn = 'Yes') AS churned,
    ROUND(SUM(Churn = 'Yes') * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM customer_churn
GROUP BY SeniorCitizen
ORDER BY churn_rate_pct DESC;

-- 10. Tenure buckets
SELECT
    CASE
        WHEN tenure <= 6 THEN '0-6 Months'
        WHEN tenure <= 12 THEN '7-12 Months'
        WHEN tenure <= 24 THEN '13-24 Months'
        WHEN tenure <= 48 THEN '25-48 Months'
        ELSE '49-72 Months'
    END AS tenure_group,
    COUNT(*) AS customers,
    SUM(Churn = 'Yes') AS churned,
    ROUND(SUM(Churn = 'Yes') * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM customer_churn
GROUP BY tenure_group
ORDER BY
    CASE tenure_group
        WHEN '0-6 Months' THEN 1
        WHEN '7-12 Months' THEN 2
        WHEN '13-24 Months' THEN 3
        WHEN '25-48 Months' THEN 4
        WHEN '49-72 Months' THEN 5
    END;

-- 11. High monthly-charge customers
SELECT
    CASE
        WHEN MonthlyCharges < 50 THEN 'Below 50'
        WHEN MonthlyCharges < 80 THEN '50-79.99'
        ELSE '80+'
    END AS monthly_charge_group,
    COUNT(*) AS customers,
    SUM(Churn = 'Yes') AS churned,
    ROUND(SUM(Churn = 'Yes') * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM customer_churn
GROUP BY monthly_charge_group
ORDER BY churn_rate_pct DESC;

-- 12. High-risk segment: month-to-month + high monthly charges + short tenure
SELECT
    Contract,
    tenure,
    MonthlyCharges,
    InternetService,
    TechSupport,
    PaymentMethod,
    Churn
FROM customer_churn
WHERE Contract = 'Month-to-month'
  AND MonthlyCharges >= 80
  AND tenure <= 12
ORDER BY MonthlyCharges DESC;

-- 13. Churned revenue
SELECT
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN TotalCharges ELSE 0 END), 2) AS churned_customer_revenue
FROM customer_churn;

-- 14. Average monthly charge: churned vs retained
SELECT
    Churn,
    COUNT(*) AS customers,
    ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charges,
    ROUND(AVG(tenure), 2) AS avg_tenure
FROM customer_churn
GROUP BY Churn;
