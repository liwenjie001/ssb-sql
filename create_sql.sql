use test_ssb_100;
 CREATE EXTERNAL TABLE `customer`(                                                                   
   `c_custkey` string COMMENT 'from deserializer',                                                   
   `c_name` string COMMENT 'from deserializer',                                                      
   `c_address` string COMMENT 'from deserializer',                                                   
   `c_city` string COMMENT 'from deserializer',                                                      
   `c_nation` string COMMENT 'from deserializer',                                                    
   `c_region` string COMMENT 'from deserializer',                                                    
   `c_phone` string COMMENT 'from deserializer',                                                     
   `c_mktsegment` string COMMENT 'from deserializer')                                                
 ROW FORMAT SERDE                                                                                    
   'org.apache.hadoop.hive.serde2.OpenCSVSerde'                                                      
 STORED AS INPUTFORMAT                                                                               
   'org.apache.hadoop.mapred.TextInputFormat'                                                        
 OUTPUTFORMAT                                                                                        
   'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'                                      
 LOCATION                                                                                            
   'hdfs://nameservice1/tmp/warehouse/test_ssb_100/customer';
 
 
 CREATE EXTERNAL TABLE `dates`(                                                                      
   `d_datekey` string COMMENT 'from deserializer',                                                   
   `d_date` string COMMENT 'from deserializer',                                                      
   `d_dayofweek` string COMMENT 'from deserializer',                                                 
   `d_month` string COMMENT 'from deserializer',                                                     
   `d_year` string COMMENT 'from deserializer',                                                      
   `d_yearmonthnum` string COMMENT 'from deserializer',                                              
   `d_yearmonth` string COMMENT 'from deserializer',                                                 
   `d_daynuminweek` string COMMENT 'from deserializer',                                              
   `d_daynuminmonth` string COMMENT 'from deserializer',                                             
   `d_daynuminyear` string COMMENT 'from deserializer',                                              
   `d_monthnuminyear` string COMMENT 'from deserializer',                                            
   `d_weeknuminyear` string COMMENT 'from deserializer',                                             
   `d_sellingseason` string COMMENT 'from deserializer',                                             
   `d_lastdayinweekfl` string COMMENT 'from deserializer',                                           
   `d_lastdayinmonthfl` string COMMENT 'from deserializer',                                          
   `d_holidayfl` string COMMENT 'from deserializer',                                                 
   `d_weekdayfl` string COMMENT 'from deserializer')                                                 
 ROW FORMAT SERDE                                                                                    
   'org.apache.hadoop.hive.serde2.OpenCSVSerde'                                                      
 STORED AS INPUTFORMAT                                                                               
   'org.apache.hadoop.mapred.TextInputFormat'                                                        
 OUTPUTFORMAT                                                                                        
   'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'                                      
 LOCATION                                                                                            
   'hdfs://nameservice1/tmp/warehouse/test_ssb_100/dates';
 
 
 CREATE EXTERNAL TABLE `lineorder`(                                                                  
   `lo_orderkey` string COMMENT 'from deserializer',                                                 
   `lo_linenumber` string COMMENT 'from deserializer',                                               
   `lo_custkey` string COMMENT 'from deserializer',                                                  
   `lo_partkey` string COMMENT 'from deserializer',                                                  
   `lo_suppkey` string COMMENT 'from deserializer',                                                  
   `lo_orderdate` string COMMENT 'from deserializer',                                                
   `lo_orderpriority` string COMMENT 'from deserializer',                                            
   `lo_shippriority` string COMMENT 'from deserializer',                                             
   `lo_quantity` string COMMENT 'from deserializer',                                                 
   `lo_extendedprice` string COMMENT 'from deserializer',                                            
   `lo_ordtotalprice` string COMMENT 'from deserializer',                                            
   `lo_discount` string COMMENT 'from deserializer',                                                 
   `lo_revenue` string COMMENT 'from deserializer',                                                  
   `lo_supplycost` string COMMENT 'from deserializer',                                               
   `lo_tax` string COMMENT 'from deserializer',                                                      
   `lo_commitdate` string COMMENT 'from deserializer',                                               
   `lo_shipmode` string COMMENT 'from deserializer')                                                 
 ROW FORMAT SERDE                                                                                    
   'org.apache.hadoop.hive.serde2.OpenCSVSerde'                                                      
 STORED AS INPUTFORMAT                                                                               
   'org.apache.hadoop.mapred.TextInputFormat'                                                        
 OUTPUTFORMAT                                                                                        
   'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'                                      
 LOCATION                                                                                            
   'hdfs://nameservice1/tmp/warehouse/test_ssb_100/lineorder';
 
 
 CREATE EXTERNAL TABLE `part`(                                                                       
   `p_partkey` string COMMENT 'from deserializer',                                                   
   `p_name` string COMMENT 'from deserializer',                                                      
   `p_mfgr` string COMMENT 'from deserializer',                                                      
   `p_category` string COMMENT 'from deserializer',                                                  
   `p_brand` string COMMENT 'from deserializer',                                                     
   `p_color` string COMMENT 'from deserializer',                                                     
   `p_type` string COMMENT 'from deserializer',                                                      
   `p_size` string COMMENT 'from deserializer',                                                      
   `p_container` string COMMENT 'from deserializer')                                                 
 ROW FORMAT SERDE                                                                                    
   'org.apache.hadoop.hive.serde2.OpenCSVSerde'                                                      
 STORED AS INPUTFORMAT                                                                               
   'org.apache.hadoop.mapred.TextInputFormat'                                                        
 OUTPUTFORMAT                                                                                        
   'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'                                      
 LOCATION                                                                                            
   'hdfs://nameservice1/tmp/warehouse/test_ssb_100/part';
 
 
 
 CREATE EXTERNAL TABLE `supplier`(                                                                   
   `s_suppkey` string COMMENT 'from deserializer',                                                   
   `s_name` string COMMENT 'from deserializer',                                                      
   `s_address` string COMMENT 'from deserializer',                                                   
   `s_city` string COMMENT 'from deserializer',                                                      
   `s_nation` string COMMENT 'from deserializer',                                                    
   `s_region` string COMMENT 'from deserializer',                                                    
   `s_phone` string COMMENT 'from deserializer')                                                     
 ROW FORMAT SERDE                                                                                    
   'org.apache.hadoop.hive.serde2.OpenCSVSerde'                                                      
 STORED AS INPUTFORMAT                                                                               
   'org.apache.hadoop.mapred.TextInputFormat'                                                        
 OUTPUTFORMAT                                                                                        
   'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'                                      
 LOCATION                                                                                            
   'hdfs://nameservice1/tmp/warehouse/test_ssb_100/supplier';
 
 
