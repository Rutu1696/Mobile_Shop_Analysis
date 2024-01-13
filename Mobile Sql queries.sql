SELECT * FROM product.mobile;

-- check mobile features and price list--
SELECT Phone_name, Price FROM product.mobile;

-- Find out the price of 5 most expensive phones--
select * from product.mobile order by Price desc limit 5;

-- Find out the price of 5 most cheapest phone--
select * from product.mobile order by Price asc limit 5;

-- List of top 5 phones with price and all features--
select * from product.mobile where Brands = 'Samsung' order by Price desc limit 5; 

-- Must have android phone list them top 5 high price android phones--
select * from product.mobile where Operating_System_Type = 'Android' order by Price desc limit 5;

-- Must have android phone list then top 5 lower price android phones--
select * from product.mobile where Operating_System_Type = 'Android' order by Price asc limit 5;

-- Must have IOS phone list then top 5 highest price IOS phones--
select * from product.mobile where Operating_System_Type = "IOS" order by Price desc limit 5;

-- Must have IOS phone list then top 5 lowest price IOS phones--
select * from product.mobile where Operating_System_Type = "IOS" order by Price asc limit 5;

-- Write a query which phone support 5g and also top 5 phone with 5g support--
select * from product.mobile where 5G_Availability = 'Yes' order by Price desc limit 5;

-- Total price of all mobile is to be found with brand name--
select Brands, sum(price) from product.mobile group by Brands;
