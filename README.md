# Predicting Customer Churn and Improving Retention in Telecom

An end-to-end predictive analytics project using **SAS Viya** to identify telecommunications customers at risk of churn and translate model results into actionable customer-retention strategies.

## Project Documentation

- [Full Project Report](Kedeesh_Nolan_Telecom_Customer_Churn_Report.pdf)
- [Final Presentation](Kedeesh_Nolan_Telecom_Customer_Churn_Presentation.pdf)

## Project Overview

Customer churn is a significant challenge in the telecommunications industry because losing existing customers can increase acquisition costs and reduce long-term revenue. This project explores how customer demographics, service subscriptions, account information, and billing behavior can be used to identify customers who are more likely to discontinue service.

Using the Telco Customer Churn dataset, I developed a structured analytics workflow that moved from raw data preparation and cleaning to predictive modeling, model comparison, interpretation, and business recommendations.

## Business Objective

The primary objectives were to:

- Identify customer characteristics and service behaviors associated with churn.
- Develop predictive models capable of classifying customers as likely to churn or remain.
- Compare multiple modeling approaches to determine the strongest-performing model.
- Translate analytical findings into practical customer-retention strategies.

## Dataset

The analysis uses the **Telco Customer Churn** dataset containing:

- **7,043 customer records**
- **21 variables**
- Customer demographics
- Service subscriptions
- Account and contract information
- Billing and payment information
- Binary churn outcome (`Yes` / `No`)

Key variables include `Contract`, `tenure`, `InternetService`, `OnlineSecurity`, `TechSupport`, `MonthlyCharges`, and `TotalCharges`.

**Data Source:** IBM Telco Customer Churn sample dataset. The dataset represents a fictional telecommunications company and is used for educational and analytical modeling purposes.

## Data Preparation

The raw dataset was imported into **SAS Studio** and reviewed for data-quality and formatting issues.

Key preprocessing steps included:

- Identifying blank values in `TotalCharges`
- Converting `TotalCharges` from character to numeric format
- Replacing blank strings with missing values
- Removing and renaming fields as needed
- Treating `customerID` as an identifier rather than a predictive feature
- Validating the cleaned dataset before modeling

The final prepared dataset was stored as `TELCO_CLEAN`.

## Modeling Approach

The cleaned data was analyzed in **SAS Model Studio** using two supervised-learning models:

### Decision Tree

The Decision Tree provided an interpretable, rule-based approach for identifying customer characteristics associated with churn.

### Logistic Regression

Logistic Regression was used to estimate customer churn probability and provide an interpretable classification model.

Both models were connected to a **Model Comparison** node in the SAS Viya pipeline so their performance could be evaluated using the same data and standardized metrics.

## Model Results

The **Logistic Regression model was selected as the champion model**.

Key test results included:

| Metric | Decision Tree | Logistic Regression |
| --- | ---: | ---: |
| KS Statistic | 0.5212 | **0.5227** |
| Accuracy | 79.55% | **80.40%** |
| AUC | 0.8146 | **0.8342** |
| F1 Score | **0.5814** | 0.5577 |
| Gini Coefficient | 0.6292 | **0.6685** |

Although the Decision Tree achieved a higher F1 score, Logistic Regression performed better across KS, Accuracy, AUC, and Gini and was selected by SAS Viya as the champion model.

## Key Churn Drivers

The analysis identified several important factors associated with customer churn, including:

- Contract type
- Customer tenure
- Internet service
- Online security
- Tech support
- Monthly charges

Customers with shorter tenure and month-to-month contracts demonstrated particularly elevated churn risk.

## Business Recommendations

Based on the model findings, potential retention strategies include:

- Offer incentives for customers on month-to-month contracts to transition to longer-term plans.
- Strengthen onboarding and engagement for customers early in their tenure.
- Promote bundled services and security features to increase customer stickiness.
- Use churn-risk scores to prioritize proactive customer outreach.
- Develop targeted retention offers for higher-risk customer segments.

These strategies demonstrate how predictive analytics can move customer retention from a reactive process toward a more proactive, data-driven approach.

## Tools & Technologies

- **SAS Viya**
- **SAS Studio**
- **SAS Model Studio**
- **Decision Tree Classification**
- **Logistic Regression**
- **Predictive Modeling**
- **Data Cleaning & Preparation**
- **Model Evaluation**
- **Business Analytics**

## Project Workflow

`Raw Customer Data` → `Data Cleaning & Preparation` → `TELCO_CLEAN` → `Decision Tree + Logistic Regression` → `Model Comparison` → `Champion Model` → `Business Recommendations`

## Key Takeaways

This project strengthened my ability to manage an analytics workflow from raw data through model evaluation and business interpretation. It also provided hands-on experience with SAS Viya pipelines, predictive modeling, model comparison, and translating technical findings into recommendations that support business decision-making.

---

**Author:** Kedeesh Nolan  
**Master's in Data Science Project | Analytic Techniques**
