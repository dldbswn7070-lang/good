-- 7번_아픈동물찾기.sql
-- 출처: 부트캠프 SQL 코드카타 / 59036번
-- 문제: 아픈 동물 찾기 (프로그래머스 SQL Level 1)
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59036
-- 날짜: 2026.01.03
--문제풀이 블로그 링크: https://moon2moo.tistory.com/37

/* [문제 포인트]
   - 동물 보호소에 들어온 동물 중 '아픈 동물'의 아이디와 이름을 조회.
   - 조건: INTAKE_CONDITION이 'SICK'인 경우만 필터링 (WHERE 절 사용).
   - 정렬: 아이디 순으로 오름차순 정렬.
*/

SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
WHERE INTAKE_CONDITION = 'SICK'
ORDER BY ANIMAL_ID;