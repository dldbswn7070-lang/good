-- 20번_재구매가일어난상품과회원리스트구하기.sql
-- 출처: 부트캠프 SQL 코드카타 / 131534번
-- 문제: 재구매가 일어난 상품과 회원 리스트 구하기 (프로그래머스 SQL Level 2)
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131534
-- 날짜: 2026.01.05
--문제풀이 블로그 링크:https://moon2moo.tistory.com/44

/* [문제 포인트 & 배운 점]
   1. 재구매 기준: "한 유저(USER_ID)가 + 같은 상품(PRODUCT_ID)을" 2번 이상 구매.
      -> GROUP BY USER_ID, PRODUCT_ID (두 컬럼을 동시에 묶는 것이 핵심!)
   
   2. 조건 필터링: 그룹화된 데이터에서 개수를 셀 때는 WHERE가 아니라 HAVING을 씀.
      -> HAVING COUNT(PRODUCT_ID) >= 2

   3. [기억해둘 것!] 
      "두 가지 컬럼에서 공통된 값을 구한다는 건 그룹으로 묶으라는 것."
      "그룹으로 묶으면 그 그룹에 조건을 줄 수 있는 짝꿍(HAVING)이 꼭 와줘야 함!!!"
*/

SELECT USER_ID, PRODUCT_ID
FROM ONLINE_SALE
GROUP BY USER_ID, PRODUCT_ID
HAVING COUNT(PRODUCT_ID) >= 2
ORDER BY USER_ID ASC, PRODUCT_ID DESC;