--Q1. Display borrower FICO scores.
SELECT "customer_id", "fico_score"
FROM "Fico_score";

--Q2. Find the highest FICO score.
select max("fico_score") as highest_fico
from "Fico_score";

--Q3. Find the lowest FICO score.
select min("fico_score") as low_fico
from "Fico_score";

--Q4. Calculate the average FICO score.
select avg("fico_score") as avg_fico
from "Fico_score";

--Q5. Count borrowers in each FICO score range.
select
case
    WHEN fico_score >= 760 THEN 'Excellent'
    WHEN fico_score >= 710 THEN 'Very Good'
    WHEN fico_score >= 660 THEN 'Good'
    WHEN fico_score >= 610 THEN 'Fair'
    ELSE 'Poor'
end as "fico_category",
count(*) as borrowers
from "Fico_score"
group by "fico_category";

--Q6. Find borrowers with excellent credit scores.
select * from "Fico_score"
where fico_score >=760;

--Q7. Find borrowers with poor credit scores.
select * from "Fico_score"
where fico_score < 610;

--Q8. Calculate default rate by FICO category.
SELECT
CASE
    WHEN fico_score >= 760 THEN 'Excellent'
    WHEN fico_score >= 710 THEN 'Very Good'
    WHEN fico_score >= 660 THEN 'Good'
    WHEN fico_score >= 610 THEN 'Fair'
    ELSE 'Poor'
END AS fico_category,
ROUND(AVG("default") * 100, 2) AS default_rate
FROM "Fico_score"
GROUP BY "fico_category";


--Q9. Which FICO category has the highest default rate?
select
CASE
    WHEN fico_score >= 760 THEN 'Excellent'
    WHEN fico_score >= 710 THEN 'Very Good'
    WHEN fico_score >= 660 THEN 'Good'
    WHEN fico_score >= 610 THEN 'Fair'
    ELSE 'Poor'
END AS fico_category,
Round(avg("default")*100,2)As default_rate
from "Fico_score"
group by "fico_category"
order by default_rate desc;

--Q10. Calculate average loan amount by FICO category.
SELECT
CASE
    WHEN fico_score >= 760 THEN 'Excellent'
    WHEN fico_score >= 710 THEN 'Very Good'
    WHEN fico_score >= 660 THEN 'Good'
    WHEN fico_score >= 610 THEN 'Fair'
    ELSE 'Poor'
END AS fico_category,
AVG("loan_amt_outstanding") AS average_loan
FROM "Fico_score"
GROUP BY "fico_category";

--Q11. Show top 10 borrowers with highest FICO scores.
select "customer_id","fico_score"
from "Fico_score"
order by fico_score desc
limit 10;

--Q12. Show top 10 highest-risk borrowers.
select "customer_id","fico_score"
from "Fico_score"
order by fico_score asc
limit 10;