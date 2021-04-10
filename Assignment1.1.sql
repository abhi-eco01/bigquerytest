-- There are two separate data base for two different year of the same data. This query is build to have a Table with data from both the years along the companies. 

SELECT
aa.agency_name
,aa.total_episodes_non_lupa as Non_LUPA_2013
,bb.total_episodes_non_lupa as Non_LUPA_2014
FROM `bigquery-public-data.cms_medicare.home_health_agencies_2013` aa
left join `bigquery-public-data.cms_medicare.home_health_agencies_2014` bb
on aa.agency_name = bb.agency_name
