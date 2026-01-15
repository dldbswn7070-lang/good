-- 34번_카테고리별상품개수구하기.sql
-- 출처: 부트캠프 SQL 코드카타 / 131529번
-- 문제: 카테고리 별 상품 개수 구하기 (프로그래머스 SQL Level 2)
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131529
-- 날짜: 2026.01.13
-- 문제풀이 블로그 링크: https://moon2moo.tistory.com/60

/* [문제 풀이 흐름 (Pseudocode) & 복습]
   1. 문자열 자르기: 상품 코드 앞 2자리만 필요함.
      - [Python] code[:2] 
      - [SQL] LEFT(PRODUCT_CODE, 2) -> 문법 차이 주의!
      
   2. 그룹화: 잘라낸 카테고리 코드별로 묶어야 함.
      -> GROUP BY LEFT(PRODUCT_CODE, 2)
      
   3. 정렬 순서 판단:
      - 쿼리 실행 순서: FROM -> GROUP BY -> SELECT -> ORDER BY
      - "SELECT에서 만든 별칭(CATEGORY)은 맨 마지막인 ORDER BY에서 쓸 수 있다!"
*/

SELECT LEFT(PRODUCT_CODE, 2) AS CATEGORY,
       COUNT(*) AS PRODUCTS
FROM PRODUCT
GROUP BY LEFT(PRODUCT_CODE, 2)
ORDER BY CATEGORY ASC;