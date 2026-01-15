-- 9번_최솟값구하기.sql
-- 출처: 부트캠프 SQL 코드카타 / 59038번
-- 문제: 최솟값 구하기 (프로그래머스 SQL Level 2)
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59038
-- 날짜: 2026.01.03
--문제풀이 블로그 링크:https://moon2moo.tistory.com/37

/* [문제 포인트]
   - 가장 먼저 들어온(최솟값) 동물의 들어온 시각(DATETIME)을 조회.
   - 방법 1: 날짜 순으로 정렬(ORDER BY)해서 맨 위 1개만 가져오기(LIMIT).
   - 방법 2: MIN() 함수 사용하기.
*/

-- [작성하신 정답 코드: 정렬 이용]
SELECT DATETIME AS 시간
FROM ANIMAL_INS
ORDER BY DATETIME
LIMIT 1;

-- [또 다른 정답 코드: 집계 함수 MIN 이용]
-- SELECT MIN(DATETIME) AS 시간
-- FROM ANIMAL_INS;