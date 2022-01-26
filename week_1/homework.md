# SQL Questions
1. select count(1) as rides from yellow_taxi_data where extract(day from tpep_pickup_datetime) = 15 and extract(month from tpep_pickup_datetime) = 1;
2. select tip_amount, tpep_pickup_datetime from yellow_taxi_data ORDER BY tip_amount DESC limit 1;
3. select "DOLocationID", count(1) from yellow_taxi_data where extract(day from tpep_pickup_datetime) = 14 group by "DOLocationID" order by count(1) desc limit 1;