use test_ssb_100_p;
-- 这个是parquet 文件格式
 CREATE EXTERNAL TABLE `customer`(                                                                   
   `c_custkey` int,                                                                                  
   `c_name` string,                                                                                  
   `c_address` string,                                                                               
   `c_city` string,                                                                                  
   `c_nation` string,                                                                                
   `c_region` string,                                                                                
   `c_phone` string,                                                                                 
   `c_mktsegment` string)                                                                            
 ROW FORMAT SERDE                                                                                    
   'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'                                     
 STORED AS INPUTFORMAT                                                                               
   'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat'                                   
 OUTPUTFORMAT                                                                                        
   'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'                                  
 LOCATION                                                                                            
   'hdfs://nameservice1/tmp/warehouse/test_ssb_100_p/customer' 
 TBLPROPERTIES (                                                                                     
   'parquet.compression'='SNAPPY');
 
 
CREATE EXTERNAL TABLE `dates`(                                                                      
  `d_datekey` int,                                                                                  
  `d_date` string,                                                                                  
  `d_dayofweek` string,                                                                             
  `d_month` string,                                                                                 
  `d_year` int,                                                                                     
  `d_yearmonthnum` int,                                                                             
  `d_yearmonth` string,                                                                             
  `d_daynuminweek` int,                                                                             
  `d_daynuminmonth` int,                                                                            
  `d_daynuminyear` int,                                                                             
  `d_monthnuminyear` int,                                                                           
  `d_weeknuminyear` int,                                                                            
  `d_sellingseason` string,                                                                         
  `d_lastdayinweekfl` int,                                                                          
  `d_lastdayinmonthfl` int,                                                                         
  `d_holidayfl` int,                                                                                
  `d_weekdayfl` int)                                                                                
ROW FORMAT SERDE                                                                                    
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'                                     
STORED AS INPUTFORMAT                                                                               
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat'                                   
OUTPUTFORMAT                                                                                        
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'                                  
LOCATION                                                                                            
  'hdfs://nameservice1/tmp/warehouse/test_ssb_100_p/dates' 
