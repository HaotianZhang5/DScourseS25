 -- Step 1: Read in teh Florida insurance data CSV file 
 CREATE TABLE florida_insurance (
    policyID INT PRIMARY KEY,
    statecode TEXT,
    county TEXT,
    eq_site_limit REAL,
    hu_site_limit REAL,
    fl_site_limit REAL,
    fr_site_limit REAL,
    tiv_2011 REAL,
    tiv_2012 REAL,
    eq_site_deductible REAL,
    hu_site_deductible REAL,
    fl_site_deductible REAL,
    fr_site_deductible REAL,
    point_latitude REAL,
    point_longitude REAL,
    line TEXT,
    construction TEXT,
    point_granularity INT
);

-- Step 2:Print out the first 10 rows of the data set
SELECT * FROM florida_insurance LIMIT 10;

-- Step 3: List unique counties
SELECT DISTINCT county FROM florida_insurance;

-- Step 4: Compute the average property appreciation from 2011 to 2012

SELECT AVG(tiv_2012 - tiv_2011) AS avg_property_appreciation
FROM florida_insurance;

-- Step 5: Create a frequency table of the construction 
SELECT construction, COUNT(*) AS count,
       COUNT(*) * 1.0 / (SELECT COUNT(*) FROM florida_insurance) AS fraction 
FROM florida_insurance 
GROUP BY construction
ORDER BY count DESC;
