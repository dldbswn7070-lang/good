-- 14번_가장비싼상품구하기.sql
-- 문제 출처: 부트캠프 SQL 코드카타 / 131697번
-- 문제: 가장 비싼 상품 구하기 (프로그래머스 SQL Level 1)
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131697
-- 날짜: 2026.01.16
--문제풀이 블로그 링크:https://moon2moo.tistory.com/42

/* [문제 포인트]
   - 상품 테이블(PRODUCT)에서 가장 높은 판매가(PRICE)를 조회.
   - 컬럼명은 MAX_PRICE로 지정.
   - 최댓값을 구하는 집계 함수 MAX() 사용.
*/

SELECT MAX(PRICE) AS MAX_PRICE
FROM PRODUCT;