# What is the total number of released iphones? 

SELECT COUNT (model)
FROM iphone 

Result: 38

# How many pro models have there been? 
SELECT COUNT(model)
FROM iphone
WHERE model LIKE '%pro%'

Result: 8

# When was the first pro model released? What model was it?

SELECT model, year
FROM iphone
WHERE model LIKE '%pro%'
ORDER BY year
Limit 1;

Result: 

Model: Iphone 11 pro 
Year: 2019 


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

# Finding the average for non-pro models 

a) Price
b) Screen size

SELECT round(avg(price),2), 
round(avg(screensize),2)
FROM iphone
where model not like '%pro%'

Result: 

Price: $703.33
Screensize: 5 inches

# Ranking battery life

SELECT model, battery,

CASE
	WHEN battery < 2000 then 'Small'
	WHEN battery > 2000 and battery < 3000 THEN 'Average'
  	WHEN battery > 3000 AND battery < 3500 THEN 'Great' 
	ELSE 'Excellent'

END as Ranking
FROM iphone

# Based on our developed case ranges, describe total battery mah trends. 

SELECT model, year, 

CASE
	WHEN battery < 2000 then 'Small'
	WHEN battery > 2000 and battery < 3000 THEN 'Average'
   	WHEN battery > 3000 AND battery < 3500 THEN 'Great' 
	ELSE 'Excellent'

END as Ranking
FROM iphone
ORDER BY year ASC;

Result: 

From launch in 2007 to 2017, battery totals stayed within the 'small' range. We see a few outliers with the 'Average' rannge. 

# Adding in WHERE clauses to filter further 

SELECT model, year, battery, 

CASE
	WHEN battery < 2000 then 'Small'
	WHEN battery > 2000 and battery < 3000 THEN 'Average'
    WHEN battery > 3000 AND battery < 3500 THEN 'Great' 
	ELSE 'Excellent'

END as Ranking
FROM iphone
Where year BETWEEN 2007 and 2017
AND ranking = 'Average'
ORDER BY year ASC;

Result: 

Iphone 6 Plus, 2915 mah 
Iphone 6S Plus, 2750 mah  
Iphone 7 Plus, 2900 mah 
Iphone 8 Plus, 2691 mah 
Iphone X, 2716 mah 

SELECT round(avg(battery)),

CASE
	WHEN battery < 2000 then 'Small'
	WHEN battery > 2000 and battery < 3000 THEN 'Average'
    WHEN battery > 3000 AND battery < 3500 THEN 'Great' 
	ELSE 'Excellent'

END as Ranking
FROM iphone
Where year BETWEEN 2007 and 2017
AND ranking = 'Average'

Result: 

Average = 2794 mah

SELECT model, battery, year, 

# In 2018, battery remains average until release of Iphone XS Max

CASE
	WHEN battery < 2000 then 'Small'
	WHEN battery > 2000 and battery < 3000 THEN 'Average'
        WHEN battery > 3000 AND battery < 3500 THEN 'Great' 
	ELSE 'Excellent'
END as Ranking
FROM iphone
WHERE ranking = 'Great'

Result: 

Model: Iphone XS Max
Battery: 3174 mah
Year: 2018 



