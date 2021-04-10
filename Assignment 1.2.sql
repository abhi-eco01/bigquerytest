-- This query helps a Medical service provider to get the information in the order: Order Number, Long Description, Cm_code who was diagonised any problem in the Left side. 

SELECT
aaa.order_number,aaa.long_description,aaa.cm_code
FROM `bigquery-public-data.cms_codes.icd10_diagnoses_2019` as aaa    
WHERE aaa.short_description LIKE "%left%"
