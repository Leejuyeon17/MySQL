-- 코드를 입력하세요
SELECT ANIMAL_ID, NAME FROM ANIMAL_INS A
WHERE DATETIME > (SELECT DATETIME FROM ANIMAL_OUTS B WHERE A.ANIMAL_ID = B.ANIMAL_ID)
ORDER BY DATETIME ASC