--Q1.1
SELECT sum(lo_extendedprice * lo_discount) AS `revenue`
FROM lineorder_flat
WHERE lo_orderdate >= '1993-01-01' and lo_orderdate <= '1993-12-31' AND lo_discount BETWEEN 1 AND 3 AND lo_quantity < 25;
  
--Q1.2
SELECT sum(lo_extendedprice * lo_discount) AS revenue FROM lineorder_flat 
WHERE lo_orderdate >= '1994-01-01' and lo_orderdate <= '1994-01-31' AND lo_discount BETWEEN 4 AND 6 AND lo_quantity BETWEEN 26 AND 35;
  
--Q1.3
SELECT sum(lo_extendedprice * lo_discount) AS revenue
FROM lineorder_flat
WHERE weekofyear(lo_orderdate) = 6 AND lo_orderdate >= '1994-01-01' and lo_orderdate <= '1994-12-31'
 AND lo_discount BETWEEN 5 AND 7 AND lo_quantity BETWEEN 26 AND 35;
 
--Q2.1
SELECT sum(lo_revenue), year(lo_orderdate) AS year,  p_brand
FROM lineorder_flat
WHERE p_category = 'MFGR#12' AND s_region = 'AMERICA'
GROUP BY year(lo_orderdate),  p_brand
ORDER BY year, p_brand;
  
--Q2.2
SELECT
sum(lo_revenue), year(lo_orderdate) AS year, p_brand
FROM lineorder_flat
WHERE p_brand >= 'MFGR#2221' AND p_brand <= 'MFGR#2228' AND s_region = 'ASIA'
GROUP BY year(lo_orderdate),  p_brand
ORDER BY year, p_brand;
   
--Q2.3
SELECT sum(lo_revenue),  year(lo_orderdate) AS year, p_brand
FROM lineorder_flat
WHERE p_brand = 'MFGR#2239' AND s_region = 'EUROPE'
GROUP BY  year(lo_orderdate),  p_brand
ORDER BY year, p_brand;
  
  
--Q3.1
SELECT c_nation, s_nation,  year(lo_orderdate) AS year, sum(lo_revenue) AS revenue FROM lineorder_flat
WHERE c_region = 'ASIA' AND s_region = 'ASIA' AND lo_orderdate  >= '1992-01-01' AND lo_orderdate   <= '1997-12-31'
GROUP BY c_nation, s_nation, year(lo_orderdate)
ORDER BY  year ASC, revenue DESC;
  
--Q3.2
SELECT  c_city, s_city, year(lo_orderdate) AS year, sum(lo_revenue) AS revenue
FROM lineorder_flat
WHERE c_nation = 'UNITED STATES' AND s_nation = 'UNITED STATES' AND lo_orderdate  >= '1992-01-01' AND lo_orderdate <= '1997-12-31'
GROUP BY c_city, s_city, year(lo_orderdate)
ORDER BY year ASC, revenue DESC;
  
--Q3.3
SELECT c_city, s_city, year(lo_orderdate) AS year, sum(lo_revenue) AS revenue
FROM lineorder_flat
WHERE c_city in ( 'UNITED KI1' ,'UNITED KI5') AND s_city in ( 'UNITED KI1' ,'UNITED KI5') AND lo_orderdate  >= '1992-01-01' AND lo_orderdate <= '1997-12-31'
GROUP BY c_city, s_city, year(lo_orderdate)
ORDER BY year ASC, revenue DESC;
  
--Q3.4
SELECT c_city, s_city, year(lo_orderdate) AS year, sum(lo_revenue) AS revenue
FROM lineorder_flat
WHERE c_city in ('UNITED KI1', 'UNITED KI5') AND s_city in ( 'UNITED KI1',  'UNITED KI5') AND  lo_orderdate  >= '1997-12-01' AND lo_orderdate <= '1997-12-31'
GROUP BY c_city,  s_city, year(lo_orderdate)
ORDER BY year ASC, revenue DESC;
  
  
--Q4.1
set vectorized_engine_enable = FALSE;
SELECT year(lo_orderdate) AS year, c_nation,  sum(lo_revenue - lo_supplycost) AS profit FROM lineorder_flat
WHERE c_region = 'AMERICA' AND s_region = 'AMERICA' AND p_mfgr in ( 'MFGR#1' , 'MFGR#2')
GROUP BY year(lo_orderdate), c_nation
ORDER BY year ASC, c_nation ASC;
  
--Q4.2
SELECT year(lo_orderdate) AS year,
    s_nation, p_category, sum(lo_revenue - lo_supplycost) AS profit
FROM lineorder_flat
WHERE c_region = 'AMERICA' AND s_region = 'AMERICA' AND lo_orderdate >= '1997-01-01' and lo_orderdate <= '1998-12-31' AND  p_mfgr in ( 'MFGR#1' , 'MFGR#2')
GROUP BY year(lo_orderdate), s_nation,  p_category
ORDER BY  year ASC, s_nation ASC, p_category ASC;
  
--Q4.3
SELECT year(lo_orderdate) AS year, s_city, p_brand,
    sum(lo_revenue - lo_supplycost) AS profit
FROM lineorder_flat
WHERE s_nation = 'UNITED STATES' AND lo_orderdate >= '1997-01-01' and lo_orderdate <= '1998-12-31' AND p_category = 'MFGR#14'
GROUP BY  year(lo_orderdate),  s_city, p_brand
ORDER BY `year` ASC,  s_city ASC,  p_brand ASC;
