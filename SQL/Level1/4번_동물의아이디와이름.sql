-- 4번_동물의아이디와이름.sql
-- 출처: 부트캠프 SQL 코드카타 / 59403번
-- 문제: 동물의 아이디와 이름 (프로그래머스 SQL Level 1)
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59403
-- 날짜: 2026.01.02
--문제풀이 블로그 링크:https://moon2moo.tistory.com/32

/* [문제 포인트]
   - 모든 동물의 아이디(ANIMAL_ID)와 이름(NAME)을 조회.
   - 아이디 순으로 오름차순(ASC) 정렬.
*/

SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
ORDER BY ANIMAL_ID;