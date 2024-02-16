-- 코드를 입력하세요
SELECT month(START_DATE) as MONTH,CAR_ID, count(*) as RECORDS
from CAR_RENTAL_COMPANY_RENTAL_HISTORY 
WHERE month(START_DATE) IN (8,9,10)
    AND    
    CAR_ID IN (SELECT CAR_ID FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
             WHERE (month(START_DATE) IN (8,9,10))
             GROUP BY CAR_ID
             HAVING COUNT(*)>=5)
group by month(START_DATE),CAR_ID
order by MONTH asc, CAR_ID desc;