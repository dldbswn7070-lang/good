-- 2번_역순정렬하기.sql

-- 문제: 역순 정렬하기 (프로그래머스 59035번)
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59035
-- 날짜: 2025.12.31
--문제풀이 블로그 링크:https://moon2moo.tistory.com/25

/* [문제 포인트]
   - 동물 보호소에 들어온 모든 동물의 이름과 보호 시작일을 조회.
   - 결과는 ANIMAL_ID 역순(DESC)으로 정렬해야 함.
*/

SELECT NAME, DATETIME
FROM ANIMAL_INS
ORDER BY ANIMAL_ID DESC;