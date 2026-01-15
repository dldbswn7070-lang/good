-- 27번_조건에맞는도서리스트출력하기.sql
-- 출처: 부트캠프 SQL 코드카타 / 144853번
-- 문제: 조건에 맞는 도서 리스트 출력하기 (프로그래머스 SQL Level 1)
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/144853
-- 날짜: 2026.01.09
-- 문제풀이 블로그 링크:https://moon2moo.tistory.com/53

/* [시행착오 & 배운 점]
   1. 상황: 처음에 그냥 날짜 컬럼을 출력했다가 오답 처리됨.
   2. 원인: 문제 설명 끝부분에 "출판일은 포맷을 예시와 동일하게(시분초 제외)" 하라는 조건을 놓침.
   3. 해결: DATE_FORMAT(컬럼, '%Y-%m-%d') 함수를 사용하여 형식을 맞춤.
   
   [코드 포인트]
   - 날짜 필터링: '2021년'에 출판된 책.
     -> PUBLISHED_DATE LIKE '2021%' (문자열 방식)
     -> YEAR(PUBLISHED_DATE) = 2021 (함수 방식도 가능)
   - 카테고리 필터링: '인문' 분야.
*/

SELECT BOOK_ID, 
       DATE_FORMAT(PUBLISHED_DATE, '%Y-%m-%d') AS PUBLISHED_DATE
FROM BOOK
WHERE PUBLISHED_DATE LIKE '2021%'
  AND CATEGORY = '인문'
ORDER BY PUBLISHED_DATE ASC;