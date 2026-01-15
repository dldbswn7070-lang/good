-- 28번_평균일일대여요금구하기.sql
-- 출처: 부트캠프 SQL 코드카타 / 151136번
-- 문제: 평균 일일 대여 요금 구하기 (프로그래머스 SQL Level 1)
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/151136
-- 날짜: 2026.01.09
-- 문제풀이 블로그 링크:https://moon2moo.tistory.com/53

/* [문제 포인트]
   1. 조건 필터링: 자동차 종류가 'SUV'인 것만.
      -> WHERE CAR_TYPE = 'SUV'
      
   2. 평균 구하기: 일일 대여 요금(DAILY_FEE)의 평균.
      -> AVG(DAILY_FEE)
      
   3. 반올림 처리: 소수점 첫 번째 자리에서 반올림(정수 부분만 남김).
      -> ROUND(값, 0)
      -> (참고) ROUND(값, 1)은 소수점 둘째 자리에서 반올림하여 첫째 자리까지 표시.
*/

SELECT ROUND(AVG(DAILY_FEE), 0) AS AVERAGE_FEE
FROM CAR_RENTAL_COMPANY_CAR
WHERE CAR_TYPE = 'SUV';