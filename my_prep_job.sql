create database my_prep_job;
use  my_prep_job;
select * from bank_customers_india;
-- Find the number of customers by State.
select  State, count(CustomerID) as Total_Customers
from bank_customers_india
group by State
order by Total_Customers desc;
-- Display the top 5 states having the highest total transaction value.

select State as `State Name`, sum(TransactionValueLAst12m) as Total_Transaction_Value
from bank_customers_india
group by State
order by Total_Transaction_Value desc
limit 5;

-- windows function 
select State as `State Name`, TransactionValueLAst12m,
rank() over ( order by TransactionValueLAst12m desc) as  highest_total_transaction_value
from bank_customers_india
limit 5;

-- Find the average annual income of customers grouped by EmploymentStatus. 
select EmploymentStatus, round(avg(AnnualIncome),0) as Avg_Income
from bank_customers_india
group by EmploymentStatus
order by Avg_Income desc;
-- Show how many customers have opened a Demat Account.
select count(CustomerID) as Customers_having_Demat from bank_customers_india
where DematAccount = "Yes"; 
-- Retrieve the youngest and oldest customer age.
select CustomerID, FullName,Age
from bank_customers_india
WHERE Age = (SELECT MAX(Age) FROM bank_customers_india);

-- Find the top 10 customers with the highest TransactionValueLast12m.
select CustomerID, FullName, TransactionValueLast12m
from bank_customers_india
order by TransactionValueLast12m desc
limit 10;

-- Find the average transaction value per state and order by the highest average.
select State,  round(avg(TransactionValueLast12m),2) as Avg_TransactionValue
from bank_customers_india
group by State
order by Avg_TransactionValue desc;

-- Find the relationship between customer income and transaction value
SELECT
  CASE 
    WHEN AnnualIncome < 400000 THEN 'Low Income'
    WHEN AnnualIncome BETWEEN 400000 AND 1000000 THEN 'Middle Income'
    ELSE 'High Income'
  END AS Income_Group,
  ROUND(AVG(TransactionValueLast12m), 2) AS Avg_Transaction_Value,
  COUNT(CustomerID) AS Total_Customers
FROM bank_customers_india
GROUP BY Income_Group
ORDER BY Avg_Transaction_Value DESC;

-- Group customers into age brackets and calculate the average transaction value and average income for each group.
select
case	
WHEN Age BETWEEN 18 AND 25 THEN 'Young Adults'
WHEN Age BETWEEN 26 AND 35 THEN 'Adults'
WHEN Age BETWEEN 35 AND 50 THEN 'Mid Age'
WHEN Age BETWEEN 51 AND 60 THEN 'Senior Age'
else "Senoir Citizon"
end as age_group,
round(avg(TransactionValueLast12m),2) as Avg_Transaction_Value, 
ROUND(AVG(AnnualIncome), 0) AS Avg_Income,
COUNT(CustomerID) AS Total_Customers
from bank_customers_india
group by age_group
order by Avg_Transaction_Value desc;
