-- 30번_모든레코드조회하기.sql
-- 출처: 부트캠프 SQL 코드카타 / 59034번
-- 문제: 모든 레코드 조회하기 (프로그래머스 SQL Level 1)
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59034
-- 날짜: 2026.01.10
--  문제풀이 블로그 링크:https://moon2moo.tistory.com/54

/* [문제 포인트]
   - 모든 컬럼 조회: SELECT * (별표 사용)
   - 정렬 조건: ANIMAL_ID 순으로 정렬 (ORDER BY ANIMAL_ID)
     (참고: 데이터베이스에 따라 입력된 순서대로 나올 수도 있지만, 
      채점 시스템에서는 명시적으로 정렬해주는 것이 안전함)
*/

SELECT *
FROM ANIMAL_INS
ORDER BY ANIMAL_ID;