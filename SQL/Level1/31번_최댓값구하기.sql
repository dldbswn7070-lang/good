-- 31번_최댓값구하기.sql
-- 출처: 부트캠프 SQL 코드카타 / 59415번
-- 문제: 최댓값 구하기 (프로그래머스 SQL Level 1)
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59415
-- 날짜: 2026.01.12
-- 문제풀이 블로그 링크: https://moon2moo.tistory.com/56

/* [문제 풀이 흐름 (Pseudocode)]
   1. 어느 컬럼을 가져올까? -> SELECT DATETIME
   2. 어느 테이블에서 가져올까? -> FROM ANIMAL_INS
   3. 가장 최근 날짜를 구하려면? -> ORDER BY DATETIME DESC (내림차순 정렬)
   4. 하나만 가져와야 함 -> LIMIT 1
*/

-- [방법 1] 정렬과 LIMIT 사용 (작성하신 코드)
SELECT DATETIME AS "시간"
FROM ANIMAL_INS
ORDER BY DATETIME DESC
LIMIT 1;

-- [방법 2] 집계 함수 MAX() 사용 (참고)
-- SELECT MAX(DATETIME) AS "시간"
-- FROM ANIMAL_INS;