-- Suppose a new company wants to enter the Cycle Rent market. Their mode of operation is mainly long duration cycles. For that they want to target some strat stations
-- from where the Longer ride was started. 
-- Following query will return the Number ride taken with duration more than 8000, groupped by Station name and in Descending order of number of Rides.

SELECT
count(aa.bike_id) as NUMBER_OF_RIDE
,aa.start_station_name
FROM `bigquery-public-data.london_bicycles.cycle_hire` as aa
WHERE aa.duration > 8000
GROUP BY  aa.start_station_name 
ORDER BY 1 desc
