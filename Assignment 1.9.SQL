--- Suppose the Govt. wants to check which brand's product caused the most number of Hospitalization in the food industry then this code is used. 

SELECT
aa.outcomes
,aa.products_brand_name
,COUNT (aa.products_brand_name) as Number_of_Hospitalization
FROM `bigquery-public-data.fda_food.food_events` as aa
WHERE aa.outcomes LIKE "%Hospitalization%"
GROUP BY
aa.products_brand_name
,aa.outcomes
ORDER BY Number_of_Hospitalization desc  
