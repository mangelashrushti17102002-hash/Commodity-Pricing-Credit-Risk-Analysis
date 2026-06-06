# Commodity Pricing & Credit Risk Analysis 📊

🚀 Overview

This project demonstrates the application of quantitative research, financial modeling, and risk analytics techniques using Python and SQL. The analysis focuses on commodity pricing, natural gas storage contract valuation, credit risk modeling, and FICO score-based borrower risk segmentation.

The project simulates real-world financial decision-making by estimating commodity contract values, predicting loan default probabilities, calculating expected losses, and creating borrower rating systems.

---

## Project Components

✅ 1. Commodity Price Analysis

Analyzed historical natural gas prices to identify market trends and seasonal patterns.

#### Objectives

* Explore monthly gas price movements.
* Understand pricing trends over time.
* Prepare data for storage contract valuation.

#### Techniques Used

* Data Cleaning
* Exploratory Data Analysis (EDA)
* Time Series Visualization

---

✅ 2. Natural Gas Storage Contract Pricing

Developed a pricing model for a gas storage contract by considering:

* Injection dates
* Withdrawal dates
* Purchase prices
* Selling prices
* Injection and withdrawal rates
* Maximum storage capacity
* Storage costs

#### Business Objective

Estimate the profitability of a storage contract by modeling all related cash inflows and outflows.

#### Output

* Contract Value
* Total Profit/Loss

---

✅ 3. Credit Risk Modeling

Built a machine learning model to estimate the Probability of Default (PD) for loan borrowers.

#### Input Features

* Income
* Outstanding Debt
* Loan Amount
* Credit Lines
* Years Employed
* FICO Score

#### Model Used

* Logistic Regression

#### Output

* Probability of Default (PD)

---

✅4. Expected Loss (EL) Estimation

Calculated the expected financial loss associated with a loan.

#### Formula

Expected Loss = PD × Loan Amount × LGD

Where:

* PD = Probability of Default
* LGD = Loss Given Default

Assumption:

* Recovery Rate = 10%
* LGD = 90%

#### Output

* Expected Loss per borrower

---

 ✅5. FICO Score Quantization

Created a borrower rating framework by converting continuous FICO scores into risk buckets.

#### Rating Scale

| Rating | Risk Level   |
| ------ | ------------ |
| 1      | Lowest Risk  |
| 2      | Low Risk     |
| 3      | Medium Risk  |
| 4      | High Risk    |
| 5      | Highest Risk |

####🎯 Objectives

* Simplify credit risk assessment.
* Group borrowers into meaningful risk categories.
* Analyze default rates across rating buckets.

---

🛠️Technologies Used

* Python🐍
* Pandas🐼
* NumPy🔢
* Matplotlib📊
* Seaborn🎨
* Scikit-learn🤖
* SQL (PostgreSQL)🗄️
* Jupyter Notebook📓

---

 📈Key Insights

* Commodity prices fluctuate significantly over time, creating storage arbitrage opportunities.
* Storage profitability depends on purchase price, selling price, storage costs, and capacity constraints.
* Borrowers with lower FICO scores exhibit higher default rates.
* Probability of Default (PD) can be effectively estimated using borrower financial information.
* Expected Loss (EL) provides a practical measure of portfolio risk.
* Credit rating buckets simplify risk assessment and borrower segmentation.

---

💡 Skills Demonstrated

* Quantitative Research
* Financial Modeling
* Commodity Pricing
* Credit Risk Analysis
* Probability of Default (PD)
* Expected Loss (EL)
* FICO Score Quantization
* Data Analysis
* Data Visualization
* Machine Learning
* SQL Analytics
* Risk Management

---

 👩‍💻 Author

Shrushti Mangela

📍 Aspiring Data Analyst

📊 Financial Analytics Enthusiast

💻 Python | SQL | Data Analytics
