-- 대여 기록이 존재하는 자동차 리스트 구하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/157341
-- 작성자: 이윤주
-- 작성일: 2026. 03. 12. 23:13:11

SELECT DISTINCT C.CAR_ID 
FROM CAR_RENTAL_COMPANY_CAR C
JOIN CAR_RENTAL_COMPANY_RENTAL_HISTORY Y
ON C.CAR_ID = Y.CAR_ID
WHERE C.CAR_TYPE LIKE '세단'
AND Y.START_DATE LIKE '2022-10%'
ORDER BY C.CAR_ID DESC;