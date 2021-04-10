-- With respect to the query 1.2 suppose the institution wants to know what is the Procedure code with respect to any Problem in the left side along with order number. 

SELECT 
aa.order_number
,aa.long_description
,bb.pcs_code
FROM `bigquery-public-data.cms_codes.icd10_diagnoses_2019` as aa      
LEFT JOIN `bigquery-public-data.cms_codes.icd10_procedures_2019` as bb         
ON (aa.order_number=bb.order_number)
WHERE aa.long_description LIKE "%left%"
