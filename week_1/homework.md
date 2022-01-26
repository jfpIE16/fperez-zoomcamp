# SQL Questions
1. How many taxi trips were there on January 15?
```sql
    SELECT 
        count(1) AS rides 
    FROM 
        yellow_taxi_data 
    WHERE 
        extract(day FROM tpep_pickup_datetime) = 15 
        AND 
        extract(month FROM tpep_pickup_datetime) = 1;
```  
2. On which day it was the largest tip in January? (note: it's not a typo, it's "tip", not "trip")
```sql
    SELECT 
        tip_amount, 
        tpep_pickup_datetime 
    FROM 
        yellow_taxi_data 
    ORDER BY 
        tip_amount DESC 
    LIMIT 1;
```  
3. What was the most popular destination for passengers picked up in central park on January 14? Enter the zone name (not id). If the zone name is unknown (missing), write "Unknown".
```sql
    SELECT 
        "DOLocationID", 
        count(1) 
    FROM 
        yellow_taxi_data 
    WHERE 
        extract(day FROM tpep_pickup_datetime) = 14 
    GROUP BY 
        "DOLocationID" 
    ORDER BY 
        count(1) 
    DESC LIMIT 1;
```
4. What's the pickup-dropoff pair with the largest average price for a ride (calculated based on total_amount)? Enter two zone names separated by a slashFor example:"Jamaica Bay / Clinton East"If any of the zone names are unknown (missing), write "Unknown". For example, "Unknown / Clinton East".
```sql
    SELECT
        "PULocationID",
        "DOLocationID",
        AVG(total_amount)
    FROM
        yellow_taxi_data
    GROUP BY
        "PULocationID",
        "DOLocationID"
    ORDER BY
        AVG(total_amount) DESC
    LIMIT 1;
```