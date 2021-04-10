-- This query will help to get the total Expenditure with respect to each City 

SELECT
aa.nppes_provider_city
,SUM(aa.average_medicare_payment_amt) as Total_medi_care_expenditure_by_city
FROM `bigquery-public-data.cms_medicare.physicians_and_other_supplier_2012` as aa       
group by (aa.nppes_provider_city)
