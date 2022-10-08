# What is the total number of released iphones? 

SELECT COUNT (model)
FROM iphone 

Result: 38

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

# Finding the average for

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
