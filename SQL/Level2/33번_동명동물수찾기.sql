-- 33번_동명동물수찾기.sql
-- 출처: 부트캠프 SQL 코드카타 / 59041번
-- 문제: 동명 동물 수 찾기 (프로그래머스 SQL Level 2)
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59041
-- 날짜: 2026.01.13
-- 문제풀이 블로그 링크: https://moon2moo.tistory.com/60

/* [문제 풀이 흐름 (Pseudocode) & 복습]
   1. 어느 컬럼? -> SELECT NAME, COUNT(*)
   2. 어느 테이블? -> FROM ANIMAL_INS
   3. 조건은? -> 이름이 없는 동물은 제외 (WHERE NAME IS NOT NULL)
   4. 그룹화? -> 이름이 2번 이상 쓰인 경우를 찾아야 함 (GROUP BY NAME)
   5. 그룹 조건? -> 개수가 2개 이상 (HAVING COUNT(*) >= 2)
   6. 정렬? -> 이름 순으로 (ORDER BY NAME)
   
   [중요 포인트]
   - WHERE는 그룹화 전의 조건 (이름 없는 애들 빼기)
   - HAVING은 그룹화 후의 조건 (2마리 이상인 그룹만 남기기)
*/

SELECT NAME, COUNT(*) AS COUNT
FROM ANIMAL_INS
WHERE NAME IS NOT NULL
GROUP BY NAME
HAVING COUNT(*) >= 2
ORDER BY NAME;