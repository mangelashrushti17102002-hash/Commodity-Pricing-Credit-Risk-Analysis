--Q1. Display all gas price records.
SELECT * FROM gas_prices LIMIT 10;

---Q2. Find the highest gas price.
SELECT MAX("Prices") AS highest_price
FROM gas_prices;

--Q3. Find the lowest gas price.
SELECT MIN("Prices") AS lowest_price
FROM gas_prices;

--Q4. Calculate the average gas price.
SELECT AVG("Prices") AS average_price
FROM gas_prices;

--Q5. Count the total number of months available.
SELECT COUNT(*) AS total_months
FROM gas_prices;

--Q6. Display gas prices in descending order.
select * from gas_prices
order by "Prices" desc;

--Q7. Find months where gas price exceeded 25.
select * from gas_prices
where "Prices" > 25;

--Q8. Calculate monthly price change.
select "Dates" ,"Prices", 
"Prices" - LAG("Prices") over(order by "Dates") AS monthly_change
from gas_Prices;

--Business-Oriented Queries
--Q9. Which month had the highest gas price?
select * from gas_Prices
order by "Prices" DESC
limit 1;

--Q10. What is the overall price trend over time?
select "Dates","Prices"
from gas_prices
order by "Dates";