TBLPROPERTIES (                                                                                     
  'parquet.compression'='SNAPPY');
 
 
 CREATE EXTERNAL TABLE `lineorder`(                                                                
   `lo_orderkey` int,                                                                               
   `lo_linenumber` int,                                                                             
   `lo_custkey` int,                                                                                
   `lo_partkey` int,                                                                                
   `lo_suppkey` int,                                                                                
   `lo_orderdate` int,                                                                              
   `lo_orderpriority` string,                                                                       
   `lo_shippriority` int,                                                                           
   `lo_quantity` int,                                                                               
   `lo_extendedprice` int,                                                                          
   `lo_ordtotalprice` int,                                                                          
   `lo_discount` int,                                                                               
   `lo_revenue` int,                                                                                
   `lo_supplycost` int,                                                                             
   `lo_tax` int,                                                                                    
   `lo_commitdate` int,                                                                             
   `lo_shipmode` string)                                                                            
 ROW FORMAT SERDE                                                                                   
   'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'                                    
 STORED AS INPUTFORMAT                                                                              
   'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat'                                  
 OUTPUTFORMAT                                                                                       
   'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'                                 
 LOCATION                                                                                           
   'hdfs://nameservice1/tmp/warehouse/test_ssb_100_p/lineorder' 
 TBLPROPERTIES (                                                                                    
   'parquet.compression'='SNAPPY')
 
 
 CREATE EXTERNAL TABLE `lineorder_flat`(                                                             
   `lo_orderkey` int,                                                                                
   `lo_linenumber` int,                                                                              
   `lo_custkey` int,                                                                                 
   `lo_partkey` int,                                                                                 
   `lo_suppkey` int,                                                                                 
   `lo_orderdate` timestamp,                                                                         
   `lo_orderpriority` string,                                                                        
   `lo_shippriority` int,                                                                            
   `lo_quantity` int,                                                                                
   `lo_extendedprice` int,                                                                           
   `lo_ordtotalprice` int,                                                                           
   `lo_discount` int,                                                                                
   `lo_revenue` int,                                                                                 
   `lo_supplycost` int,                                                                              
   `lo_tax` int,                                                                                     
   `lo_commitdate` timestamp,                                                                        
   `lo_shipmode` string,                                                                             
   `c_name` string,                                                                                  
   `c_address` string,                                                                               
   `c_city` string,                                                                                  
   `c_nation` string,                                                                                
   `c_region` string,                                                                                
   `c_phone` string,                                                                                 
   `c_mktsegment` string,                                                                            
   `s_name` string,                                                                                  
   `s_address` string,                                                                               
   `s_city` string,                                                                                  
   `s_nation` string,                                                                                
   `s_region` string,                                                                                
   `s_phone` string,                                                                                 
   `p_name` string,                                                                                  
   `p_mfgr` string,                                                                                  
   `p_category` string,                                                                              
   `p_brand` string,                                                                                 
   `p_color` string,                                                                                 
   `p_type` string,                                                                                  
   `p_size` int,                                                                                     
   `p_container` string)                                                                             
 ROW FORMAT SERDE                                                                                    
   'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'                                     
 STORED AS INPUTFORMAT                                                                               
   'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat'                                   
 OUTPUTFORMAT                                                                                        
   'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'                                  
 LOCATION                                                                                            
   'hdfs://nameservice1/tmp/warehouse/test_ssb_100_p/lineorder_flat' 
 TBLPROPERTIES (                                                                                     
   'parquet.compression'='SNAPPY')
 
 
 CREATE EXTERNAL TABLE `part`(                                                                       
   `p_partkey` int,                                                                                  
   `p_name` string,                                                                                  
   `p_mfgr` string,                                                                                  
   `p_category` string,                                                                              
   `p_brand` string,                                                                                 
   `p_color` string,                                                                                 
   `p_type` string,                                                                                  
   `p_size` int,                                                                                     
   `p_container` string)                                                                             
 ROW FORMAT SERDE                                                                                    
   'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'                                     
 STORED AS INPUTFORMAT                                                                               
   'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat'                                   
 OUTPUTFORMAT                                                                                        
   'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'                                  
 LOCATION                                                                                            
   'hdfs://nameservice1/tmp/warehouse/test_ssb_100_p/part' 
 TBLPROPERTIES (                                                                                     
   'parquet.compression'='SNAPPY')
 
 
 
 
 CREATE EXTERNAL TABLE `supplier`(                                                                   
   `s_suppkey` int,                                                                                  
   `s_name` string,                                                                                  
   `s_address` string,                                                                               
   `s_city` string,                                                                                  
   `s_nation` string,                                                                                
   `s_region` string,                                                                                
   `s_phone` string)                                                                                 
 ROW FORMAT SERDE                                                                                    
   'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'                                     
 STORED AS INPUTFORMAT                                                                               
   'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat'                                   
 OUTPUTFORMAT                                                                                        
   'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'                                  
 LOCATION                                                                                            
   'hdfs://nameservice1/tmp/warehouse/test_ssb_100_p/supplier' 
 TBLPROPERTIES (                                                                                     
   'parquet.compression'='SNAPPY')
   
 sudo -su hive hadoop fs -put /data1/soft/ssb-dbgen/ssb-data/customer.tbl /tmp/warehouse/test_ssb_100/customer
