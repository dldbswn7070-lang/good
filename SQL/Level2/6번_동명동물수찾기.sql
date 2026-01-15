-- 6번_동명동물수찾기.sql
-- 출처: 부트캠프 SQL 코드카타 / 59041번
-- 문제: 동명 동물 수 찾기 (프로그래머스 SQL Level 2)
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59041
-- 날짜: 2026.01.03
--문제풀이 블로그 링크: https://moon2moo.tistory.com/37

/* [문제 포인트 & 풀이 논리]
   1. NULL 제거: 이름이 없는 동물은 제외해야 하므로 WHERE NAME IS NOT NULL 사용.
   2. 그룹화: 이름(NAME)이 같은 동물끼리 묶어야 하므로 GROUP BY NAME 사용.
   3. 조건 필터링: "두 번 이상 쓰인 이름"만 골라야 함.
      -> 그룹화된 이후의 조건은 WHERE가 아니라 HAVING 절을 써야 함! (핵심)
      -> HAVING COUNT(*) >= 2
   4. 정렬: 이름 순으로 조회하라고 했으니 ORDER BY NAME.
*/

-- [정답 코드]
SELECT NAME, COUNT(*) AS COUNT
FROM ANIMAL_INS
WHERE NAME IS NOT NULL
GROUP BY NAME
HAVING COUNT(*) >= 2
ORDER BY NAME;