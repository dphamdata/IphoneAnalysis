# What is the total number of released iphones? 

SELECT COUNT (model)
FROM iphone 

Result: 38

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
