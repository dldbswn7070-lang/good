-- 21번_가격이제일비싼식품정보출력하기.sql
-- 출처: 부트캠프 SQL 코드카타 / 131115번
-- 문제: 가격이 제일 비싼 식품의 정보 출력하기 (프로그래머스 SQL Level 2)
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131115
-- 날짜: 2026.01.06
--문제풀이 블로그 링크:https://moon2moo.tistory.com/45

/* [문제 포인트 & 풀이 방법 비교]
   - 식품 테이블(FOOD_PRODUCT)에서 가격(PRICE)이 가장 비싼 식품의 모든 정보를 조회.
   
   1. 정렬 후 자르기 (LIMIT)
      - 가격 내림차순(DESC)으로 정렬하고 맨 위 1개만 가져옴.
      - 코드가 가장 간결함.
      
   2. 서브쿼리 (Subquery)
      - "가격이 (가장 비싼 가격)과 같은" 행을 찾음.
      - WHERE PRICE = (SELECT MAX(PRICE)...)
      - 정석적인 방법이며, 만약 가장 비싼 상품이 여러 개라면 이 방법이 더 정확할 수 있음.
*/

-- [방법 1] LIMIT 사용 (가장 간단)
SELECT PRODUCT_ID, PRODUCT_NAME, PRODUCT_CD, CATEGORY, PRICE
FROM FOOD_PRODUCT
ORDER BY PRICE DESC
LIMIT 1;

-- [방법 2] 서브쿼리 사용 (논리적 정석)
--SELECT PRODUCT_ID, PRODUCT_NAME, PRODUCT_CD, CATEGORY, PRICE
--FROM FOOD_PRODUCT
--WHERE PRICE = (SELECT MAX(PRICE) FROM FOOD_PRODUCT);