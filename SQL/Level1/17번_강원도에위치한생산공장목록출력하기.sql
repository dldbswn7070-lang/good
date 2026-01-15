-- 17번_강원도에위치한생산공장목록출력하기.sql
-- 출처: 부트캠프 SQL 코드카타 / 131112번
-- 문제: 강원도에 위치한 생산공장 목록 출력하기 (프로그래머스 SQL Level 1)
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131112
-- 날짜: 2026.01.04
--문제풀이 블로그 링크:https://moon2moo.tistory.com/42

/* [문제 포인트]
   - FOOD_FACTORY 테이블에서 '강원도'에 위치한 공장만 조회.
   - WHERE ADDRESS LIKE '강원도%' (강원도로 시작하는 모든 주소).
   - 공장 ID를 기준으로 오름차순 정렬.
*/

SELECT FACTORY_ID, FACTORY_NAME, ADDRESS
FROM FOOD_FACTORY
WHERE ADDRESS LIKE '강원도%'
ORDER BY FACTORY_ID ASC;