sudo -su hive hadoop fs -put /data1/soft/ssb-dbgen/ssb-data/date.tbl /tmp/warehouse/test_ssb_100/dates
sudo -su hive hadoop fs -put /data1/soft/ssb-dbgen/ssb-data/lineorder.tbl /tmp/warehouse/test_ssb_100/lineorder
sudo -su hive hadoop fs -put /data1/soft/ssb-dbgen/ssb-data/part.tbl /tmp/warehouse/test_ssb_100/part
sudo -su hive hadoop fs -put /data1/soft/ssb-dbgen/ssb-data/supplier.tbl /tmp/warehouse/test_ssb_100/supplier
insert overwrite table test_ssb_100_p.supplier
select
  *
from test_ssb_100.supplier;
 
insert overwrite table test_ssb_100_p.part
select
  *
from test_ssb_100.part;
 
insert overwrite table test_ssb_100_p.lineorder
select
lo_orderkey,                                                                              
lo_linenumber,                                                                            
lo_custkey,                                                                               
lo_partkey,                                                                               
lo_suppkey,                                                                               
date_format(lo_orderdate,'yyyyMMdd') lo_orderdate,                                                                             
lo_orderpriority,                                                                      
lo_shippriority,                                                                          
lo_quantity,                                                                              
lo_extendedprice,                                                                         
lo_ordtotalprice,                                                                         
lo_discount,                                                                              
lo_revenue,                                                                               
lo_supplycost,                                                                            
lo_tax,                                                                                   
date_format(lo_commitdate,'yyyyMMdd') lo_commitdate,                                                                            
lo_shipmode
from test_ssb_100.lineorder;
 
insert overwrite table test_ssb_100_p.dates
select
  *
from test_ssb_100.dates;
 
insert overwrite table test_ssb_100_p.customer
select
  *
from test_ssb_100.customer;
 
 
 
 
set mapreduce.map.memory.mb=4015;
set mapreduce.map.java.opts=-Xmx4144m;
set mapreduce.reduce.memory.mb=4015;
insert overwrite table test_ssb_100_p.lineorder_flat
select
  lo_orderkey,
  lo_linenumber,
  lo_custkey,
  lo_partkey,
  lo_suppkey,
  cast(concat_ws('-',substr(lo_orderdate,0,4),substr(lo_orderdate,5,2),substr(lo_orderdate,7,2)) as timestamp) lo_orderdate,
  lo_orderpriority,
  lo_shippriority,
  lo_quantity,
  lo_extendedprice,
  lo_ordtotalprice,
  lo_discount,
  lo_revenue,
  lo_supplycost,
  lo_tax,
  cast(concat_ws('-',substr(lo_commitdate,0,4),substr(lo_commitdate,5,2),substr(lo_commitdate,7,2)) as timestamp) lo_commitdate,
  lo_shipmode,
  c_name,
  c_address,
  c_city,
  c_nation,
  c_region,
  c_phone,
  c_mktsegment,
  s_name,
  s_address,
  s_city,
  s_nation,
  s_region,
  s_phone,
  p_name,
  p_mfgr,
  p_category,
  p_brand,
  p_color,
  p_type,
  p_size,
  p_container
from test_ssb_100_p.lineorder
left join test_ssb_100_p.customer on customer.c_custkey = lineorder.lo_custkey
left join test_ssb_100_p.supplier on supplier.s_suppkey = lineorder.lo_suppkey
left join test_ssb_100_p.part on part.p_partkey = lineorder.lo_partkey;
