--Q1. Display all borrower records.
select * from credit_risk;

--Q2. Count total borrowers.
select count(*) as total_borrowers
from credit_risk;

--Q3. Count defaulted borrowers.
select count(*) as default
from credit_risk
where "default" = 1;

--Q4. Count non-defaulted borrowers.
select count(*) as non_default
from credit_risk 
where "default"=0;

--Q5. Calculate average FICO score.
select avg("fico_score") as Avg_fico
from credit_risk;

--Q6. Find borrowers with FICO score above 700.
select * from credit_risk
where "fico_score" > 700;

--Q7. Find borrowers with loan amount above 10,000.
select * from credit_risk
where "loan_amt_outstanding" > 10000

--Q8. Calculate average income of defaulted borrowers.
select avg("income") as avg_income_default
from credit_risk
where "default" = 1;

--Advanced Queries
--Q9. Calculate default rate (%).
select round(sum("default")*100.0/count(*),2)
as default_rate 
from credit_risk;

--Q10. Compare default rates by FICO category.
SELECT
CASE
    WHEN fico_score >= 760 THEN 'Excellent'
    WHEN fico_score >= 710 THEN 'Very Good'
    WHEN fico_score >= 660 THEN 'Good'
    WHEN fico_score >= 610 THEN 'Fair'
    ELSE 'Poor'
END AS fico_category,

ROUND(AVG("default") * 100, 2) AS default_rate

FROM credit_risk

GROUP BY "fico_category"

ORDER BY "default_rate";

--Q11. Which borrowers are highest risk?
select * from credit_risk
order by "fico_score" asc
limit 10;

--Q12. What is the total loan exposure?
select sum("loan_amt_outstanding") as total_exposure
from credit_risk;