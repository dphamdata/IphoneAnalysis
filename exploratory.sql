# What is the total number of released iphones? 

SELECT COUNT (model)
FROM iphone 

Result: 38

------------------------------------------------------------------------------------------------------------------------------------------------------------

# How many pro models have there been? 
SELECT COUNT(model)
FROM iphone
WHERE model LIKE '%pro%'

Result: 8

------------------------------------------------------------------------------------------------------------------------------------------------------------

# When was the first pro model released? What model was it?

SELECT model, year
FROM iphone
WHERE model LIKE '%pro%'
ORDER BY year
Limit 1;

Result: 

Model: Iphone 11 pro 
Year: 2019 

------------------------------------------------------------------------------------------------------------------------------------------------------------

# Finding min and max values

SELECT min(screensize),
min(basestorage), 
min(battery),
min(price)
FROM iphone

Result: 

Screensize: 3.5 inches
Base storage: 4gb 
Battery: 1200 mah
Price: $399

SELECT 
max(screensize), 
max(basestorage), 
max(battery),
max(price)
FROM iphone

Screensize: 6.7 inches
Base storage: 128 gb
Battery: 4352 mah 
Price: $1099

------------------------------------------------------------------------------------------------------------------------------------------------------------

# Finding the average for:

a) Screensize 
b) Base storage 
c) battery mah 
d) price 

SELECT round(avg(screensize),2), 
round(avg (basestorage)), 
round(avg(battery)), 
round(avg(price),2)
FROM iphone

Results: 

Screensize: 5.28 inches
Base storage: 61 gb
Battery: 2548 mah 
Price: $776.11

------------------------------------------------------------------------------------------------------------------------------------------------------------

# Finding the average prices and screen sizes for non-pro models 

a) Price
b) Screen size

SELECT round(avg(price),2), 
round(avg(screensize),2)
FROM iphone
where model not like '%pro%'

Result: 

Price: $703.33
Screensize: 5 inches
