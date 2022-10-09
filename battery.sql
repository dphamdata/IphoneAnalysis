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

# When does battery become 'Excellent'?

Query: 

SELECT model, battery, year, 

CASE
	WHEN battery < 2000 then 'Small'
	WHEN battery > 2000 and battery < 3000 THEN 'Average'
    	WHEN battery > 3000 AND battery < 3500 THEN 'Great' 
	ELSE 'Excellent'
END as Ranking
FROM iphone
WHERE year > 2018
AND ranking = 'Excellent'
Order by battery DESC;

Result: 

Iphone 13 PM, 4352 mah, 2021
Iphone 14 Plus, 4323 mah, 2022
Iphone 14 PM, 4323 mah, 2022
Iphone 11 PM, 3969 mah, 2019
Iphone 12 PM, 3687 mah, 2020 

# Based on our case, phone batteries weren't 'Excellent' until 2019, with the introduction of the Iphone 11 Pro Max. 
# (5) total Iphones have 'Excellent' battery. (4) of which are Pro Max models, with one 'Plus' Model. 
# Surprisingly, the most recent PM model (14 PM) does not have the highest battery mah, rather its predecessor (13 PM).


