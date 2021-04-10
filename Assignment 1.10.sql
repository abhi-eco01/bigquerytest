-- Suppose in a ENV analysis the trees of the New York city is evaluated in two separate point of Time 

SELECT 
aa.recordid,
bb.tree_id,
aa.status as Old_status,
bb.status as New_status
FROM `bigquery-public-data.new_york.tree_census_1995` as aa 
JOIN `bigquery-public-data.new_york.tree_census_2015` as bb  
ON (aa.recordid=bb.tree_id)
