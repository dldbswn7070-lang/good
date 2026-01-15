-- 문제: 이름이 있는 동물의 아이디 (프로그래머스 SQL Level 1)
-- 출처: 부트캠프 SQL 코드카타 / 59407번
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59407
-- 날짜: 2025.12.30
--문제풀이 블로그 링크: https://moon2moo.tistory.com/22

/* [오류 상황 & 시행착오]
1. 초기 시도: SELECT NIMAL_ID, NAME IS NOT NULL ... 이렇게 적으니 컬럼명이 이상하게 나오고 값은 전부 1로 나옴.
2. 원인 파악: IS NOT NULL을 넣어야 하는 위치(WHERE 절)가 잘못됨. SELECT절에 조건을 적으면 안 됨.
3. 문제 해결: 
   - 조건을 WHERE 절로 이동 (WHERE NAME IS NOT NULL)
   - 문제에서 요구하는 건 ANIMAL_ID 뿐이므로 SELECT에서 NAME은 제거.
   - CASE WHEN으로도 시도해봤으나, 가장 간단한 WHERE IS NOT NULL이 정답임.
*/

-- [정답 코드]
SELECT ANIMAL_ID
FROM ANIMAL_INS
WHERE NAME IS NOT NULL
ORDER BY ANIMAL_ID;