-- Q1 Select sales table 
Select * 
From sales;

-- Q2 Select few columns 
Select Saledate, amount, customers
From sales;

-- Q3 Calculate Amount per boxes 
Select Saledate, amount, boxes, Amount / Boxes 
From sales;

-- Q4 Calculate Amount per boxes and change name to amount per boxes
Select Saledate, amount, boxes, Amount / Boxes 'amount per boxes'
From sales;

-- Where Clause --
-- Q5 Calculate Sales amount more than 10000
Select * 
From sales 
Where amount > '10000'
;

-- Order By Clause -- 
-- Q6 Calculate Sales amount more than 10000 as ascending or descending 
-- Calculate Sales amount more than 10000 as ascending
Select * 
From sales 
Where amount > '10000'
Order by amount ASC
;

-- Calculate Sales amount more than 10000 as Descending 
Select * 
From sales 
Where amount > '10000'
Order by amount DESC
;

-- Q7 Calculate Sales where value is > 10000 and year 2022 
Select * 
From sales 
Where amount > '10000' and saledate >= '2022-01-01'
;

-- Q8 Calculate Sales where value is > 10000 and year 2022 - Using Year syntax and arrange amount in descending 
Select Saledate, amount  
From sales
Where amount > '10000' and year(Saledate) = 2022
Order by amount DESC
;

-- Between condition -- 
-- Q9 Find out all the sales where the number of boxes is o to 50 (without between clause)
Select * 
From sales
where boxes >=0 and boxes <=50
;

-- (with between clause)
Select * 
From sales
where boxes BETWEEN 0 and 50
;

-- Q9 Find out all the sales and shipment happening on Fridays 
Select Saledate, Amount, boxes, weekday(saledate) As 'Week of day'
From sales
Where Weekday(saledate) = 4
;

-- Using other tables (People Table)
Select*
From People;

-- Q11 Find out the salespersons in Team Delish or Jucies team 
Select *
From People
Where team = 'Delish' or team = 'Jucies'
order by salesperson  ASC;

-- LIKE Clause --
-- Q12 Find out the Salesperson whose name being with B
select *
From People 
Where Salesperson Like 'B%'
;

-- Q13 Find out the location which has ling in the middle 
Select *
From people
Where location Like '%ling%'
;

-- Case Operator --
-- Q14 Create a Amount category column 

-- Amount upto $1000 will have be labled as  ‘Under 1K’
-- Amount between $1000 to $5000 will have be labled as ‘Under 5K’
-- Amount Between $5000 to $10000 will have to be labled as  ‘Under 10K’

Select Saledate, Amount,
Case when amount < 1000 then 'Under 1k'
      when amount < 5000 then 'Under 5k'
      When amount < 10000 then 'Under 10K'
  else '10k or more' 
  end as 'Amount category'
From Sales;




