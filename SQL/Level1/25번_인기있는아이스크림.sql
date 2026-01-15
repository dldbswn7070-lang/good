-- 25번_인기있는아이스크림.sql
-- 출처: 부트캠프 SQL 코드카타 / 133024번
-- 문제: 인기있는 아이스크림 (프로그래머스 SQL Level 1)
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/133024
-- 날짜: 2026.01.08
-- 문제풀이 블로그 링크:https://moon2moo.tistory.com/51

/* [문제 포인트]
   - 아이스크림 맛(FLAVOR)을 조회.
   - 정렬 조건 1: 총 주문량(TOTAL_ORDER)이 큰 순서대로 (DESC).
   - 정렬 조건 2: 주문량이 같다면 출하 번호(SHIPMENT_ID)가 작은 순서대로 (ASC).
*/

SELECT FLAVOR
FROM FIRST_HALF
ORDER BY TOTAL_ORDER DESC, SHIPMENT_ID ASC;