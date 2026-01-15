-- 32번_특정옵션이포함된자동차리스트구하기.sql
-- 출처: 부트캠프 SQL 코드카타 / 157343번
-- 문제: 특정 옵션이 포함된 자동차 리스트 구하기 (프로그래머스 SQL Level 1)
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/157343
-- 날짜: 2026.01.12
--문제풀이 블로그 링크:https://moon2moo.tistory.com/56

/* [문제 풀이 흐름 (Pseudocode)]
   1. 어느 컬럼을 가져올까? -> SELECT CAR_ID, CAR_TYPE, DAILY_FEE, OPTIONS
   2. 어느 테이블에서 가져올까? -> FROM CAR_RENTAL_COMPANY_CAR
   3. 조건 설정: 옵션에 '네비게이션'이 포함된 것만.
      -> "해당 글자만 포함되면 되니까 LIKE를 쓰자!"
      -> WHERE OPTIONS LIKE '%네비게이션%'
   4. 정렬: ID 기준 내림차순 -> ORDER BY CAR_ID DESC
*/

SELECT CAR_ID, CAR_TYPE, DAILY_FEE, OPTIONS
FROM CAR_RENTAL_COMPANY_CAR
WHERE OPTIONS LIKE '%네비게이션%'
ORDER BY CAR_ID DESC;