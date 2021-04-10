-- This data has information about the Fire fighiting system
-- Suppose the company wants to know the Non resedential case of 2017 within the time period of 10:00 am to 4:00 pm. 

SELECT
*
FROM `bigquery-public-data.london_fire_brigade.fire_brigade_service_calls` as aa    
WHERE aa.date_of_call between '2017-01-01' and '2017-12-31'
AND aa.time_of_call between '10:00:00' and '16:00:00'
AND aa.property_category <> 'Dwelling'
