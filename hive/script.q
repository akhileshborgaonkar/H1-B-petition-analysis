CREATE TABLE h1b_input                               
(num INT, status STRING, employer STRING, soc_name STRING, title STRING, fulltime STRING, salary INT, year INT, work_city STRING, work_state STRING, longitude STRING, lattitude STRING)  
ROW FORMAT DELIMITED                              
FIELDS TERMINATED BY ','                          
LINES TERMINATED BY '\n'                          
LOCATION 's3://aws-logs-361521576546-us-east-1/';

select status,year,count(*) from h1b_input 
group by status,year;