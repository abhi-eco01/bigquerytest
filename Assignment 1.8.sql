--Bike Renting company decides to Give away bike gears to young female customers so that more customer enters in the chain. 
--The following query will sort out Female customer who is young, trip duration over 5000 and a Subscriber to the company


SELECT
*
FROM `bigquery-public-data.new_york_citibike.citibike_trips` as aa
WHERE aa.gender = "female" 
AND aa.tripduration > 5000 
AND aa.birth_year >= 1999
AND aa.usertype = "Subscriber"
ORDER BY aa.tripduration desc
